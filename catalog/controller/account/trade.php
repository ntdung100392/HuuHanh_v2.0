<?php

class ControllerAccountTrade extends Controller
{

    private $error = array();

    public function multi_upload()
    {
        if (!empty($this->request->files))
        {
            $multi_upload_path = 'trade/';


            if (!is_dir(DIR_IMAGE . 'data' . '/' . $multi_upload_path))
            {
                mkdir(DIR_IMAGE . 'data' . '/' . $multi_upload_path, 0777);
            }

            $upload_temp_file = $this->request->files['Filedata']['tmp_name'];

            // Validate the file type
            $fileTypes = array('jpg', 'jpeg', 'gif', 'png', 'mp4'); // File extensions
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
            $this->session->data['redirect'] = $this->url->link('account/trade', '', 'SSL');

            $this->redirect($this->url->link('account/login', '', 'SSL'));
        }

        $this->language->load('account/trade');

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
            'href' => $this->url->link('account/trade', $url, 'SSL'),
            'separator' => $this->language->get('text_separator')
        );

        $this->data['heading_title'] = $this->language->get('heading_title');

        $this->data['text_trade_id'] = $this->language->get('text_trade_id');
        $this->data['text_address'] = $this->language->get('text_address');
        $this->data['text_status'] = $this->language->get('text_status');
        $this->data['text_date_added'] = $this->language->get('text_date_added');
        $this->data['text_customer'] = $this->language->get('text_customer');
        $this->data['text_product'] = $this->language->get('text_product_name');
        $this->data['text_empty'] = $this->language->get('text_empty');

        $this->data['button_view'] = $this->language->get('button_view');
        $this->data['button_continue'] = $this->language->get('button_continue');

        $this->load->model('account/trade');

        if (isset($this->request->get['page']))
        {
            $page = $this->request->get['page'];
        }
        else
        {
            $page = 1;
        }

        $this->data['trades'] = array();

        $trade_total = $this->model_account_trade->getTotalTrades();

        $results = $this->model_account_trade->getTrades(($page - 1) * 10, 10);

        foreach ($results as $result)
        {
            $this->data['trades'][] = array(
                'trade_id' => $result['trade_id'],
                'product' => $result['product'],
                'address' => $result['address'],
                'name' => $result['firstname'] . ' ' . $result['lastname'],
                'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
                'href' => $this->url->link('account/trade/info', 'trade_id=' . $result['trade_id'] . $url, 'SSL')
            );
        }

        $pagination = new Pagination();
        $pagination->total = $trade_total;
        $pagination->page = $page;
        $pagination->limit = $this->config->get('config_catalog_limit');
        $pagination->text = $this->language->get('text_pagination');
        $pagination->url = $this->url->link('account/history', 'page={page}', 'SSL');

        $this->data['pagination'] = $pagination->render();

        $this->data['continue'] = $this->url->link('account/account', '', 'SSL');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/trade_list.tpl'))
        {
            $this->template = $this->config->get('config_template') . '/template/account/trade_list.tpl';
        }
        else
        {
            $this->template = 'default/template/account/trade_list.tpl';
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
        $this->load->language('account/trade');

        if (isset($this->request->get['trade_id']))
        {
            $trade_id = $this->request->get['trade_id'];
        }
        else
        {
            $trade_id = 0;
        }

        if (!$this->customer->isLogged())
        {
            $this->session->data['redirect'] = $this->url->link('account/trade/info', 'trade_id=' . $trade_id, 'SSL');

            $this->redirect($this->url->link('account/login', '', 'SSL'));
        }

        $this->load->model('account/trade');

        // Comment
        if (isset($this->request->post['comment']))
        {
            $this->model_account_trade->addTradeHistory($trade_id, $this->request->post);
        }

        $trade_info = $this->model_account_trade->getTrade($trade_id);

        if ($trade_info)
        {
            $this->document->setTitle($this->language->get('text_trade'));

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
                'href' => $this->url->link('account/trade', $url, 'SSL'),
                'separator' => $this->language->get('text_separator')
            );

            $this->data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_trade'),
                'href' => $this->url->link('account/trade/info', 'trade_id=' . $this->request->get['trade_id'] . $url, 'SSL'),
                'separator' => $this->language->get('text_separator')
            );

