<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Monginis | Chocolates</title>
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

<h2 style="text-align:center;">Our Chocolates</h2>

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
        <img src="images/choco1.jpg" alt="Dairy Milk">
        <h3>Dairy Milk</h3>
        <p>₹ 120</p>
        <button class="btn" onclick="openModal('Dairy Milk',120)">Buy</button>
    </div>
    <div class="card">
        <img src="images/choco2.jpg" alt="Ferrero Rocher">
        <h3>Ferrero Rocher</h3>
        <p>₹ 450</p>
        <button class="btn" onclick="openModal('Ferrero Rocher',450)">Buy</button>
    </div>
    <div class="card">
        <img src="images/choco3.jpg" alt="Dark Chocolate">
        <h3>Dark Chocolate</h3>
        <p>₹ 200</p>
        <button class="btn" onclick="openModal('Dark Chocolate',200)">Buy</button>
    </div>
    <div class="card">
        <img src="images/kitkat.jpg" alt="KitKat">
        <h3>KitKat</h3>
        <p>₹ 80</p>
        <button class="btn" onclick="openModal('KitKat',80)">Buy</button>
    </div>

    <div class="card">
        <img src="images/5star.jpg" alt="5 Star">
        <h3>5 Star</h3>
        <p>₹ 60</p>
        <button class="btn" onclick="openModal('5 Star',60)">Buy</button>
    </div>

    <div class="card">
        <img src="images/munch.jpg" alt="Munch">
        <h3>Munch</h3>
        <p>₹ 70</p>
        <button class="btn" onclick="openModal('Munch',70)">Buy</button>
    </div>

    <div class="card">
        <img src="images/silk.jpg" alt="Dairy Milk Silk">
        <h3>Dairy Milk Silk</h3>
        <p>₹ 160</p>
        <button class="btn" onclick="openModal('Dairy Milk Silk',160)">Buy</button>
    </div>

    <div class="card">
        <img src="images/park.jpg" alt="Perk">
        <h3>Perk</h3>
        <p>₹ 50</p>
        <button class="btn" onclick="openModal('Perk',50)">Buy</button>
    </div>

    <div class="card">
        <img src="images/bournville.jpg" alt="Bournville">
        <h3>Bournville</h3>
        <p>₹ 220</p>
        <button class="btn" onclick="openModal('Bournville',220)">Buy</button>
    </div>

</div>


    
</div>

<!-- Modal -->
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
    document.getElementById('modalProductName').value = name;
    document.getElementById('modalPrice').value = price;
    document.getElementById('buyModal').style.display = 'block';
}
function closeModal(){
    document.getElementById('buyModal').style.display = 'none';
}
window.onclick = function(event){
    if(event.target == document.getElementById('buyModal')){
        closeModal();
    }
}
</script>

</body>
</html>
