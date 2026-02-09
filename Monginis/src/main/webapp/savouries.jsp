<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Monginis | Savouries</title>
<style>
body{font-family:Arial;background:#fff5f7;}
.card-container{display:flex;flex-wrap:wrap;gap:20px;justify-content:center;}
.card{background:#fff;width:250px;text-align:center;padding:15px;border-radius:12px;box-shadow:0 4px 15px rgba(0,0,0,0.1);}
.card img{width:100%;height:180px;object-fit:cover;border-radius:10px;}
.btn{background:#ff6f61;color:#fff;padding:10px;border:none;border-radius:6px;cursor:pointer;}
.modal{display:none;position:fixed;z-index:1000;left:0;top:0;width:100%;height:100%;overflow:auto;background-color: rgba(0,0,0,0.5);}
.modal-content{background-color:#fff;margin:10% auto;padding:20px;border-radius:10px;width:400px;}
.close{float:right;font-size:24px;cursor:pointer;}
input,select{width:100%;margin:5px 0 15px 0;padding:8px;}
</style>
</head>
<body>

<h2 style="text-align:center;">Our Savouries</h2>
<!-- Success/Error Messages -->
<%
    String msg = request.getParameter("msg");
    if ("success".equals(msg)) {
%>
<p style="color:green; text-align:center; font-weight:bold;">Order placed successfully!</p>
<%
    } else if ("error".equals(msg)) {
%>
<p style="color:red; text-align:center; font-weight:bold;">Error! Try again.</p>
<%
    }
%>
<div class="card-container">
    <div class="card">
        <img src="images/samosa.jpg">
        <h3>Samosa</h3>
        <p>₹ 30</p>
        <button class="btn" onclick="openModal('Samosa',30)">Buy</button>
    </div>
    <div class="card">
        <img src="images/patties.jpg">
        <h3>Veg Patties</h3>
        <p>₹ 40</p>
        <button class="btn" onclick="openModal('Veg Patties',40)">Buy</button>
    </div>
    <div class="card">
        <img src="images/puff.jpg">
        <h3>Paneer Puff</h3>
        <p>₹ 45</p>
        <button class="btn" onclick="openModal('Paneer Puff',45)">Buy</button>
    </div>
    
    <div class="card">
        <img src="images/aloo_puff.jpg">
        <h3>Aloo Puff</h3>
        <p>₹ 40</p>
        <button class="btn" onclick="openModal('Aloo Puff',40)">Buy</button>
    </div>

    <div class="card">
        <img src="images/cutlet.jpg">
        <h3>Veg Cutlet</h3>
        <p>₹ 30</p>
        <button class="btn" onclick="openModal('Veg Cutlet',30)">Buy</button>
    </div>
    <div class="card">
        <img src="images/cheese_roll.jpg">
        <h3>Cheese Roll</h3>
        <p>₹ 50</p>
        <button class="btn" onclick="openModal('Cheese Roll',50)">Buy</button>
    </div>

    <div class="card">
        <img src="images/bread_pakora.jpg">
        <h3>Bread Pakora</h3>
        <p>₹ 35</p>
        <button class="btn" onclick="openModal('Bread Pakora',35)">Buy</button>
    </div>
    
</div>

<!-- Modal same as above -->
<div id="buyModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <h3>Buy Product</h3>
        <form action="buy" method="post">
            <input type="hidden" name="product_name" id="modalProductName">
            <input type="hidden" name="price" id="modalPrice">
            <input type="text" name="customer_name" placeholder="Your Name" required>
            <input type="text" name="address" placeholder="Address" required>
            <select name="payment_type" required>
                <option value="">Select Payment Type</option>
                <option value="Cash">Cash</option>
                <option value="Card">Card</option>
                <option value="UPI">UPI</option>
            </select>
            <button type="submit" class="btn">Confirm Buy</button>
        </form>
    </div>
</div>

<script>
function openModal(name, price){
    document.getElementById('modalProductName').value=name;
    document.getElementById('modalPrice').value=price;
    document.getElementById('buyModal').style.display='block';
}
function closeModal(){ document.getElementById('buyModal').style.display='none'; }
window.onclick=function(e){ if(e.target==document.getElementById('buyModal')) closeModal(); }
</script>

</body>
</html>
