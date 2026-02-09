<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Happiness Section</title>

<style>
*{
    box-sizing:border-box;
}

body{
    margin:0;
    font-family:'Segoe UI',sans-serif;
    background:#fff;
}

/* SECTION */
.happiness-section{
    text-align:center;
    padding:60px 40px;
}

.happiness-section h1{
    font-size:36px;
    margin-bottom:50px;
}

.happiness-section h1 span{
    color:#ff2f92;
}

/* WRAPPER */
.happiness-cards{
    display:flex;
    justify-content:center;
    gap:50px;
    flex-wrap:wrap;
}

/* CARD + BUTTON GROUP */
.card-wrapper{
    text-align:center;
}

/* CARD */
.card-box{
    width:620px;
    height:500px;
    overflow:hidden;
    box-shadow:0 12px 25px rgba(0,0,0,0.15);
}

/* LEFT / RIGHT */
.left-card{
    background:linear-gradient(135deg,#ead8ff,#f5e9ff);
}

.right-card{
    background:linear-gradient(135deg,#ff5aa5,#ff8fc7);
}

/* IMAGE */
.image-div{
    width:100%;
    height:100%;
}

.image-div img{
    width:100%;
    height:100%;
    object-fit:cover;
    display:block;
    transition:0.4s;
}

/* IMAGE HOVER EFFECT */
.card-box:hover img{
    transform:scale(1.05);
}

/* BUTTON */
.card-wrapper button{
    margin-top:25px;
    padding:14px 34px;
    font-size:16px;
    border:none;
    cursor:pointer;
    font-weight:600;
    letter-spacing:0.5px;
    transition:0.3s;
}

/* LEFT BUTTON */
.left-btn{
    background:#ff2f92;
    color:#fff;
    box-shadow:0 8px 18px rgba(255,47,146,0.4);
}

.left-btn:hover{
    background:#d91c75;
    transform:translateY(-3px);
}

/* RIGHT BUTTON */
.right-btn{
    background:#ff2f92;
    color:#fff;
    box-shadow:0 8px 18px rgba(255,47,146,0.4);
}

.right-btn:hover{
    background:#ffe1ef;
    transform:translateY(-3px);
}
</style>
</head>

<body>

<section class="happiness-section">
    <h1>Bring A Box Of <span>Happiness </span>Today</h1>

    <div class="happiness-cards">

        <!-- LEFT -->
        <div class="card-wrapper">
            <div class="card-box left-card">
                <div class="image-div">
                    <img src="images/promo1.jpg" alt="Order Online">
                </div>
            </div>
            <a href="online_shoping.jsp">
                 <button class="left-btn">Order Online</button>
            </a>
        </div>

        <!-- RIGHT -->
        <div class="card-wrapper">
            <div class="card-box right-card">
                <div class="image-div">
                    <img src="images/promo2.jpg" alt="Visit Store">
                </div>
            </div>
            <a href="near_store.jsp">
                 <button class="left-btn">Visit our near store</button>
            </a>
        </div>

    </div>
</section>

</body>
</html>
