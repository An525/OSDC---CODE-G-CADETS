<?php
// Get the 4 most recently added products
$stmt = mysqli_query($con,'SELECT * FROM products ORDER BY date_added DESC LIMIT 4');
$recently_added_products = mysqli_fetch_all($stmt,MYSQLI_ASSOC);
?>
<?=template_header('Home')?>
<div class="featured">
<h2>AyurvedaGeeks</h2>
<p>Taking Health Seriously</p>
</div>
<div class="recentlyadded content-wrapper">
    <br>
    <h1 style="text-align:center;font-size:xx-large">Ayurveda and the Future</h1>
    <p>Ayurveda is an ancient system of medicine that originated in India more than 5,000 years ago. It is based on the principles of natural healing and aims to balance the mind, body, and spirit to promote overall health and well-being. Ayurveda includes a wide range of therapies, including herbal medicines, massage, diet and lifestyle recommendations, and meditation.
</p><p>
Ayurveda is becoming increasingly popular in modern times as people seek more natural and holistic approaches to health and wellness. Its emphasis on individualized treatment plans and preventative care make it a valuable tool for promoting long-term health and preventing illness.
</p><p>
In addition, Ayurveda offers a unique perspective on health that emphasizes the interconnectedness of all things. This can help us to understand the impact of our lifestyle choices on our health and the environment, and to make more informed decisions that support both.
</p><p>
As we face increasing health challenges and environmental pressures in the future, Ayurveda's holistic approach and focus on natural healing could become even more important for the well-being of future generations. Its emphasis on preventative care and personalized treatment plans could help us to reduce the burden of chronic illness and improve overall quality of life.
</p></div>
<div class="recentlyadded content-wrapper">
<h2>Recently Added Products</h2>
<div class="products">
<?php foreach ($recently_added_products as $product): ?>
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