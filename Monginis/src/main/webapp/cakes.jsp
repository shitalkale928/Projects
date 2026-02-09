<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Monginis | Products</title>
    <link rel="stylesheet" href="CSS/style.css">
    <style>
        /* Modal styling */
        .modal { display:none; position:fixed; z-index:1000; left:0; top:0; width:100%; height:100%; overflow:auto; background-color: rgba(0,0,0,0.5);}
        .modal-content { background-color:#fff; margin:10% auto; padding:20px; border-radius:10px; width:400px; }
        .close { float:right; font-size:24px; cursor:pointer; }
        input, select { width:100%; margin:5px 0 15px 0; padding:8px; }
        .btn { background-color:#ff6f61; color:white; padding:10px; border:none; border-radius:6px; cursor:pointer; }
        .card-container { display:flex; flex-wrap:wrap; gap:20px; justify-content:center; }
        .card { background:#fff; width:250px; text-align:center; padding:15px; border-radius:12px; box-shadow:0 4px 15px rgba(0,0,0,0.1); }
        .card img { width:100%; height:180px; object-fit:cover; border-radius:10px; }
    </style>
</head>
<body>
  
<h2 style="text-align:center;">Our Cakes</h2>

<!-- Success/Error Messages -->
<%
    String msg = request.getParameter("msg");
    if("success".equals(msg)){
%>
<p style="color:green; text-align:center; font-weight:bold;">Order placed successfully!</p>
<%
    } else if("error".equals(msg)){
%>
<p style="color:red; text-align:center; font-weight:bold;">Error! Try again.</p>
<%
    }
%>

<div class="card-container">

    <!-- 10 Cake Cards -->
    <div class="card">
        <img src="images/choclate.jpg" alt="Chocolate Cake">
        <h3>Chocolate Cake</h3>
        <p>₹ 500</p>
        <button class="btn" onclick="openModal('Chocolate Cake',500)">Buy</button>
    </div>

    <div class="card">
        <img src="images/blackforest.jpg" alt="Black Forest Cake">
        <h3>Black Forest</h3>
        <p>₹ 600</p>
        <button class="btn" onclick="openModal('Black Forest',600)">Buy</button>
    </div>

    <div class="card">
        <img src="images/stawberry.jpg" alt="Strawberry Cake">
        <h3>Strawberry Cake</h3>
        <p>₹ 550</p>
        <button class="btn" onclick="openModal('Strawberry Cake',550)">Buy</button>
    </div>

    <div class="card">
        <img src="images/butterscotch.jpg" alt="Butterscotch Cake">
        <h3>Butterscotch</h3>
        <p>₹ 580</p>
        <button class="btn" onclick="openModal('Butterscotch',580)">Buy</button>
    </div>

    <div class="card">
        <img src="images/vanilla.jpg" alt="Vanilla Cake">
        <h3>Vanilla Cake</h3>
        <p>₹ 520</p>
        <button class="btn" onclick="openModal('Vanilla',520)">Buy</button>
    </div>

    <div class="card">
        <img src="images/fruitcake.jpg" alt="Fruit Cake">
        <h3>Fruit Cake</h3>
        <p>₹ 650</p>
        <button class="btn" onclick="openModal('Fruit Cake',650)">Buy</button>
    </div>

    <div class="card">
        <img src="images/redvelvet.jpg" alt="Red Velvet Cake">
        <h3>Red Velvet Cake</h3>
        <p>₹ 700</p>
        <button class="btn" onclick="openModal('Red Velvet',700)">Buy</button>
    </div>

    <div class="card">
        <img src="images/mango.jpg" alt="Mango Cake">
        <h3>Mango Cake</h3>
        <p>₹ 600</p>
        <button class="btn" onclick="openModal('Mango',600)">Buy</button>
    </div>

    <div class="card">
        <img src="images/oreo.jpg" alt="Oreo Cake">
        <h3>Oreo Cake</h3>
        <p>₹ 680</p>
        <button class="btn" onclick="openModal('Oreo',680)">Buy</button>
    </div>

    <div class="card">
        <img src="images/coffee.jpg" alt="Coffee Cake">
        <h3>Coffee Cake</h3>
        <p>₹ 620</p>
        <button class="btn" onclick="openModal('Coffee',620)">Buy</button>
    </div>

</div>

<!-- Modal -->
<div id="buyModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <h3>Buy Cake</h3>
        <form action="buy" method="post">
            <input type="hidden" name="product_name" id="modalCakeName">
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
        document.getElementById('modalCakeName').value = name;
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
