<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Our Speciality</title>

<style>
body{
    margin:0;
    font-family:'Segoe UI', sans-serif;
}

/* SECTION */
.speciality-section{
    padding:70px 40px;
    background:#fff;
}

.speciality-section h2{
    text-align:center;
    font-size:32px;
    margin-bottom:60px;
}

.speciality-section h2 span{
    color:#ff2f92;
}

/* ROW */
.speciality-row{
    display:flex;
    justify-content:center;
    gap:80px;
    flex-wrap:wrap;
}

/* ITEM */
.speciality-item{
    display:flex;
    align-items:center;
    gap:15px;
    min-width:220px;
}

/* ICON */
.speciality-item img{
    width:100px;
    height:100px;
}

/* TEXT */
.speciality-item p{
    margin:0;
    font-size:20px;
    line-height:1.5;
}
</style>
</head>

<body>

<section class="speciality-section">
    <h2>Our <span>Speciality</span></h2>

    <div class="speciality-row">

        <div class="speciality-item">
            <img src="images/speciality1.jpg" alt="Hygienic">
            <p>Safe & Hygienic<br>Bakery</p>
        </div>

        <div class="speciality-item">
            <img src="images/speciality2.jpg" alt="Delivery">
            <p>Delivery in 700+<br>Cities</p>
        </div>

        <div class="speciality-item">
            <img src="images/speciality3.jpg" alt="Trusted">
            <p>Trusted By 20<br>Million</p>
        </div>

        <div class="speciality-item">
            <img src="images/speciality4.jpg" alt="Service">
            <p>Services in 18000+<br>Pincodes</p>
        </div>

    </div>
</section>

</body>
</html>
