<?php
// Check to make sure the id parameter is specified in the URL
if (isset($_GET['id'])) {
// Prepare statement and execute, prevents SQL injection
$x=$_GET['id'];
$stmt = mysqli_query($con,"SELECT * FROM products WHERE id='$x'");
// Fetch the product from the database and return the result as an Array
$product = mysqli_fetch_array($stmt,MYSQLI_ASSOC);
// Check if the product exists (array is not empty)
if (!$product) {
// Simple error to display if the id for the product doesn't exists (array is empty)
exit('Product does not exist!');
}
} else {
// Simple error to display if the id wasn't specified
exit("Product doesn't exist!");
}
?>
<?=template_header($product['name'])?>

<div class="product content-wrapper">
<img src="imgs/<?=$product['img']?>" width="500" height="500" alt="<?=$product['name']?>">
<div>
<h1 class="name"><?=$product['name']?></h1>
<span class="price">
&#8377;<?=$product['price']?>
<?php if ($product['rrp'] > 0): ?>
<span class="rrp">&#8377;<?=$product['rrp']?></span>
<?php endif; ?>
</span>
<form action="index.php?page=cart" method="post">
<input type="number" name="quantity" value=1 min="1" value="<php?=$product['quantity']?>" placeholder="Quantity" required>
<input type="hidden" id="product_id" name="product_id" value="<?=$product['id']?>">
<input type="submit" value="Add To Cart" name="Add_To_Cart">
</form>
<!--adding link to recipes for this ingredient-->
<a href="index.php?page=recipesfilter&id=<?=$product['id']?>" class="product" style="text-decoration:none">
<br><form>
    <div style="background: grey; text-align:center;border: 0;width: 400px;padding: 12px 0;text-transform: uppercase;font-size: 14px;
font-weight: bold;border-radius: 5px;cursor: pointer;">
<h3 style="color: #FFFFFF;">View Related Recipes</h3>
</div>
</form>
</a>
<div class="description">
<?=$product['desc']?>
</div>
</div>
</div>

<?=template_footer()?>
