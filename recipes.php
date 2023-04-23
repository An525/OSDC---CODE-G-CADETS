<?php
// The amounts of products to show on each page
$num_products_on_each_page = 4;
// The current page, in the URL this will appear as index.php?page=products&p=1, index.php?page=products&p=2, etc...
$current_page = isset($_GET['p']) && is_numeric($_GET['p']) ? (int)$_GET['p'] : 1;
// Select products ordered by the date added
$stmt = mysqli_query($con,'SELECT * FROM recipes ORDER BY rid');
// Fetch the products from the database and return the result as an Array
$recipes  =mysqli_fetch_all($stmt,MYSQLI_ASSOC);
// Get the total number of products
$stmt=mysqli_query($con,'SELECT * FROM recipes');
$total_recipes = mysqli_num_rows($stmt);
?>

<?=template_header('Recipes')?>

<div class="products content-wrapper">
<h1>Recipes</h1>
<p><?=$total_recipes?> Recipes</p>
<div class="products-wrapper">
<?php foreach ($recipes as $recipe): ?>
<a href="index.php?page=recipe&rid=<?=$recipe['rid']?>&rname=<?=$recipe['rname']?>" class="product">
<img src="imgs/<?=$recipe['rimg']?>" width="200" height="200" alt="<?=$recipe['rname']?>">
<span class="name"><?=$recipe['rname']?></span>
</a>
<?php endforeach; ?>
</div>
</div>

<?=template_footer()?>