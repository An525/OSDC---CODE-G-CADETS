<?php
// The amounts of products to show on each page
$num_products_on_each_page = 4;
// The current page, in the URL this will appear as index.php?page=products&p=1, index.php?page=products&p=2, etc...
$current_page = isset($_GET['p']) && is_numeric($_GET['p']) ? (int)$_GET['p'] : 1;
// Select products ordered by the date added
$stmt = mysqli_query($con,'SELECT * FROM properties ORDER BY pid');
// Fetch the products from the database and return the result as an Array
$properties  =mysqli_fetch_all($stmt,MYSQLI_ASSOC);
// Get the total number of products
$stmt=mysqli_query($con,'SELECT * FROM properties');
$total_properties = mysqli_num_rows($stmt);
?>

<?=template_header('Properies')?>

<div class="products content-wrapper">
<h1>Wellness</h1>
<p><?=$total_properties?> Categories</p>
<div class="products-wrapper">
<?php foreach ($properties as $property): ?>
<a href="index.php?page=property&pid=<?=$property['pid']?>&pname=<?=$property['pname']?>" class="product">
<img src="" width="200" height="200" alt="<?=$property['pname']?>">
<span class="name"><?=$property['pname']?></span>
</a>
<?php endforeach; ?>
</div>
</div>

<?=template_footer()?>