            $this->data['heading_title'] = $this->language->get('text_trade');

            $this->data['text_trade_detail'] = $this->language->get('text_trade_detail');
            $this->data['text_trade_id'] = $this->language->get('text_trade_id');
            $this->data['text_address'] = $this->language->get('text_address');
            $this->data['text_date_ordered'] = $this->language->get('text_date_ordered');
            $this->data['text_customer'] = $this->language->get('text_customer');
            $this->data['text_email'] = $this->language->get('text_email');
            $this->data['text_name'] = $this->language->get('text_name');
            $this->data['text_telephone'] = $this->language->get('text_telephone');
            $this->data['text_status'] = $this->language->get('text_status');
            $this->data['text_date_added'] = $this->language->get('text_date_added');
            $this->data['text_product'] = $this->language->get('text_product');
            $this->data['text_comment'] = $this->language->get('text_comment');
            $this->data['text_history'] = $this->language->get('text_history');

            $this->data['column_product'] = $this->language->get('column_product');
            $this->data['column_purchase_from'] = $this->language->get('column_purchase_from');
            $this->data['column_frequency'] = $this->language->get('column_frequency');

            $this->data['column_date_added'] = $this->language->get('column_date_added');
            $this->data['column_product_status'] = $this->language->get('column_product_status');
            $this->data['column_comment'] = $this->language->get('column_comment');

            $this->data['button_continue'] = $this->language->get('button_continue');

            $this->data['trade_id'] = $trade_info['trade_id'];
            $this->data['address'] = $trade_info['address'];
            $this->data['date_ordered'] = date($this->language->get('date_format_short'), strtotime($trade_info['date_ordered']));
            $this->data['date_added'] = date($this->language->get('date_format_short'), strtotime($trade_info['date_added']));
            $this->data['firstname'] = $trade_info['firstname'];
            $this->data['lastname'] = $trade_info['lastname'];
            $this->data['email'] = $trade_info['email'];
            $this->data['telephone'] = $trade_info['telephone'];
            $this->data['product'] = $trade_info['product'];
            $this->data['purchase_from'] = $trade_info['purchase_from'];
            $this->data['frequency'] = $trade_info['frequency'];
            $this->data['product_status'] = $trade_info['product_status'];


            $this->data['customer'] = $trade_info['product_status'];

            $this->data['comment'] = nl2br($trade_info['comment']);


            $this->data['histories'] = array();

            $results = $this->model_account_trade->getTradeHistories($this->request->get['trade_id']);

            foreach ($results as $result)
            {
                $this->data['histories'][] = array(
                    'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
                    'comment' => nl2br($result['comment'])
                );
            }

            $this->data['continue'] = $this->url->link('account/trade', $url, 'SSL');

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/trade_info.tpl'))
            {
                $this->template = $this->config->get('config_template') . '/template/account/trade_info.tpl';
            }
            else
            {
                $this->template = 'default/template/account/trade_info.tpl';
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
            $this->document->setTitle($this->language->get('text_trade'));

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
                'href' => $this->url->link('account/trade', '', 'SSL'),
                'separator' => $this->language->get('text_separator')
            );

            $url = '';

            if (isset($this->request->get['page']))
            {
                $url .= '&page=' . $this->request->get['page'];
            }

