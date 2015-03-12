<?php 
class ModelLocalisationlabpreorderStatus extends Model {
	public function addlabpreorderStatus($data) {
		foreach ($data['labpreorder_status'] as $language_id => $value) {
			if (isset($labpreorder_status_id)) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "labpreorder_status SET labpreorder_status_id = '" . (int)$labpreorder_status_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
			} else {
				$this->db->query("INSERT INTO " . DB_PREFIX . "labpreorder_status SET language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
				
				$labpreorder_status_id = $this->db->getLastId();
			}
		}
		
		$this->cache->delete('labpreorder_status');
	}

	public function editlabpreorderStatus($labpreorder_status_id, $data) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "labpreorder_status WHERE labpreorder_status_id = '" . (int)$labpreorder_status_id . "'");

		foreach ($data['labpreorder_status'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "labpreorder_status SET labpreorder_status_id = '" . (int)$labpreorder_status_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
		}
				
		$this->cache->delete('labpreorder_status');
	}
	
	public function deletelabpreorderStatus($labpreorder_status_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "labpreorder_status WHERE labpreorder_status_id = '" . (int)$labpreorder_status_id . "'");
	
		$this->cache->delete('labpreorder_status');
	}
		
	public function getlabpreorderStatus($labpreorder_status_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "labpreorder_status WHERE labpreorder_status_id = '" . (int)$labpreorder_status_id . "' AND language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
		return $query->row;
	}
		
	public function getlabpreorderStatuses($data = array()) {
      	if ($data) {
			$sql = "SELECT * FROM " . DB_PREFIX . "labpreorder_status WHERE language_id = '" . (int)$this->config->get('config_language_id') . "'";
			
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
			$labpreorder_status_data = $this->cache->get('labpreorder_status.' . (int)$this->config->get('config_language_id'));
		
			if (!$labpreorder_status_data) {
				$query = $this->db->query("SELECT labpreorder_status_id, name FROM " . DB_PREFIX . "labpreorder_status WHERE language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY name");
	
				$labpreorder_status_data = $query->rows;
			
				$this->cache->set('labpreorder_status.' . (int)$this->config->get('config_language_id'), $labpreorder_status_data);
			}	
	
			return $labpreorder_status_data;				
		}
	}
	
	public function getlabpreorderStatusDescriptions($labpreorder_status_id) {
		$labpreorder_status_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "labpreorder_status WHERE labpreorder_status_id = '" . (int)$labpreorder_status_id . "'");
		
		foreach ($query->rows as $result) {
			$labpreorder_status_data[$result['language_id']] = array('name' => $result['name']);
		}
		
		return $labpreorder_status_data;
	}
	
	public function getTotallabpreorderStatuses() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "labpreorder_status WHERE language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
		return $query->row['total'];
	}	
}
?>