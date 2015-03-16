<?php  
class ControllerModuleRelatedproductspro extends Controller {
	protected function index() {
		$this->language->load('module/relatedproductspro');
      	$this->data['heading_title'] = $this->language->get('heading_title');
      	$this->data['button_cart'] = $this->language->get('button_cart');

		$this->data['currenttemplate'] =  $this->config->get('config_template');
		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$this->data['data']['RelatedProductsPro'] = str_replace('http', 'https', $this->config->get('RelatedProductsPro'));
		} else {
			$this->data['data']['RelatedProductsPro'] = $this->config->get('RelatedProductsPro');
		}
		
		if(!isset($this->data['data']['RelatedProductsPro']['WidgetTitle'][$this->config->get('config_language')])){
			$this->data['data']['RelatedProductsPro']['WidgetTitle'] = '';
		} else {
			$this->data['data']['RelatedProductsPro']['WidgetTitle'] = $this->data['data']['RelatedProductsPro']['WidgetTitle'][$this->config->get('config_language')];
		}
			$this->data['data']['SuperQuickCheckoutConfig'] = $this->config->get('relatedproductspro_module');
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/relatedproductspro.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/relatedproductspro.tpl';
		} else {
			$this->template = 'default/template/module/relatedproductspro.tpl';
		}
		
		$this->data['CustomRelated'] = $this->config->get('relatedproductspro_custom');
		
		$products_cart = $this->cart->getProducts();
		foreach ($products_cart as $products) {
			$productsInCart[] = $products['product_id'];
		}
		
		$this->data['RelatedProductsProShowModule'] = "no";
		
		if (isset($productsInCart)) {
			sort($productsInCart);
			$i = 0;
			foreach ($this->data['CustomRelated'] as $productsToCompare) {
				sort($productsToCompare['ProductsCart']);
		
				if ($productsToCompare['ProductsCart'] == $productsInCart) {
					$this->data['RelatedProducts'] = $productsToCompare['ProductsRelated'];
					$this->data['RelatedProductsProShowModule'] = "yes";
				}
				$i++;
			}
		}

		if (isset($this->data['RelatedProducts'])) {

		//	$this->load->model('tool/image');
			$this->data['products'] = array();
			
			if (empty($this->data['data']['RelatedProductsPro']['PictureWidth'])) 
				$picture_width=80; else $picture_width=$this->data['data']['RelatedProductsPro']['PictureWidth'];
			if (empty($this->data['data']['RelatedProductsPro']['PictureHeight'])) 
				$picture_height=80; else $picture_height=$this->data['data']['RelatedProductsPro']['PictureHeight'];
				
			foreach ($this->data['RelatedProducts'] as $result) {
				$product_info = $this->model_catalog_product->getProduct($result);
					if ($result['image']) {
					$image = $this->model_tool_image->resize($product_info['image'], $picture_width, $picture_height);
					} else {
						$image = false;
					}
					  
					if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
						$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
					} else {
						$price = false;
					}
							

            if ($product_info['price'] == 0) {
				$data['price'] = $this->language->get('call_in_price');
				}
            
					if ((float)$product_info['special']) {
						$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')));
					} else {
						$special = false;
					}
					
					if ($this->config->get('config_review_status')) {
						$rating = (int)$product_info['rating'];
					} else {
						$rating = false;
					}
								
					$this->data['products'][] = array(
						'product_id' => $product_info['product_id'],
						'thumb'   	 => $image,
						'name'    	 => $product_info['name'],
						'price'   	 => $price,
						'special' 	 => $special,
						'rating'     => $rating,
						'reviews'    => sprintf($this->language->get('text_reviews'), (int)$product_info['reviews']),
						'href'    	 => $this->url->link('product/product', 'product_id=' . $product_info['product_id']),
					);
			}
		
		} else if ( ($this->data['data']['RelatedProductsPro']['DefaultOCFunctionality'] == 'yes') && isset($productsInCart) && (!isset($this->data['RelatedProducts'])) ) {
			$limit = $this->data['data']['RelatedProductsPro']['RelatedLimit'];
			$i = 0;
			$this->data['products'] = array();
			$this->data['productsCheck'] = array();

			foreach ($productsInCart as $defaultProductID) {
				
				$results = $this->model_catalog_product->getProductRelated($defaultProductID);

				foreach ($results as $result) {
					if ($result['image']) {
						$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
					} else {
						$image = false;
					}
					if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
						$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
					} else {
						$price = false;
					}

            if ($result['price'] == 0) {
				$price = $this->language->get('call_in_price');
				}
            
					if ((float)$result['special']) {
						$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
					} else {
						$special = false;
					}
					if ($this->config->get('config_review_status')) {
						$rating = (int)$result['rating'];
					} else {
						$rating = false;
					}
						
					if ((!in_array($result['product_id'], $productsInCart)) && (!in_array($result['product_id'], $this->data['productsCheck'])) ) {
						$this->data['products'][] = array(
							'product_id' => $result['product_id'],
							'thumb'   	 => $image,
							'name'    	 => $result['name'],
							'price'   	 => $price,
							'special' 	 => $special,
							'rating'     => $rating,
							'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
							'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id'])
						);
						$this->data['productsCheck'][] = $result['product_id'];
					}
				}
				if (++$i == $limit) break;
			}
			if (!empty($this->data['products'])) $this->data['RelatedProductsProShowModule'] = "yes";
		}
		$this->render();
	}
}
?>