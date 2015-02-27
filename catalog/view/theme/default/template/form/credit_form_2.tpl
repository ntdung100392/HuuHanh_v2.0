<?php echo $header; ?>
<div class="messages">
    <?php if ($error_warning) { ?><div class="warning"><?php echo $error_warning; ?></div><?php } ?>
</div>
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
                <img src="http://intelligentuas.com/image/data/Phantom-Coupon/img00.jpg" style="width: 100%;" alt="DJI Phantom Coupon - IntelligentUAS" />
                <p></p>
                <h5>How to get $150 credit toward your Phantom 2 Vision or Phantom 2 Pro:</h5>
                <p></p>
                <p style="font-size: 1em;"><b>Step 1: Go to <a href="http://www.dji.com/" target="_blank" style="color: red;">WWW.DJI.COM</a></b></p>
                <p>Register or you can sign in with your existing DJI Assistant Software User ID.</p>
                
                <img src="http://intelligentuas.com/image/data/Phantom-Coupon/img01.jpg" style="width: 100%;" alt="DJI Phantom Coupon - IntelligentUAS" />
                <p></p>
                <p style="font-size: 1em;"><b>Step 2:</b> Click ‘My account’</p>
                 <img src="http://intelligentuas.com/image/data/Phantom-Coupon/img02.jpg" style="width: 100%;" alt="DJI Phantom Coupon - IntelligentUAS" />
                 <br /><br />
                 <p style="font-size: 1em;"><b>Step 3:</b> Click ‘My Products’</p>
                 <img src="http://intelligentuas.com/image/data/Phantom-Coupon/img03.jpg" style="width: 250px;" alt="DJI Phantom Coupon - IntelligentUAS" />
                 <p></p>
                 <p style="font-size: 1em;"><b>Step 4:</b> Click ‘Register Product’</p>
                 <img src="http://intelligentuas.com/image/data/Phantom-Coupon/img04.jpg" style="width: 450px;" alt="DJI Phantom Coupon - IntelligentUAS" />
                 <p></p>
                 <p style="font-size: 1em;"><b>Step 5:</b> Click ‘My Coupons’, then you can find the generated coupon code, give this code to us intelligetnUAS to get discount for Phantom 2 Vision or Phantom 2.</p>
                <!--
                <div class="form-inline">
                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                        <div class="box-heading">Phantom v2 Credit</div>
                        <p>If you bought a Phantom before 9th Sept 2013, DJI (not intelligentUAS) will provide a credit of USD $150. This credit can only be used to buy a Phantom II OR a Phantom Vision, once they are released. The plan is to release the exciting Phantom II and Phantom Vision products in Nov, 2013 just before the Christmas. The credit will expire on 31th Dec 2013 if not used. To get the USD 150 credit, please fill out the Phantom credit form below.</p>
                        <br />
                        
                        <div class="field" style="float: left;margin-right: 100px;">
                            <label><span class="required">*</span> <?php echo $entry_name; ?></label>
                            <input type="text" name="name" value="<?php echo $name; ?>" class="large-field" />
                            <?php if ($error_name) { ?><span class="error"><?php echo $error_name; ?></span><?php } ?>
                        </div>
                        
                        <div class="field">
                            <label><span class="required">*</span> <?php echo $entry_phone; ?></label>
                            <input type="text" name="phone" value="<?php echo $phone; ?>" class="large-field" />
                            <?php if ($error_phone) { ?><span class="error"><?php echo $error_phone; ?></span><?php } ?>
                        </div>
                        
                        <div class="field" style="float: left;margin-right: 100px;">
                            <label><span class="required">*</span> <?php echo $entry_dealer_name; ?></label>
                            <input type="text" name="dealer_name" value="<?php echo $dealer_name; ?>" class="large-field" />
                            <?php if ($error_dealer_name) { ?><span class="error"><?php echo $error_dealer_name; ?></span><?php } ?>
                        </div>
                        
                        <div class="field">
                            <label><span class="required">*</span> <?php echo $entry_dealer_phone; ?></label>
                            <input type="text" name="dealer_phone" value="<?php echo $dealer_phone; ?>" class="large-field" />
                            <?php if ($error_dealer_phone) { ?><span class="error"><?php echo $error_dealer_phone; ?></span><?php } ?>
                        </div>
                        
                        <div class="field" style="float: left;margin-right: 100px;">
                            <label><span class="required">*</span> <?php echo $entry_email; ?></label>
                            <input type="text" name="email" value="<?php echo $email; ?>" class="large-field" />
                            <?php if ($error_email) { ?><span class="error"><?php echo $error_email; ?></span><?php } ?>
                        </div>
                        
                        <div class="field">
                            <label><span class="required">*</span> <?php echo $entry_dealer_email; ?></label>
                            <input type="text" name="dealer_email" value="<?php echo $dealer_email; ?>" class="large-field" />
                            <?php if ($error_dealer_email) { ?><span class="error"><?php echo $error_dealer_email; ?></span><?php } ?>
                        </div>
                      
                        <div class="field" style="float: left;margin-right: 100px;">
                            <label><span class="required">*</span> <?php echo $entry_product_number; ?></label>
                            <input type="text" name="product_number" value="<?php echo $product_number; ?>" />
                            <?php if ($error_product_number) { ?><span class="error"><?php echo $error_product_number; ?></span><?php } ?>
                        </div>
                        
                        <div class="field">
                            <label><span class="required">*</span> <?php echo $entry_date_ordered; ?></label>
                            <input type="text" name="date_ordered" value="<?php echo $date_ordered; ?>" class="large-field date" />
                            <?php if ($error_date_ordered) { ?><span class="error"><?php echo $error_date_ordered; ?></span><?php } ?>
                        </div>
                        

                        
                        <br />
                        
                        <div class="field">
                            <label><?php echo $entry_captcha; ?></label>
                            <input type="text" name="captcha" value="<?php echo $captcha; ?>" style="margin-bottom: 8px;" />
                            <img src="index.php?route=account/repair/captcha" alt="" />
                            <?php if ($error_captcha) { ?><span class="error"><?php echo $error_captcha; ?></span><?php } ?>
                        </div>

                        <div class="field">
                            <a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a>&nbsp;&nbsp;
                            <a class="button button-alt" onClick="$(this).parents('form').submit();"><?php echo $button_continue; ?></a>
                        </div>
                    </form>
                </div>
                -->
            </section>
        </div>
        <?php echo $content_bottom; ?>
    </div>
</div>
<script type="text/javascript"><!--
    $(document).ready(function() {
        $('.date').datepicker({dateFormat: 'yy-mm-dd'});
    });
//--></script> 
<?php echo $footer; ?>