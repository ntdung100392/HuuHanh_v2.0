<?php

class ControllerInformationCreator extends Controller {

    private $error = array();

    public function index() {
        $this->language->load('information/creator');

        $this->load->model('catalog/creator');

       

        if (isset($this->request->get['form_id'])) {
            $form_id = $this->request->get['form_id'];
        } else {
            $form_id = 0;
        }
	
		if (isset($this->request->get['redirect'])) {
            $redirect = $this->request->get['redirect'];
        } else {
            $redirect = false;
        }
		
        $form_info = $this->model_catalog_creator->getForm($form_id);

        $this->data['success_msg'] = $form_info['success_msg'];
        $form_email = $form_info['email'];
        $form_url = $form_info['url'];
        $this->data['heading_title'] = $heading_title = $form_info['title'];
        $this->document->setTitle($heading_title);
        
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate() ) { 
            $parameter = $_POST; 
            ob_start();
            require_once('template_mail.php');
            $content = ob_get_contents();
            if(isset($_FILES)){
               $tmp = array_keys($_FILES);
			   if(isset($tmp[0]) && $_FILES[$tmp[0]]['tmp_name'] != '')
               move_uploaded_file($_FILES[$tmp[0]]['tmp_name'], DIR_IMAGE. $_FILES[$tmp[0]]["name"]);
            } 
   
            $mail = new Mail();
            $mail->protocol = $this->config->get('config_mail_protocol');
            $mail->parameter = $this->config->get('config_mail_parameter');
            $mail->hostname = $this->config->get('config_smtp_host');
            $mail->username = $this->config->get('config_smtp_username');
            $mail->password = $this->config->get('config_smtp_password');
            $mail->port = $this->config->get('config_smtp_port');
            $mail->timeout = $this->config->get('config_smtp_timeout');

            $mail->setTo($form_info['email']);
            $mail->setFrom($form_email);
            $mail->setSender($form_url);
            $mail->setSubject(sprintf($heading_title));
            if(isset($tmp[0]) && $_FILES[$tmp[0]]["name"] != '') 
            $mail->addAttachment(DIR_IMAGE. $_FILES[$tmp[0]]["name"],$_FILES[$tmp[0]]["name"]); 
            // $mail->setText(strip_tags(html_entity_decode($content, ENT_QUOTES, 'UTF-8')));
            $mail->setHtml($content);
            $mail->send();
            $this->redirect($this->url->link('information/creator/success','id=' . $form_id.'&url='.urlencode($_SERVER['REQUEST_URI'])));
        }

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $heading_title,
            'href' => $this->url->link('information/creator','form_id='.$form_id),
            'separator' => $this->language->get('text_separator')
        );


        $this->data['text_location'] = $this->language->get('text_location');
        $this->data['text_creator'] = $this->language->get('text_creator');
        $this->data['text_address'] = $this->language->get('text_address');
        $this->data['text_telephone'] = $this->language->get('text_telephone');
        $this->data['text_fax'] = $this->language->get('text_fax');

        $this->data['entry_name'] = $this->language->get('entry_name');
        $this->data['entry_email'] = $this->language->get('entry_email');
        $this->data['entry_enquiry'] = $this->language->get('entry_enquiry');
        $this->data['entry_captcha'] = $this->language->get('entry_captcha');

      

        if (isset($this->error['error_captcha'])) {
            $this->session->data['error_captcha'] = $this->data['error_captcha'] = $this->error['error_captcha'];
        } else {
            $this->session->data['error_captcha'] = $this->data['error_captcha'] = '';
        }
        
        if (isset($this->error['email'])) {
            $this->session->data['email'] = $this->data['email'] = $this->error['email'];
        } else {
            $this->session->data['email'] = $this->data['email'] = '';
        }

		if($redirect!=false){
			$this->redirect(base64_decode($redirect));
		}



        $this->data['button_continue'] = $this->language->get('button_continue');

        $this->data['action'] = $this->url->link('information/creator', '&form_id=' . $this->request->get['form_id'], 'SSL');
     
        $this->data['formdata'] = $this->model_catalog_creator->getFormShow(unserialize($form_info['formdata']));


        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/creator.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/information/creator.tpl';
        } else {
            $this->template = 'default/template/information/creator.tpl';
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

    public function success() {
        $this->language->load('information/creator');

        $this->load->model('catalog/creator');

        $this->document->setTitle($this->language->get('heading_title'));

        if (isset($this->request->get['id'])) {
            $form_id = $this->request->get['id'];
        } else {
            $form_id = 0;
        }


        $form_info = $this->model_catalog_creator->getForm($form_id);

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $form_info['title'],
            'href' => $this->url->link('information/creator','form_id='.$form_id),
            'separator' => $this->language->get('text_separator')
        );

        $this->data['heading_title'] = $form_info['title'];

        $this->data['text_message'] = $form_info['success_msg'];

        $this->data['button_continue'] = $this->language->get('button_continue');

        $this->data['continue'] = str_replace('&amp;', '&', urldecode($this->request->get['url']));

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/success.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/information/success.tpl';
        } else {
            $this->template = 'default/template/information/success.tpl';
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

    public function captcha() {
        $this->load->library('captcha');

        $captcha = new Captcha();

        $this->session->data['captcha'] = $captcha->getCode();

        $captcha->showImage();
    }

    private function validate() {

        foreach ($this->request->post as $key => $val) {
            if (strpos($key, "_1_")) {
                list($type,$name) = explode("_1_", $key);
              

                if( $type == 'email')
                if (!preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post[$key])) {
                    $this->error['email'] = $this->language->get('error_email');
                }

                if( $type == 'captcha')
                if (!isset($this->session->data['captcha']) || ($this->session->data['captcha'] != $this->request->post[$key])) {
                    $this->error['error_captcha'] = $this->language->get('error_captcha');
                }
            }
        }
        if (!$this->error) {
            return true;
        } else {
            return false;
        }
    }

}

?>
