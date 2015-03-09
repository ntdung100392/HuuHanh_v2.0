<?php 
class ModelLocalisationRepairAction extends Model {
	public function addRepairAction($data) {
		foreach ($data['repair_action'] as $language_id => $value) {
			if (isset($repair_action_id)) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "repair_action SET repair_action_id = '" . (int)$repair_action_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
			} else {
				$this->db->query("INSERT INTO " . DB_PREFIX . "repair_action SET language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
				
				$repair_action_id = $this->db->getLastId();
			}
		}
		
		$this->cache->delete('repair_action');
	}

	public function editRepairAction($repair_action_id, $data) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "repair_action WHERE repair_action_id = '" . (int)$repair_action_id . "'");

		foreach ($data['repair_action'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "repair_action SET repair_action_id = '" . (int)$repair_action_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
		}
				
		$this->cache->delete('repair_action');
	}
	
	public function deleteRepairAction($repair_action_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "repair_action WHERE repair_action_id = '" . (int)$repair_action_id . "'");
	
		$this->cache->delete('repair_action');
	}
		
	public function getRepairAction($repair_action_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "repair_action WHERE repair_action_id = '" . (int)$repair_action_id . "' AND language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
		return $query->row;
	}
		
	public function getRepairActions($data = array()) {
      	if ($data) {
			$sql = "SELECT * FROM " . DB_PREFIX . "repair_action WHERE language_id = '" . (int)$this->config->get('config_language_id') . "'";
			
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
			$repair_action_data = $this->cache->get('repair_action.' . (int)$this->config->get('config_language_id'));
		
			if (!$repair_action_data) {
				$query = $this->db->query("SELECT repair_action_id, name FROM " . DB_PREFIX . "repair_action WHERE language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY name");
	
				$repair_action_data = $query->rows;
			
				$this->cache->set('repair_action.' . (int)$this->config->get('config_language_id'), $repair_action_data);
			}	
	
			return $repair_action_data;				
		}
	}
	
	public function getRepairActionDescriptions($repair_action_id) {
		$repair_action_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "repair_action WHERE repair_action_id = '" . (int)$repair_action_id . "'");
		
		foreach ($query->rows as $result) {
			$repair_action_data[$result['language_id']] = array('name' => $result['name']);
		}
		
		return $repair_action_data;
	}
	
	public function getTotalRepairActions() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "repair_action WHERE language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
		return $query->row['total'];
	}	
}
?>