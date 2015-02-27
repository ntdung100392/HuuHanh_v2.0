<?php

class ControllerAccountRepair extends Controller
{

    private $error = array();

    public function multi_upload()
    {
        if (!empty($this->request->files))
        {
            $multi_upload_path = 'repair/';


            if (!is_dir(DIR_IMAGE . 'data' . '/' . $multi_upload_path))
            {
                mkdir(DIR_IMAGE . 'data' . '/' . $multi_upload_path, 0755);
            }

            $upload_temp_file = $this->request->files['Filedata']['tmp_name'];

            // Validate the file type
            $fileTypes = array('jpg', 'jpeg', 'gif', 'png', 'mp4', 'mov'); // File extensions
            $fileParts = pathinfo($this->request->files['Filedata']['name']);

            do
            {
                $file_name = md5(rand(100000, 999999) . microtime() . $this->request->files['Filedata']['name']) . '.' . $fileParts['extension'];
                $targetFile = DIR_IMAGE . 'data' . '/' . $multi_upload_path . $file_name;
            }
            while (file_exists($targetFile));

            $json = array();

            if (in_array(strtolower($fileParts['extension']), $fileTypes))
            {
                $this->load->model('tool/image');

                move_uploaded_file($upload_temp_file, $targetFile);

                $size = getimagesize($targetFile);

                if ($size[0] > 1000)
                {
                    $nwidth = 1000;
                    $nheight = $nwidth * $size[1] / $size[0];

                    $image = new Image($targetFile);
                    $image->resize($nwidth, $nheight);
                    $image->save($targetFile);
                }

                if (file_exists($targetFile))
                {
                    $json['filename'] = $file_name;
                    $json['file_name'] = 'data' . '/' . $multi_upload_path . $file_name;
                    $json['thumb'] = $this->model_tool_image->resize('data' . '/' . $multi_upload_path . $file_name, 50, 50);
                    $json['status'] = 1;
                }
                else
                {
                    $json['status'] = 0;
                }
            }
            else
            {
                $json['status'] = -1;
            }

            $this->response->setOutput(json_encode($json));
        }
    }

    public function index()
    {
        if (!$this->customer->isLogged())
        {
            $this->session->data['redirect'] = $this->url->link('account/repair', '', 'SSL');

            $this->redirect($this->url->link('account/login', '', 'SSL'));
        }

        $this->language->load('account/repair');

        $this->document->setTitle($this->language->get('heading_title'));

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_account'),
            'href' => $this->url->link('account/account', '', 'SSL'),
            'separator' => $this->language->get('text_separator')
        );

        $url = '';

