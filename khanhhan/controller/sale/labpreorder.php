<?php    
class ControllerSalelabpreorder extends Controller { 
	private $error = array();
   
  	public function index() {
		$this->load->language('sale/labpreorder');
		 
		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('sale/labpreorder');
		
    	$this->getList();
  	}
  
  	public function insert() {
		$this->load->language('sale/labpreorder');

    	$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('sale/labpreorder');
			
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
      	  	$this->model_sale_labpreorder->addlabpreorder($this->request->post);
			
			$this->session->data['success'] = $this->language->get('text_success');
		  
			$url = '';
			
			if (isset($this->request->get['filter_labpreorder_id'])) {
				$url .= '&filter_labpreorder_id=' . $this->request->get['filter_labpreorder_id'];
			}
			
			if (isset($this->request->get['filter_address'])) {
				$url .= '&filter_address=' . $this->request->get['filter_address'];
			}
			
			if (isset($this->request->get['filter_customer'])) {
				$url .= '&filter_customer=' . urlencode(html_entity_decode($this->request->get['filter_customer'], ENT_QUOTES, 'UTF-8'));
			}
			
			if (isset($this->request->get['filter_product'])) {
				$url .= '&filter_product=' . urlencode(html_entity_decode($this->request->get['filter_product'], ENT_QUOTES, 'UTF-8'));
			}
			
			if (isset($this->request->get['filter_model'])) {
				$url .= '&filter_model=' . urlencode(html_entity_decode($this->request->get['filter_model'], ENT_QUOTES, 'UTF-8'));
			}
												
			if (isset($this->request->get['filter_labpreorder_status_id'])) {
				$url .= '&filter_labpreorder_status_id=' . $this->request->get['filter_labpreorder_status_id'];
			}
			
			if (isset($this->request->get['filter_date_added'])) {
				$url .= '&filter_date_added=' . $this->request->get['filter_date_added'];
			}
			
			if (isset($this->request->get['filter_date_modified'])) {
				$url .= '&filter_date_modified=' . $this->request->get['filter_date_modified'];
			}
													
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}
			
			$this->response->redirect($this->url->link('sale/labpreorder', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}
    	
    	$this->getForm();
  	} 
   
  	public function update() {
		$this->load->language('sale/labpreorder');

    	$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('sale/labpreorder');
		
    	if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_sale_labpreorder->editlabpreorder($this->request->get['labpreorder_id'], $this->request->post);
	  		
			$this->session->data['success'] = $this->language->get('text_success');
	  
			$url = '';

			if (isset($this->request->get['filter_labpreorder_id'])) {
				$url .= '&filter_labpreorder_id=' . $this->request->get['filter_labpreorder_id'];
			}
			
			if (isset($this->request->get['filter_address'])) {
				$url .= '&filter_address=' . $this->request->get['filter_address'];
			}
			
			if (isset($this->request->get['filter_customer'])) {
				$url .= '&filter_customer=' . urlencode(html_entity_decode($this->request->get['filter_customer'], ENT_QUOTES, 'UTF-8'));
			}
			
			if (isset($this->request->get['filter_product'])) {
				$url .= '&filter_product=' . urlencode(html_entity_decode($this->request->get['filter_product'], ENT_QUOTES, 'UTF-8'));
			}
			
			if (isset($this->request->get['filter_model'])) {
				$url .= '&filter_model=' . urlencode(html_entity_decode($this->request->get['filter_model'], ENT_QUOTES, 'UTF-8'));
			}
												
			if (isset($this->request->get['filter_labpreorder_status_id'])) {
				$url .= '&filter_labpreorder_status_id=' . $this->request->get['filter_labpreorder_status_id'];
			}
			
			if (isset($this->request->get['filter_date_added'])) {
				$url .= '&filter_date_added=' . $this->request->get['filter_date_added'];
			}
			
			if (isset($this->request->get['filter_date_modified'])) {
				$url .= '&filter_date_modified=' . $this->request->get['filter_date_modified'];
			}
									
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}
			
			$this->response->redirect($this->url->link('sale/labpreorder', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}
    
    	$this->getForm();
  	}   

