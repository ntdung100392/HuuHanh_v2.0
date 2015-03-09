<?php

class ControllerAccountRepair extends Controller {

    private $error = array();

    public function multi_upload() {
        if (!empty($this->request->files)) {
            $multi_upload_path = 'repair/';


            if (!is_dir(DIR_IMAGE . 'data' . '/' . $multi_upload_path)) {
                mkdir(DIR_IMAGE . 'data' . '/' . $multi_upload_path, 0755);
            }

            $upload_temp_file = $this->request->files['Filedata']['tmp_name'];

            // Validate the file type
            $fileTypes = array('jpg', 'jpeg', 'gif', 'png', 'mp4', 'mov'); // File extensions
            $fileParts = pathinfo($this->request->files['Filedata']['name']);

            do {
                $file_name = md5(rand(100000, 999999) . microtime() . $this->request->files['Filedata']['name']) . '.' . $fileParts['extension'];
                $targetFile = DIR_IMAGE . 'data' . '/' . $multi_upload_path . $file_name;
            } while (file_exists($targetFile));

            $json = array();

            if (in_array(strtolower($fileParts['extension']), $fileTypes)) {
                $this->load->model('tool/image');

                move_uploaded_file($upload_temp_file, $targetFile);

                $size = getimagesize($targetFile);

                if ($size[0] > 1000) {
                    $nwidth = 1000;
                    $nheight = $nwidth * $size[1] / $size[0];

                    $image = new Image($targetFile);
                    $image->resize($nwidth, $nheight);
                    $image->save($targetFile);
                }

                if (file_exists($targetFile)) {
                    $json['filename'] = $file_name;
                    $json['file_name'] = 'data' . '/' . $multi_upload_path . $file_name;
                    $json['thumb'] = $this->model_tool_image->resize('data' . '/' . $multi_upload_path . $file_name, 50, 50);
                    $json['status'] = 1;
                } else {
                    $json['status'] = 0;
                }
            } else {
                $json['status'] = -1;
            }
            $this->response->setOutput(json_encode($json));
        }
    }

    public function index() {
        if (!$this->customer->isLogged()) {
            $this->session->data['redirect'] = $this->url->link('account/repair', '', 'SSL');

            $this->response->redirect($this->url->link('account/login', '', 'SSL'));
        }

        $this->load->language('account/repair');

        $this->document->setTitle($this->language->get('heading_title'));

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_account'),
            'href' => $this->url->link('account/account', '', 'SSL')
        );

        $url = '';

