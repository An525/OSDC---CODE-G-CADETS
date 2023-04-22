<?php
// The amounts of products to show on each page
$num_products_on_each_page = 4;
// The current page, in the URL this will appear as index.php?page=products&p=1, index.php?page=products&p=2, etc...
$current_page = isset($_GET['p']) && is_numeric($_GET['p']) ? (int)$_GET['p'] : 1;
// Select products ordered by the date added
$stmt = mysqli_query($con,'SELECT * FROM products ORDER BY date_added DESC');
// Fetch the products from the database and return the result as an Array
$products  =mysqli_fetch_all($stmt,MYSQLI_ASSOC);
// Get the total number of products
$stmt=mysqli_query($con,'SELECT * FROM products');
$total_products = mysqli_num_rows($stmt);
?>

<?=template_header('Products')?>

<div class="products content-wrapper">
<h1>Products</h1>
<p><?=$total_products?> Products</p>
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