  	public function delete() {
		$this->load->language('sale/labpreorder');

    	$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('sale/labpreorder');
			
    	if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $labpreorder_id) {
				$this->model_sale_labpreorder->deletelabpreorder($labpreorder_id);
			}
			
			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['filter_labpreorder_id'])) {
				$url .= '&filter_labpreorder_id=' . $this->request->get['filter_labpreorder_id'];
			}
			
			if (isset($this->request->get['filter_address'])) {
				$url .= '&filter_address=' . $this->request->get['filter_address'];
			}
			
			if (isset($this->request->get['filter_customer'])) {
				$url .= '&filter_customer=' . urlencode(html_entity_decode($this->request->get['filter_customer'], ENT_QUOTES, 'UTF-8'));
			}
			
			if (isset($this->request->get['filter_product'])) {
				$url .= '&filter_product=' . urlencode(html_entity_decode($this->request->get['filter_product'], ENT_QUOTES, 'UTF-8'));
			}
			
			if (isset($this->request->get['filter_model'])) {
				$url .= '&filter_model=' . urlencode(html_entity_decode($this->request->get['filter_model'], ENT_QUOTES, 'UTF-8'));
			}
												
			if (isset($this->request->get['filter_labpreorder_status_id'])) {
				$url .= '&filter_labpreorder_status_id=' . $this->request->get['filter_labpreorder_status_id'];
			}
			
			if (isset($this->request->get['filter_date_added'])) {
				$url .= '&filter_date_added=' . $this->request->get['filter_date_added'];
			}
			
			if (isset($this->request->get['filter_date_modified'])) {
				$url .= '&filter_date_modified=' . $this->request->get['filter_date_modified'];
			}
									
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}
			
			$this->response->redirect($this->url->link('sale/labpreorder', 'token=' . $this->session->data['token'] . $url, 'SSL'));
    	}
    
    	$this->getList();
  	}  
    
  	private function getList() {
		if (isset($this->request->get['filter_labpreorder_id'])) {
			$filter_labpreorder_id = $this->request->get['filter_labpreorder_id'];
		} else {
			$filter_labpreorder_id = null;
		}
		
		if (isset($this->request->get['filter_address'])) {
			$filter_address = $this->request->get['filter_address'];
		} else {
			$filter_address = null;
		}
		
		if (isset($this->request->get['filter_customer'])) {
			$filter_customer = $this->request->get['filter_customer'];
		} else {
			$filter_customer = null;
		}

		if (isset($this->request->get['filter_product'])) {
			$filter_product = $this->request->get['filter_product'];
		} else {
			$filter_product = null;
		}

		if (isset($this->request->get['filter_model'])) {
			$filter_model = $this->request->get['filter_model'];
		} else {
			$filter_model = null;
		}
		
		if (isset($this->request->get['filter_labpreorder_status_id'])) {
			$filter_labpreorder_status_id = $this->request->get['filter_labpreorder_status_id'];
		} else {
			$filter_labpreorder_status_id = null;
		}
		
		if (isset($this->request->get['filter_date_added'])) {
			$filter_date_added = $this->request->get['filter_date_added'];
		} else {
			$filter_date_added = null;
		}
		
		if (isset($this->request->get['filter_date_modified'])) {
			$filter_date_modified = $this->request->get['filter_date_modified'];
		} else {
			$filter_date_modified = null;
		}	
		
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'r.labpreorder_id'; 
		}
		
		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'DESC';
		}
					
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
				
		$url = '';

		if (isset($this->request->get['filter_labpreorder_id'])) {
			$url .= '&filter_labpreorder_id=' . $this->request->get['filter_labpreorder_id'];
		}
		
		if (isset($this->request->get['filter_address'])) {
			$url .= '&filter_address=' . urlencode(html_entity_decode($this->request->get['filter_address'], ENT_QUOTES, 'UTF-8'));
		}
		
		if (isset($this->request->get['filter_customer'])) {
			$url .= '&filter_customer=' . urlencode(html_entity_decode($this->request->get['filter_customer'], ENT_QUOTES, 'UTF-8'));
		}
		
		if (isset($this->request->get['filter_product'])) {
			$url .= '&filter_product=' . urlencode(html_entity_decode($this->request->get['filter_product'], ENT_QUOTES, 'UTF-8'));
		}
		
		if (isset($this->request->get['filter_model'])) {
			$url .= '&filter_model=' . urlencode(html_entity_decode($this->request->get['filter_model'], ENT_QUOTES, 'UTF-8'));
		}
													
		if (isset($this->request->get['filter_labpreorder_status_id'])) {
			$url .= '&filter_labpreorder_status_id=' . $this->request->get['filter_labpreorder_status_id'];
		}
		
		if (isset($this->request->get['filter_date_added'])) {
			$url .= '&filter_date_added=' . $this->request->get['filter_date_added'];
		}
		
		if (isset($this->request->get['filter_date_modified'])) {
			$url .= '&filter_date_modified=' . $this->request->get['filter_date_modified'];
		}
									
		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}
		
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
                
                $data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('sale/labpreorder', 'token=' . $this->session->data['token'] . $url, 'SSL')
		);
		
		$data['add'] = $this->url->link('sale/labpreorder/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		$data['delete'] = $this->url->link('sale/labpreorder/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');

		$data['labpreorders'] = array();

		$filter_data = array(
			'filter_labpreorder_id'        => $filter_labpreorder_id, 
			'filter_address'          => $filter_address,
			'filter_customer'         => $filter_customer, 
			'filter_product'          => $filter_product, 
			'filter_model'            => $filter_model, 
			'filter_labpreorder_status_id' => $filter_labpreorder_status_id, 
			'filter_date_added'       => $filter_date_added,
			'filter_date_modified'    => $filter_date_modified,
			'sort'                    => $sort,
			'order'                   => $order,
			'start'                   => ($page - 1) * $this->config->get('config_limit_admin'),
			'limit'                   => $this->config->get('config_limit_admin')
		);
		
		$labpreorder_total = $this->model_sale_labpreorder->getTotallabpreorders($filter_data);
	
		$results = $this->model_sale_labpreorder->getlabpreorders($filter_data);
 
                foreach ($results as $result) {						
			$data['labpreorders'][] = array(
				'labpreorder_id'     => $result['labpreorder_id'],
				'address'      => $result['address'],
				'customer'      => $result['customer'],
				'product'       => $result['product'],
				'model'         => $result['model'],
				'status'        => $result['status'],
				'date_added'    => date($this->language->get('date_format_short'), strtotime($result['date_added'])),	
				'date_modified' => date($this->language->get('date_format_short'), strtotime($result['date_modified'])),				
				'selected'      => isset($this->request->post['selected']) && in_array($result['labpreorder_id'], $this->request->post['selected']),
                                'view'          => $this->url->link('sale/labpreorder/info', 'token=' . $this->session->data['token'] . '&labpreorder_id=' . $result['labpreorder_id'] . $url, 'SSL'),
				'edit'          => $this->url->link('sale/labpreorder/update', 'token=' . $this->session->data['token'] . '&labpreorder_id=' . $result['labpreorder_id'] . $url, 'SSL')
			);
		}	
		
		$data['heading_title'] = $this->language->get('heading_title');
		
		$data['text_list'] = $this->language->get('text_list');
		$data['text_no_results'] = $this->language->get('text_no_results');
		$data['text_confirm'] = $this->language->get('text_confirm');

		$data['column_labpreorder_id'] = $this->language->get('column_labpreorder_id');
		$data['column_address'] = $this->language->get('column_address');
		$data['column_customer'] = $this->language->get('column_customer');
		$data['column_product'] = $this->language->get('column_product');
		$data['column_model'] = $this->language->get('column_model');
		$data['column_status'] = $this->language->get('column_status');
		$data['column_date_added'] = $this->language->get('column_date_added');
		$data['column_date_modified'] = $this->language->get('column_date_modified');
		$data['column_action'] = $this->language->get('column_action');
                
                $data['entry_labpreorder_id'] = $this->language->get('entry_labpreorder_id');
		$data['entry_address'] = $this->language->get('entry_address');
		$data['entry_customer'] = $this->language->get('entry_customer');
		$data['entry_product'] = $this->language->get('entry_product');
		$data['entry_model'] = $this->language->get('entry_model');
		$data['entry_labpreorder_status'] = $this->language->get('entry_labpreorder_status');
		$data['entry_date_added'] = $this->language->get('entry_date_added');
		$data['entry_date_modified'] = $this->language->get('entry_date_modified');
		
		$data['button_insert'] = $this->language->get('button_insert');
		$data['button_delete'] = $this->language->get('button_delete');
		$data['button_filter'] = $this->language->get('button_filter');
                $data['button_edit'] = $this->language->get('button_edit');
                $data['button_view'] = $this->language->get('button_view');

		$data['token'] = $this->session->data['token'];

		if (isset($this->session->data['error'])) {
			$data['error_warning'] = $this->session->data['error'];
			
			unset($this->session->data['error']);
		} elseif (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];
		
			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}
                
                if (isset($this->request->post['selected'])) {
			$data['selected'] = (array)$this->request->post['selected'];
		} else {
			$data['selected'] = array();
		}
		
		$url = '';

		if (isset($this->request->get['filter_labpreorder_id'])) {
			$url .= '&filter_labpreorder_id=' . $this->request->get['filter_labpreorder_id'];
		}
		
		if (isset($this->request->get['filter_address'])) {
			$url .= '&filter_address=' . $this->request->get['filter_address'];
		}
		
		if (isset($this->request->get['filter_customer'])) {
			$url .= '&filter_customer=' . urlencode(html_entity_decode($this->request->get['filter_customer'], ENT_QUOTES, 'UTF-8'));
		}
		
		if (isset($this->request->get['filter_product'])) {
			$url .= '&filter_product=' . urlencode(html_entity_decode($this->request->get['filter_product'], ENT_QUOTES, 'UTF-8'));
		}
		
		if (isset($this->request->get['filter_model'])) {
			$url .= '&filter_model=' . urlencode(html_entity_decode($this->request->get['filter_model'], ENT_QUOTES, 'UTF-8'));
		}
											
		if (isset($this->request->get['filter_labpreorder_status_id'])) {
			$url .= '&filter_labpreorder_status_id=' . $this->request->get['filter_labpreorder_status_id'];
		}
		
		if (isset($this->request->get['filter_date_added'])) {
			$url .= '&filter_date_added=' . $this->request->get['filter_date_added'];
		}
						
		if (isset($this->request->get['filter_date_modified'])) {
			$url .= '&filter_date_modified=' . $this->request->get['filter_date_modified'];
		}	
			
		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
		
		$data['sort_labpreorder_id'] = $this->url->link('sale/labpreorder', 'token=' . $this->session->data['token'] . '&sort=r.labpreorder_id' . $url, 'SSL');
		$data['sort_address'] = $this->url->link('sale/labpreorder', 'token=' . $this->session->data['token'] . '&sort=r.order_id' . $url, 'SSL');
		$data['sort_customer'] = $this->url->link('sale/labpreorder', 'token=' . $this->session->data['token'] . '&sort=customer' . $url, 'SSL');
		$data['sort_product'] = $this->url->link('sale/labpreorder', 'token=' . $this->session->data['token'] . '&sort=product' . $url, 'SSL');
		$data['sort_model'] = $this->url->link('sale/labpreorder', 'token=' . $this->session->data['token'] . '&sort=model' . $url, 'SSL');
		$data['sort_status'] = $this->url->link('sale/labpreorder', 'token=' . $this->session->data['token'] . '&sort=status' . $url, 'SSL');
		$data['sort_date_added'] = $this->url->link('sale/labpreorder', 'token=' . $this->session->data['token'] . '&sort=r.date_added' . $url, 'SSL');
		$data['sort_date_modified'] = $this->url->link('sale/labpreorder', 'token=' . $this->session->data['token'] . '&sort=r.date_modified' . $url, 'SSL');
		
		$url = '';

		if (isset($this->request->get['filter_labpreorder_id'])) {
			$url .= '&filter_labpreorder_id=' . $this->request->get['filter_labpreorder_id'];
		}
		
		if (isset($this->request->get['filter_address'])) {
			$url .= '&filter_address=' . $this->request->get['filter_address'];
		}
		
		if (isset($this->request->get['filter_customer'])) {
			$url .= '&filter_customer=' . urlencode(html_entity_decode($this->request->get['filter_customer'], ENT_QUOTES, 'UTF-8'));
		}
		
		if (isset($this->request->get['filter_product'])) {
			$url .= '&filter_product=' . urlencode(html_entity_decode($this->request->get['filter_product'], ENT_QUOTES, 'UTF-8'));
		}
		
		if (isset($this->request->get['filter_model'])) {
			$url .= '&filter_model=' . urlencode(html_entity_decode($this->request->get['filter_model'], ENT_QUOTES, 'UTF-8'));
		}
											
		if (isset($this->request->get['filter_labpreorder_status_id'])) {
			$url .= '&filter_labpreorder_status_id=' . $this->request->get['filter_labpreorder_status_id'];
		}
		
		if (isset($this->request->get['filter_date_added'])) {
			$url .= '&filter_date_added=' . $this->request->get['filter_date_added'];
		}
		
		if (isset($this->request->get['filter_date_modified'])) {
			$url .= '&filter_date_modified=' . $this->request->get['filter_date_modified'];
		}
					
		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}
												
		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $labpreorder_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_admin_limit');
		$pagination->url = $this->url->link('sale/labpreorder', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');
			
		$data['pagination'] = $pagination->render();
                $data['results'] = sprintf($this->language->get('text_pagination'), ($labpreorder_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($labpreorder_total - $this->config->get('config_limit_admin'))) ? $labpreorder_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $labpreorder_total, ceil($labpreorder_total / $this->config->get('config_limit_admin')));

		$data['filter_labpreorder_id'] = $filter_labpreorder_id;
		$data['filter_address'] = $filter_address;
		$data['filter_customer'] = $filter_customer;
		$data['filter_product'] = $filter_product;
		$data['filter_model'] = $filter_model;
		$data['filter_labpreorder_status_id'] = $filter_labpreorder_status_id;
		$data['filter_date_added'] = $filter_date_added;
		$data['filter_date_modified'] = $filter_date_modified;

		$this->load->model('localisation/labpreorder_status');
		
    	$data['labpreorder_statuses'] = $this->model_localisation_labpreorder_status->getlabpreorderStatuses();
		
		$data['sort'] = $sort;
		$data['order'] = $order;

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
				
		$this->response->setOutput($this->load->view('sale/labpreorder_list.tpl', $data));
  	}
  
  	private function getForm() {
    	$data['heading_title'] = $this->language->get('heading_title');
 		
                $data['text_form'] = !isset($this->request->get['labpreorder_id']) ? $this->language->get('text_add') : $this->language->get('text_edit');
		$data['text_select'] = $this->language->get('text_select');
		$data['text_opened'] = $this->language->get('text_opened');
		$data['text_unopened'] = $this->language->get('text_unopened');	
			
		$data['entry_customer'] = $this->language->get('entry_customer');
		$data['entry_address'] = $this->language->get('entry_address');
		$data['entry_date_ordered'] = $this->language->get('entry_date_ordered');
		$data['entry_firstname'] = $this->language->get('entry_firstname');
		$data['entry_lastname'] = $this->language->get('entry_lastname');
		$data['entry_email'] = $this->language->get('entry_email');
		$data['entry_telephone'] = $this->language->get('entry_telephone');
		$data['entry_labpreorder_status'] = $this->language->get('entry_labpreorder_status');
		$data['entry_comment'] = $this->language->get('entry_comment');	
		$data['entry_product'] = $this->language->get('entry_product');
		$data['entry_model'] = $this->language->get('entry_model');
		$data['entry_quantity'] = $this->language->get('entry_quantity');
		$data['entry_action'] = $this->language->get('entry_action');
			
		$data['button_save'] = $this->language->get('button_save');
    	$data['button_cancel'] = $this->language->get('button_cancel');

		$data['tab_labpreorder'] = $this->language->get('tab_labpreorder');
                $data['tab_general'] = $this->language->get('tab_general');
		$data['tab_product'] = $this->language->get('tab_product');
                $data['tab_labpreorder_history'] = $this->language->get('tab_labpreorder_history');
			
		$data['token'] = $this->session->data['token'];
                
                if (isset($this->request->get['labpreorder_id'])) {
			$data['labpreorder_id'] = $this->request->get['labpreorder_id'];
		} else {
			$data['labpreorder_id'] = 0;
		}

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
								
		$url = '';
		
		if (isset($this->request->get['filter_labpreorder_id'])) {
			$url .= '&filter_labpreorder_id=' . $this->request->get['filter_labpreorder_id'];
		}
		
		if (isset($this->request->get['filter_address'])) {
			$url .= '&filter_address=' . $this->request->get['filter_address'];
		}
		
		if (isset($this->request->get['filter_customer'])) {
			$url .= '&filter_customer=' . urlencode(html_entity_decode($this->request->get['filter_customer'], ENT_QUOTES, 'UTF-8'));
		}
		
		if (isset($this->request->get['filter_product'])) {
			$url .= '&filter_product=' . urlencode(html_entity_decode($this->request->get['filter_product'], ENT_QUOTES, 'UTF-8'));
		}
		
		if (isset($this->request->get['filter_model'])) {
			$url .= '&filter_model=' . urlencode(html_entity_decode($this->request->get['filter_model'], ENT_QUOTES, 'UTF-8'));
		}
											
		if (isset($this->request->get['filter_labpreorder_status_id'])) {
			$url .= '&filter_labpreorder_status_id=' . $this->request->get['filter_labpreorder_status_id'];
		}
		
		if (isset($this->request->get['filter_date_added'])) {
			$url .= '&filter_date_added=' . $this->request->get['filter_date_added'];
		}
		
		if (isset($this->request->get['filter_date_modified'])) {
			$url .= '&filter_date_modified=' . $this->request->get['filter_date_modified'];
		}
								
		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}
		
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

  		$data['breadcrumbs'] = array();

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('sale/labpreorder', 'token=' . $this->session->data['token'] . $url, 'SSL'),
      		'separator' => ' :: '
   		);

		if (!isset($this->request->get['labpreorder_id'])) {
			$data['action'] = $this->url->link('sale/labpreorder/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		} else {
			$data['action'] = $this->url->link('sale/labpreorder/update', 'token=' . $this->session->data['token'] . '&labpreorder_id=' . $this->request->get['labpreorder_id'] . $url, 'SSL');
		}
		  
    	$data['cancel'] = $this->url->link('sale/labpreorder', 'token=' . $this->session->data['token'] . $url, 'SSL');

    	if (isset($this->request->get['labpreorder_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
      		$labpreorder_info = $this->model_sale_labpreorder->getlabpreorder($this->request->get['labpreorder_id']);
    	}
				
    	if (isset($this->request->post['address'])) {
      		$data['address'] = $this->request->post['address'];
		} elseif (!empty($labpreorder_info)) { 
			$data['address'] = $labpreorder_info['address'];
		} else {
      		$data['address'] = '';
    	}		

		if (isset($this->request->post['customer'])) {
			$data['customer'] = $this->request->post['customer'];
		} elseif (!empty($labpreorder_info)) {
			$data['customer'] = $labpreorder_info['customer'];
		} else {
			$data['customer'] = '';
		}
				
		if (isset($this->request->post['customer_id'])) {
			$data['customer_id'] = $this->request->post['customer_id'];
		} elseif (!empty($labpreorder_info)) {
			$data['customer_id'] = $labpreorder_info['customer_id'];
		} else {
			$data['customer_id'] = '';
		}
			
    	if (isset($this->request->post['firstname'])) {
      		$data['firstname'] = $this->request->post['firstname'];
		} elseif (!empty($labpreorder_info)) { 
			$data['firstname'] = $labpreorder_info['firstname'];
		} else {
      		$data['firstname'] = '';
    	}	
		
    	if (isset($this->request->post['lastname'])) {
      		$data['lastname'] = $this->request->post['lastname'];
		} elseif (!empty($labpreorder_info)) { 
			$data['lastname'] = $labpreorder_info['lastname'];
		} else {
      		$data['lastname'] = '';
    	}
		
    	if (isset($this->request->post['email'])) {
      		$data['email'] = $this->request->post['email'];
		} elseif (!empty($labpreorder_info)) { 
			$data['email'] = $labpreorder_info['email'];
		} else {
      		$data['email'] = '';
    	}
		
    	if (isset($this->request->post['telephone'])) {
      		$data['telephone'] = $this->request->post['telephone'];
		} elseif (!empty($labpreorder_info)) { 
			$data['telephone'] = $labpreorder_info['telephone'];
		} else {
      		$data['telephone'] = '';
    	}
		
		if (isset($this->request->post['product'])) {
			$data['product'] = $this->request->post['product'];
		} elseif (!empty($labpreorder_info)) {
			$data['product'] = $labpreorder_info['product'];
		} else {
			$data['product'] = '';
		}		
		
		if (isset($this->request->post['model'])) {
			$data['model'] = $this->request->post['model'];
		} elseif (!empty($labpreorder_info)) {
			$data['model'] = $labpreorder_info['model'];
		} else {
			$data['model'] = '';
		}

		if (isset($this->request->post['quantity'])) {
			$data['quantity'] = $this->request->post['quantity'];
		} elseif (!empty($labpreorder_info)) {
			$data['quantity'] = $labpreorder_info['quantity'];
		} else {
			$data['quantity'] = '';
		}
	
		if (isset($this->request->post['labpreorder_action_id'])) {
			$data['labpreorder_action_id'] = $this->request->post['labpreorder_action_id'];
		} elseif (!empty($labpreorder_info)) {
			$data['labpreorder_action_id'] = $labpreorder_info['labpreorder_action_id'];
		} else {
			$data['labpreorder_action_id'] = '';
		}				
				
		$this->load->model('localisation/labpreorder_action');
		
		$data['labpreorder_actions'] = $this->model_localisation_labpreorder_action->getlabpreorderActions();

		if (isset($this->request->post['comment'])) {
			$data['comment'] = $this->request->post['comment'];
		} elseif (!empty($labpreorder_info)) {
			$data['comment'] = $labpreorder_info['comment'];
		} else {
			$data['comment'] = '';
		}
						
		if (isset($this->request->post['labpreorder_status_id'])) {
			$data['labpreorder_status_id'] = $this->request->post['labpreorder_status_id'];
		} elseif (!empty($labpreorder_info)) {
			$data['labpreorder_status_id'] = $labpreorder_info['labpreorder_status_id'];
		} else {
			$data['labpreorder_status_id'] = '';
		}
		
		$this->load->model('localisation/labpreorder_status');
		
		$data['labpreorder_statuses'] = $this->model_localisation_labpreorder_status->getlabpreorderStatuses();
						
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
				
		$this->response->setOutput($this->load->view('sale/labpreorder_form.tpl', $data));
	}
	
	public function info() {
		$this->load->model('sale/labpreorder');
    	
		if (isset($this->request->get['labpreorder_id'])) {
			$labpreorder_id = $this->request->get['labpreorder_id'];
		} else {
			$labpreorder_id = 0;
		}
				
		$labpreorder_info = $this->model_sale_labpreorder->getlabpreorder($labpreorder_id);
		
		if ($labpreorder_info) {
			$this->load->language('sale/labpreorder');
		
			$this->document->setTitle($this->language->get('heading_title'));
			
			$data['heading_title'] = $this->language->get('heading_title');
			
			$data['text_wait'] = $this->language->get('text_wait');	
			$data['text_labpreorder_id'] = $this->language->get('text_labpreorder_id');
			$data['text_address'] = $this->language->get('text_order_id');
			$data['text_customer'] = $this->language->get('text_customer');
			$data['text_email'] = $this->language->get('text_email');
			$data['text_telephone'] = $this->language->get('text_telephone');
			$data['text_labpreorder_status'] = $this->language->get('text_labpreorder_status');
			$data['text_date_added'] = $this->language->get('text_date_added');	
			$data['text_date_modified'] = $this->language->get('text_date_modified');				
			$data['text_product'] = $this->language->get('text_product');
			$data['text_model'] = $this->language->get('text_model');
			$data['text_quantity'] = $this->language->get('text_quantity');
			$data['text_comment'] = $this->language->get('text_comment');			
			$data['text_labpreorder_action'] = $this->language->get('text_labpreorder_action');
                        $data['text_history'] = $this->language->get('text_history');

			$data['entry_labpreorder_status'] = $this->language->get('entry_labpreorder_status');
			$data['entry_notify'] = $this->language->get('entry_notify');
			$data['entry_comment'] = $this->language->get('entry_comment');
			
			$data['button_save'] = $this->language->get('button_save');
			$data['button_cancel'] = $this->language->get('button_cancel');
			$data['button_add_history'] = $this->language->get('button_add_history');
			
			$data['tab_labpreorder'] = $this->language->get('tab_labpreorder');
			$data['tab_product'] = $this->language->get('tab_product');
			$data['tab_labpreorder_history'] = $this->language->get('tab_labpreorder_history');

			
			$url = '';
			
			if (isset($this->request->get['filter_labpreorder_id'])) {
				$url .= '&filter_labpreorder_id=' . $this->request->get['filter_labpreorder_id'];
			}
			
			if (isset($this->request->get['filter_address'])) {
				$url .= '&filter_address=' . $this->request->get['filter_address'];
			}
			
			if (isset($this->request->get['filter_customer'])) {
				$url .= '&filter_customer=' . urlencode(html_entity_decode($this->request->get['filter_customer'], ENT_QUOTES, 'UTF-8'));
			}
			
			if (isset($this->request->get['filter_product'])) {
				$url .= '&filter_product=' . urlencode(html_entity_decode($this->request->get['filter_product'], ENT_QUOTES, 'UTF-8'));
			}
			
			if (isset($this->request->get['filter_model'])) {
				$url .= '&filter_model=' . urlencode(html_entity_decode($this->request->get['filter_model'], ENT_QUOTES, 'UTF-8'));
			}
												
			if (isset($this->request->get['filter_labpreorder_status_id'])) {
				$url .= '&filter_labpreorder_status_id=' . $this->request->get['filter_labpreorder_status_id'];
			}
			
			if (isset($this->request->get['filter_date_added'])) {
				$url .= '&filter_date_added=' . $this->request->get['filter_date_added'];
			}
			
			if (isset($this->request->get['filter_date_modified'])) {
				$url .= '&filter_date_modified=' . $this->request->get['filter_date_modified'];
			}
	
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}
	
			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
			
			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}
				
			$data['breadcrumbs'] = array();
	
			$data['breadcrumbs'][] = array(
				'text'      => $this->language->get('text_home'),
				'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
				'separator' => false
			);
	
			$data['breadcrumbs'][] = array(
				'text'      => $this->language->get('heading_title'),
				'href'      => $this->url->link('sale/labpreorder', 'token=' . $this->session->data['token'] . $url, 'SSL'),
				'separator' => ' :: '
			);
			  
			$data['cancel'] = $this->url->link('sale/labpreorder', 'token=' . $this->session->data['token'] . $url, 'SSL');			
			

			$data['token'] = $this->session->data['token'];
			
			$data['labpreorder_id'] = $labpreorder_info['labpreorder_id'];
			$data['address'] = $labpreorder_info['address'];
			
			$data['firstname'] = $labpreorder_info['firstname'];
			$data['lastname'] = $labpreorder_info['lastname'];
						
			if ($labpreorder_info['customer_id']) {
				$data['customer'] = $this->url->link('sale/customer/update', 'token=' . $this->session->data['token'] . '&customer_id=' . $labpreorder_info['customer_id'], 'SSL');
			} else {
				$data['customer'] = '';
			}
			
			$data['email'] = $labpreorder_info['email'];
			$data['telephone'] = $labpreorder_info['telephone'];
			
			$this->load->model('localisation/labpreorder_status');

			$labpreorder_status_info = $this->model_localisation_labpreorder_status->getlabpreorderStatus($labpreorder_info['labpreorder_status_id']);

			if ($labpreorder_status_info) {
				$data['labpreorder_status'] = $labpreorder_status_info['name'];
			} else {
				$data['labpreorder_status'] = '';
			}		
						
			$data['date_added'] = date($this->language->get('date_format_short'), strtotime($labpreorder_info['date_added']));
			$data['date_modified'] = date($this->language->get('date_format_short'), strtotime($labpreorder_info['date_modified']));
			$data['product'] = $labpreorder_info['product'];
			$data['model'] = $labpreorder_info['model'];
			$data['quantity'] = $labpreorder_info['quantity'];		
			
			$data['comment'] = nl2br($labpreorder_info['comment']);
			
			$this->load->model('localisation/labpreorder_action');
			
			$data['labpreorder_actions'] = $this->model_localisation_labpreorder_action->getlabpreorderActions(); 
			
			$data['labpreorder_action_id'] = $labpreorder_info['labpreorder_action_id'];

			$data['labpreorder_statuses'] = $this->model_localisation_labpreorder_status->getlabpreorderStatuses();				
			
			$data['labpreorder_status_id'] = $labpreorder_info['labpreorder_status_id'];                        
                        
			$data['header'] = $this->load->controller('common/header');
                        $data['column_left'] = $this->load->controller('common/column_left');
                        $data['footer'] = $this->load->controller('common/footer');
				
                    $this->response->setOutput($this->load->view('sale/labpreorder_info.tpl', $data));	
		} else {
			$this->load->language('error/not_found');

			$this->document->setTitle($this->language->get('heading_title'));

			$data['heading_title'] = $this->language->get('heading_title');

			$data['text_not_found'] = $this->language->get('text_not_found');

			$data['breadcrumbs'] = array();

			$data['breadcrumbs'][] = array(
				'text'      => $this->language->get('text_home'),
				'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
				'separator' => false
			);

			$data['breadcrumbs'][] = array(
				'text'      => $this->language->get('heading_title'),
				'href'      => $this->url->link('error/not_found', 'token=' . $this->session->data['token'], 'SSL'),
				'separator' => ' :: '
			);
		
			$data['header'] = $this->load->controller('common/header');
                        $data['column_left'] = $this->load->controller('common/column_left');
                        $data['footer'] = $this->load->controller('common/footer');
				
                    $this->response->setOutput($this->load->view('error/not_found.tpl', $data));			
		}
	}
		
  	private function validateForm() {
    	if (!$this->user->hasPermission('modify', 'sale/labpreorder')) {
      		$this->error['warning'] = $this->language->get('error_permission');
    	}

    	if ((utf8_strlen($this->request->post['firstname']) < 1) || (utf8_strlen($this->request->post['firstname']) > 32)) {
      		$this->error['firstname'] = $this->language->get('error_firstname');
    	}

    	if ((utf8_strlen($this->request->post['lastname']) < 1) || (utf8_strlen($this->request->post['lastname']) > 32)) {
      		$this->error['lastname'] = $this->language->get('error_lastname');
    	}

    	if ((utf8_strlen($this->request->post['email']) > 96) || !preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['email'])) {
      		$this->error['email'] = $this->language->get('error_email');
    	}
		
    	if ((utf8_strlen($this->request->post['telephone']) < 3) || (utf8_strlen($this->request->post['telephone']) > 32)) {
      		$this->error['telephone'] = $this->language->get('error_telephone');
    	}
		
		if ((utf8_strlen($this->request->post['product']) < 1) || (utf8_strlen($this->request->post['product']) > 255)) {
			$this->error['product'] = $this->language->get('error_product');
		}	
		
		if ((utf8_strlen($this->request->post['model']) < 1) || (utf8_strlen($this->request->post['model']) > 64)) {
			$this->error['model'] = $this->language->get('error_model');
		}		
				
		if ($this->error && !isset($this->error['warning'])) {
			$this->error['warning'] = $this->language->get('error_warning');
		}
		
		if (!$this->error) {
	  		return true;
		} else {
	  		return false;
		}
  	}    

  	private function validateDelete() {
    	if (!$this->user->hasPermission('modify', 'sale/labpreorder')) {
      		$this->error['warning'] = $this->language->get('error_permission');
    	}	
	  	 
		if (!$this->error) {
	  		return true;
		} else {
	  		return false;
		}  
  	} 
	
	public function action() {
		$this->language->load('sale/labpreorder');
		
		$json = array();
		
		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			if (!$this->user->hasPermission('modify', 'sale/labpreorder')) {
				$json['error'] = $this->language->get('error_permission');
			}
		
			if (!$json) { 
				$this->load->model('sale/labpreorder');
			
				$json['success'] = $this->language->get('text_success');
				
				$this->model_sale_labpreorder->editlabpreorderAction($this->request->get['labpreorder_id'], $this->request->post['labpreorder_action_id']);
			}
		}
		
		$this->response->setOutput(json_encode($json));	
	}
		
	public function history() {
    	$this->language->load('sale/labpreorder');

		$data['error'] = '';
		$data['success'] = '';
				
		$this->load->model('sale/labpreorder');

		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			if (!$this->user->hasPermission('modify', 'sale/labpreorder')) { 
				$data['error'] = $this->language->get('error_permission');
			}
			
			if (!$data['error']) { 
				$this->model_sale_labpreorder->addlabpreorderHistory($this->request->get['labpreorder_id'], $this->request->post);
				
				$data['success'] = $this->language->get('text_success');
			}
		}
				
		$data['text_no_results'] = $this->language->get('text_no_results');
		
		$data['column_date_added'] = $this->language->get('column_date_added');
		$data['column_status'] = $this->language->get('column_status');
		$data['column_notify'] = $this->language->get('column_notify');
		$data['column_comment'] = $this->language->get('column_comment');

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}  
		
		$data['histories'] = array();
			
		$results = $this->model_sale_labpreorder->getlabpreorderHistories($this->request->get['labpreorder_id'], ($page - 1) * 10, 10);
      		
		foreach ($results as $result) {
        	$data['histories'][] = array(
				'notify'     => $result['notify'] ? $this->language->get('text_yes') : $this->language->get('text_no'),
				'status'     => $result['status'],
				'comment'    => nl2br($result['comment']),
        		'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added']))
        	);
      	}			
		
		$history_total = $this->model_sale_labpreorder->getTotallabpreorderHistories($this->request->get['labpreorder_id']);
			
		$pagination = new Pagination();
		$pagination->total = $history_total;
		$pagination->page = $page;
		$pagination->limit = 10; 
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('sale/labpreorder/history', 'token=' . $this->session->data['token'] . '&labpreorder_id=' . $this->request->get['labpreorder_id'] . '&page={page}', 'SSL');
			
		$data['pagination'] = $pagination->render();	
                
                $data['results'] = sprintf($this->language->get('text_pagination'), ($history_total) ? (($page - 1) * 10) + 1 : 0, ((($page - 1) * 10) > ($history_total - 10)) ? $history_total : ((($page - 1) * 10) + 10), $history_total, ceil($history_total / 10));
				
                    $this->response->setOutput($this->load->view('sale/labpreorder_history.tpl', $data));
  	}		
}
?>