        if (isset($this->request->get['page']))
        {
            $url .= '&page=' . $this->request->get['page'];
        }

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('account/repair', $url, 'SSL'),
            'separator' => $this->language->get('text_separator')
        );

        $this->data['heading_title'] = $this->language->get('heading_title');

        $this->data['text_repair_id'] = $this->language->get('text_repair_id');
        $this->data['text_order_id'] = $this->language->get('text_order_id');
        $this->data['text_status'] = $this->language->get('text_status');
        $this->data['text_date_added'] = $this->language->get('text_date_added');
        $this->data['text_customer'] = $this->language->get('text_customer');
        $this->data['text_empty'] = $this->language->get('text_empty');

        $this->data['button_view'] = $this->language->get('button_view');
        $this->data['button_continue'] = $this->language->get('button_continue');

        $this->load->model('account/repair');

        if (isset($this->request->get['page']))
        {
            $page = $this->request->get['page'];
        }
        else
        {
            $page = 1;
        }

        $this->data['repairs'] = array();

        $repair_total = $this->model_account_repair->getTotalRepairs();

        $results = $this->model_account_repair->getRepairs(($page - 1) * 10, 10);

        foreach ($results as $result)
        {
            $this->data['repairs'][] = array(
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
        $pagination->limit = $this->config->get('config_catalog_limit');
        $pagination->text = $this->language->get('text_pagination');
        $pagination->url = $this->url->link('account/history', 'page={page}', 'SSL');

        $this->data['pagination'] = $pagination->render();

        $this->data['continue'] = $this->url->link('account/account', '', 'SSL');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/repair_list.tpl'))
        {
            $this->template = $this->config->get('config_template') . '/template/account/repair_list.tpl';
        }
        else
        {
            $this->template = 'default/template/account/repair_list.tpl';
        }

        $this->children = array(
            'common/column_left',
            'common/column_right',
            'common/content_top',
            'common/content_bottom',
            'common/footer',
            'common/header'
        );

        $this->response->setOutput($this->render());
    }

    public function info()
    {
        $this->load->language('account/repair');

        if (isset($this->request->get['repair_id']))
        {
            $repair_id = $this->request->get['repair_id'];
        }
        else
        {
            $repair_id = 0;
        }

        if (!$this->customer->isLogged())
        {
            $this->session->data['redirect'] = $this->url->link('account/repair/info', 'repair_id=' . $repair_id, 'SSL');

            $this->redirect($this->url->link('account/login', '', 'SSL'));
        }

        $this->load->model('account/repair');

        $repair_info = $this->model_account_repair->getRepair($repair_id);

        if ($repair_info)
        {
            $this->document->setTitle($this->language->get('text_repair'));

            $this->data['breadcrumbs'] = array();

            $this->data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_home'),
                'href' => $this->url->link('common/home', '', 'SSL'),
                'separator' => false
            );

            $this->data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_account'),
                'href' => $this->url->link('account/account', '', 'SSL'),
                'separator' => $this->language->get('text_separator')
            );

            $url = '';

            if (isset($this->request->get['page']))
            {
                $url .= '&page=' . $this->request->get['page'];
            }

            $this->data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('account/repair', $url, 'SSL'),
                'separator' => $this->language->get('text_separator')
            );

            $this->data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_repair'),
                'href' => $this->url->link('account/repair/info', 'repair_id=' . $this->request->get['repair_id'] . $url, 'SSL'),
                'separator' => $this->language->get('text_separator')
            );

            $this->data['heading_title'] = $this->language->get('text_repair');

            $this->data['text_repair_detail'] = $this->language->get('text_repair_detail');
            $this->data['text_repair_id'] = $this->language->get('text_repair_id');
            $this->data['text_order_id'] = $this->language->get('text_order_id');
            $this->data['text_date_ordered'] = $this->language->get('text_date_ordered');
            $this->data['text_customer'] = $this->language->get('text_customer');
            $this->data['text_email'] = $this->language->get('text_email');
            $this->data['text_telephone'] = $this->language->get('text_telephone');
            $this->data['text_status'] = $this->language->get('text_status');
            $this->data['text_date_added'] = $this->language->get('text_date_added');
            $this->data['text_product'] = $this->language->get('text_product');
            $this->data['text_comment'] = $this->language->get('text_comment');
            $this->data['text_history'] = $this->language->get('text_history');

            $this->data['column_product'] = $this->language->get('column_product');
            $this->data['column_model'] = $this->language->get('column_model');
            $this->data['column_quantity'] = $this->language->get('column_quantity');
            //$this->data['column_opened'] = $this->language->get('column_opened');
            //$this->data['column_reason'] = $this->language->get('column_reason');
            //$this->data['column_action'] = $this->language->get('column_action');
            $this->data['column_date_added'] = $this->language->get('column_date_added');
            $this->data['column_status'] = $this->language->get('column_status');
            $this->data['column_comment'] = $this->language->get('column_comment');

            $this->data['button_continue'] = $this->language->get('button_continue');

            $this->data['repair_id'] = $repair_info['repair_id'];
            $this->data['order_id'] = $repair_info['order_id'];
            $this->data['date_ordered'] = date($this->language->get('date_format_short'), strtotime($repair_info['date_ordered']));
            $this->data['date_added'] = date($this->language->get('date_format_short'), strtotime($repair_info['date_added']));
            $this->data['firstname'] = $repair_info['firstname'];
            $this->data['lastname'] = $repair_info['lastname'];
            $this->data['email'] = $repair_info['email'];
            $this->data['telephone'] = $repair_info['telephone'];
            $this->data['product'] = $repair_info['product'];
            $this->data['model'] = $repair_info['model'];
            $this->data['quantity'] = $repair_info['quantity'];
            //$this->data['reason'] = $repair_info['reason'];
            //$this->data['opened'] = $repair_info['opened'] ? $this->language->get('text_yes') : $this->language->get('text_no');
            $this->data['comment'] = nl2br($repair_info['comment']);
            $this->data['action'] = $repair_info['action'];

            $this->data['histories'] = array();

            $results = $this->model_account_repair->getRepairHistories($this->request->get['repair_id']);

            foreach ($results as $result)
            {
                $this->data['histories'][] = array(
                    'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
                    'status' => $result['status'],
                    'comment' => nl2br($result['comment'])
                );
            }            

            $this->data['continue'] = $this->url->link('account/repair', $url, 'SSL');

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/repair_info.tpl'))
            {
                $this->template = $this->config->get('config_template') . '/template/account/repair_info.tpl';
            }
            else
            {
                $this->template = 'default/template/account/repair_info.tpl';
            }

            $this->children = array(
                'common/column_left',
                'common/column_right',
                'common/content_top',
                'common/content_bottom',
                'common/footer',
                'common/header'
            );

            $this->response->setOutput($this->render());
        }
        else
        {
            $this->document->setTitle($this->language->get('text_repair'));

            $this->data['breadcrumbs'] = array();

            $this->data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_home'),
                'href' => $this->url->link('common/home'),
                'separator' => false
            );

            $this->data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_account'),
                'href' => $this->url->link('account/account', '', 'SSL'),
                'separator' => $this->language->get('text_separator')
            );

            $this->data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('account/repair', '', 'SSL'),
                'separator' => $this->language->get('text_separator')
            );

            $url = '';

            if (isset($this->request->get['page']))
            {
                $url .= '&page=' . $this->request->get['page'];
            }

            $this->data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_repair'),
                'href' => $this->url->link('account/repair/info', 'repair_id=' . $repair_id . $url, 'SSL'),
                'separator' => $this->language->get('text_separator')
            );

            $this->data['heading_title'] = $this->language->get('text_repair');

            $this->data['text_error'] = $this->language->get('text_error');

            $this->data['button_continue'] = $this->language->get('button_continue');

            $this->data['continue'] = $this->url->link('account/repair', '', 'SSL');

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found.tpl'))
            {
                $this->template = $this->config->get('config_template') . '/template/error/not_found.tpl';
            }
            else
            {
                $this->template = 'default/template/error/not_found.tpl';
            }

            $this->children = array(
                'common/column_left',
                'common/column_right',
                'common/content_top',
                'common/content_bottom',
                'common/footer',
                'common/header'
            );

            $this->response->setOutput($this->render());
        }
    }

    public function insert()
    {
        $this->language->load('account/repair');

        $this->load->model('account/repair');

        $this->document->addScript('admin/view/javascript/jquery/jquery.uploadify-3.1.min.js');

        $this->document->addStyle('admin/view/stylesheet/uploadify.css');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate())
        {
            $repair_id = $this->model_account_repair->addRepair($this->request->post);
            
            if (isset($this->request->post['email']))
            {
                // Send HTML Mail
                $template = new Template();

                $template->data = $this->request->post;
                $template->data['repair_id'] = $repair_id;

                $mail = new Mail();
                $mail->protocol = $this->config->get('config_mail_protocol');
                $mail->hostname = $this->config->get('config_smtp_host');
                $mail->username = $this->config->get('config_smtp_username');
                $mail->password = $this->config->get('config_smtp_password');
                $mail->port = $this->config->get('config_smtp_port');
                $mail->timeout = $this->config->get('config_smtp_timeout');
                $mail->setTo($this->request->post['email']);
                $mail->setFrom('support@intelligentuas.com');
                $mail->setSender($this->config->get('config_name'));
                $mail->setSubject('Repair confirm from ' . $this->config->get('config_name'));
                $mail->setHtml($template->fetch('journal/template/mail/repair.tpl'));
                $mail->send();

                // Copy admin
                $mail->setFrom($this->request->post['email']);
                $mail->setTo('support@intelligentuas.com');
                $mail->setSubject('Copy : Repair confirm from ' . $this->request->post['email']);
                $mail->send();
            }

            $this->redirect($this->url->link('account/repair/success', '', 'SSL'));
        }

        $this->document->setTitle($this->language->get('heading_title'));

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_account'),
            'href' => $this->url->link('account/account', '', 'SSL'),
            'separator' => $this->language->get('text_separator')
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('account/repair/insert', '', 'SSL'),
            'separator' => $this->language->get('text_separator')
        );

        $this->data['heading_title'] = $this->language->get('heading_title');

        $this->data['text_description'] = $this->language->get('text_description');
        $this->data['text_order'] = $this->language->get('text_order');
        $this->data['text_product'] = $this->language->get('text_product');
        $this->data['text_yes'] = $this->language->get('text_yes');
        $this->data['text_no'] = $this->language->get('text_no');

        $this->data['entry_order_id'] = $this->language->get('entry_order_id');
        $this->data['entry_date_ordered'] = $this->language->get('entry_date_ordered');
        $this->data['entry_firstname'] = $this->language->get('entry_firstname');
        $this->data['entry_lastname'] = $this->language->get('entry_lastname');
        $this->data['entry_email'] = $this->language->get('entry_email');
        $this->data['entry_telephone'] = $this->language->get('entry_telephone');
        $this->data['entry_product'] = $this->language->get('entry_product');
        $this->data['entry_model'] = $this->language->get('entry_model');
        $this->data['entry_quantity'] = $this->language->get('entry_quantity');
        //$this->data['entry_reason'] = $this->language->get('entry_reason');
        //$this->data['entry_opened'] = $this->language->get('entry_opened');
        $this->data['entry_fault_detail'] = $this->language->get('entry_fault_detail');
        $this->data['entry_captcha'] = $this->language->get('entry_captcha');

        $this->data['button_continue'] = $this->language->get('button_continue');
        $this->data['button_back'] = $this->language->get('button_back');

        if (isset($this->error['warning']))
        {
            $this->data['error_warning'] = $this->error['warning'];
        }
        else
        {
            $this->data['error_warning'] = '';
        }

        if (isset($this->error['order_id']))
        {
            $this->data['error_order_id'] = $this->error['order_id'];
        }
        else
        {
            $this->data['error_order_id'] = '';
        }

        if (isset($this->error['firstname']))
        {
            $this->data['error_firstname'] = $this->error['firstname'];
        }
        else
        {
            $this->data['error_firstname'] = '';
        }

        if (isset($this->error['lastname']))
        {
            $this->data['error_lastname'] = $this->error['lastname'];
        }
        else
        {
            $this->data['error_lastname'] = '';
        }

        if (isset($this->error['email']))
        {
            $this->data['error_email'] = $this->error['email'];
        }
        else
        {
            $this->data['error_email'] = '';
        }

        if (isset($this->error['telephone']))
        {
            $this->data['error_telephone'] = $this->error['telephone'];
        }
        else
        {
            $this->data['error_telephone'] = '';
        }

        if (isset($this->error['product']))
        {
            $this->data['error_product'] = $this->error['product'];
        }
        else
        {
            $this->data['error_product'] = '';
        }

        if (isset($this->error['model']))
        {
            $this->data['error_model'] = $this->error['model'];
        }
        else
        {
            $this->data['error_model'] = '';
        }

        /* if (isset($this->error['reason']))
          {
          $this->data['error_reason'] = $this->error['reason'];
          }
          else
          {
          $this->data['error_reason'] = '';
          } */

        if (isset($this->error['captcha']))
        {
            $this->data['error_captcha'] = $this->error['captcha'];
        }
        else
        {
            $this->data['error_captcha'] = '';
        }

        $this->data['action'] = $this->url->link('account/repair/insert', '', 'SSL');

        $this->load->model('account/order');

        if (isset($this->request->get['order_id']))
        {
            $order_info = $this->model_account_order->getOrder($this->request->get['order_id']);
        }

        $this->load->model('catalog/product');

        if (isset($this->request->get['product_id']))
        {
            $product_info = $this->model_catalog_product->getProduct($this->request->get['product_id']);
        }

        if (isset($this->request->post['order_id']))
        {
            $this->data['order_id'] = $this->request->post['order_id'];
        }
        elseif (!empty($order_info))
        {
            $this->data['order_id'] = $order_info['order_id'];
        }
        else
        {
            $this->data['order_id'] = '';
        }

        if (isset($this->request->post['date_ordered']))
        {
            $this->data['date_ordered'] = $this->request->post['date_ordered'];
        }
        elseif (!empty($order_info))
        {
            $this->data['date_ordered'] = date('Y-m-d', strtotime($order_info['date_added']));
        }
        else
        {
            $this->data['date_ordered'] = '';
        }

        if (isset($this->request->post['firstname']))
        {
            $this->data['firstname'] = $this->request->post['firstname'];
        }
        elseif (!empty($order_info))
        {
            $this->data['firstname'] = $order_info['firstname'];
        }
        else
        {
            $this->data['firstname'] = $this->customer->getFirstName();
        }

        if (isset($this->request->post['lastname']))
        {
            $this->data['lastname'] = $this->request->post['lastname'];
        }
        elseif (!empty($order_info))
        {
            $this->data['lastname'] = $order_info['lastname'];
        }
        else
        {
            $this->data['lastname'] = $this->customer->getLastName();
        }

        if (isset($this->request->post['email']))
        {
            $this->data['email'] = $this->request->post['email'];
        }
        elseif (!empty($order_info))
        {
            $this->data['email'] = $order_info['email'];
        }
        else
        {
            $this->data['email'] = $this->customer->getEmail();
        }

        if (isset($this->request->post['telephone']))
        {
            $this->data['telephone'] = $this->request->post['telephone'];
        }
        elseif (!empty($order_info))
        {
            $this->data['telephone'] = $order_info['telephone'];
        }
        else
        {
            $this->data['telephone'] = $this->customer->getTelephone();
        }

        if (isset($this->request->post['product']))
        {
            $this->data['product'] = $this->request->post['product'];
        }
        elseif (!empty($product_info))
        {
            $this->data['product'] = $product_info['name'];
        }
        else
        {
            $this->data['product'] = '';
        }

        /* if (isset($this->request->post['repair_reason_refund']))
          {
          $this->data['repair_reason_refund'] = $this->request->post['repair_reason_refund'];
          }
          else
          {
          $this->data['repair_reason_refund'] = '';
          } */

        if (isset($this->request->post['login_id']))
        {
            $this->data['login_id'] = $this->request->post['login_id'];
        }
        else
            $this->data['login_id'] = '';

        if (isset($this->request->post['shipping_address']))
        {
            $this->data['shipping_address'] = $this->request->post['shipping_address'];
        }
        else
            $this->data['shipping_address'] = '';

        if (isset($this->request->post['model']))
        {
            $this->data['model'] = $this->request->post['model'];
        }
        elseif (!empty($product_info))
        {
            $this->data['model'] = $product_info['model'];
        }
        else
        {
            $this->data['model'] = '';
        }

        if (isset($this->request->post['quantity']))
        {
            $this->data['quantity'] = $this->request->post['quantity'];
        }
        else
        {
            $this->data['quantity'] = 1;
        }

        /* if (isset($this->request->post['opened']))
          {
          $this->data['opened'] = $this->request->post['opened'];
          }
          else
          {
          $this->data['opened'] = false;
          } */

        /* if (isset($this->request->post['repair_reason_id']))
          {
          $this->data['repair_reason_id'] = $this->request->post['repair_reason_id'];
          }
          else
          {
          $this->data['repair_reason_id'] = '';
          }

          $this->load->model('localisation/repair_reason');

          $this->data['repair_reasons'] = $this->model_localisation_repair_reason->getRepairReasons(); */

        if (isset($this->request->post['comment']))
        {
            $this->data['comment'] = $this->request->post['comment'];
        }
        else
        {
            $this->data['comment'] = '';
        }

        if (isset($this->request->post['captcha']))
        {
            $this->data['captcha'] = $this->request->post['captcha'];
        }
        else
        {
            $this->data['captcha'] = '';
        }
        
        $repair_images = array();

        if (isset($this->request->post['image']))
        {
            $repair_images = $this->request->post['image'];
        }
        
        $this->data['repair_images'] = array();
        $this->load->model('tool/image');

        foreach ($repair_images as $repair_image)
        {
            if ($repair_image['image'] && file_exists(DIR_IMAGE . $repair_image['image']))
            {
                $image = $repair_image['image'];

                $this->data['repair_images'][] = array(
                    'image' => $image,
                    'thumb' => $this->model_tool_image->resize($image, 50, 50)
                );
            }
        }

        $this->data['back'] = $this->url->link('account/account', '', 'SSL');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/repair_form.tpl'))
        {
            $this->template = $this->config->get('config_template') . '/template/account/repair_form.tpl';
        }
        else
        {
            $this->template = 'default/template/account/repair_form.tpl';
        }

        $this->children = array(
            'common/column_left',
            'common/column_right',
            'common/content_top',
            'common/content_bottom',
            'common/footer',
            'common/header'
        );

        $this->response->setOutput($this->render());
    }

    public function success()
    {
        $this->language->load('account/repair');

        $this->document->setTitle($this->language->get('heading_title'));

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('account/repair', '', 'SSL'),
            'separator' => $this->language->get('text_separator')
        );

        $this->data['heading_title'] = $this->language->get('heading_title');

        $this->data['text_message'] = $this->language->get('text_message');

        $this->data['button_continue'] = $this->language->get('button_continue');

        $this->data['continue'] = $this->url->link('common/home');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/success.tpl'))
        {
            $this->template = $this->config->get('config_template') . '/template/common/success.tpl';
        }
        else
        {
            $this->template = 'default/template/common/success.tpl';
        }

        $this->children = array(
            'common/column_left',
            'common/column_right',
            'common/content_top',
            'common/content_bottom',
            'common/footer',
            'common/header'
        );

        $this->response->setOutput($this->render());
    }

    private function validate()
    {
        if ((utf8_strlen($this->request->post['firstname']) < 1) || (utf8_strlen($this->request->post['firstname']) > 32))
        {
            $this->error['firstname'] = $this->language->get('error_firstname');
        }

        if ((utf8_strlen($this->request->post['lastname']) < 1) || (utf8_strlen($this->request->post['lastname']) > 32))
        {
            $this->error['lastname'] = $this->language->get('error_lastname');
        }

        if ((utf8_strlen($this->request->post['email']) > 96) || !preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['email']))
        {
            $this->error['email'] = $this->language->get('error_email');
        }

        if ((utf8_strlen($this->request->post['telephone']) < 3) || (utf8_strlen($this->request->post['telephone']) > 32))
        {
            $this->error['telephone'] = $this->language->get('error_telephone');
        }

        if ((utf8_strlen($this->request->post['product']) < 1) || (utf8_strlen($this->request->post['product']) > 255))
        {
            $this->error['product'] = $this->language->get('error_product');
        }

        /* if (empty($this->request->post['repair_reason_id']))
          {
          $this->error['reason'] = $this->language->get('error_reason');
          } */

        if (empty($this->session->data['captcha']) || ($this->session->data['captcha'] != $this->request->post['captcha']))
        {
            $this->error['captcha'] = $this->language->get('error_captcha');
        }

        if (!$this->error)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public function captcha()
    {
        $this->load->library('captcha');

        $captcha = new Captcha();

        $this->session->data['captcha'] = $captcha->getCode();

        $captcha->showImage();
    }

}

?>