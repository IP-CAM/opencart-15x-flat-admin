<?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
<ul>
    <li class="btn-group">
        <button class="btn btn-theme-normal dropdown-toggle" data-toggle="dropdown">
            <?php foreach ($languages as $language) { ?>
            <?php if ($language['code'] == $language_code) { ?>
            <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>">
            <?php } ?>
            <?php } ?>
            <span class="text-label"><?php echo $text_language; ?></span> <span class="fa fa-sort-asc"></span>
        </button>
        <ul class="dropdown-menu">
            <?php foreach ($languages as $language) { ?>
            <li><a onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().parent().parent().parent().submit();"><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /><span><?php echo $language['name']; ?></span></a></li>
            <?php } ?>
        </ul>
    </li>
</ul>
    <input type="hidden" name="language_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
<?php } ?>
