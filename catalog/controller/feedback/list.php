<?php

class ControllerFeedbackList extends Controller {

    private $error = array();

    public function index() {
        $this->load->model('feedback/list');
        $this->load->language('information/feedback');

        $this->document->setTitle($this->language->get('heading_title'));
        $this->data['heading_title'] = $this->language->get('heading_title');

        $this->data['feedback_list'] = $this->model_feedback_list->getListFeedBack();

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('feedback/list', '', 'SSL'),
            'separator' => $this->language->get('text_separator')
        );

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/feedback/list.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/feedback/list.tpl';
        } else {
            $this->template = 'default/template/feedback/list.tpl';
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

?>