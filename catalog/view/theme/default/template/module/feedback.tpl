<script src="http://jquery.malsup.com/cycle2/jquery.cycle2.js"></script>
<?php
$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "feedback where status=1");
$feedbacks=$query->rows;

?>

<script>
    $(document).ready(function(){
    $('.feedbackBox').click(function(){
    window.location = 'index.php?route=feedback/list';
});

});
</script>
<div class="module_item" style="cursor: pointer">
    <h2><?php echo $heading_title; ?></h2>
    <div class="box-content">
        <div style="text-align: center;">
            <span id=prev style="text-align: left;"><img src="catalog/view/theme/default/image/button-left.png" /></span>
            <span id=next style="text-align: right;"><img src="catalog/view/theme/default/image/button-right.png" /></span>
        </div>
        
        <div class="cycle-slideshow" 
             data-cycle-fx="scrollHorz" 
             data-cycle-timeout="4000"
             data-cycle-slides="> div"
             data-cycle-prev="#prev"
             data-cycle-next="#next"
             >



            <?php foreach($feedbacks as $feedback){ ?>
            <div class="feedbackBox" style="width:100%; height:100%; padding:3px;min-height: 300px;">
                <p style="padding:5px;">
                    <img src="catalog/view/theme/default/image/quote1.png" />
                    <br /> <?php echo strlen(html_entity_decode($feedback['feedback'], ENT_QUOTES, 'UTF-8')) > 200 ? substr(html_entity_decode($feedback['feedback'], ENT_QUOTES, 'UTF-8'),0,200) . ' ... ' . '<a href="index.php?route=feedback/list">(click here for full comments)</a>': html_entity_decode($feedback['feedback'], ENT_QUOTES, 'UTF-8'); ?> <br />
                    <img src="catalog/view/theme/default/image/quote2.png" align="right" />
                <p align="center" style="color: red;text-align: center;">By <?php echo $feedback['name']; ?></p>
                </p>
            </div>
            <?php } ?>
        </div>
        
        
        <!--<br />
        <a href="index.php?route=information/feedback"><img src="catalog/view/theme/default/image/feedback.jpg" width="95%" /></a>-->
    </div></div>