            $this->data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_trade'),
                'href' => $this->url->link('account/trade/info', 'trade_id=' . $trade_id . $url, 'SSL'),
                'separator' => $this->language->get('text_separator')
            );

            $this->data['heading_title'] = $this->language->get('text_trade');

            $this->data['text_error'] = $this->language->get('text_error');

            $this->data['button_continue'] = $this->language->get('button_continue');

            $this->data['continue'] = $this->url->link('account/trade', '', 'SSL');

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
        if (!$this->customer->isLogged())
        {
            $this->session->data['redirect'] = $this->url->link('account/trade/insert', '', 'SSL');
            $this->redirect($this->url->link('account/login', '', 'SSL'));
        }

        $this->language->load('account/trade');

        $this->load->model('account/trade');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate())
        {
            $trade_id = $this->model_account_trade->addTrade($this->request->post);
            
            if (isset($this->request->post['email']))
            {
                // Send HTML Mail
                $template = new Template();

                $template->data = $this->request->post;
                $template->data['trade_id'] = $trade_id;

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
                $mail->setSubject('Trade confirm from ' . $this->config->get('config_name'));
                $mail->setHtml($template->fetch('journal/template/mail/trade.tpl'));
                $mail->send();

                // Copy admin
                $mail->setFrom($this->request->post['email']);
                $mail->setTo('support@intelligentuas.com');
                $mail->setSubject('Copy : Trade confirm from ' . $this->request->post['email']);
                $mail->send();
            }

            $this->redirect($this->url->link('account/trade/success', '', 'SSL'));
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
            'href' => $this->url->link('account/trade/insert', '', 'SSL'),
            'separator' => $this->language->get('text_separator')
        );

        $this->data['heading_title'] = $this->language->get('heading_title');

        $this->data['text_description'] = $this->language->get('text_description');
        $this->data['text_order'] = $this->language->get('text_order');
        $this->data['text_product'] = $this->language->get('text_product');
        $this->data['text_yes'] = $this->language->get('text_yes');
        $this->data['text_no'] = $this->language->get('text_no');

        $this->data['entry_address'] = $this->language->get('entry_address');
        $this->data['entry_date_ordered'] = $this->language->get('entry_date_ordered');
        $this->data['entry_firstname'] = $this->language->get('entry_firstname');
        $this->data['entry_lastname'] = $this->language->get('entry_lastname');
        $this->data['entry_email'] = $this->language->get('entry_email');
        $this->data['entry_telephone'] = $this->language->get('entry_telephone');
        $this->data['entry_product'] = $this->language->get('entry_product');
        $this->data['entry_comment'] = $this->language->get('entry_comment');
        $this->data['entry_purchase_from'] = $this->language->get('entry_purchase_from');


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

        if (isset($this->error['address']))
        {
            $this->data['error_address'] = $this->error['address'];
        }
        else
        {
            $this->data['error_address'] = '';
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

        if (isset($this->error['purchase_from']))
        {
            $this->data['error_purchase_from'] = $this->error['purchase_from'];
        }
        else
        {
            $this->data['error_purchase_from'] = '';
        }

        if (isset($this->error['date_ordered']))
        {
            $this->data['error_date_ordered'] = $this->error['date_ordered'];
        }
        else
        {
            $this->data['error_date_ordered'] = '';
        }


        if (isset($this->error['frequency']))
        {
            $this->data['error_frequency'] = $this->error['frequency'];
        }
        else
        {
            $this->data['error_frequency'] = '';
        }

        if (isset($this->error['product_status']))
        {
            $this->data['error_product_status'] = $this->error['product_status'];
        }
        else
        {
            $this->data['error_product_status'] = '';
        }
        
        if (isset($this->error['image']))
        {
            $this->data['error_image'] = $this->error['image'];
        }
        else
        {
            $this->data['error_image'] = '';
        }
        
        


        if (isset($this->error['captcha']))
        {
            $this->data['error_captcha'] = $this->error['captcha'];
        }
        else
        {
            $this->data['error_captcha'] = '';
        }

        $this->data['action'] = $this->url->link('account/trade/insert', '', 'SSL');



        if (isset($this->request->post['firstname']))
        {
            $this->data['firstname'] = $this->request->post['firstname'];
        }
        else
        {
            $this->data['firstname'] = $this->customer->getFirstName();
        }

        if (isset($this->request->post['lastname']))
        {
            $this->data['lastname'] = $this->request->post['lastname'];
        }
        else
        {
            $this->data['lastname'] = $this->customer->getLastName();
        }

        if (isset($this->request->post['email']))
        {
            $this->data['email'] = $this->request->post['email'];
        }
        else
        {
            $this->data['email'] = $this->customer->getEmail();
        }

        if (isset($this->request->post['telephone']))
        {
            $this->data['telephone'] = $this->request->post['telephone'];
        }
        else
        {
            $this->data['telephone'] = $this->customer->getTelephone();
        }

        if (isset($this->request->post['address']))
        {
            $this->data['address'] = $this->request->post['address'];
        }
        else
        {
            $this->data['address'] = '';
        }


        $trade_images = array();

        if (isset($this->request->post['image']))
        {
            $trade_images = $this->request->post['image'];
        }

        $this->data['trade_images'] = array();
        $this->load->model('tool/image');

        foreach ($trade_images as $trade_image)
        {
            if ($trade_image['image'] && file_exists(DIR_IMAGE . $trade_image['image']))
            {
                $image = $trade_image['image'];

                $this->data['trade_images'][] = array(
                    'image' => $image,
                    'thumb' => $this->model_tool_image->resize($image, 50, 50)
                );
            }
        }


        if (isset($this->request->post['product']))
        {
            $this->data['product'] = $this->request->post['product'];
        }
        else
        {
            $this->data['product'] = '';
        }

        if (isset($this->request->post['date_ordered']))
        {
            $this->data['date_ordered'] = $this->request->post['date_ordered'];
        }
        else
        {
            $this->data['date_ordered'] = '';
        }

        if (isset($this->request->post['purchase_from']))
        {
            $this->data['purchase_from'] = $this->request->post['purchase_from'];
        }
        else
        {
            $this->data['purchase_from'] = '';
        }

        if (isset($this->request->post['frequency']))
        {
            $this->data['frequency'] = $this->request->post['frequency'];
        }
        else
        {
            $this->data['frequency'] = '';
        }

        if (isset($this->request->post['product_status']))
        {
            $this->data['product_status'] = $this->request->post['product_status'];
        }
        else
        {
            $this->data['product_status'] = '';
        }


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

        $this->data['back'] = $this->url->link('account/account', '', 'SSL');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/trade_form.tpl'))
        {
            $this->template = $this->config->get('config_template') . '/template/account/trade_form.tpl';
        }
        else
        {
            $this->template = 'default/template/account/trade_form.tpl';
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
        $this->language->load('account/trade');

        $this->document->setTitle($this->language->get('heading_title'));

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('account/trade', '', 'SSL'),
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

        if (!isset($this->request->post['image']))
        {
            $this->error['image'] = $this->language->get('error_image');
        }

        if ((utf8_strlen($this->request->post['product']) < 1) || (utf8_strlen($this->request->post['product']) > 255))
        {
            $this->error['product'] = $this->language->get('error_product');
        }

        if (!preg_match('/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/', trim($this->request->post['date_ordered'])))
        {
            $this->error['date_ordered'] = $this->language->get('error_date_ordered');
        }

        if (empty($this->request->post['purchase_from']))
        {
            $this->error['purchase_from'] = $this->language->get('error_purchase_from');
        }

        if ((utf8_strlen($this->request->post['frequency']) < 1) || (utf8_strlen($this->request->post['frequency']) > 255))
        {
            $this->error['frequency'] = $this->language->get('error_frequency');
        }

        if (!isset($this->request->post['product_status']) || (utf8_strlen($this->request->post['product_status']) < 1 || utf8_strlen($this->request->post['product_status']) > 32))
        {
            $this->error['product_status'] = $this->language->get('error_product_status');
        }

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
