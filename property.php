<?php
// Check to make sure the id parameter is specified in the URL
if (isset($_GET['pid'])) {
$x= isset($_GET['pid']) && is_numeric($_GET['pid']) ? (int)$_GET['pid'] : 1;
// The amounts of products to show on each page
$num_products_on_each_page = 4;
// Select products
$stmt = mysqli_query($con,"SELECT * FROM properties,relation,products WHERE properties.pid='$x' and properties.pid=relation.pid and relation.id=products.id");
//alternate: "SELECT * FROM products where id in(SELECT id FROM relation where pid='$x')"
// Fetch the products from the database and return the result as an Array
$products  =mysqli_fetch_all($stmt,MYSQLI_ASSOC);
// Get the total number of products
$stmt=mysqli_query($con,"SELECT * FROM properties,relation,products WHERE properties.pid='$x' and properties.pid=relation.pid and relation.id=products.id");
$total_products = mysqli_num_rows($stmt);
$stmt2=mysqli_query($con,"SELECT * FROM properties,relation,products WHERE properties.pid='$x' and properties.pid=relation.pid and relation.id=products.id");
$props =mysqli_fetch_all($stmt,MYSQLI_ASSOC);
$propname="";
foreach ($props as $prop):
    $propname=$prop['pname'];
endforeach;
}
?>
<?=template_header('Property')?>

<div class="products content-wrapper">
<h1>Products for <?=$propname?><?php $_GET['pname']?></h1>
<p><?=$total_products?> Products

</p>
<div class="products-wrapper">
<?php foreach ($products as $product): ?>
<a href="index.php?page=product&id=<?=$product['id']?>" class="product">
<img src="imgs/<?=$product['img']?>" width="200" height="200" alt="<?=$product['name']?>">
<span class="name"><?=$product['name']?></span>
<span class="price">
&#8377;<?=$product['price']?>
<?php if ($product['rrp'] > 0): ?>
<span class="rrp">&#8377;<?=$product['rrp']?></span>
<?php endif; ?>
</span>
</a>
<?php endforeach; ?>
</div>
</div>
<?=template_footer()?>