<?php

class ControllerProductOrder extends Controller
{

    public function index()
    {
        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text' => "Order Stats",
            'href' => $this->url->link('product/order', '', 'SSL'),
            'separator' => $this->language->get('text_separator')
        );



        $this->data['heading_title'] = "Order Stats";

        $total = 500;
        if (isset($_GET['total']) && is_numeric($_GET['total']))
        {
            $total = $_GET['total'];
        }

        $query = $this->db->query("SELECT *, os.name as order_status FROM " . DB_PREFIX . "`order` o LEFT JOIN " . DB_PREFIX . "`order_status` os ON o.order_status_id = os.order_status_id WHERE (o.order_status_id = 17 OR o.order_status_id = 3 OR o.order_status_id = 5 OR o.order_status_id = 15) AND o.total >= " . (int) $total);

        $list = array();

        foreach ($query->rows as $result)
        {
            //print_r($product);return;

            $item = new stdClass();
            $item->order_id = $result['order_id'];
            $item->name = $result['firstname'] . ' ' . $result['lastname'];
            $item->address = $result['payment_address_1'];
            $item->order_status = $result['order_status'];
            $item->total = round($result['total'], 2);

            $list[] = $item;
        }

        $this->data['orders'] = $list;




        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/order.tpl'))
        {
            $this->template = $this->config->get('config_template') . '/template/product/order.tpl';
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
