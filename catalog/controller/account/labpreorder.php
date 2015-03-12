<?php

class ControllerAccountlabpreorder extends Controller {

    private $error = array();
    

    public function index() {
        if (!$this->customer->isLogged()) {
            $this->session->data['redirect'] = $this->url->link('account/labpreorder', '', 'SSL');

            $this->response->redirect($this->url->link('account/login', '', 'SSL'));
        }

        $this->load->language('account/labpreorder');

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
            'href' => $this->url->link('account/labpreorder', $url, 'SSL')
        );

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_empty'] = $this->language->get('text_empty');

        $data['column_labpreorder_id'] = $this->language->get('column_labpreorder_id');
        $data['column_order_id'] = $this->language->get('column_order_id');
        $data['column_status'] = $this->language->get('column_status');
        $data['column_date_added'] = $this->language->get('column_date_added');
        $data['column_customer'] = $this->language->get('column_customer');

        $data['button_view'] = $this->language->get('button_view');
        $data['button_continue'] = $this->language->get('button_continue');

        $this->load->model('account/labpreorder');

        if (isset($this->request->get['page'])) {
            $page = $this->request->get['page'];
        } else {
            $page = 1;
        }

        $data['labpreorders'] = array();

        $labpreorder_total = $this->model_account_labpreorder->getTotallabpreorders();

        $results = $this->model_account_labpreorder->getlabpreorders(($page - 1) * 10, 10);
        print_r($results);

        foreach ($results as $result) {
            $data['labpreorders'][] = array(
                'labpreorder_id' => $result['labpreorder_id'],
                'address' => $result['address'],
                'name' => $result['firstname'] . ' ' . $result['lastname'],
                'status' => $result['status'],
                'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
                'href' => $this->url->link('account/labpreorder/info', 'labpreorder_id=' . $result['labpreorder_id'] . $url, 'SSL')
            );
        }

        $pagination = new Pagination();
        $pagination->total = $labpreorder_total;
        $pagination->page = $page;
        $pagination->limit = $this->config->get('config_product_limit');
        $pagination->url = $this->url->link('account/labpreorder', 'page={page}', 'SSL');

        $data['pagination'] = $pagination->render();

        $data['results'] = sprintf($this->language->get('text_pagination'), ($labpreorder_total) ? (($page - 1) * $this->config->get('config_product_limit')) + 1 : 0, ((($page - 1) * $this->config->get('config_product_limit')) > ($labpreorder_total - $this->config->get('config_product_limit'))) ? $labpreorder_total : ((($page - 1) * $this->config->get('config_product_limit')) + $this->config->get('config_product_limit')), $labpreorder_total, ceil($labpreorder_total / $this->config->get('config_product_limit')));

