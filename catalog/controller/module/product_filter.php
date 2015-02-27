<?php

class ControllerModuleProductFilter extends Controller
{

    protected function index()
    {
        $this->language->load('module/product_filter');

        $this->data['heading_title'] = $this->language->get('heading_title');

        $this->load->model('catalog/manufacturer');

        $this->data['brands'] = $this->model_catalog_manufacturer->getManufacturers();

        $this->data['filter_brand_id'] = isset($_GET['filter_brand_id']) ? intval($_GET['filter_brand_id']) : 0;
        $this->data['filter_category_id'] = isset($_GET['filter_category_id']) ? intval($_GET['filter_category_id']) : 0;

        $this->load->model('catalog/category');

        // 3 Level Category Search
        $this->data['categories'] = array();

        $product_filter_module = $this->cache->get('product_filter_module.' . (int) $this->config->get('config_store_id'));

        if (!$product_filter_module)
        {
            $product_filter_module = array();
            
            $categories_1 = $this->model_catalog_category->getCategories(0);

            foreach ($categories_1 as $category_1)
            {
                $level_2_data = array();

                $categories_2 = $this->model_catalog_category->getCategories($category_1['category_id']);

                foreach ($categories_2 as $category_2)
                {
                    $level_3_data = array();

                    $categories_3 = $this->model_catalog_category->getCategories($category_2['category_id']);

                    foreach ($categories_3 as $category_3)
                    {
                        $level_3_data[] = array(
                            'category_id' => $category_3['category_id'],
                            'name' => $category_3['name'],
                        );
                    }

                    $level_2_data[] = array(
                        'category_id' => $category_2['category_id'],
                        'name' => strlen($category_2['name']) > 21 ? substr($category_2['name'], 0, 22) : $category_2['name'],
                        'children' => $level_3_data
                    );
                }

                $product_filter_module[] = array(
                    'category_id' => $category_1['category_id'],
                    'name' => $category_1['name'],
                    'children' => $level_2_data
                );
            }
            
            $this->cache->set('product_filter_module.' . (int) $this->config->get('config_store_id'), $product_filter_module);
        }
        
        $this->data['categories'] = $product_filter_module;


        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/product_filter.tpl'))
        {
            $this->template = $this->config->get('config_template') . '/template/module/product_filter.tpl';
        }
        else
        {
            $this->template = 'default/template/module/product_filter.tpl';
        }

        $this->render();
    }

}

?>