<?php    
class ControllerSaleRepair extends Controller { 
	private $error = array();
   
  	public function index() {
		$this->load->language('sale/repair');
		 
		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('sale/repair');
		
    	$this->getList();
  	}
  
  	public function insert() {
		$this->load->language('sale/repair');

    	$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('sale/repair');
			
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
      	  	$this->model_sale_repair->addRepair($this->request->post);
			
			$this->session->data['success'] = $this->language->get('text_success');
		  
			$url = '';
			
			if (isset($this->request->get['filter_repair_id'])) {
				$url .= '&filter_repair_id=' . $this->request->get['filter_repair_id'];
			}
			
			if (isset($this->request->get['filter_order_id'])) {
				$url .= '&filter_order_id=' . $this->request->get['filter_order_id'];
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
												
			if (isset($this->request->get['filter_repair_status_id'])) {
				$url .= '&filter_repair_status_id=' . $this->request->get['filter_repair_status_id'];
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
			
			$this->redirect($this->url->link('sale/repair', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}
    	
    	$this->getForm();
  	} 
   
  	public function update() {
		$this->load->language('sale/repair');

    	$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('sale/repair');
		
    	if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_sale_repair->editRepair($this->request->get['repair_id'], $this->request->post);
	  		
			$this->session->data['success'] = $this->language->get('text_success');
	  
			$url = '';

			if (isset($this->request->get['filter_repair_id'])) {
				$url .= '&filter_repair_id=' . $this->request->get['filter_repair_id'];
			}
			
			if (isset($this->request->get['filter_order_id'])) {
				$url .= '&filter_order_id=' . $this->request->get['filter_order_id'];
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
												
			if (isset($this->request->get['filter_repair_status_id'])) {
				$url .= '&filter_repair_status_id=' . $this->request->get['filter_repair_status_id'];
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
			
			$this->redirect($this->url->link('sale/repair', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}
    
    	$this->getForm();
  	}   

  	public function delete() {
		$this->load->language('sale/repair');

    	$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('sale/repair');
			
    	if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $repair_id) {
				$this->model_sale_repair->deleteRepair($repair_id);
			}
			
			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['filter_repair_id'])) {
				$url .= '&filter_repair_id=' . $this->request->get['filter_repair_id'];
			}
			
			if (isset($this->request->get['filter_order_id'])) {
				$url .= '&filter_order_id=' . $this->request->get['filter_order_id'];
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
												
			if (isset($this->request->get['filter_repair_status_id'])) {
				$url .= '&filter_repair_status_id=' . $this->request->get['filter_repair_status_id'];
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
			
			$this->redirect($this->url->link('sale/repair', 'token=' . $this->session->data['token'] . $url, 'SSL'));
    	}
    
    	$this->getList();
  	}  
    
  	private function getList() {
		if (isset($this->request->get['filter_repair_id'])) {
			$filter_repair_id = $this->request->get['filter_repair_id'];
		} else {
			$filter_repair_id = null;
		}
		
		if (isset($this->request->get['filter_order_id'])) {
			$filter_order_id = $this->request->get['filter_order_id'];
		} else {
			$filter_order_id = null;
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
		
		if (isset($this->request->get['filter_repair_status_id'])) {
			$filter_repair_status_id = $this->request->get['filter_repair_status_id'];
		} else {
			$filter_repair_status_id = null;
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
			$sort = 'r.repair_id'; 
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

		if (isset($this->request->get['filter_repair_id'])) {
			$url .= '&filter_repair_id=' . $this->request->get['filter_repair_id'];
		}
		
		if (isset($this->request->get['filter_order_id'])) {
			$url .= '&filter_order_id=' . $this->request->get['filter_order_id'];
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
													
		if (isset($this->request->get['filter_repair_status_id'])) {
			$url .= '&filter_repair_status_id=' . $this->request->get['filter_repair_status_id'];
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
			'href' => $this->url->link('sale/repair', 'token=' . $this->session->data['token'] . $url, 'SSL')
		);
		
		$data['add'] = $this->url->link('sale/repair/add', 'token=' . $this->session->data['token'] . $url, 'SSL');
		$data['delete'] = $this->url->link('sale/repair/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');

		$data['repairs'] = array();

		$filter_data = array(
			'filter_repair_id'        => $filter_repair_id, 
			'filter_order_id'         => $filter_order_id, 
			'filter_customer'         => $filter_customer, 
			'filter_product'          => $filter_product, 
			'filter_model'            => $filter_model, 
			'filter_repair_status_id' => $filter_repair_status_id, 
			'filter_date_added'       => $filter_date_added,
			'filter_date_modified'    => $filter_date_modified,
			'sort'                    => $sort,
			'order'                   => $order,
			'start'                   => ($page - 1) * $this->config->get('config_admin_limit'),
			'limit'                   => $this->config->get('config_admin_limit')
		);
		
		$repair_total = $this->model_sale_repair->getTotalRepairs($data);
	
		$results = $this->model_sale_repair->getRepairs($data);
 
    	foreach ($results as $result) {
			$action = array();
			
			$action[] = array(
				'text' => $this->language->get('text_view'),
				'href' => $this->url->link('sale/repair/info', 'token=' . $this->session->data['token'] . '&repair_id=' . $result['repair_id'] . $url, 'SSL')
			);
                            $action[] = array(
                                    'text' => $this->language->get('text_edit'),
                                    'href' => $this->url->link('sale/repair/update', 'token=' . $this->session->data['token'] . '&repair_id=' . $result['repair_id'] . $url, 'SSL')
                            );
						
			$data['repairs'][] = array(
				'repair_id'     => $result['repair_id'],
				'order_id'      => $result['order_id'],
				'customer'      => $result['customer'],
				'product'       => $result['product'],
				'model'         => $result['model'],
				'status'        => $result['status'],
				'date_added'    => date($this->language->get('date_format_short'), strtotime($result['date_added'])),	
				'date_modified' => date($this->language->get('date_format_short'), strtotime($result['date_modified'])),				
				'selected'      => isset($this->request->post['selected']) && in_array($result['repair_id'], $this->request->post['selected']),
				'action'        => $action
			);
		}	
		
		$data['heading_title'] = $this->language->get('heading_title');
		
		$data['text_no_results'] = $this->language->get('text_no_results');

		$data['column_repair_id'] = $this->language->get('column_repair_id');
		$data['column_order_id'] = $this->language->get('column_order_id');
		$data['column_customer'] = $this->language->get('column_customer');
		$data['column_product'] = $this->language->get('column_product');
		$data['column_model'] = $this->language->get('column_model');
		$data['column_status'] = $this->language->get('column_status');
		$data['column_date_added'] = $this->language->get('column_date_added');
		$data['column_date_modified'] = $this->language->get('column_date_modified');
		$data['column_action'] = $this->language->get('column_action');		
		
		$data['button_insert'] = $this->language->get('button_insert');
		$data['button_delete'] = $this->language->get('button_delete');
		$data['button_filter'] = $this->language->get('button_filter');

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
		
		$url = '';

		if (isset($this->request->get['filter_repair_id'])) {
			$url .= '&filter_repair_id=' . $this->request->get['filter_repair_id'];
		}
		
		if (isset($this->request->get['filter_order_id'])) {
			$url .= '&filter_order_id=' . $this->request->get['filter_order_id'];
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
											
		if (isset($this->request->get['filter_repair_status_id'])) {
			$url .= '&filter_repair_status_id=' . $this->request->get['filter_repair_status_id'];
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
		
		$data['sort_repair_id'] = $this->url->link('sale/repair', 'token=' . $this->session->data['token'] . '&sort=r.repair_id' . $url, 'SSL');
		$data['sort_order_id'] = $this->url->link('sale/repair', 'token=' . $this->session->data['token'] . '&sort=r.order_id' . $url, 'SSL');
		$data['sort_customer'] = $this->url->link('sale/repair', 'token=' . $this->session->data['token'] . '&sort=customer' . $url, 'SSL');
		$data['sort_product'] = $this->url->link('sale/repair', 'token=' . $this->session->data['token'] . '&sort=product' . $url, 'SSL');
		$data['sort_model'] = $this->url->link('sale/repair', 'token=' . $this->session->data['token'] . '&sort=model' . $url, 'SSL');
		$data['sort_status'] = $this->url->link('sale/repair', 'token=' . $this->session->data['token'] . '&sort=status' . $url, 'SSL');
		$data['sort_date_added'] = $this->url->link('sale/repair', 'token=' . $this->session->data['token'] . '&sort=r.date_added' . $url, 'SSL');
		$data['sort_date_modified'] = $this->url->link('sale/repair', 'token=' . $this->session->data['token'] . '&sort=r.date_modified' . $url, 'SSL');
		
		$url = '';

		if (isset($this->request->get['filter_repair_id'])) {
			$url .= '&filter_repair_id=' . $this->request->get['filter_repair_id'];
		}
		
		if (isset($this->request->get['filter_order_id'])) {
			$url .= '&filter_order_id=' . $this->request->get['filter_order_id'];
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
											
		if (isset($this->request->get['filter_repair_status_id'])) {
			$url .= '&filter_repair_status_id=' . $this->request->get['filter_repair_status_id'];
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
		$pagination->total = $repair_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_admin_limit');
		$pagination->url = $this->url->link('sale/repair', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');
			
		$data['pagination'] = $pagination->render();
                
                $data['results'] = sprintf($this->language->get('text_pagination'), ($repair_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($repair_total - $this->config->get('config_limit_admin'))) ? $repair_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $repair_total, ceil($repair_total / $this->config->get('config_limit_admin')));

		$data['filter_repair_id'] = $filter_repair_id;
		$data['filter_order_id'] = $filter_order_id;
		$data['filter_customer'] = $filter_customer;
		$data['filter_product'] = $filter_product;
		$data['filter_model'] = $filter_model;
		$data['filter_repair_status_id'] = $filter_repair_status_id;
		$data['filter_date_added'] = $filter_date_added;
		$data['filter_date_modified'] = $filter_date_modified;

		$this->load->model('localisation/repair_status');
		
    	$data['repair_statuses'] = $this->model_localisation_repair_status->getRepairStatuses();
		
		$data['sort'] = $sort;
		$data['order'] = $order;

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
				
		$this->response->setOutput($this->load->view('sale/repair_list.tpl', $data));
  	}
  
  	private function getForm() {
    	$data['heading_title'] = $this->language->get('heading_title');
 		
		$data['text_select'] = $this->language->get('text_select');
		$data['text_opened'] = $this->language->get('text_opened');
		$data['text_unopened'] = $this->language->get('text_unopened');	
			
		$data['entry_customer'] = $this->language->get('entry_customer');
		$data['entry_order_id'] = $this->language->get('entry_order_id');
		$data['entry_date_ordered'] = $this->language->get('entry_date_ordered');
		$data['entry_firstname'] = $this->language->get('entry_firstname');
		$data['entry_lastname'] = $this->language->get('entry_lastname');
		$data['entry_email'] = $this->language->get('entry_email');
		$data['entry_telephone'] = $this->language->get('entry_telephone');
		$data['entry_repair_status'] = $this->language->get('entry_repair_status');
		$data['entry_comment'] = $this->language->get('entry_comment');	
		$data['entry_product'] = $this->language->get('entry_product');
		$data['entry_model'] = $this->language->get('entry_model');
		$data['entry_quantity'] = $this->language->get('entry_quantity');
 		$data['entry_reason'] = $this->language->get('entry_reason');
		$data['entry_opened'] = $this->language->get('entry_opened');
		$data['entry_action'] = $this->language->get('entry_action');
			
		$data['button_save'] = $this->language->get('button_save');
    	$data['button_cancel'] = $this->language->get('button_cancel');

		$data['tab_repair'] = $this->language->get('tab_repair');
		$data['tab_product'] = $this->language->get('tab_product');
			
		$data['token'] = $this->session->data['token'];

 		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
			
 		if (isset($this->error['order_id'])) {
			$data['error_order_id'] = $this->error['order_id'];
		} else {
			$data['error_order_id'] = '';
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
		
		if (isset($this->request->get['filter_repair_id'])) {
			$url .= '&filter_repair_id=' . $this->request->get['filter_repair_id'];
		}
		
		if (isset($this->request->get['filter_order_id'])) {
			$url .= '&filter_order_id=' . $this->request->get['filter_order_id'];
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
											
		if (isset($this->request->get['filter_repair_status_id'])) {
			$url .= '&filter_repair_status_id=' . $this->request->get['filter_repair_status_id'];
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
			'href'      => $this->url->link('sale/repair', 'token=' . $this->session->data['token'] . $url, 'SSL'),
      		'separator' => ' :: '
   		);

		if (!isset($this->request->get['repair_id'])) {
			$data['action'] = $this->url->link('sale/repair/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		} else {
			$data['action'] = $this->url->link('sale/repair/update', 'token=' . $this->session->data['token'] . '&repair_id=' . $this->request->get['repair_id'] . $url, 'SSL');
		}
		  
    	$data['cancel'] = $this->url->link('sale/repair', 'token=' . $this->session->data['token'] . $url, 'SSL');

    	if (isset($this->request->get['repair_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
      		$repair_info = $this->model_sale_repair->getRepair($this->request->get['repair_id']);
    	}
				
    	if (isset($this->request->post['order_id'])) {
      		$data['order_id'] = $this->request->post['order_id'];
		} elseif (!empty($repair_info)) { 
			$data['order_id'] = $repair_info['order_id'];
		} else {
      		$data['order_id'] = '';
    	}	
		
    	if (isset($this->request->post['date_ordered'])) {
      		$data['date_ordered'] = $this->request->post['date_ordered'];
		} elseif (!empty($repair_info)) { 
			$data['date_ordered'] = $repair_info['date_ordered'];
		} else {
      		$data['date_ordered'] = '';
    	}	

		if (isset($this->request->post['customer'])) {
			$data['customer'] = $this->request->post['customer'];
		} elseif (!empty($repair_info)) {
			$data['customer'] = $repair_info['customer'];
		} else {
			$data['customer'] = '';
		}
				
		if (isset($this->request->post['customer_id'])) {
			$data['customer_id'] = $this->request->post['customer_id'];
		} elseif (!empty($repair_info)) {
			$data['customer_id'] = $repair_info['customer_id'];
		} else {
			$data['customer_id'] = '';
		}
			
    	if (isset($this->request->post['firstname'])) {
      		$data['firstname'] = $this->request->post['firstname'];
		} elseif (!empty($repair_info)) { 
			$data['firstname'] = $repair_info['firstname'];
		} else {
      		$data['firstname'] = '';
    	}	
		
    	if (isset($this->request->post['lastname'])) {
      		$data['lastname'] = $this->request->post['lastname'];
		} elseif (!empty($repair_info)) { 
			$data['lastname'] = $repair_info['lastname'];
		} else {
      		$data['lastname'] = '';
    	}
		
    	if (isset($this->request->post['email'])) {
      		$data['email'] = $this->request->post['email'];
		} elseif (!empty($repair_info)) { 
			$data['email'] = $repair_info['email'];
		} else {
      		$data['email'] = '';
    	}
		
    	if (isset($this->request->post['telephone'])) {
      		$data['telephone'] = $this->request->post['telephone'];
		} elseif (!empty($repair_info)) { 
			$data['telephone'] = $repair_info['telephone'];
		} else {
      		$data['telephone'] = '';
    	}
		
		if (isset($this->request->post['product'])) {
			$data['product'] = $this->request->post['product'];
		} elseif (!empty($repair_info)) {
			$data['product'] = $repair_info['product'];
		} else {
			$data['product'] = '';
		}	
			
		if (isset($this->request->post['product_id'])) {
			$data['product_id'] = $this->request->post['product_id'];
		} elseif (!empty($repair_info)) {
			$data['product_id'] = $repair_info['product_id'];
		} else {
			$data['product_id'] = '';
		}	
		
		if (isset($this->request->post['model'])) {
			$data['model'] = $this->request->post['model'];
		} elseif (!empty($repair_info)) {
			$data['model'] = $repair_info['model'];
		} else {
			$data['model'] = '';
		}

		if (isset($this->request->post['quantity'])) {
			$data['quantity'] = $this->request->post['quantity'];
		} elseif (!empty($repair_info)) {
			$data['quantity'] = $repair_info['quantity'];
		} else {
			$data['quantity'] = '';
		}
		
		if (isset($this->request->post['opened'])) {
			$data['opened'] = $this->request->post['opened'];
		} elseif (!empty($repair_info)) {
			$data['opened'] = $repair_info['opened'];
		} else {
			$data['opened'] = '';
		}
		
		if (isset($this->request->post['repair_reason_id'])) {
			$data['repair_reason_id'] = $this->request->post['repair_reason_id'];
		} elseif (!empty($repair_info)) {
			$data['repair_reason_id'] = $repair_info['repair_reason_id'];
		} else {
			$data['repair_reason_id'] = '';
		}
							
		$this->load->model('localisation/repair_reason');
		
		$data['repair_reasons'] = $this->model_localisation_repair_reason->getRepairReasons();
	
		if (isset($this->request->post['repair_action_id'])) {
			$data['repair_action_id'] = $this->request->post['repair_action_id'];
		} elseif (!empty($repair_info)) {
			$data['repair_action_id'] = $repair_info['repair_action_id'];
		} else {
			$data['repair_action_id'] = '';
		}				
				
		$this->load->model('localisation/repair_action');
		
		$data['repair_actions'] = $this->model_localisation_repair_action->getRepairActions();

		if (isset($this->request->post['comment'])) {
			$data['comment'] = $this->request->post['comment'];
		} elseif (!empty($repair_info)) {
			$data['comment'] = $repair_info['comment'];
		} else {
			$data['comment'] = '';
		}
						
		if (isset($this->request->post['repair_status_id'])) {
			$data['repair_status_id'] = $this->request->post['repair_status_id'];
		} elseif (!empty($repair_info)) {
			$data['repair_status_id'] = $repair_info['repair_status_id'];
		} else {
			$data['repair_status_id'] = '';
		}
		
		$this->load->model('localisation/repair_status');
		
		$data['repair_statuses'] = $this->model_localisation_repair_status->getRepairStatuses();
						
		$this->template = 'sale/repair_form.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}
	
	public function info() {
		$this->load->model('sale/repair');
    	
		if (isset($this->request->get['repair_id'])) {
			$repair_id = $this->request->get['repair_id'];
		} else {
			$repair_id = 0;
		}
				
		$repair_info = $this->model_sale_repair->getRepair($repair_id);
		
		if ($repair_info) {
			$this->load->language('sale/repair');
		
			$this->document->setTitle($this->language->get('heading_title'));
			
			$data['heading_title'] = $this->language->get('heading_title');
			
			$data['text_wait'] = $this->language->get('text_wait');	
			$data['text_repair_id'] = $this->language->get('text_repair_id');
			$data['text_order_id'] = $this->language->get('text_order_id');
			$data['text_date_ordered'] = $this->language->get('text_date_ordered');
			$data['text_customer'] = $this->language->get('text_customer');
			$data['text_email'] = $this->language->get('text_email');
			$data['text_telephone'] = $this->language->get('text_telephone');
			$data['text_repair_status'] = $this->language->get('text_repair_status');
			$data['text_date_added'] = $this->language->get('text_date_added');	
			$data['text_date_modified'] = $this->language->get('text_date_modified');				
			$data['text_product'] = $this->language->get('text_product');
			$data['text_model'] = $this->language->get('text_model');
			$data['text_quantity'] = $this->language->get('text_quantity');
			$data['text_repair_reason'] = $this->language->get('text_repair_reason');
			$data['text_opened'] = $this->language->get('text_opened');		
			$data['text_comment'] = $this->language->get('text_comment');			
			$data['text_repair_action'] = $this->language->get('text_repair_action');

			$data['entry_repair_status'] = $this->language->get('entry_repair_status');
			$data['entry_notify'] = $this->language->get('entry_notify');
			$data['entry_comment'] = $this->language->get('entry_comment');
			
			$data['button_save'] = $this->language->get('button_save');
			$data['button_cancel'] = $this->language->get('button_cancel');
			$data['button_add_history'] = $this->language->get('button_add_history');				
			
			$data['tab_repair'] = $this->language->get('tab_repair');
			$data['tab_product'] = $this->language->get('tab_product');
			$data['tab_repair_history'] = $this->language->get('tab_repair_history');

			
			$url = '';
			
			if (isset($this->request->get['filter_repair_id'])) {
				$url .= '&filter_repair_id=' . $this->request->get['filter_repair_id'];
			}
			
			if (isset($this->request->get['filter_order_id'])) {
				$url .= '&filter_order_id=' . $this->request->get['filter_order_id'];
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
												
			if (isset($this->request->get['filter_repair_status_id'])) {
				$url .= '&filter_repair_status_id=' . $this->request->get['filter_repair_status_id'];
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
				'href'      => $this->url->link('sale/repair', 'token=' . $this->session->data['token'] . $url, 'SSL'),
				'separator' => ' :: '
			);
			  
			$data['cancel'] = $this->url->link('sale/repair', 'token=' . $this->session->data['token'] . $url, 'SSL');			
			
			$this->load->model('sale/order');

			$order_info = $this->model_sale_order->getOrder($repair_info['order_id']);

			$data['token'] = $this->session->data['token'];
			
			$data['repair_id'] = $repair_info['repair_id'];
			$data['order_id'] = $repair_info['order_id'];
                        $data['login_id'] = $repair_info['login_id'];
                        $data['shipping_address'] = $repair_info['shipping_address'];
									
			if ($repair_info['order_id'] && $order_info) {
				$data['order'] = $this->url->link('sale/order/info', 'token=' . $this->session->data['token'] . '&order_id=' . $repair_info['order_id'], 'SSL');
			} else {
				$data['order'] = '';
			}
			
			$data['date_ordered'] = date($this->language->get('date_format_short'), strtotime($repair_info['date_ordered']));
			$data['firstname'] = $repair_info['firstname'];
			$data['lastname'] = $repair_info['lastname'];
						
			if ($repair_info['customer_id']) {
				$data['customer'] = $this->url->link('sale/customer/update', 'token=' . $this->session->data['token'] . '&customer_id=' . $repair_info['customer_id'], 'SSL');
			} else {
				$data['customer'] = '';
			}
			
			$data['email'] = $repair_info['email'];
			$data['telephone'] = $repair_info['telephone'];
			
			$this->load->model('localisation/repair_status');

			$repair_status_info = $this->model_localisation_repair_status->getRepairStatus($repair_info['repair_status_id']);

			if ($repair_status_info) {
				$data['repair_status'] = $repair_status_info['name'];
			} else {
				$data['repair_status'] = '';
			}		
						
			$data['date_added'] = date($this->language->get('date_format_short'), strtotime($repair_info['date_added']));
			$data['date_modified'] = date($this->language->get('date_format_short'), strtotime($repair_info['date_modified']));
			$data['product'] = $repair_info['product'];
			$data['model'] = $repair_info['model'];
			$data['quantity'] = $repair_info['quantity'];
			
			$this->load->model('localisation/repair_reason');

			$repair_reason_info = $this->model_localisation_repair_reason->getRepairReason($repair_info['repair_reason_id']);

			if ($repair_reason_info) {
				$data['repair_reason'] = $repair_reason_info['name'];
			} else {
				$data['repair_reason'] = '';
			}			
			
			$data['opened'] = $repair_info['opened'] ? $this->language->get('text_yes') : $this->language->get('text_no');
			$data['comment'] = nl2br($repair_info['comment']);
			
			$this->load->model('localisation/repair_action');
			
			$data['repair_actions'] = $this->model_localisation_repair_action->getRepairActions(); 
			
			$data['repair_action_id'] = $repair_info['repair_action_id'];

			$data['repair_statuses'] = $this->model_localisation_repair_status->getRepairStatuses();				
			
			$data['repair_status_id'] = $repair_info['repair_status_id'];                        
                        
            
                        $this->load->model('tool/image');
                        $data['repair_images'] = array();

                        foreach ($this->model_sale_repair->getRepairImages($repair_id) as $repair_image)
                        {
                            if ($repair_image['image'] && file_exists(DIR_IMAGE . $repair_image['image']))
                            {
                                $image = $repair_image['image'];
                            }
                            else
                            {
                                $image = 'no_image.jpg';
                            }

                            $data['repair_images'][] = array(
                                'image' => HTTPS_IMAGE . $image,
                                'thumb' => $this->model_tool_image->resize($image, 100, 100)
                            );
                        }
		
			$this->template = 'sale/repair_info.tpl';
			$this->children = array(
				'common/header',
				'common/footer'
			);
					
			$this->response->setOutput($this->render());		
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
		
			$this->template = 'error/not_found.tpl';
			$this->children = array(
				'common/header',
				'common/footer'
			);
		
			$this->response->setOutput($this->render());			
		}
	}
		
  	private function validateForm() {
    	if (!$this->user->hasPermission('modify', 'sale/repair')) {
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

		if (empty($this->request->post['repair_reason_id'])) {
			$this->error['reason'] = $this->language->get('error_reason');
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
    	if (!$this->user->hasPermission('modify', 'sale/repair')) {
      		$this->error['warning'] = $this->language->get('error_permission');
    	}	
	  	 
		if (!$this->error) {
	  		return true;
		} else {
	  		return false;
		}  
  	} 
	
	public function action() {
		$this->language->load('sale/repair');
		
		$json = array();
		
		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			if (!$this->user->hasPermission('modify', 'sale/repair')) {
				$json['error'] = $this->language->get('error_permission');
			}
		
			if (!$json) { 
				$this->load->model('sale/repair');
			
				$json['success'] = $this->language->get('text_success');
				
				$this->model_sale_repair->editRepairAction($this->request->get['repair_id'], $this->request->post['repair_action_id']);
			}
		}
		
		$this->response->setOutput(json_encode($json));	
	}
		
	public function history() {
    	$this->language->load('sale/repair');

		$data['error'] = '';
		$data['success'] = '';
				
		$this->load->model('sale/repair');

		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			if (!$this->user->hasPermission('modify', 'sale/repair')) { 
				$data['error'] = $this->language->get('error_permission');
			}
			
			if (!$data['error']) { 
				$this->model_sale_repair->addRepairHistory($this->request->get['repair_id'], $this->request->post);
				
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
			
		$results = $this->model_sale_repair->getRepairHistories($this->request->get['repair_id'], ($page - 1) * 10, 10);
      		
		foreach ($results as $result) {
        	$data['histories'][] = array(
				'notify'     => $result['notify'] ? $this->language->get('text_yes') : $this->language->get('text_no'),
				'status'     => $result['status'],
				'comment'    => nl2br($result['comment']),
        		'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added']))
        	);
      	}			
		
		$history_total = $this->model_sale_repair->getTotalRepairHistories($this->request->get['repair_id']);
			
		$pagination = new Pagination();
		$pagination->total = $history_total;
		$pagination->page = $page;
		$pagination->limit = 10; 
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('sale/repair/history', 'token=' . $this->session->data['token'] . '&repair_id=' . $this->request->get['repair_id'] . '&page={page}', 'SSL');
			
		$data['pagination'] = $pagination->render();
		
		$this->template = 'sale/repair_history.tpl';		
		
		$this->response->setOutput($this->render());
  	}		
}
?>