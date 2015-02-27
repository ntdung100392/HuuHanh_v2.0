<?php

class ModelTicketCustom extends Model {
    public function getFormInfo() {
        $query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "ticket_config WHERE config_id = 1");

        return $query->row;
    }

     public function getFormShow($fieldlist) {
        
        $html = '';
        $fieldset = $datepicker = $timepicker =0 ; 
        if (is_array($fieldlist))
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

                $xxx        = isset($required) && $required == 1 ? '<span class="red">*</span>' : '';
                $required   = isset($required) && $required == 1 ? 'require' : '';
                $width      = isset($width)?$width:'';
                if(!isset($title)) $title = '';
                $value_post = isset($_POST[str_replace(' ','_',$title)])?$_POST[str_replace(' ','_',$title)]:'';
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
                        $html .= '<h2>' . $title . '</h2>';           
                        break;
                    }
                    case 'form_tab_paragraph' :
                        $html .= '<div><div class="span10" style="margin: 15px 20px;">' . $paragraph . '</div></div>';
                        break;
                    case 'form_tab_email' :
                        $html .= '<div class='.$required.'><div class="span2">' .$xxx. ' '. $title . ' </div><div class="span8"><input value="' . $value_post . '"   type="text" name="email_1_' . $title . '" value=""  style="width:' . $width . 'px"  ></div></div>';

                        break;
                    case 'form_tab_signlelinetext' :
                        $html .= '<div class='.$required.'><div class="span2">' .$xxx. ' '. $title . ' </div><div class="span8"><input value="' . $value_post . '"   type="text" name="input_1_' . $title . '" value="" style="width:' . $width . 'px "  ></div></div>';
                        break;
                    case 'form_tab_multilinetext' :
                        $html .= '<div class='.$required.'><div class="span2">' .$xxx. ' '. $title . ' </div><div class="span8"><textarea  cols="' . $cols . '" rows="' . $rows . '" name="input_1_' . $title . '" >' . $value_post . ' </textarea></div></div>';
                        break;
                    case 'form_tab_checkbox' :
                        $html .= '<div class='.$required.'><div class="span2">' .$xxx. ' '. $title . ' </div><div class="span8">' . $opthtml . '</div></div>';
                        break;
                    case 'form_tab_radio' :
                        $html .= '<div class='.$required.'><div class="span2">' .$xxx. ' '. $title . ' </div><div class="span8">' . $opthtml . '</div></div>';

                        break;
                    case 'form_tab_dropdown' :
                        $html .= '<div class='.$required.'><div class="span2">' .$xxx. ' '. $title . ' </div><div class="span8">' . $opthtml . '</div></div>';

                        break;
                    case 'form_tab_multidropdow' :
                        $html .= '<div class='.$required.'><div class="span2">' .$xxx. ' '. $title . ' </div><div class="span8">' . $opthtml . '</div></div>';

                        break;
                    case 'form_tab_upload' :
                        $html .= '<div class='.$required.'><div class="span2">' .$xxx. ' '. $title . ' </div><div class="span8"><input type="file" style="width:' . $width . 'px " name="upload_1_' . $title . '" ></div></div>';
                        break;
                    case 'form_tab_captcha' :
                        $html .= '<b>'. $title . ': </b>' . $xxx . '<br /><input type="text" name="captcha_1_' . $title . '" style="max-width: 150px;min-width: 150px;margin-bottom: 15px;"><br /><img src="index.php?option=com_mijoshop&route=information/contact/captcha" alt="" />';
                        break;
                     case 'form_tab_date' : 
                        $html .= '<div class='.$required.'><div class="span2">' .$xxx. ' '. $title . ' </div><div class="span8"><input value="' . $value_post . '" type="text" style="width:' . $width . 'px " id="datepicker_'.$datepicker++.'" name="input_1_' . $title . '" ></div></div>';
                        break;
                     case 'form_tab_time' : 
                        $html .= '<div class='.$required.'><div class="span2">' .$xxx. ' '. $title . ' </div><div class="span8"><input value="' . $value_post . '" type="text" style="width:' . $width . 'px " id="timepicker_'.$timepicker++.'" name="input_1_' . $title . '" ></div></div>';
                        break;

                    default : break;
                }
            endforeach;
          
        return $html;
    }

    public function getFormShowData($fieldlist,$uid) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "ticket WHERE ticket_id = '" . (int)$uid . "'");

        $html = '';
        $datepicker = $timepicker =0 ; 
        $fieldset = 1;
        if (is_array($fieldlist))
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

                $xxx        = isset($required) && $required == 1 ? '<span class="red">*</span>' : '';
                $required   = isset($required) && $required == 1 ? 'require' : '';
                $value_post = isset($query->row[$title])?$query->row[$title]:'';

                $opthtml = '';
                if (isset($option)) {
                    if ($key == 'form_tab_checkbox') {
                        
                        foreach ($option as $opt) {
                            if(isset($query->row[$title])&&$query->row[$title]!='N/A'){
                                foreach(unserialize($query->row[$title]) as $vp){
                                $value_post = isset($vp)?$vp:'';
                                if($opt==$vp) $opthtml .= $opt.', ';
                                }
                            }else if(isset($query->row[$title])&&$query->row[$title]=='N/A'){
                                $opthtml = 'N/A';
                                break;
                            }
                        }
                        $opthtml = trim($opthtml,', ');
                        
                    } else if ($key == 'form_tab_radio') {
                        
                        foreach ($option as $opt) {
                            $value_post = isset($query->row[$title])?$query->row[$title]:'';
                            if($value_post=='N/A'){
                                $opthtml = 'N/A';
                                break;
                            }
                            if($opt==$value_post) $opthtml .= $opt.', ';
                        }
                        $opthtml = trim($opthtml,', ');
                        
                    } else if ($key == 'form_tab_dropdown') {
                        
                        foreach ($option as $opt) {
                            $value_post = isset($query->row[$title])?$query->row[$title]:'';
                            if($value_post=='N/A'){
                                $opthtml = 'N/A';
                                break;
                            }
                            if($opt==$value_post) $opthtml .= $opt.', ';
                        }
                        $opthtml = trim($opthtml,', ');

                    } else if ($key == 'form_tab_multidropdow') {
                        
                        foreach ($option as $opt) {
                            if(isset($query->row[$title])&&$query->row[$title]!='N/A'){
                                foreach(unserialize($query->row[$title]) as $vp){
                                $value_post = isset($vp)?$vp:'';
                                if($opt==$vp) $opthtml .= $opt.', ';
                                }
                             }else if(isset($query->row[$title])&&$query->row[$title]=='N/A'){
                                $opthtml = 'N/A';
                                break;
                            }
                        }
                        $opthtml = trim($opthtml,', ');
                        
                    }
                }

                switch ($key) {

                    case 'form_tab_email' :
                        $html .= '<tr class="' . $required . '"><th class="email">' .$xxx. ' '. $title . ' </th><td>' . $value_post . '</td></tr>';

                        break;
                    case 'form_tab_signlelinetext' :
                        $html .= '<tr class="' . $required . '"><th class="signlelinetext">' .$xxx. ' '. $title . ' </th><td>' . $value_post . '</td></tr>';
                        break;
                    case 'form_tab_multilinetext' :
                        $html .= '<tr class="' . $required . '"><th class="textarea">' .$xxx. ' '. $title . ' </th><td>' . $value_post . '</td></tr>';
                        break;
                    case 'form_tab_checkbox' :
                        $html .= '<tr class="' . $required . '"><th class="checkbox">' .$xxx. ' '. $title . ' </th><td>' . $opthtml . '</td></tr>';
                        break;
                    case 'form_tab_radio' :
                        $html .= '<tr class="' . $required . '"><th class="radio">' .$xxx. ' '. $title . ' </th><td>' . $opthtml . '</td></tr>';

                        break;
                    case 'form_tab_dropdown' :
                        $html .= '<tr class="' . $required . '"><th class="dropdown">' .$xxx. ' '. $title . ' </th><td>' . $opthtml . '</td></tr>';

                        break;
                    case 'form_tab_multidropdow' :
                        $html .= '<tr class="' . $required . '"><th class="multidropdow">' .$xxx. ' '. $title . ' </th><td>' . $opthtml . '</td></tr>';

                        break;
                    case 'form_tab_upload' :
					    if($value_post!='' && $value_post!='data/' && $value_post!='N/A') $value_post = '&nbsp;<a href="'.HTTP_SERVER.'image/'.$value_post.'">Download!</a>';
						else $value_post = 'No file!';
                        $html .= '<tr class="' . $required . '"><th class="upload">' .$xxx. ' '. $title . ' </th><td>'.$value_post.'</td></tr>';
                        break;
                     case 'form_tab_date' : 
                        $html .= '<tr class="' . $required . '"><th class="date">' .$xxx. ' '. $title . ' </th><td>' . $value_post . '</td></tr>';
                        break;
                     case 'form_tab_time' : 
                        $html .= '<tr class="' . $required . '"><th class="time">' .$xxx. ' '. $title . ' </th><td>' . $value_post . '</td></tr>';
                        break;

                    default : break;
                }
            endforeach;
          
        return $html;
    }


    public function editForm($data) {

        $settings = array();
        $form_data = isset($data['form_data'])?$data['form_data']:array();  
        foreach($form_data as &$field){
			foreach($field[1] as &$property){
				$property['value'] = str_replace(array("'","\\"),array('"',"/"),$property['value']);
			}
		}
        if (is_array($data['form_data'])) {
            $this->db->query("UPDATE " . DB_PREFIX . "ticket_config SET formdata = '" . serialize($form_data) . "'  WHERE config_id = 1");

            $this->cache->delete('category');
        }
    }

    public function getForm() {
        $query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "ticket_config WHERE config_id = 1");

        return $query->row;
    }


    public function getFormEdit($fieldlist) {
        $html = '';

        if (is_array($fieldlist))
            foreach ($fieldlist as $index => $row):
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

                $required = isset($required) && $required == 1 ? 'checked' : '';

                if (isset($option)) {
                    $opthtml = '<table class="checkboxlist"><tbody>';
                    foreach ($option as $opt) {
                        $rand = rand(999, 9999);
                        $opthtml .= '<tr id="checkbox_' . $rand . '"><td><input type="text" value="' . $opt . '" name="option[]"></td><td><a onclick="remove_this(\'checkbox\',\'' . $rand . '\')" href="javascript:void(0);">Remove</a></td></tr>';
                    }
                    $opthtml .= '</tbody></table>';
                } else {
                    $opthtml = '<table class="checkboxlist"></table>';
                }

                switch ($key) {

                    case 'form_tab_title' :
                        $html .= '
                    <li id="form_tab_title_' . $index . '"><form id="52_id">
                            <div class="widget-content">
                                <table><tbody><tr><td class="tab_title">' . $title . '</td><td></td><td><span onclick="showedit(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\')) " class="edit">Edit</span> &nbsp;&nbsp; <span onclick="jQuery(this).parentsUntil(\'li\').parent().remove()" class="delete">Delete</span></td></tr></tbody></table>
                                <div class="expand">
                                    <p>
                                        <label for="">Title</label>
                                        <input type="text" name="title" class="widefat val_title" value="' . $title . '">
                                    </p>
                                </div>
                            </div>
                        </form>
                    </li>
                   ';
                        break;
                    case 'form_tab_paragraph' :
                        $html .= '
                    <li id="form_tab_paragraph_' . $index . '">
                        <form id="44_id">
                            <div class="widget-content">
                                <table><tbody><tr><td class="tab_title">New Paragraph</td><td></td><td><span onclick="showedit(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\')) " class="edit">Edit</span> &nbsp;&nbsp; <span onclick="jQuery(this).parentsUntil(\'li\').parent().remove()" class="delete">Delete</span></td></tr></tbody></table>
                                <div class="expand">
                                    <p>
                                        <label for="">Paragraph</label>
                                        <textarea name="paragraph" class="widefat  val_title" rows="4" cols="10">' . $paragraph . '</textarea>
                                    </p>
                                </div>
                            </div>
                        </form>
                    </li>
                  ';
                        break;
                    case 'form_tab_email' :
                        $html .= '
                    <li id="form_tab_email_' . $index . '"><form id="91_id">
                            <div class="widget-content">
                                <table><tbody><tr><td class="tab_title">' . $title . '</td><td><input type="text" class="boxhidden"></td><td><span onclick="showedit(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\')) " class="edit">Edit</span> &nbsp;&nbsp; <span onclick="jQuery(this).parentsUntil(\'li\').parent().remove()" class="delete">Delete</span></td></tr></tbody></table>
                                <div class="expand">
                                    <p>
                                        <label for="">Label</label>
                                        <input type="text" name="title" class="widefat  val_title" value="' . $title . '">
                                    </p>
                                    <p>
                                        <label for="">Width</label>
                                        <input type="text" name="width" class="widefat" value="' . $width . '">
                                    </p>
                                    <p>
                                        <label for="">Required <span class="red">*</span></label>
                                        <input type="checkbox" name="required" ' . $required . ' class="widefat" value="1">
                                    </p>
                                </div>
                            </div>
                        </form>
                    </li>
                       ';
                        break;
                    case 'form_tab_signlelinetext' :
                        $html .= '
                    <li id="form_tab_signlelinetext_' . $index . '"><form id="62_id">
                            <div class="widget-content">
                                <table><tbody><tr><td class="tab_title">' . $title . '</td><td><input type="text" class="boxhidden"></td><td><span onclick="showedit(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\')) " class="edit">Edit</span> &nbsp;&nbsp; <span onclick="jQuery(this).parentsUntil(\'li\').parent().remove()" class="delete">Delete</span></td></tr></tbody></table>
                                <div class="expand">
                                    <p>
                                        <label for="">Label</label>
                                        <input type="text" name="title" class="widefat val_title" value="' . $title . '">
                                    </p>
                                    <p>
                                        <label for="">Width</label>
                                        <input type="text" name="width" class="widefat" value="' . $width . '">
                                    </p>
                                    <p>
                                        <label for="">Required <span class="red">*</span></label>
                                        <input type="checkbox" name="required" ' . $required . ' class="widefat" value="1">
                                    </p>
                                </div>
                            </div>
                        </form>
                    </li>
                       ';
                        break;
                    case 'form_tab_multilinetext' :
                        $html .= '
                    <li id="form_tab_multilinetext_' . $index . '"><form id="56_id">
                            <div class="widget-content">
                                <table><tbody><tr><td class="tab_title">' . $title . '</td><td><textarea class="boxhidden"></textarea></td><td><span onclick="showedit(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\')) " class="edit">Edit</span> &nbsp;&nbsp; <span onclick="jQuery(this).parentsUntil(\'li\').parent().remove()" class="delete">Delete</span></td></tr></tbody></table>
                                <div class="expand">
                                    <p>
                                        <label for="">Label</label>
                                        <input type="text" name="title" class="widefat val_title" value="' . $title . '">
                                    </p>
                                    <p>
                                        <label for="">Rows</label>
                                        <input type="text" name="rows" class="widefat" value="' . $rows . '">
                                    </p>
                                    <p>
                                        <label for="">Cols</label>
                                        <input type="text" name="cols" class="widefat" value="' . $cols . '">
                                    </p>  
                                    <p>
                                        <label for="">Required <span class="red">*</span></label>
                                        <input type="checkbox" name="required" class="widefat" ' . $required . ' value="1">
                                    </p>
                                </div>
                            </div>
                        </form>
                    </li>
                       ';
                        break;
                    case 'form_tab_checkbox' :
                        $html .= '
                    <li id="form_tab_checkbox_' . $index . '"><form id="35_id">
                            <div class="widget-content">
                                <table><tbody><tr><td class="tab_title">' . $title . '</td><td><input type="checkbox"> &nbsp; <input type="checkbox"></td><td><span onclick="showedit(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\')) " class="edit">Edit</span> &nbsp;&nbsp; <span onclick="jQuery(this).parentsUntil(\'li\').parent().remove()" class="delete">Delete</span></td></tr></tbody></table>
                                <div class="expand">
                                    <p>
                                        <label for="">Label</label>
                                        <input type="text" name="title" class="widefa val_titlet" value="' . $title . '">
                                    </p>
                                    <p>
                                        <label for="">Width</label>
                                        <input type="text" name="width" class="widefat" value="' . $width . '">
                                    </p>
                                    <p>
                                        <label for="">Required <span class="red">*</span></label>
                                        <input type="checkbox" name="required" class="widefat" ' . $required . ' value="1">
                                    </p>
                                    <p>
                                        <label for="">List Items</label>
                                        <input type="button" onclick="add_checkbox(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\'))" class="widefat" value="Enter items as text">
                                    </p>' . $opthtml . '
                                    <p></p>

                                </div>
                            </div>
                        </form>
                    </li>
                       ';
                        break;
                    case 'form_tab_radio' :
                        $html .= '
                    <li id="form_tab_radio_' . $index . '"><form id="78_id">
                            <div class="widget-content">
                                <table><tbody><tr><td class="tab_title">' . $title . '</td><td><input type="radio"> &nbsp;<input type="radio"></td><td><span onclick="showedit(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\')) " class="edit">Edit</span> &nbsp;&nbsp; <span onclick="jQuery(this).parentsUntil(\'li\').parent().remove()" class="delete">Delete</span></td></tr></tbody></table>
                                <div class="expand">
                                    <p>
                                        <label for="">Label</label>
                                        <input type="text" name="title" class="widefat val_title" value="' . $title . '">
                                    </p>
                                    <p>
                                        <label for="">Width</label>
                                        <input type="text" name="width" class="widefat" value="' . $width . '">
                                    </p>
                                    <p>
                                        <label for="">Required <span class="red">*</span></label>
                                        <input type="checkbox" name="required" class="widefat" ' . $required . '  value="1">
                                    </p>
                                    <p>
                                        <label for="">List Items</label>
                                        <input type="button" onclick="add_checkbox(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\'))" class="widefat" value="Enter items as text">
                                    </p>' . $opthtml . '
                                    <p></p>

                                </div>
                            </div>
                        </form>
                    </li>
                       ';
                        break;
                    case 'form_tab_dropdown' :
                        $html .= '
                    <li id="form_tab_dropdown_' . $index . '"><form id="15_id">
                            <div class="widget-content">
                                <table><tbody><tr><td class="tab_title">' . $title . '</td><td><select disabled="" style="width: 200px !important;"><option>Select</option></select></td><td><span onclick="showedit(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\')) " class="edit">Edit</span> &nbsp;&nbsp; <span onclick="jQuery(this).parentsUntil(\'li\').parent().remove()" class="delete">Delete</span></td></tr></tbody></table>
                                <div class="expand">
                                    <p>
                                        <label for="">Label</label>
                                        <input type="text" name="title" class="widefat val_title" value="' . $title . '">
                                    </p>
                                    <p>
                                        <label for="">Width</label>
                                        <input type="text" name="width" class="widefat" value="' . $width . '">
                                    </p>
                                    <p>
                                        <label for="">Required <span class="red">*</span></label>
                                        <input type="checkbox" name="required" class="widefat" ' . $required . ' value="1">
                                    </p>
                                    <p>
                                        <label for="">List Items</label>
                                        <input type="button" onclick="add_checkbox(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\'))" class="widefat" value="Enter items as text">
                                    </p>' . $opthtml . '
                                    <p></p>

                                </div>
                            </div>
                        </form>
                    </li>
                       ';
                        break;
                    case 'form_tab_multidropdow' :
                        $html .= '
                    <li id="form_tab_multidropdow_' . $index . '"><form id="70_id">
                            <div class="widget-content">
                                <table><tbody><tr><td class="tab_title">' . $title . '</td><td><select disabled="" style="width: 200px !important;"><option>Select</option></select></td><td><span onclick="showedit(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\')) " class="edit">Edit</span> &nbsp;&nbsp; <span onclick="jQuery(this).parentsUntil(\'li\').parent().remove()" class="delete">Delete</span></td></tr></tbody></table>
                                <div class="expand">
                                    <p>
                                        <label for="">Label</label>
                                        <input type="text" name="title" class="widefat val_title" value="' . $title . '">
                                    </p>
                                    <p>
                                        <label for="">Width</label>
                                        <input type="text" name="width" class="widefat" value="' . $width . '">
                                    </p>
                                    <p>
                                        <label for="">Required <span class="red">*</span></label>
                                        <input type="checkbox" name="required" class="widefat" ' . $required . ' value="1">
                                    </p>
                                    <p>
                                        <label for="">List Items</label>
                                        <input type="button" onclick="add_checkbox(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\'))" class="widefat" value="Enter items as text">
                                    </p>' . $opthtml . '
                                    <p></p>

                                </div>
                            </div>
                        </form>
                    </li>
                       ';
                        break;
                    case 'form_tab_upload' :
                        $html .= '
                    <li id="form_tab_upload_' . $index . '"><form id="52_id">
                            <div class="widget-content">
                                <table><tbody><tr><td class="tab_title">' . $title . '</td><td><input type="file" disabled=""></td><td><span onclick="showedit(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\')) " class="edit">Edit</span> &nbsp;&nbsp; <span onclick="jQuery(this).parentsUntil(\'li\').parent().remove()" class="delete">Delete</span></td></tr></tbody></table>
                                <div class="expand">
                                    <p>
                                        <label for="">Label</label>
                                        <input type="text" name="title" class="widefat val_title" value="' . $title . '">
                                    </p>
                                    <p>
                                        <label for="">Required <span class="red">*</span></label>
                                        <input type="checkbox" name="required" class="widefat" ' . $required . ' value="1">
                                    </p>
                                </div>
                            </div>
                        </form>
                    </li>
                       ';
                        break;
                    case 'form_tab_date' :
                        $html .= '
                    <li id="form_tab_date_' . $index . '"><form id="52_id">
                            <div class="widget-content">
                                <table><tbody><tr><td class="tab_title">' . $title . '</td><td><input type="text" class="boxhidden"></td><td><span onclick="showedit(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\')) " class="edit">Edit</span> &nbsp;&nbsp; <span onclick="jQuery(this).parentsUntil(\'li\').parent().remove()" class="delete">Delete</span></td></tr></tbody></table>
                                <div class="expand">
                                    <p>
                                        <label for="">Label</label>
                                        <input type="text" name="title" class="widefat val_title" value="' . $title . '">
                                    </p>
                                    <p>
                                        <label for="">Required <span class="red">*</span></label>
                                        <input type="checkbox" name="required" class="widefat" ' . $required . ' value="1">
                                    </p>
                                </div>
                            </div>
                        </form>
                    </li>
                       ';
                        break;
                    case 'form_tab_time' :
                        $html .= '
                    <li id="form_tab_time_' . $index . '"><form id="52_id">
                            <div class="widget-content">
                                <table><tbody><tr><td class="tab_title">' . $title . '</td><td><input type="text" class="boxhidden"></td><td><span onclick="showedit(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\')) " class="edit">Edit</span> &nbsp;&nbsp; <span onclick="jQuery(this).parentsUntil(\'li\').parent().remove()" class="delete">Delete</span></td></tr></tbody></table>
                                <div class="expand">
                                    <p>
                                        <label for="">Label</label>
                                        <input type="text" name="title" class="widefat val_title" value="' . $title . '">
                                    </p>
                                    <p>
                                        <label for="">Required <span class="red">*</span></label>
                                        <input type="checkbox" name="required" class="widefat" ' . $required . ' value="1">
                                    </p>
                                </div>
                            </div>
                        </form>
                    </li>
                       ';
                        break;
                    case 'form_tab_captcha' :
                        $html .= '
                    <li id="form_tab_captcha_' . $index . '"><form id="60_id">
                            <div class="widget-content">
                                <table><tbody><tr><td class="tab_title">' . $title . '</td><td><input type="text" class="boxhidden"></td><td><span onclick="showedit(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\')) " class="edit">Edit</span> &nbsp;&nbsp; <span onclick="jQuery(this).parentsUntil(\'li\').parent().remove()" class="delete">Delete</span></td></tr></tbody></table>
                                <div class="expand">
                                    <p>
                                        <label for="">Label</label>
                                        <input type="text" name="title" class="widefat val_title" value="' . $title . '">
                                    </p>
                                    <p>
                                        <label for="">Required <span class="red">*</span></label>
                                        <input type="checkbox" name="required" class="widefat" ' . $required . ' value="1">
                                    </p>
                                </div>
                            </div>
                        </form>
                    </li>
                       ';
                        break;
                    case 'form_tab_submit' :
                        $html .= '
                    <li id="form_tab_submit_' . $index . '"><form id="65_id">
                            <div class="widget-content">
                                <table><tbody><tr><td class="tab_title">' . $title . '</td><td></td><td><span onclick="showedit(jQuery(this).parentsUntil(\'li\').parent().attr(\'id\')) " class="edit">Edit</span> &nbsp;&nbsp; <span onclick="jQuery(this).parentsUntil(\'li\').parent().remove()" class="delete">Delete</span></td></tr></tbody></table>
                                <div class="expand">
                                    <p>
                                        <label for="">Label</label>
                                        <input type="text" name="title" class="widefat val_title" value="' . $title . '">
                                    </p>
                                </div>
                            </div>
                        </form>
                    </li>
                    ';
                        break;

                    default : break;
                }
            endforeach;
        return $html;
    }

}

?>