        $data['continue'] = $this->url->link('account/account', '', 'SSL');


        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/labpreorder_list.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/labpreorder_list.tpl', $data));
        } else {
            $this->response->setOutput($this->load->view('default/template/account/labpreorder_list.tpl', $data));
        }
    }

    public function info() {
        $this->load->language('account/labpreorder');

        if (isset($this->request->get['labpreorder_id'])) {
            $labpreorder_id = $this->request->get['labpreorder_id'];
        } else {
            $labpreorder_id = 0;
        }

        if (!$this->customer->isLogged()) {
            $this->session->data['redirect'] = $this->url->link('account/labpreorder/info', 'labpreorder_id=' . $labpreorder_id, 'SSL');

            $this->response->redirect($this->url->link('account/login', '', 'SSL'));
        }

        $this->load->model('account/labpreorder');

        $labpreorder_info = $this->model_account_labpreorder->getlabpreorder($labpreorder_id);

        if ($labpreorder_info) {
            $this->document->setTitle($this->language->get('text_labpreorder'));

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
                'href' => $this->url->link('account/labpreorder', $url, 'SSL')
            );

            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_labpreorder'),
                'href' => $this->url->link('account/labpreorder/info', 'labpreorder_id=' . $this->request->get['labpreorder_id'] . $url, 'SSL')
            );

            $data['heading_title'] = $this->language->get('text_labpreorder');

            $data['text_labpreorder_detail'] = $this->language->get('text_labpreorder_detail');
            $data['text_labpreorder_id'] = $this->language->get('text_labpreorder_id');
            $data['text_address'] = $this->language->get('text_address');
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
            $data['column_date_added'] = $this->language->get('column_date_added');
            $data['column_status'] = $this->language->get('column_status');
            $data['column_comment'] = $this->language->get('column_comment');

            $data['button_continue'] = $this->language->get('button_continue');

            $data['labpreorder_id'] = $labpreorder_info['labpreorder_id'];
            $data['address'] = $labpreorder_info['address'];
            $data['date_added'] = date($this->language->get('date_format_short'), strtotime($labpreorder_info['date_added']));
            $data['firstname'] = $labpreorder_info['firstname'];
            $data['lastname'] = $labpreorder_info['lastname'];
            $data['email'] = $labpreorder_info['email'];
            $data['telephone'] = $labpreorder_info['telephone'];
            $data['product'] = $labpreorder_info['product'];
            $data['model'] = $labpreorder_info['model'];
            $data['quantity'] = $labpreorder_info['quantity'];
            $data['comment'] = nl2br($labpreorder_info['comment']);
            $data['action'] = $labpreorder_info['action'];

            $data['histories'] = array();

            $results = $this->model_account_labpreorder->getlabpreorderHistories($this->request->get['labpreorder_id']);

            foreach ($results as $result) {
                $data['histories'][] = array(
                    'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
                    'status' => $result['status'],
                    'comment' => nl2br($result['comment'])
                );
            }

            $data['continue'] = $this->url->link('account/labpreorder', $url, 'SSL');




            $data['column_left'] = $this->load->controller('common/column_left');
            $data['column_right'] = $this->load->controller('common/column_right');
            $data['content_top'] = $this->load->controller('common/content_top');
            $data['content_bottom'] = $this->load->controller('common/content_bottom');
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/labpreorder_info.tpl')) {
                $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/labpreorder_info.tpl', $data));
            } else {
                $this->response->setOutput($this->load->view('default/template/account/labpreorder_info.tpl', $data));
            }
        } else {
            $this->document->setTitle($this->language->get('text_labpreorder'));

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
                'href' => $this->url->link('account/labpreorder', '', 'SSL')
            );

            $url = '';

            if (isset($this->request->get['page'])) {
                $url .= '&page=' . $this->request->get['page'];
            }

            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_labpreorder'),
                'href' => $this->url->link('account/labpreorder/info', 'labpreorder_id=' . $labpreorder_id . $url, 'SSL')
            );

            $data['heading_title'] = $this->language->get('text_labpreorder');

            $data['text_error'] = $this->language->get('text_error');

            $data['button_continue'] = $this->language->get('button_continue');

            $data['continue'] = $this->url->link('account/labpreorder', '', 'SSL');


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
        $this->load->language('account/labpreorder');

        $this->load->model('account/labpreorder');

        $this->document->addScript('catalog/view/javascript/jquery/uploadify/jquery.uploadify-3.1.min.js');

        $this->document->addStyle('catalog/view/javascript/jquery/uploadify/uploadify.css');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $labpreorder_id = $this->model_account_labpreorder->addlabpreorder($this->request->post);

            print_r($labpreorder_id);
            if (isset($this->request->post['email'])) {
                // Send HTML Mail
                $template = new Template();

                $template->data = $this->request->post;
                $template->data['labpreorder_id'] = $labpreorder_id;

                $mail = new Mail($this->config->get('config_mail'));
                $mail->setTo($this->request->post['email']);
                $mail->setFrom('huuhanh.com.vn');
                $mail->setSender($this->config->get('config_name'));
                $mail->setSubject('labpreorder confirm from ' . $this->config->get('config_name'));
                $mail->setHtml($template->fetch('journal2/template/mail/labpreorder.tpl'));
                $mail->send();

                // Copy admin
                $mail->setFrom($this->request->post['email']);
                $mail->setTo($this->config->get('config_email'));
                $mail->setSubject('Copy : Lab Pre-Order confirm from ' . $this->request->post['email']);
                $mail->send();
            }

            $this->response->redirect($this->url->link('account/labpreorder/success', '', 'SSL'));
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
            'href' => $this->url->link('account/labpreorder/insert', '', 'SSL')
        );

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_description'] = $this->language->get('text_description');
        $data['text_order'] = $this->language->get('text_order');
        $data['text_product'] = $this->language->get('text_product');
        $data['text_yes'] = $this->language->get('text_yes');
        $data['text_no'] = $this->language->get('text_no');

        $data['entry_address'] = $this->language->get('entry_address');
        $data['entry_firstname'] = $this->language->get('entry_firstname');
        $data['entry_lastname'] = $this->language->get('entry_lastname');
        $data['entry_email'] = $this->language->get('entry_email');
        $data['entry_telephone'] = $this->language->get('entry_telephone');
        $data['entry_product'] = $this->language->get('entry_product');
        $data['entry_model'] = $this->language->get('entry_model');
        $data['entry_quantity'] = $this->language->get('entry_quantity');
        $data['entry_fault_detail'] = $this->language->get('entry_fault_detail');
        $data['entry_captcha'] = $this->language->get('entry_captcha');

        $data['button_continue'] = $this->language->get('button_continue');
        $data['button_back'] = $this->language->get('button_back');

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->error['address'])) {
            $data['error_address'] = $this->error['address'];
        } else {
            $data['error_address'] = '';
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
        
        if (isset($this->error['quantity'])) {
            $data['error_quantity'] = $this->error['quantity'];
        } else {
            $data['error_quantity'] = '';
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

        if (isset($this->error['captcha'])) {
            $data['error_captcha'] = $this->error['captcha'];
        } else {
            $data['error_captcha'] = '';
        }

        $data['action'] = $this->url->link('account/labpreorder/insert', '', 'SSL');

        $this->load->model('account/order');

        if (isset($this->request->get['order_id'])) {
            $order_info = $this->model_account_order->getOrder($this->request->get['order_id']);
        }

        $this->load->model('catalog/product');

        if (isset($this->request->get['product_id'])) {
            $product_info = $this->model_catalog_product->getProduct($this->request->get['product_id']);
        }

        if (isset($this->request->post['address'])) {
            $data['address'] = $this->request->post['address'];
        } elseif (!empty($order_info)) {
            $data['address'] = $order_info['address'];
        } else {
            $data['address'] = '';
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

        if (isset($this->request->post['login_id'])) {
            $data['login_id'] = $this->request->post['login_id'];
        } else
            $data['login_id'] = '';
        
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

        $data['back'] = $this->url->link('account/account', '', 'SSL');


        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/labpreorder_form.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/labpreorder_form.tpl', $data));
        } else {
            $this->response->setOutput($this->load->view('default/template/account/labpreorder_form.tpl', $data));
        }
    }

    public function success() {
        $this->load->language('account/labpreorder');

        $this->document->setTitle($this->language->get('heading_title'));

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('account/labpreorder', '', 'SSL')
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
        if ((utf8_strlen(trim($this->request->post['firstname'])) < 2) || (utf8_strlen(trim($this->request->post['firstname'])) > 32)) {
            $this->error['firstname'] = $this->language->get('error_firstname');
        }

        if ((utf8_strlen(trim($this->request->post['lastname'])) < 2) || (utf8_strlen(trim($this->request->post['lastname'])) > 32)) {
            $this->error['lastname'] = $this->language->get('error_lastname');
        }

        if ((utf8_strlen($this->request->post['email']) > 96) || !preg_match('/^[^\@]+@.*.[a-z]{2,15}$/i', $this->request->post['email'])) {
            $this->error['email'] = $this->language->get('error_email');
        }

        if ((utf8_strlen($this->request->post['telephone']) < 8) || (utf8_strlen($this->request->post['telephone']) > 13)) {
            $this->error['telephone'] = $this->language->get('error_telephone');
        }
        
        if ((utf8_strlen(trim($this->request->post['address'])) < 3) || (utf8_strlen(trim($this->request->post['address'])) > 128)) {
			$this->error['address'] = $this->language->get('error_address');
		}

        if ((utf8_strlen($this->request->post['product']) < 1) || (utf8_strlen($this->request->post['product']) > 255)) {
            $this->error['product'] = $this->language->get('error_product');
        }
        
        if ((utf8_strlen($this->request->post['quantity']) < 1) || (utf8_strlen($this->request->post['quantity']) > 3)) {
            $this->error['quantity'] = $this->language->get('error_quantity');
        }

        if (empty($this->session->data['captcha']) || ($this->session->data['captcha'] != $this->request->post['captcha'])) {
            $this->error['captcha'] = $this->language->get('error_captcha');
        }

        return !$this->error;
    }

}

?>