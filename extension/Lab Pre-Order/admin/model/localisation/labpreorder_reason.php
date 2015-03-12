<?php 
class ModelLocalisationlabpreorderReason extends Model {
	public function addlabpreorderReason($data) {
		foreach ($data['labpreorder_reason'] as $language_id => $value) {
			if (isset($labpreorder_reason_id)) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "labpreorder_reason SET labpreorder_reason_id = '" . (int)$labpreorder_reason_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
			} else {
				$this->db->query("INSERT INTO " . DB_PREFIX . "labpreorder_reason SET language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
				
				$labpreorder_reason_id = $this->db->getLastId();
			}
		}
		
		$this->cache->delete('labpreorder_reason');
	}

	public function editlabpreorderReason($labpreorder_reason_id, $data) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "labpreorder_reason WHERE labpreorder_reason_id = '" . (int)$labpreorder_reason_id . "'");

		foreach ($data['labpreorder_reason'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "labpreorder_reason SET labpreorder_reason_id = '" . (int)$labpreorder_reason_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
		}
				
		$this->cache->delete('labpreorder_reason');
	}
	
	public function deletelabpreorderReason($labpreorder_reason_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "labpreorder_reason WHERE labpreorder_reason_id = '" . (int)$labpreorder_reason_id . "'");
	
		$this->cache->delete('labpreorder_reason');
	}
		
	public function getlabpreorderReason($labpreorder_reason_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "labpreorder_reason WHERE labpreorder_reason_id = '" . (int)$labpreorder_reason_id . "' AND language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
		return $query->row;
	}
		
	public function getlabpreorderReasons($data = array()) {
      	if ($data) {
			$sql = "SELECT * FROM " . DB_PREFIX . "labpreorder_reason WHERE language_id = '" . (int)$this->config->get('config_language_id') . "'";
			
			$sql .= " ORDER BY name";	
			
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
		} else {
			$labpreorder_reason_data = $this->cache->get('labpreorder_reason.' . (int)$this->config->get('config_language_id'));
		
			if (!$labpreorder_reason_data) {
				$query = $this->db->query("SELECT labpreorder_reason_id, name FROM " . DB_PREFIX . "labpreorder_reason WHERE language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY name");
	
				$labpreorder_reason_data = $query->rows;
			
				$this->cache->set('labpreorder_reason.' . (int)$this->config->get('config_language_id'), $labpreorder_reason_data);
			}	
	
			return $labpreorder_reason_data;				
		}
	}
	
	public function getlabpreorderReasonDescriptions($labpreorder_reason_id) {
		$labpreorder_reason_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "labpreorder_reason WHERE labpreorder_reason_id = '" . (int)$labpreorder_reason_id . "'");
		
		foreach ($query->rows as $result) {
			$labpreorder_reason_data[$result['language_id']] = array('name' => $result['name']);
		}
		
		return $labpreorder_reason_data;
	}
	
	public function getTotallabpreorderReasons() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "labpreorder_reason WHERE language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
		return $query->row['total'];
	}	
}
?>