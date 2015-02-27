<style>
    .brand 
    {
        float : left;
        margin-bottom : 20px;
        margin-top : 20px;
    }
    .brand > .brand_item
    {
        margin-left :40px;
        float: left;
        text-align:center;
        display: block;
    }
</style>

<div class="brand">
    <?php foreach ($banners as $banner) { ?>
    <div class="brand_item"><a href="<?php echo $banner['link']; ?>"  onclick="javascript:window.location = '<?php echo $banner['link']; ?>';"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>"/></a></div>
    <?php } ?>
</div>
