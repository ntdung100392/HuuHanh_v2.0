<?php

class ControllerFormCredit extends Controller
{

    private $error = array();

    public function index()
    {
       $this->redirect($this->url->link('form/credit/insert', '', 'SSL'));
       
    }
  
    public function insert()
    {
        
        
        $this->language->load('form/credit');

        $this->load->model('form/credit');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate())
        {
            $this->model_form_credit->addCredit($this->request->post);

            $credit_id = $this->db->getLastId();
            if (isset($this->request->post['dealer_email']))
            {
                // Send HTML Mail
                $template = new Template();

                $template->data = $this->request->post;
                $template->data['credit_id'] = $credit_id;

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
                $mail->setSubject('DJI Phantom v2 credit from ' . $this->config->get('config_name'));
                $mail->setHtml($template->fetch('journal/template/form/credit.tpl'));
                $mail->send();

                // Copy admin
                $mail->setFrom($this->request->post['dealer_email']);
                $mail->setTo('support@intelligentuas.com');
                $mail->setSubject('DJI Phantom v2 credit from ' . $this->request->post['email']);
                $mail->send();
            }
            

            $this->redirect($this->url->link('form/credit/success', '', 'SSL'));
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
            'href' => $this->url->link('form/credit/insert', '', 'SSL'),
            'separator' => $this->language->get('text_separator')
        );

        $this->data['heading_title'] = $this->language->get('heading_title');


        $this->data['entry_product_number'] = $this->language->get('entry_product_number');
        $this->data['entry_date_ordered'] = $this->language->get('entry_date_ordered');
        $this->data['entry_name'] = $this->language->get('entry_name');
        $this->data['entry_phone'] = $this->language->get('entry_phone');
        
        $this->data['entry_dealer_name'] = $this->language->get('entry_dealer_name');
        $this->data['entry_dealer_phone'] = $this->language->get('entry_dealer_phone');
        $this->data['entry_email'] = $this->language->get('entry_email');
        $this->data['entry_dealer_email'] = $this->language->get('entry_dealer_email');
        
        $this->data['entry_product_number'] = $this->language->get('entry_product_number');
        
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

       

        if (isset($this->error['name']))
        {
            $this->data['error_name'] = $this->error['name'];
        }
        else
        {
            $this->data['error_name'] = '';
        }
        
        if (isset($this->error['phone']))
        {
            $this->data['error_phone'] = $this->error['phone'];
        }
        else
        {
            $this->data['error_phone'] = '';
        }

        if (isset($this->error['dealer_name']))
        {
            $this->data['error_dealer_name'] = $this->error['dealer_name'];
        }
        else
        {
            $this->data['error_dealer_name'] = '';
        }

        if (isset($this->error['dealer_phone']))
        {
            $this->data['error_dealer_phone'] = $this->error['dealer_phone'];
        }
        else
        {
            $this->data['error_dealer_phone'] = '';
        }
        
        if (isset($this->error['email']))
        {
            $this->data['error_email'] = $this->error['email'];
        }
        else
        {
            $this->data['error_email'] = '';
        }
        
        if (isset($this->error['dealer_email']))
        {
            $this->data['error_dealer_email'] = $this->error['dealer_email'];
        }
        else
        {
            $this->data['error_dealer_email'] = '';
        }

        if (isset($this->error['product_number']))
        {
            $this->data['error_product_number'] = $this->error['product_number'];
        }
        else
        {
            $this->data['error_product_number'] = '';
        }
        
        if (isset($this->error['date_ordered']))
        {
            $this->data['error_date_ordered'] = $this->error['date_ordered'];
        }
        else
        {
            $this->data['error_date_ordered'] = '';
        }

        if (isset($this->error['captcha']))
        {
            $this->data['error_captcha'] = $this->error['captcha'];
        }
        else
        {
            $this->data['error_captcha'] = '';
        }

        $this->data['action'] = $this->url->link('form/credit/insert', '', 'SSL');

        // -------------

        if (isset($this->request->post['product_number']))
        {
            $this->data['product_number'] = $this->request->post['product_number'];
        }
        else
        {
            $this->data['product_number'] = '';
        }

