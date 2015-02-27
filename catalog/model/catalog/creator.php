<?php

class ModelCatalogCreator extends Model {

    public function getForm($form_id) {
        $query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "formcreator WHERE form_id = '" . (int) $form_id . "'");

        return $query->row;
    }

    public function getForms() {

        $category_data = array();
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "formcreator ORDER BY form_id, title ASC");

        foreach ($query->rows as $result) {
            $category_data[] = array(
                'form_id' => $result['form_id'],
                'title' => $result['title'],
                'status' => $result['status'],
            );
        }


        return $category_data;
    }
    
    public function getActiveForms() {

        $category_data = array();
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "formcreator WHERE status = 1 ORDER BY form_id, title ASC");

        foreach ($query->rows as $result) {
            $category_data[] = array(
                'form_id' => $result['form_id'],
                'title' => $result['title'],
                'url' => $this->url->link('information/creator', 'form_id='.$result['form_id'], 'SSL'),
                'status' => $result['status'],
            );
        }


        return $category_data;
    }

    public function getTotalForms() {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "formcreator");

        return $query->row['total'];
    }

    public function getFormShow($fieldlist) {
        
        $html = '';
        $fieldset = $datepicker = $timepicker =0 ; 
        if (count($fieldlist))
            foreach ($fieldlist as $row):
                $tmparr = array();
                $tmp = explode("_", $row[0]);
                $key = implode("_", array($tmp[0], $tmp[1], $tmp[2]));

                foreach ($row[1] as $field) {
                    if ($field['name'] == 'option[]') {
                        $tmparr['option'][] = $field['value'];
                    } else {
                        $tmparr[$field['name']] = $field['value'];
                    }
                }

                extract($tmparr, EXTR_OVERWRITE);

                $xxx        = isset($required) && $required == 1 ? '<span>(*)</span>' : '';
                $required   = isset($required) && $required == 1 ? 'required' : '';

				$value_post = isset($_POST[str_replace(' ','_',$title)])?$_POST[str_replace(' ','_',$title)]:'';
				$width   = isset($width)? $width : '';
                $opthtml = '';
                if (isset($option)) {
					$chosen = '';
                    if ($key == 'form_tab_checkbox') {
                        foreach ($option as $opt) {
							if(isset($_POST[str_replace(' ','_','multi_1_'.$title)]))
							foreach($_POST[str_replace(' ','_','multi_1_'.$title)] as $vp){
							$value_post = isset($vp)?$vp:'';
							if($opt==$vp) $chosen = 'checked="checked"';
							}
                            $opthtml .= '' . $opt . '<input '.$chosen.' type="checkbox" value="' . $opt . '" name="multi_1_' . $title . '[]">';
							$chosen = '';
                        }
                        
                    } else if ($key == 'form_tab_radio') {
                        
                        foreach ($option as $opt) {
							$value_post = isset($_POST[str_replace(' ','_',$title)])?$_POST[str_replace(' ','_',$title)]:'';
							if($opt==$value_post) $chosen = 'checked="checked"';
                            $opthtml .= '' . $opt . '<input '.$chosen.' type="radio" value="' . $opt . '" name="' . $title . '">';
			                $chosen = '';
                        }
                        
                    } else if ($key == 'form_tab_dropdown') {
                        
                        $opthtml .= '<select name="' . $title . '"  style="width:'.$width.'px">';
                        foreach ($option as $opt) {
							$value_post = isset($_POST[str_replace(' ','_',$title)])?$_POST[str_replace(' ','_',$title)]:'';
							if($opt==$value_post) $chosen = 'selected="selected"';
                            $opthtml .= '<option '.$chosen.' value="' . $opt . '">' . $opt . '</option>';
                            $chosen = '';
                        }
                        $opthtml .= '</select>';
                        
                    } else if ($key == 'form_tab_multidropdow') {
                        $opthtml .= '<select name="multi_1_' . $title . '[]" multiple="multiple" style="width:'.$width.'px">';
                        foreach ($option as $opt) {
							if(isset($_POST[str_replace(' ','_','multi_1_'.$title)]))
							foreach($_POST[str_replace(' ','_','multi_1_'.$title)] as $vp){
							$value_post = isset($vp)?$vp:'';
							if($opt==$vp) $chosen = 'selected="selected"';
							}
                            $opthtml .= '<option '.$chosen.' value="' . $opt . '">' . $opt . '</option>';
							$chosen = '';
                        }
                        $opthtml .= '</select>';
                        
                    }
                }

                switch ($key) {

                    case 'form_tab_title' :{
                        
                        
                        if($fieldset ++ ){
                            $html .= '</ul></fieldset>'; 
                            $html .= '<fieldset><legend class="title">' . $title . '</legend>';
                            $html .= '<ul class="formcreator">'; 
                        }else {
                            $html .= '<fieldset><legend class="title">' . $title . '</legend>';
                            $html .= '<ul class="formcreator">'; 
                        }
                        
                        break;
                    }
                    case 'form_tab_paragraph' :
                        $html .= '<li class="para">' . $paragraph . '</li>';
                        break;
                    case 'form_tab_email' :
                        $html .= '<li class="email ' . $required . '"><label>' . $title . ' '.$xxx.' </label><br /><input  type="text" name="email_1_' . $title . '" value="' . $value_post . '"  style="width:' . $width . 'px"  ></li>';

                        break;
                    case 'form_tab_signlelinetext' :
                        $html .= '<li class="signlelinetext ' . $required . '"><label>' . $title . ' '.$xxx.' </label><br /><input  type="text" name="' . $title . '" value="' . $value_post . '" style="width:' . $width . 'px "  ></li>';
                        break;
                    case 'form_tab_multilinetext' :
                        $html .= '<li class="textarea ' . $required . '"><label>' . $title . ' '.$xxx.' </label><br /><textarea  cols="' . $cols . '" rows="' . $rows . '" name="' . $title . '" >' . $value_post . '</textarea></li>';
                        break;
                    case 'form_tab_checkbox' :
                        $html .= '<li class="checkbox ' . $required . '"><label>' . $title . ' '.$xxx.' </label><br />' . $opthtml . '</li>';
                        break;
                    case 'form_tab_radio' :
                        $html .= '<li class="radio ' . $required . '"><label>' . $title . ' '.$xxx.' </label><br />' . $opthtml . '</li>';

                        break;
                    case 'form_tab_dropdown' :
                        $html .= '<li class="dropdown ' . $required . '"><label>' . $title . ' '.$xxx.' </label><br />' . $opthtml . '</li>';

                        break;
                    case 'form_tab_multidropdow' :
                        $html .= '<li class="multidropdow ' . $required . '"><label>' . $title . ' '.$xxx.' </label><br />' . $opthtml . '</li>';

                        break;
                    case 'form_tab_upload' :
                        $html .= '<li class="upload ' . $required . '"><label>' . $title . ' '.$xxx.' </label><br /><input type="file" style="width:' . $width . 'px " name="upload_1_' . $title . '" ></li>';
                        break;
                    case 'form_tab_captcha' :
                        $html .= '<li class="captcha ' . $required . '"><label>' . $title . ' '.$xxx.' </label><br /><input type="text" style="width:' . $width . 'px " name="captcha_1_' . $title . '" ><br /><img src="index.php?route=information/creator/captcha" alt="" /><div style="clear:both;"></div></li>';
                        break;
                     case 'form_tab_date' : 
                        $html .= '<li class="date ' . $required . '"><label>' . $title . ' '.$xxx.' </label><br /><input type="text" style="width:' . $width . 'px " id="datepicker_'.$datepicker++.'" name="' . $title . '" value="' . $value_post . '"></li>';
                        break;
                     case 'form_tab_time' : 
                        $html .= '<li class="time ' . $required . '"><label>' . $title . ' '.$xxx.' </label><br /><input type="text" style="width:' . $width . 'px " id="timepicker_'.$timepicker++.'" name="' . $title . '" value="' . $value_post . '" ></li>';
                        break;
                    case 'form_tab_submit' :
                        $html .= '</ul></fieldset><ul class="formcreator"><li class="submit ' . $required . '"><input type="submit" style="width:' . $width . 'px " class="button" value="' . $title . '" onclick="return checkValidate();" name="submit_1_' . $title . '" ></li>';
                        break;

                    default : break;
                }
            endforeach;
          
            $html .= ' </ul>'; 
        return $html;
    }

}

?>