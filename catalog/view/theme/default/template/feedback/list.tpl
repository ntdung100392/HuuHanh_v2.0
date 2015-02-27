


<?php echo $header; ?>

<div class="ribbon breadcrumb">
    <div class="top"></div>
    <div class="pivot">
        <div class="center">
            <h1><?php echo $heading_title; ?></h1>
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <?php if ($breadcrumb['separator'] != '') { ?><span>\</span><?php } ?>
            <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            <?php } ?>
        </div>
    </div>
    <div class="bottom"></div>
</div>
<div class="pivot">
    <div id="content">
        <?php echo $content_top; ?>
        <?php echo $column_left; ?>
        <?php echo $column_right; ?>

        <div id="content-center">
            <section class="standart">
<div class="cycle-slideshow" style="width:100%; height:100%;">
                <?php foreach($feedback_list as $feedback){ ?>
                <div style="width:100%; height:100%; padding:4px;">
                    <p style="padding:5px;">
                        <img src="catalog/view/theme/default/image/quote1.png" /> &nbsp;
                        <font style="font-weight: bold;color: red;"><?php echo $feedback['name']; ?> : </font><br /><br /><?php echo html_entity_decode($feedback['feedback'], ENT_QUOTES, 'UTF-8'); ?> <br />
                        <img src="catalog/view/theme/default/image/quote2.png" align="right" />

                    </p>
                </div>
                <?php } ?>
            </div>
            </section>
        </div>
        <?php echo $content_bottom; ?>
    </div>
</div>

<?php echo $footer; ?>