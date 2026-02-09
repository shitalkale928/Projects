<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Our History | Monginis</title>

<style>
body{
    margin:0;
    font-family:'Segoe UI',sans-serif;
    background:#f5f5f5;
}

/* ===== HEADER ===== */
.history-header{
    background:linear-gradient(90deg,#1b0b4f,#2b145f);
    padding:30px 0;
    text-align:center;
}

.history-header h1{
    color:#ff2b8a;
    margin:0;
    font-size:26px;
}

/* ===== TIMELINE WRAPPER ===== */
.timeline{
    position:relative;
    width:1000px;
    margin:70px auto;
}

/* CENTER LINE */
.timeline::before{
    content:'';
    position:absolute;
    left:50%;
    top:0;
    width:2px;
    height:100%;
    background:#ccc;
}

/* ITEM */
.timeline-item{
    position:relative;
    width:50%;
    padding:20px 40px;
    box-sizing:border-box;
}

/* LEFT */
.timeline-item.left{
    left:0;
    text-align:right;
}

/* RIGHT */
.timeline-item.right{
    left:50%;
    text-align:left;
}

/* DOT */
.timeline-item::before{
    content:'';
    position:absolute;
    top:30px;
    width:16px;
    height:16px;
    background:#2b145f;
    border-radius:50%;
    z-index:2;
}

.timeline-item.left::before{
    right:-8px;
}

.timeline-item.right::before{
    left:-8px;
}

/* YEAR */
.year{
    color:#ff2b8a;
    font-weight:700;
    margin-bottom:6px;
}

/* CONTENT CARD */
.content{
    background:#fff;
    padding:20px;
    border-radius:6px;
    box-shadow:0 4px 10px rgba(0,0,0,0.08);
    display:inline-block;
    max-width:420px;
}

.content h3{
    color:#ff2b8a;
    font-size:15px;
    margin-top:0;
}

.content ul{
    padding-left:18px;
    margin:10px 0 0;
}

.content li{
    font-size:13px;
    margin-bottom:6px;
}

/* ===== MOBILE ===== */
@media(max-width:900px){
    .timeline{
        width:100%;
        padding-left:30px;
    }

    .timeline::before{
        left:20px;
    }

    .timeline-item{
        width:100%;
        padding-left:50px;
        padding-right:20px;
        text-align:left;
        left:0;
    }

    .timeline-item::before{
        left:12px;
    }
}
</style>
</head>

<body>
<%@ include file="navbar.jsp" %>
<!-- HEADER -->
<div class="history-header">
    <h1>Our History</h1>
</div>

<!-- TIMELINE -->
<div class="timeline">

    <!-- 2019 -->
    <div class="timeline-item right">
        <div class="year">2019</div>
        <div class="content">
            <h3>Well Known Brand Of India</h3>
            <ul>
                <li>A new Monginis factory at Kolkata was re-launched</li>
                <li>Awarded "Well Known Brand of India" by Government of India</li>
                <li>Ranked among Top 100 Franchise brands</li>
            </ul>
        </div>
    </div>

    <!-- 2018 -->
    <div class="timeline-item left">
        <div class="year">2018</div>
        <div class="content">
            <h3>Awarded Franchisor Of The Year</h3>
            <ul>
                <li>Franchisor of the Year – Bakery Category 2018</li>
                <li>Economic Times – Food & Grocery Brand</li>
            </ul>
        </div>
    </div>

    <!-- 2017 -->
    <div class="timeline-item right">
        <div class="year">2017</div>
        <div class="content">
            <h3>New Monginis Factories Established</h3>
            <ul>
                <li>New Monginis factories at Patna, Delhi, Hyderabad were established</li>
                <li> Awarded Franchisor of the Year - Bakery & Café Category 2017</li>
                 <li>Awarded The Economic Times Iconic Brand of India in Cakes category</li>
                <li>Awarded The Economic Times - India Licensing Award - Licensee of the Year 2017</li>
                 <li>Awarded Times Network - Brand Leadership Award 2017</li>
            </ul>
        </div>
    </div>

  <!-- 2016 -->
  <div class="timeline-item left">
        <div class="year">2016</div>
        <div class="content">
            <h3>Indian Power Brand In Cakes Category</h3>
            <ul>
               <li> Monginis factory at Odisha relaunched and Monginis Raipur Factories was established</li>
               <li>Awarded Indian Power Brand in Cakes Category</li>
               <li>Awarded The Majestic Five Continents Brand for Quality & Excellence in Germany</li>
               <li>Awarded Food & Grocery Brand of India in Bakery category Year 2016</li>
            </ul>
        </div>
    </div>
    <div class="timeline-item right">
        <div class="year">2015</div>
        <div class="content">
            <h3>Indian Power Brand In Cakes Category</h3>
            <ul>
                <li>Monginis factory at Odisha relaunched</li>
                <li>Monginis Raipur Factory established</li>
                <li>Awarded Indian Power Brand in Cakes Category</li>
                <li>Awarded Food & Grocery Brand of India – 2016</li>
            </ul>
        </div>
        
    </div>

    <!-- 2015 RIGHT -->
    <div class="timeline-item left">
        <div class="year">2014</div>
        <div class="content">
            <h3>A New Monginis Factory At Kolhapur</h3>
            <ul>
                <li>New factory established at Kolhapur</li>
                <li>Awarded India’s Most Trusted Bakery Brand</li>
            </ul>
        </div> 
    </div>

    <!-- 2014 LEFT -->
    <div class="timeline-item right">
        <div class="year">2013</div>
        <div class="content">
            <h3>Launched An Exclusive E-motion Cake</h3>
            <ul>
                <li>First brand to launch E-motion cake</li>
                <li>Cake with lights, movement & sounds</li>
                <li>Awarded India’s No.1 Cake Brand</li>
            </ul>
        </div>
    </div>
    
    <div class="timeline-item left">
    <div class="year">2012</div>
    <div class="content">
        <h3>Launched E-commerce Website</h3>
        <ul>
            <li>Monginis launched an E-commerce website for online delivery across PAN India.</li>
            <li>Introduced exclusive Photo Cake with edible ink.</li>
        </ul>
    </div>
</div>
    
    
    <div class="timeline-item right">
    <div class="year">2011</div>
    <div class="content">
        <h3>New Factory Launched</h3>
        <ul>
            <li>A new Monginis factory at Aurangabad was established.</li>
        </ul>
    </div>
</div>
    
    <div class="timeline-item left">
    <div class="year">2010</div>
    <div class="content">
        <h3>New Factory At Palanpur</h3>
        <ul>
            <li>A new Monginis Factory at Palanpur (Tamal Bakers) was established.</li>
        </ul>
    </div>
</div>
    
    <div class="timeline-item right">
    <div class="year">2008</div>
    <div class="content">
        <h3>New Monginis Factory At Bhiwandi</h3>
        <ul>
            <li>A new Monginis Factory at Bhiwandi was established.</li>
        </ul>
    </div>
</div>
    
    <div class="timeline-item left">
    <div class="year">2004</div>
    <div class="content">
        <h3>New Monginis Factory At Surat</h3>
        <ul>
            <li>A new Monginis Factory at Surat was established.</li>
        </ul>
    </div>
</div>
    

</div>

    
</div>

</body>
</html>