        if (isset($this->request->post['date_ordered']))
        {
            $this->data['date_ordered'] = $this->request->post['date_ordered'];
        }
        else
        {
            $this->data['date_ordered'] = '';
        }

        if (isset($this->request->post['name']))
        {
            $this->data['name'] = $this->request->post['name'];
        }
        else
        {
            $this->data['name'] = $this->customer->getFirstName();
        }
        
        if (isset($this->request->post['phone']))
        {
            $this->data['phone'] = $this->request->post['phone'];
        }
        else
        {
            $this->data['phone'] = $this->customer->getTelephone();
        }

        if (isset($this->request->post['email']))
        {
            $this->data['email'] = $this->request->post['email'];
        }
        else
        {
            $this->data['email'] = $this->customer->getEmail();
        }
        
        if (isset($this->request->post['dealer_email']))
        {
            $this->data['dealer_email'] = $this->request->post['dealer_email'];
        }
        else
        {
            $this->data['dealer_email'] = '';
        }
        
        if (isset($this->request->post['dealer_name']))
        {
            $this->data['dealer_name'] = $this->request->post['dealer_name'];
        }
        else
        {
            $this->data['dealer_name'] = $this->customer->getFirstName() . ' '  . $this->customer->getLastName(); 
        }
        
        if (isset($this->request->post['dealer_phone']))
        {
            $this->data['dealer_phone'] = $this->request->post['dealer_phone'];
        }
        else
        {
            $this->data['dealer_phone'] = '';
        }

        if (isset($this->request->post['product_number']))
        {
            $this->data['product_number'] = $this->request->post['product_number'];
        }
        else
        {
            $this->data['product_number'] = '';
        }
        
        if (isset($this->request->post['date_ordered']))
        {
            $this->data['date_ordered'] = $this->request->post['date_ordered'];
        }
        else
        {
            $this->data['date_ordered'] = '';
        }
       
        if (isset($this->request->post['captcha']))
        {
            $this->data['captcha'] = $this->request->post['captcha'];
        }
        else
        {
            $this->data['captcha'] = '';
        }

        $this->data['back'] = $this->url->link('home', '', 'SSL');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/form/credit_form_2.tpl'))
        {
            $this->template = $this->config->get('config_template') . '/template/form/credit_form_2.tpl';
        }
        else
        {
            $this->template = 'default/template/form/credit_form.tpl';
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
        $this->language->load('form/credit');

        $this->document->setTitle($this->language->get('heading_title'));

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('form/credit', '', 'SSL'),
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
        if ((utf8_strlen($this->request->post['name']) < 1) || (utf8_strlen($this->request->post['name']) > 32))
        {
            $this->error['name'] = $this->language->get('error_name');
        }

        if ((utf8_strlen($this->request->post['phone']) < 3) || (utf8_strlen($this->request->post['phone']) > 32))
        {
            $this->error['phone'] = $this->language->get('error_phone');
        }
        
        if ((utf8_strlen(trim($this->request->post['dealer_name'])) < 1) || (utf8_strlen($this->request->post['dealer_name']) > 32))
        {
            $this->error['dealer_name'] = $this->language->get('error_dealer_name');
        }
        
        if (!preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['email']))
        {
            $this->error['email'] = $this->language->get('error_email');
        }

        if (!preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['dealer_email']))
        {
            $this->error['dealer_email'] = $this->language->get('error_dealer_email');
        }

        if ((utf8_strlen($this->request->post['dealer_phone']) < 3) || (utf8_strlen($this->request->post['dealer_phone']) > 32))
        {
            $this->error['dealer_phone'] = $this->language->get('error_dealer_phone');
        }

        if ((utf8_strlen(trim($this->request->post['product_number'])) < 3) || (utf8_strlen($this->request->post['product_number']) > 255))
        {
            $this->error['product_number'] = $this->language->get('error_product_number');
        }
        
        if (!preg_match('/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/', trim($this->request->post['date_ordered'])))
        {
            $this->error['date_ordered'] = $this->language->get('error_date_ordered');
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
