<?php 
class ModelLocalisationlabpreorderAction extends Model {
	public function addlabpreorderAction($data) {
		foreach ($data['labpreorder_action'] as $language_id => $value) {
			if (isset($labpreorder_action_id)) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "labpreorder_action SET labpreorder_action_id = '" . (int)$labpreorder_action_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
			} else {
				$this->db->query("INSERT INTO " . DB_PREFIX . "labpreorder_action SET language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
				
				$labpreorder_action_id = $this->db->getLastId();
			}
		}
		
		$this->cache->delete('labpreorder_action');
	}

	public function editlabpreorderAction($labpreorder_action_id, $data) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "labpreorder_action WHERE labpreorder_action_id = '" . (int)$labpreorder_action_id . "'");

		foreach ($data['labpreorder_action'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "labpreorder_action SET labpreorder_action_id = '" . (int)$labpreorder_action_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
		}
				
		$this->cache->delete('labpreorder_action');
	}
	
	public function deletelabpreorderAction($labpreorder_action_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "labpreorder_action WHERE labpreorder_action_id = '" . (int)$labpreorder_action_id . "'");
	
		$this->cache->delete('labpreorder_action');
	}
		
	public function getlabpreorderAction($labpreorder_action_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "labpreorder_action WHERE labpreorder_action_id = '" . (int)$labpreorder_action_id . "' AND language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
		return $query->row;
	}
		
	public function getlabpreorderActions($data = array()) {
      	if ($data) {
			$sql = "SELECT * FROM " . DB_PREFIX . "labpreorder_action WHERE language_id = '" . (int)$this->config->get('config_language_id') . "'";
			
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
			$labpreorder_action_data = $this->cache->get('labpreorder_action.' . (int)$this->config->get('config_language_id'));
		
			if (!$labpreorder_action_data) {
				$query = $this->db->query("SELECT labpreorder_action_id, name FROM " . DB_PREFIX . "labpreorder_action WHERE language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY name");
	
				$labpreorder_action_data = $query->rows;
			
				$this->cache->set('labpreorder_action.' . (int)$this->config->get('config_language_id'), $labpreorder_action_data);
			}	
	
			return $labpreorder_action_data;				
		}
	}
	
	public function getlabpreorderActionDescriptions($labpreorder_action_id) {
		$labpreorder_action_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "labpreorder_action WHERE labpreorder_action_id = '" . (int)$labpreorder_action_id . "'");
		
		foreach ($query->rows as $result) {
			$labpreorder_action_data[$result['language_id']] = array('name' => $result['name']);
		}
		
		return $labpreorder_action_data;
	}
	
	public function getTotallabpreorderActions() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "labpreorder_action WHERE language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
		return $query->row['total'];
	}	
}
?>