<?php
if (isset($_GET['rid'])) {
$x=$_GET['rid'];
$stmt = mysqli_query($con,"SELECT * FROM recipes WHERE rid='$x'");
$recipe = mysqli_fetch_array($stmt,MYSQLI_ASSOC);
if (!$recipe) {
exit('Recipe does not exist!');
}
} else {
exit("Recipe doesn't exist!");
}
?>
<?=template_header($recipe['rname'])?>

<div class="product content-wrapper">
<img src="imgs/<?=$recipe['rimg']?>" width="500" height="500" alt="<?=$recipe['rname']?>">
<div>
<h1 class="name"><?=$recipe['rname']?></h1>
<div class="description">
<?=$recipe['rdesc']?>
<br><br>
<div class="description">
<?=$recipe['rlink']?>
</div>
</div>
</div>
</div>

<?=template_footer()?>