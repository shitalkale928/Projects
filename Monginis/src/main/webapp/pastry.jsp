<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Monginis | Pastries</title>
<style>
body{font-family:Arial;background:#fff5f7;}
.card-container{display:flex;flex-wrap:wrap;gap:20px;justify-content:center;}
.card{background:#fff;width:250px;text-align:center;padding:15px;border-radius:12px; box-shadow:0 4px 15px rgba(0,0,0,0.1);}
.card img{width:100%;height:180px;object-fit:cover;border-radius:10px;}
.btn{background:#ff6f61;color:#fff;padding:10px;border:none;border-radius:6px;cursor:pointer;}
.modal { display:none; position:fixed; z-index:1000; left:0; top:0; width:100%; height:100%; overflow:auto; background-color: rgba(0,0,0,0.5);}
.modal-content { background-color:#fff; margin:10% auto; padding:20px; border-radius:10px; width:400px; }
.close { float:right; font-size:24px; cursor:pointer; }
input, select { width:100%; margin:5px 0 15px 0; padding:8px; }
</style>
</head>
<body>

<h2 style="text-align:center;">Our Pastries</h2>
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
        <img src="images/pastry1.jpg">
        <h3>Chocolate Pastry</h3>
        <p>₹ 90</p>
        <button class="btn" onclick="openModal('Chocolate Pastry',90)">Buy</button>
    </div>
    <div class="card">
        <img src="images/pastry2.jpg">
        <h3>Black Forest Pastry</h3>
        <p>₹ 100</p>
        <button class="btn" onclick="openModal('Black Forest Pastry',100)">Buy</button>
    </div>
    <div class="card">
        <img src="images/pastry3.jpg">
        <h3>Strawberry Pastry</h3>
        <p>₹ 95</p>
        <button class="btn" onclick="openModal('Strawberry Pastry',95)">Buy</button>
    </div>
    <div class="card">
        <img src="images/vanilla_pastry.jpg">
        <h3>Vanilla Pastry</h3>
        <p>₹ 85</p>
        <button class="btn" onclick="openModal('Vanilla Pastry',85)">Buy</button>
    </div>

    <div class="card">
        <img src="images/butterscotch_pastry.jpg">
        <h3>Butterscotch Pastry</h3>
        <p>₹ 95</p>
        <button class="btn" onclick="openModal('Butterscotch Pastry',95)">Buy</button>
    </div>

    <div class="card">
        <img src="images/pineapple_pastry.jpg">
        <h3>Pineapple Pastry</h3>
        <p>₹ 90</p>
        <button class="btn" onclick="openModal('Pineapple Pastry',90)">Buy</button>
    </div>

    <div class="card">
        <img src="images/redvelvet_pastry.jpg">
        <h3>Red Velvet Pastry</h3>
        <p>₹ 120</p>
        <button class="btn" onclick="openModal('Red Velvet Pastry',120)">Buy</button>
    </div>

    <div class="card">
        <img src="images/mango_pastry.jpg">
        <h3>Mango Pastry</h3>
        <p>₹ 100</p>
        <button class="btn" onclick="openModal('Mango Pastry',100)">Buy</button>
    </div>
    
</div>

<!-- Modal -->
<div id="buyModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <h3>Buy Pastry</h3>
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
    document.getElementById('modalProductName').value = name;
    document.getElementById('modalPrice').value = price;
    document.getElementById('buyModal').style.display = 'block';
}
function closeModal(){ document.getElementById('buyModal').style.display = 'none'; }
window.onclick = function(event){ if(event.target == document.getElementById('buyModal')) closeModal(); }
</script>

</body>
</html>
