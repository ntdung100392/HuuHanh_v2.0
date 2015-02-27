<?php
class ModelSaleRepair extends Model {
        public function getRepairImages($repai_id)
       {
           $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "repair_image WHERE repair_id = '" . (int) $repai_id . "'");

           return $query->rows;
       }
    
	public function addRepair($data) {
      	$this->db->query("INSERT INTO `" . DB_PREFIX . "repair` SET order_id = '" . (int)$data['order_id'] . "', product_id = '" . (int)$data['product_id'] . "', customer_id = '" . (int)$data['customer_id'] . "', firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', email = '" . $this->db->escape($data['email']) . "', telephone = '" . $this->db->escape($data['telephone']) . "', product = '" . $this->db->escape($data['product']) . "', model = '" . $this->db->escape($data['model']) . "', quantity = '" . (int)$data['quantity'] . "', opened = '" . (int)$data['opened'] . "', repair_reason_id = '" . (int)$data['repair_reason_id'] . "', repair_action_id = '" . (int)$data['repair_action_id'] . "', repair_status_id = '" . (int)$data['repair_status_id'] . "', comment = '" . $this->db->escape($data['comment']) . "', date_ordered = '" . $this->db->escape($data['date_ordered']) . "', date_added = NOW(), date_modified = NOW()");
	}
	
	public function editRepair($repair_id, $data) {
		$this->db->query("UPDATE `" . DB_PREFIX . "repair` SET order_id = '" . (int)$data['order_id'] . "', product_id = '" . (int)$data['product_id'] . "', customer_id = '" . (int)$data['customer_id'] . "', firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', email = '" . $this->db->escape($data['email']) . "', telephone = '" . $this->db->escape($data['telephone']) . "', product = '" . $this->db->escape($data['product']) . "', model = '" . $this->db->escape($data['model']) . "', quantity = '" . (int)$data['quantity'] . "', opened = '" . (int)$data['opened'] . "', repair_reason_id = '" . (int)$data['repair_reason_id'] . "', repair_action_id = '" . (int)$data['repair_action_id'] . "', repair_status_id = '" . (int)$data['repair_status_id'] . "', comment = '" . $this->db->escape($data['comment']) . "', date_ordered = '" . $this->db->escape($data['date_ordered']) . "', date_modified = NOW() WHERE repair_id = '" . (int)$repair_id . "'");
	}
	
	public function editRepairAction($repair_id, $repair_action_id) {
		$this->db->query("UPDATE `" . DB_PREFIX . "repair` SET repair_action_id = '" . (int)$repair_action_id . "' WHERE repair_id = '" . (int)$repair_id . "'");
	}
		
	public function deleteRepair($repair_id) {
		$this->db->query("DELETE FROM `" . DB_PREFIX . "repair` WHERE repair_id = '" . (int)$repair_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "repair_history WHERE repair_id = '" . (int)$repair_id . "'");
	}
	
	public function getRepair($repair_id) {
		$query = $this->db->query("SELECT DISTINCT *, (SELECT CONCAT(c.firstname, ' ', c.lastname) FROM " . DB_PREFIX . "customer c WHERE c.customer_id = r.customer_id) AS customer FROM `" . DB_PREFIX . "repair` r WHERE r.repair_id = '" . (int)$repair_id . "'");
	
		return $query->row;
	}
		
	public function getRepairs($data = array()) {
		$sql = "SELECT *, CONCAT(r.firstname, ' ', r.lastname) AS customer, (SELECT rs.name FROM " . DB_PREFIX . "repair_status rs WHERE rs.repair_status_id = r.repair_status_id AND rs.language_id = '" . (int)$this->config->get('config_language_id') . "') AS status FROM `" . DB_PREFIX . "repair` r";

		$implode = array();
		
		if (!empty($data['filter_repair_id'])) {
			$implode[] = "r.repair_id = '" . (int)$data['filter_repair_id'] . "'";
		}
		
		if (!empty($data['filter_order_id'])) {
			$implode[] = "r.order_id = '" . (int)$data['filter_order_id'] . "'";
		}
						
		if (!empty($data['filter_customer'])) {
			$implode[] = "LCASE(CONCAT(r.firstname, ' ', r.lastname)) LIKE '" . $this->db->escape(utf8_strtolower($data['filter_customer'])) . "%'";
		}
		
		if (!empty($data['filter_product'])) {
			$implode[] = "r.product = '" . $this->db->escape($data['filter_product']) . "'";
		}	
		
		if (!empty($data['filter_model'])) {
			$implode[] = "r.model = '" . $this->db->escape($data['filter_model']) . "'";
		}	
						
		if (!empty($data['filter_repair_status_id'])) {
			$implode[] = "r.repair_status_id = '" . (int)$data['filter_repair_status_id'] . "'";
		}	
		
		if (!empty($data['filter_date_added'])) {
			$implode[] = "DATE(r.date_added) = DATE('" . $this->db->escape($data['filter_date_added']) . "')";
		}

		if (!empty($data['filter_date_modified'])) {
			$implode[] = "DATE(r.date_modified) = DATE('" . $this->db->escape($data['filter_date_modified']) . "')";
		}
				
		if ($implode) {
			$sql .= " WHERE " . implode(" AND ", $implode);
		}
		
		$sort_data = array(
			'r.repair_id',
			'r.order_id',
			'customer',
			'r.product',
			'r.model',
			'status',
			'r.date_added',
			'r.date_modified'
		);	
			
		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];	
		} else {
			$sql .= " ORDER BY r.repair_id";	
		}
			
		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}
		
		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}			

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}	
			
			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}		
		
		$query = $this->db->query($sql);
		
		return $query->rows;	
	}
						
	public function getTotalRepairs($data = array()) {
      	$sql = "SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "repair`r";
		
		$implode = array();
		
		if (!empty($data['filter_repair_id'])) {
			$implode[] = "r.repair_id = '" . (int)$data['filter_repair_id'] . "'";
		}
				
		if (!empty($data['filter_customer'])) {
			$implode[] = "LCASE(CONCAT(r.firstname, ' ', r.lastname)) LIKE '" . $this->db->escape(utf8_strtolower($data['filter_customer'])) . "%'";
		}
		
		if (!empty($data['filter_order_id'])) {
			$implode[] = "r.order_id = '" . $this->db->escape($data['filter_order_id']) . "'";
		}
		
		if (!empty($data['filter_product'])) {
			$implode[] = "r.product = '" . $this->db->escape($data['filter_product']) . "'";
		}	
		
		if (!empty($data['filter_model'])) {
			$implode[] = "r.model = '" . $this->db->escape($data['filter_model']) . "'";
		}	
				
		if (!empty($data['filter_repair_status_id'])) {
			$implode[] = "r.repair_status_id = '" . (int)$data['filter_repair_status_id'] . "'";
		}	
		
		if (!empty($data['filter_date_added'])) {
			$implode[] = "DATE(r.date_added) = DATE('" . $this->db->escape($data['filter_date_added']) . "')";
		}
		
		if (!empty($data['filter_date_modified'])) {
			$implode[] = "DATE(r.date_modified) = DATE('" . $this->db->escape($data['filter_date_modified']) . "')";
		}
				
		if ($implode) {
			$sql .= " WHERE " . implode(" AND ", $implode);
		}
				
		$query = $this->db->query($sql);
				
		return $query->row['total'];
	}
		
	public function getTotalRepairsByRepairStatusId($repair_status_id) {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "repair` WHERE repair_status_id = '" . (int)$repair_status_id . "'");
				
		return $query->row['total'];
	}	
			
	public function getTotalRepairsByRepairReasonId($repair_reason_id) {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "repair` WHERE repair_reason_id = '" . (int)$repair_reason_id . "'");
				
		return $query->row['total'];
	}	
	
	public function getTotalRepairsByRepairActionId($repair_action_id) {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "repair` WHERE repair_action_id = '" . (int)$repair_action_id . "'");
				
		return $query->row['total'];
	}	
	
	public function addRepairHistory($repair_id, $data) {
		$this->db->query("UPDATE `" . DB_PREFIX . "repair` SET repair_status_id = '" . (int)$data['repair_status_id'] . "', date_modified = NOW() WHERE repair_id = '" . (int)$repair_id . "'");

		$this->db->query("INSERT INTO " . DB_PREFIX . "repair_history SET repair_id = '" . (int)$repair_id . "', repair_status_id = '" . (int)$data['repair_status_id'] . "', notify = '" . (isset($data['notify']) ? (int)$data['notify'] : 0) . "', comment = '" . $this->db->escape(strip_tags($data['comment'])) . "', date_added = NOW()");

      	if ($data['notify']) {
        	$repair_query = $this->db->query("SELECT *, rs.name AS status FROM `" . DB_PREFIX . "repair` r LEFT JOIN " . DB_PREFIX . "repair_status rs ON (r.repair_status_id = rs.repair_status_id) WHERE r.repair_id = '" . (int)$repair_id . "' AND rs.language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
			if ($repair_query->num_rows) {
				$this->language->load('mail/repair');

				$subject = sprintf($this->language->get('text_subject'), $this->config->get('config_name'), $repair_id);

				$message  = $this->language->get('text_repair_id') . ' ' . $repair_id . "\n";
				$message .= $this->language->get('text_date_added') . ' ' . date($this->language->get('date_format_short'), strtotime($repair_query->row['date_added'])) . "\n\n";
				$message .= $this->language->get('text_repair_status') . "\n";
				$message .= $repair_query->row['status'] . "\n\n";

				if ($data['comment']) {
					$message .= $this->language->get('text_comment') . "\n\n";
					$message .= strip_tags(html_entity_decode($data['comment'], ENT_QUOTES, 'UTF-8')) . "\n\n";
				}

				$message .= $this->language->get('text_footer');

				$mail = new Mail();
				$mail->protocol = $this->config->get('config_mail_protocol');
				//$mail->parameter = $this->config->get('config_mail_parameter');
				$mail->hostname = $this->config->get('config_smtp_host');
				$mail->username = $this->config->get('config_smtp_username');
				$mail->password = $this->config->get('config_smtp_password');
				$mail->port = $this->config->get('config_smtp_port');
				$mail->timeout = $this->config->get('config_smtp_timeout');
				$mail->setTo($repair_query->row['email']);
				$mail->setFrom('support@intelligentUAS.com');
	    		$mail->setSender($this->config->get('config_name'));
	    		$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
	    		$mail->setText(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
	    		$mail->send();
			}
		}
	}
		
	public function getRepairHistories($repair_id, $start = 0, $limit = 10) {
		if ($start < 0) {
			$start = 0;
		}
		
		if ($limit < 1) {
			$limit = 10;
		}	
				
		$query = $this->db->query("SELECT rh.date_added, rs.name AS status, rh.comment, rh.notify FROM " . DB_PREFIX . "repair_history rh LEFT JOIN " . DB_PREFIX . "repair_status rs ON rh.repair_status_id = rs.repair_status_id WHERE rh.repair_id = '" . (int)$repair_id . "' AND rs.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY rh.date_added ASC LIMIT " . (int)$start . "," . (int)$limit);

		return $query->rows;
	}	
	
	public function getTotalRepairHistories($repair_id) {
	  	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "repair_history WHERE repair_id = '" . (int)$repair_id . "'");

		return $query->row['total'];
	}	
		
	public function getTotalRepairHistoriesByRepairStatusId($repair_status_id) {
	  	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "repair_history WHERE repair_status_id = '" . (int)$repair_status_id . "' GROUP BY repair_id");

		return $query->row['total'];
	}			
}
?>