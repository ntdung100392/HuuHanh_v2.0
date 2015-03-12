<?php
class ModelSalelabpreorder extends Model {
    
	public function addlabpreorder($data) {
      	$this->db->query("INSERT INTO `" . DB_PREFIX . "labpreorder` SET address = '" . $this->db->escape($data['address']) . "', customer_id = '" . (int)$data['customer_id'] . "', firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', email = '" . $this->db->escape($data['email']) . "', telephone = '" . $this->db->escape($data['telephone']) . "', product = '" . $this->db->escape($data['product']) . "', model = '" . $this->db->escape($data['model']) . "', quantity = '" . (int)$data['quantity'] . "', labpreorder_action_id = '" . (int)$data['labpreorder_action_id'] . "', labpreorder_status_id = '" . (int)$data['labpreorder_status_id'] . "', comment = '" . $this->db->escape($data['comment']) . "', date_added = NOW(), date_modified = NOW()");
	}
	
	public function editlabpreorder($labpreorder_id, $data) {
		$this->db->query("UPDATE `" . DB_PREFIX . "labpreorder` SET address = '" . $this->db->escape($data['address']) . "', customer_id = '" . (int)$data['customer_id'] . "', firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', email = '" . $this->db->escape($data['email']) . "', telephone = '" . $this->db->escape($data['telephone']) . "', product = '" . $this->db->escape($data['product']) . "', model = '" . $this->db->escape($data['model']) . "', quantity = '" . (int)$data['quantity'] . "', labpreorder_action_id = '" . (int)$data['labpreorder_action_id'] . "', labpreorder_status_id = '" . (int)$data['labpreorder_status_id'] . "', comment = '" . $this->db->escape($data['comment']) . "', date_modified = NOW() WHERE labpreorder_id = '" . (int)$labpreorder_id . "'");
	}
	
	public function editlabpreorderAction($labpreorder_id, $labpreorder_action_id) {
		$this->db->query("UPDATE `" . DB_PREFIX . "labpreorder` SET labpreorder_action_id = '" . (int)$labpreorder_action_id . "' WHERE labpreorder_id = '" . (int)$labpreorder_id . "'");
	}
		
	public function deletelabpreorder($labpreorder_id) {
		$this->db->query("DELETE FROM `" . DB_PREFIX . "labpreorder` WHERE labpreorder_id = '" . (int)$labpreorder_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "labpreorder_history WHERE labpreorder_id = '" . (int)$labpreorder_id . "'");
	}
	
	public function getlabpreorder($labpreorder_id) {
		$query = $this->db->query("SELECT DISTINCT *, (SELECT CONCAT(c.firstname, ' ', c.lastname) FROM " . DB_PREFIX . "customer c WHERE c.customer_id = r.customer_id) AS customer FROM `" . DB_PREFIX . "labpreorder` r WHERE r.labpreorder_id = '" . (int)$labpreorder_id . "'");
	
		return $query->row;
	}
		
