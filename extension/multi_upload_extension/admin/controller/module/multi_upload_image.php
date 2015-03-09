<?php

class ControllerModuleMultiUploadImage extends Controller {

    private $error = array();

    public function index() {
        $this->load->language('module/multi_upload_image'); // THIS IS LOCATED UNDER YOUR ADMIN DIRECTORY
        $this->document->setTitle($this->language->get('heading_title'));

        $this->load->model('setting/setting');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
           
            if (!is_dir(DIR_IMAGE. "data/" . $this->request->post['multi_upload_image'])) {
                mkdir(DIR_IMAGE. "data/" . $this->request->post['multi_upload_image'], 0777, true);
            }

            if (substr($this->request->post['multi_upload_image'], -1) != "/") {
                $this->request->post['multi_upload_image'] .= "/";
            }
          
            $this->model_setting_setting->editSetting('multi_upload_image', $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');

            $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }

        $data['heading_title'] = $this->language->get('heading_title');
        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');
        $data['button_add_module'] = $this->language->get('button_add_module');
        $data['upload_folder'] = $this->language->get('upload_folder');
        $data['text_yes'] = $this->language->get('text_yes');
        $data['text_no'] = $this->language->get('text_no');


        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->error['folder'])) {
            $data['error_folder'] = $this->error['folder'];
        } else {
            $data['error_folder'] = '';
        }

        // Create breadcrumbs
        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => false
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('module/multi_upload_image', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );

        $data['action'] = $this->url->link('module/multi_upload_image', 'token=' . $this->session->data['token'], 'SSL');

        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

        if (isset($this->request->post['multi_upload_image'])) {
            $data['multi_upload_image'] = $this->request->post['multi_upload_image'];
        } else {
            $data['multi_upload_image'] = $this->config->get('multi_upload_image');
        }
        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('module/multi_upload_image.tpl', $data));
    }

    private function validate() {
        if (!$this->user->hasPermission('modify', 'module/multi_upload_image')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if (empty($this->request->post['multi_upload_image'])) {
            $this->error['folder'] = $this->language->get('error_folder');
        }

        if (!$this->error) {
            return true;
        }

        return false;
    }

}

?>