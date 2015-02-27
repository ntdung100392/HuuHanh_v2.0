<?php

class ControllerProductList extends Controller
{

    public function index()
    {
        $this->load->model('catalog/list');
        $this->document->setTitle('Product Report');



        //$list_products =  $this->model_catalog_list->getProducts();


        $list_products = $this->model_catalog_list->getProducts();

        $list = array();

        foreach ($list_products as $product)
        {
            //print_r($product);return;

            $item = new stdClass();
            $item->product_id = $product['product_id'];
            $item->name = $product['name'];
            $item->status = $product['status'];
            $item->weight = floatval($product['weight']);

            $categories = array();

            foreach ($this->model_catalog_list->getCategories($product['product_id']) as $category_name)
            {
                $categories[] = $category_name['name'];
            }


            $item->categories = implode(", ", $categories);
          

            $list[] = $item;
        }

        $this->data['products'] = $list;


        /*
          $fp = fopen('file.csv', 'w');

          foreach ($list as $fields)
          {
          fputcsv($fp, $fields);
          }

          fclose($fp);
         * 
         */

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/list.tpl'))
        {
            $this->template = $this->config->get('config_template') . '/template/product/list.tpl';
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

?>