	public function getlabpreorders($data = array()) {
		$sql = "SELECT *, CONCAT(r.firstname, ' ', r.lastname) AS customer, (SELECT rs.name FROM " . DB_PREFIX . "labpreorder_status rs WHERE rs.labpreorder_status_id = r.labpreorder_status_id AND rs.language_id = '" . (int)$this->config->get('config_language_id') . "') AS status FROM `" . DB_PREFIX . "labpreorder` r";

		$implode = array();
		
		if (!empty($data['filter_labpreorder_id'])) {
			$implode[] = "r.labpreorder_id = '" . $this->db->escape(utf8_strtolower($data['filter_labpreorder_id'])) . "%'";
		}
		
		if (!empty($data['filter_address'])) {
			$implode[] = "r.address LIKE '" . $this->db->escape(utf8_strtolower($data['filter_address'])) . "%'";
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
						
		if (!empty($data['filter_labpreorder_status_id'])) {
			$implode[] = "r.labpreorder_status_id = '" . (int)$data['filter_labpreorder_status_id'] . "'";
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
			'r.labpreorder_id',
			'r.address',
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
			$sql .= " ORDER BY r.labpreorder_id";	
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
						
	public function getTotallabpreorders($data = array()) {
      	$sql = "SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "labpreorder`r";
		
		$implode = array();
		
		if (!empty($data['filter_labpreorder_id'])) {
			$implode[] = "r.labpreorder_id = '" . (int)$data['filter_labpreorder_id'] . "'";
		}
				
		if (!empty($data['filter_customer'])) {
			$implode[] = "LCASE(CONCAT(r.firstname, ' ', r.lastname)) LIKE '" . $this->db->escape(utf8_strtolower($data['filter_customer'])) . "%'";
		}
		
		if (!empty($data['filter_address'])) {
			$implode[] = "r.address LIKE '" . $this->db->escape(utf8_strtolower($data['filter_address'])) . "%'";
		}
		
		if (!empty($data['filter_product'])) {
			$implode[] = "r.product = '" . $this->db->escape($data['filter_product']) . "'";
		}	
		
		if (!empty($data['filter_model'])) {
			$implode[] = "r.model = '" . $this->db->escape($data['filter_model']) . "'";
		}	
				
		if (!empty($data['filter_labpreorder_status_id'])) {
			$implode[] = "r.labpreorder_status_id = '" . (int)$data['filter_labpreorder_status_id'] . "'";
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
		
	public function getTotallabpreordersBylabpreorderStatusId($labpreorder_status_id) {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "labpreorder` WHERE labpreorder_status_id = '" . (int)$labpreorder_status_id . "'");
				
		return $query->row['total'];
	}	
	
	public function getTotallabpreordersBylabpreorderActionId($labpreorder_action_id) {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "labpreorder` WHERE labpreorder_action_id = '" . (int)$labpreorder_action_id . "'");
				
		return $query->row['total'];
	}	
	
	public function addlabpreorderHistory($labpreorder_id, $data) {
		$this->db->query("UPDATE `" . DB_PREFIX . "labpreorder` SET labpreorder_status_id = '" . (int)$data['labpreorder_status_id'] . "', date_modified = NOW() WHERE labpreorder_id = '" . (int)$labpreorder_id . "'");

		$this->db->query("INSERT INTO " . DB_PREFIX . "labpreorder_history SET labpreorder_id = '" . (int)$labpreorder_id . "', labpreorder_status_id = '" . (int)$data['labpreorder_status_id'] . "', notify = '" . (isset($data['notify']) ? (int)$data['notify'] : 0) . "', comment = '" . $this->db->escape(strip_tags($data['comment'])) . "', date_added = NOW()");

      	if ($data['notify']) {
        	$labpreorder_query = $this->db->query("SELECT *, rs.name AS status FROM `" . DB_PREFIX . "labpreorder` r LEFT JOIN " . DB_PREFIX . "labpreorder_status rs ON (r.labpreorder_status_id = rs.labpreorder_status_id) WHERE r.labpreorder_id = '" . (int)$labpreorder_id . "' AND rs.language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
			if ($labpreorder_query->num_rows) {
				$this->language->load('mail/labpreorder');

				$subject = sprintf($this->language->get('text_subject'), $this->config->get('config_name'), $labpreorder_id);

				$message  = $this->language->get('text_labpreorder_id') . ' ' . $labpreorder_id . "\n";
				$message .= $this->language->get('text_date_added') . ' ' . date($this->language->get('date_format_short'), strtotime($labpreorder_query->row['date_added'])) . "\n\n";
				$message .= $this->language->get('text_labpreorder_status') . "\n";
				$message .= $labpreorder_query->row['status'] . "\n\n";

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
				$mail->setTo($labpreorder_query->row['email']);
				$mail->setFrom('huuhanh.com.vn');
	    		$mail->setSender($this->config->get('config_name'));
	    		$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
	    		$mail->setText(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
	    		$mail->send();
			}
		}
	}
		
	public function getlabpreorderHistories($labpreorder_id, $start = 0, $limit = 10) {
		if ($start < 0) {
			$start = 0;
		}
		
		if ($limit < 1) {
			$limit = 10;
		}	
				
		$query = $this->db->query("SELECT rh.date_added, rs.name AS status, rh.comment, rh.notify FROM " . DB_PREFIX . "labpreorder_history rh LEFT JOIN " . DB_PREFIX . "labpreorder_status rs ON rh.labpreorder_status_id = rs.labpreorder_status_id WHERE rh.labpreorder_id = '" . (int)$labpreorder_id . "' AND rs.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY rh.date_added ASC LIMIT " . (int)$start . "," . (int)$limit);

		return $query->rows;
	}	
	
	public function getTotallabpreorderHistories($labpreorder_id) {
	  	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "labpreorder_history WHERE labpreorder_id = '" . (int)$labpreorder_id . "'");

		return $query->row['total'];
	}	
		
	public function getTotallabpreorderHistoriesBylabpreorderStatusId($labpreorder_status_id) {
	  	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "labpreorder_history WHERE labpreorder_status_id = '" . (int)$labpreorder_status_id . "' GROUP BY labpreorder_id");

		return $query->row['total'];
	}			
}
?>