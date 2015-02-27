<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
    <div class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <h1 class="_formh"><?php echo $heading_title; ?></h1>
    <script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script>
     <script>
        $(function() {
            for (var i=0; i<5; i++){
            $( "#datepicker_" + i ).datepicker();
             $( "#timepicker_" + i ).timepicker({
                                                        hourGrid: 4,
                                                        minuteGrid: 10
                                                });
           }
           
        });
        
        </script>
    <style type="text/css">
        .formcreator label,#contact label {
            float: left;
            font-weight: bold;
            padding-right: 14px;
            text-align: left;
            width: 200px;
        }
        .formcreator .title {
            font-weight: bold;
        }
        .formcreator li, #contact li {
            display: block;
            line-height: 25px;
            list-style:none;
        }
        legend.title {
            font-size: 17px;
            margin: 0 0 5px;
        }
     
        .formh {
            color: #888888;
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 0;
            margin-top: 15px;
        }
        .submit {
            text-align: right;
        }
        .formcreator label span {
            font-weight: bold;
            color: red;
        }
        .formcreator .required {
            color: inherit;
            font-weight: inherit;
        }
        #contact fieldset{ margin-top: 10px; } 
        .formcreator input[type="text"], input[type="password"], textarea {
            width: auto;
            max-width: 100%;
        }

        .formcreator input[type="text"]:focus, input[type="password"]:focus, textarea:focus {
            background-color: #fff;
            border: solid 1px #ccc;
        }
        #contact input[type="password"], #contact input[type="text"], #contact select{
            width: 40%;
        }
        .formcreator .submit{
            float: right;
            margin-right: 10px;
        }
    </style>
    <script type="text/javascript">
    function checkValidate(){
        $flag = true; 
        jQuery('.required input').each(function(){
        if(jQuery(this).val() === '' ) {
        alert('Please enter ' + jQuery(this).parent().children('label').text());
        $flag = false; 
        jQuery(this).focus(); 
        return false; 
                   
    }
    });
    var checked = true;
    var element = '';
    jQuery('.required input[type=checkbox]').each(function(){
        checked = false;
        element = jQuery(this);
        if(jQuery(this).prop('checked')) {
            checked = true;
            return false;
    }
    });
    if(checked==false){
        alert('Please check ' + element.parent().children('label').text());
        $flag = false; 
        element.focus(); 
        return false; 
    }
    var checked = true;
    var element = '';
    jQuery('.required input[type=radio]').each(function(){
        checked = false;
        element = jQuery(this);
        if(jQuery(this).prop('checked')) {
            checked = true;
            return false;
    }
    });
    if(checked==false){
        alert('Please check ' + element.parent().children('label').text());
        $flag = false; 
        element.focus(); 
        return false; 
    }
    var checked = true;
    var element = '';
    jQuery('.required select[multiple=multiple] option').each(function(){
        checked = false;
        element = jQuery(this);
        if(jQuery(this).prop('selected')) {
            checked = true;
            return false;
    }
    });
    if(checked==false){
        alert('Please select' + element.parent().parent().children('label').text());
        $flag = false; 
        element.focus(); 
        return false; 
    }
    jQuery('.required textarea').each(function(){
    if(jQuery(this).val() === '' ) {
    alert('Please enter ' + jQuery(this).parent().children('label').text());
    $flag = false; 
    jQuery(this).focus(); 
    return false; 
                   
    }
    });
    jQuery('.required select').each(function(){
    if(jQuery(this).val() === '' ) {
    alert('Please enter ' + jQuery(this).parent().children('label').text());
    $flag = false; 
    jQuery(this).focus(); 
    return false; 
                   
    }
    });
            
        
    // return result
    if($flag){
    return true; 
    }else{
    return false; 
    }
         
    }
    </script>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="contact">
        <div class="error"><?php echo $error_captcha."<br />".$email; ?></div>

        <?php  
        echo $formdata;  
        ?>

        <ul class="formcreator"><li class="submit "><input type="button" class="button" value="Back" onclick="javascript:history.back();"></li> </ul>

    </form>
    <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>