        if (isset($this->request->get['page'])) {
            $url .= '&page=' . $this->request->get['page'];
        }

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('account/repair', $url, 'SSL')
        );

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_empty'] = $this->language->get('text_empty');

        $data['column_repair_id'] = $this->language->get('column_repair_id');
        $data['column_order_id'] = $this->language->get('column_order_id');
        $data['column_status'] = $this->language->get('column_status');
        $data['column_date_added'] = $this->language->get('column_date_added');
        $data['column_customer'] = $this->language->get('column_customer');

        $data['button_view'] = $this->language->get('button_view');
        $data['button_continue'] = $this->language->get('button_continue');

        $this->load->model('account/repair');

        if (isset($this->request->get['page'])) {
            $page = $this->request->get['page'];
        } else {
            $page = 1;
        }

        $data['repairs'] = array();

        $repair_total = $this->model_account_repair->getTotalRepairs();

        $results = $this->model_account_repair->getRepairs(($page - 1) * 10, 10);

        foreach ($results as $result) {
            $data['repairs'][] = array(
                'repair_id' => $result['repair_id'],
                'order_id' => $result['order_id'],
                'name' => $result['firstname'] . ' ' . $result['lastname'],
                'status' => $result['status'],
                'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
                'href' => $this->url->link('account/repair/info', 'repair_id=' . $result['repair_id'] . $url, 'SSL')
            );
        }

        $pagination = new Pagination();
        $pagination->total = $repair_total;
        $pagination->page = $page;
        $pagination->limit = $this->config->get('config_product_limit');
        $pagination->url = $this->url->link('account/repair', 'page={page}', 'SSL');

        $data['pagination'] = $pagination->render();

        $data['results'] = sprintf($this->language->get('text_pagination'), ($repair_total) ? (($page - 1) * $this->config->get('config_product_limit')) + 1 : 0, ((($page - 1) * $this->config->get('config_product_limit')) > ($repair_total - $this->config->get('config_product_limit'))) ? $repair_total : ((($page - 1) * $this->config->get('config_product_limit')) + $this->config->get('config_product_limit')), $repair_total, ceil($repair_total / $this->config->get('config_product_limit')));

        $data['continue'] = $this->url->link('account/account', '', 'SSL');


        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/repair_list.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/repair_list.tpl', $data));
        } else {
            $this->response->setOutput($this->load->view('default/template/account/repair_list.tpl', $data));
        }
    }

    public function info() {
        $this->load->language('account/repair');

        if (isset($this->request->get['repair_id'])) {
            $repair_id = $this->request->get['repair_id'];
        } else {
            $repair_id = 0;
        }

        if (!$this->customer->isLogged()) {
            $this->session->data['redirect'] = $this->url->link('account/repair/info', 'repair_id=' . $repair_id, 'SSL');

            $this->response->redirect($this->url->link('account/login', '', 'SSL'));
        }

        $this->load->model('account/repair');

        $repair_info = $this->model_account_repair->getRepair($repair_id);

        if ($repair_info) {
            $this->document->setTitle($this->language->get('text_repair'));

            $data['breadcrumbs'] = array();

            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_home'),
                'href' => $this->url->link('common/home', '', 'SSL')
            );

            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_account'),
                'href' => $this->url->link('account/account', '', 'SSL')
            );

            $url = '';

            if (isset($this->request->get['page'])) {
                $url .= '&page=' . $this->request->get['page'];
            }

            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('account/repair', $url, 'SSL')
            );

            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_repair'),
                'href' => $this->url->link('account/repair/info', 'repair_id=' . $this->request->get['repair_id'] . $url, 'SSL')
            );

            $data['heading_title'] = $this->language->get('text_repair');

            $data['text_repair_detail'] = $this->language->get('text_repair_detail');
            $data['text_repair_id'] = $this->language->get('text_repair_id');
            $data['text_order_id'] = $this->language->get('text_order_id');
            $data['text_date_ordered'] = $this->language->get('text_date_ordered');
            $data['text_customer'] = $this->language->get('text_customer');
            $data['text_email'] = $this->language->get('text_email');
            $data['text_telephone'] = $this->language->get('text_telephone');
            $data['text_status'] = $this->language->get('text_status');
            $data['text_date_added'] = $this->language->get('text_date_added');
            $data['text_product'] = $this->language->get('text_product');
            $data['text_comment'] = $this->language->get('text_comment');
            $data['text_history'] = $this->language->get('text_history');

            $data['column_product'] = $this->language->get('column_product');
            $data['column_model'] = $this->language->get('column_model');
            $data['column_quantity'] = $this->language->get('column_quantity');
            //$data['column_opened'] = $this->language->get('column_opened');
            //$data['column_reason'] = $this->language->get('column_reason');
            //$data['column_action'] = $this->language->get('column_action');
            $data['column_date_added'] = $this->language->get('column_date_added');
            $data['column_status'] = $this->language->get('column_status');
            $data['column_comment'] = $this->language->get('column_comment');

            $data['button_continue'] = $this->language->get('button_continue');

            $data['repair_id'] = $repair_info['repair_id'];
            $data['order_id'] = $repair_info['order_id'];
            $data['date_ordered'] = date($this->language->get('date_format_short'), strtotime($repair_info['date_ordered']));
            $data['date_added'] = date($this->language->get('date_format_short'), strtotime($repair_info['date_added']));
            $data['firstname'] = $repair_info['firstname'];
            $data['lastname'] = $repair_info['lastname'];
            $data['email'] = $repair_info['email'];
            $data['telephone'] = $repair_info['telephone'];
            $data['product'] = $repair_info['product'];
            $data['model'] = $repair_info['model'];
            $data['quantity'] = $repair_info['quantity'];
            //$data['reason'] = $repair_info['reason'];
            //$data['opened'] = $repair_info['opened'] ? $this->language->get('text_yes') : $this->language->get('text_no');
            $data['comment'] = nl2br($repair_info['comment']);
            $data['action'] = $repair_info['action'];

            $data['histories'] = array();

            $results = $this->model_account_repair->getRepairHistories($this->request->get['repair_id']);

            foreach ($results as $result) {
                $data['histories'][] = array(
                    'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
                    'status' => $result['status'],
                    'comment' => nl2br($result['comment'])
                );
            }

            $data['continue'] = $this->url->link('account/repair', $url, 'SSL');




            $data['column_left'] = $this->load->controller('common/column_left');
            $data['column_right'] = $this->load->controller('common/column_right');
            $data['content_top'] = $this->load->controller('common/content_top');
            $data['content_bottom'] = $this->load->controller('common/content_bottom');
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/repair_info.tpl')) {
                $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/repair_info.tpl', $data));
            } else {
                $this->response->setOutput($this->load->view('default/template/account/repair_info.tpl', $data));
            }
        } else {
            $this->document->setTitle($this->language->get('text_repair'));

            $data['breadcrumbs'] = array();

            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_home'),
                'href' => $this->url->link('common/home')
            );

            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_account'),
                'href' => $this->url->link('account/account', '', 'SSL')
            );

            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('account/repair', '', 'SSL')
            );

            $url = '';

            if (isset($this->request->get['page'])) {
                $url .= '&page=' . $this->request->get['page'];
            }

            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_repair'),
                'href' => $this->url->link('account/repair/info', 'repair_id=' . $repair_id . $url, 'SSL')
            );

            $data['heading_title'] = $this->language->get('text_repair');

            $data['text_error'] = $this->language->get('text_error');

            $data['button_continue'] = $this->language->get('button_continue');

            $data['continue'] = $this->url->link('account/repair', '', 'SSL');


            $data['column_left'] = $this->load->controller('common/column_left');
            $data['column_right'] = $this->load->controller('common/column_right');
            $data['content_top'] = $this->load->controller('common/content_top');
            $data['content_bottom'] = $this->load->controller('common/content_bottom');
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found.tpl')) {
                $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/error/not_found.tpl', $data));
            } else {
                $this->response->setOutput($this->load->view('default/template/error/not_found.tpl', $data));
            }
        }
    }

    public function insert() {
        $this->load->language('account/repair');

        $this->load->model('account/repair');

        $this->document->addScript('catalog/view/javascript/jquery/uploadify/jquery.uploadify-3.1.min.js');

        $this->document->addStyle('catalog/view/javascript/jquery/uploadify/uploadify.css');

        $this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment.js');
        $this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
        $this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $repair_id = $this->model_account_repair->addRepair($this->request->post);

            if (isset($this->request->post['email'])) {
                // Send HTML Mail
                $template = new Template();

                $template->data = $this->request->post;
                $template->data['repair_id'] = $repair_id;

                $mail = new Mail($this->config->get('config_mail'));
                $mail->setTo($this->request->post['email']);
                $mail->setFrom('support@intelligentuas.com');
                $mail->setSender($this->config->get('config_name'));
                $mail->setSubject('Repair confirm from ' . $this->config->get('config_name'));
                $mail->setHtml($template->fetch('journal2/template/mail/repair.tpl'));
                $mail->send();

                // Copy admin
                $mail->setFrom($this->request->post['email']);
//                $mail->setTo('support@intelligentuas.com');
                $mail->setTo($this->config->get('config_email'));
                $mail->setSubject('Copy : Repair confirm from ' . $this->request->post['email']);
                $mail->send();
            }

            $this->response->redirect($this->url->link('account/repair/success', '', 'SSL'));
        }

        $this->document->setTitle($this->language->get('heading_title'));

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_account'),
            'href' => $this->url->link('account/account', '', 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('account/repair/insert', '', 'SSL')
        );

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_description'] = $this->language->get('text_description');
        $data['text_order'] = $this->language->get('text_order');
        $data['text_product'] = $this->language->get('text_product');
        $data['text_yes'] = $this->language->get('text_yes');
        $data['text_no'] = $this->language->get('text_no');

        $data['entry_order_id'] = $this->language->get('entry_order_id');
        $data['entry_date_ordered'] = $this->language->get('entry_date_ordered');
        $data['entry_firstname'] = $this->language->get('entry_firstname');
        $data['entry_lastname'] = $this->language->get('entry_lastname');
        $data['entry_email'] = $this->language->get('entry_email');
        $data['entry_telephone'] = $this->language->get('entry_telephone');
        $data['entry_product'] = $this->language->get('entry_product');
        $data['entry_model'] = $this->language->get('entry_model');
        $data['entry_quantity'] = $this->language->get('entry_quantity');
        //$data['entry_reason'] = $this->language->get('entry_reason');
        //$data['entry_opened'] = $this->language->get('entry_opened');
        $data['entry_fault_detail'] = $this->language->get('entry_fault_detail');
        $data['entry_captcha'] = $this->language->get('entry_captcha');

        $data['button_continue'] = $this->language->get('button_continue');
        $data['button_back'] = $this->language->get('button_back');

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->error['order_id'])) {
            $data['error_order_id'] = $this->error['order_id'];
        } else {
            $data['error_order_id'] = '';
        }

        if (isset($this->error['firstname'])) {
            $data['error_firstname'] = $this->error['firstname'];
        } else {
            $data['error_firstname'] = '';
        }

        if (isset($this->error['lastname'])) {
            $data['error_lastname'] = $this->error['lastname'];
        } else {
            $data['error_lastname'] = '';
        }

        if (isset($this->error['email'])) {
            $data['error_email'] = $this->error['email'];
        } else {
            $data['error_email'] = '';
        }

        if (isset($this->error['telephone'])) {
            $data['error_telephone'] = $this->error['telephone'];
        } else {
            $data['error_telephone'] = '';
        }

        if (isset($this->error['product'])) {
            $data['error_product'] = $this->error['product'];
        } else {
            $data['error_product'] = '';
        }

        if (isset($this->error['model'])) {
            $data['error_model'] = $this->error['model'];
        } else {
            $data['error_model'] = '';
        }

        /* if (isset($this->error['reason']))
          {
          $data['error_reason'] = $this->error['reason'];
          }
          else
          {
          $data['error_reason'] = '';
          } */

        if (isset($this->error['captcha'])) {
            $data['error_captcha'] = $this->error['captcha'];
        } else {
            $data['error_captcha'] = '';
        }

        $data['action'] = $this->url->link('account/repair/insert', '', 'SSL');

        $this->load->model('account/order');

        if (isset($this->request->get['order_id'])) {
            $order_info = $this->model_account_order->getOrder($this->request->get['order_id']);
        }

        $this->load->model('catalog/product');

        if (isset($this->request->get['product_id'])) {
            $product_info = $this->model_catalog_product->getProduct($this->request->get['product_id']);
        }

        if (isset($this->request->post['order_id'])) {
            $data['order_id'] = $this->request->post['order_id'];
        } elseif (!empty($order_info)) {
            $data['order_id'] = $order_info['order_id'];
        } else {
            $data['order_id'] = '';
        }

        if (isset($this->request->post['date_ordered'])) {
            $data['date_ordered'] = $this->request->post['date_ordered'];
        } elseif (!empty($order_info)) {
            $data['date_ordered'] = date('Y-m-d', strtotime($order_info['date_added']));
        } else {
            $data['date_ordered'] = '';
        }

        if (isset($this->request->post['firstname'])) {
            $data['firstname'] = $this->request->post['firstname'];
        } elseif (!empty($order_info)) {
            $data['firstname'] = $order_info['firstname'];
        } else {
            $data['firstname'] = $this->customer->getFirstName();
        }

        if (isset($this->request->post['lastname'])) {
            $data['lastname'] = $this->request->post['lastname'];
        } elseif (!empty($order_info)) {
            $data['lastname'] = $order_info['lastname'];
        } else {
            $data['lastname'] = $this->customer->getLastName();
        }

        if (isset($this->request->post['email'])) {
            $data['email'] = $this->request->post['email'];
        } elseif (!empty($order_info)) {
            $data['email'] = $order_info['email'];
        } else {
            $data['email'] = $this->customer->getEmail();
        }

        if (isset($this->request->post['telephone'])) {
            $data['telephone'] = $this->request->post['telephone'];
        } elseif (!empty($order_info)) {
            $data['telephone'] = $order_info['telephone'];
        } else {
            $data['telephone'] = $this->customer->getTelephone();
        }

        if (isset($this->request->post['product'])) {
            $data['product'] = $this->request->post['product'];
        } elseif (!empty($product_info)) {
            $data['product'] = $product_info['name'];
        } else {
            $data['product'] = '';
        }

        /* if (isset($this->request->post['repair_reason_refund']))
          {
          $data['repair_reason_refund'] = $this->request->post['repair_reason_refund'];
          }
          else
          {
          $data['repair_reason_refund'] = '';
          } */

        if (isset($this->request->post['login_id'])) {
            $data['login_id'] = $this->request->post['login_id'];
        } else
            $data['login_id'] = '';

        if (isset($this->request->post['shipping_address'])) {
            $data['shipping_address'] = $this->request->post['shipping_address'];
        } else
            $data['shipping_address'] = '';

        if (isset($this->request->post['model'])) {
            $data['model'] = $this->request->post['model'];
        } elseif (!empty($product_info)) {
            $data['model'] = $product_info['model'];
        } else {
            $data['model'] = '';
        }

        if (isset($this->request->post['quantity'])) {
            $data['quantity'] = $this->request->post['quantity'];
        } else {
            $data['quantity'] = 1;
        }

        /* if (isset($this->request->post['opened']))
          {
          $data['opened'] = $this->request->post['opened'];
          }
          else
          {
          $data['opened'] = false;
          } */

        /* if (isset($this->request->post['repair_reason_id']))
          {
          $data['repair_reason_id'] = $this->request->post['repair_reason_id'];
          }
          else
          {
          $data['repair_reason_id'] = '';
          }

          $this->load->model('localisation/repair_reason');

          $data['repair_reasons'] = $this->model_localisation_repair_reason->getRepairReasons(); */

        if (isset($this->request->post['comment'])) {
            $data['comment'] = $this->request->post['comment'];
        } else {
            $data['comment'] = '';
        }

        if (isset($this->request->post['captcha'])) {
            $data['captcha'] = $this->request->post['captcha'];
        } else {
            $data['captcha'] = '';
        }

        $repair_images = array();

        if (isset($this->request->post['image'])) {
            $repair_images = $this->request->post['image'];
        }

        $data['repair_images'] = array();
        $this->load->model('tool/image');

        foreach ($repair_images as $repair_image) {
            if ($repair_image['image'] && file_exists(DIR_IMAGE . $repair_image['image'])) {
                $image = $repair_image['image'];

                $data['repair_images'][] = array(
                    'image' => $image,
                    'thumb' => $this->model_tool_image->resize($image, 50, 50)
                );
            }
        }

        $data['back'] = $this->url->link('account/account', '', 'SSL');


        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/repair_form.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/repair_form.tpl', $data));
        } else {
            $this->response->setOutput($this->load->view('default/template/account/repair_form.tpl', $data));
        }
    }

    public function success() {
        $this->load->language('account/repair');

        $this->document->setTitle($this->language->get('heading_title'));

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('account/repair', '', 'SSL')
        );

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_message'] = $this->language->get('text_message');

        $data['button_continue'] = $this->language->get('button_continue');

        $data['continue'] = $this->url->link('common/home');



        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/success.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/success.tpl', $data));
        } else {
            $this->response->setOutput($this->load->view('default/template/common/success.tpl', $data));
        }
    }

    private function validate() {
        if ((utf8_strlen(trim($this->request->post['firstname'])) < 1) || (utf8_strlen(trim($this->request->post['firstname'])) > 32)) {
            $this->error['firstname'] = $this->language->get('error_firstname');
        }

        if ((utf8_strlen(trim($this->request->post['lastname'])) < 1) || (utf8_strlen(trim($this->request->post['lastname'])) > 32)) {
            $this->error['lastname'] = $this->language->get('error_lastname');
        }

        if ((utf8_strlen($this->request->post['email']) > 96) || !preg_match('/^[^\@]+@.*.[a-z]{2,15}$/i', $this->request->post['email'])) {
            $this->error['email'] = $this->language->get('error_email');
        }

        if ((utf8_strlen($this->request->post['telephone']) < 3) || (utf8_strlen($this->request->post['telephone']) > 32)) {
            $this->error['telephone'] = $this->language->get('error_telephone');
        }

        if ((utf8_strlen($this->request->post['product']) < 1) || (utf8_strlen($this->request->post['product']) > 255)) {
            $this->error['product'] = $this->language->get('error_product');
        }

        if (empty($this->session->data['captcha']) || ($this->session->data['captcha'] != $this->request->post['captcha'])) {
            $this->error['captcha'] = $this->language->get('error_captcha');
        }

        return !$this->error;
    }

}

?>