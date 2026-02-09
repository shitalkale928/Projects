<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>About Us | Monginis</title>

    <style>
        body{
            margin:0;
            font-family:'Segoe UI', sans-serif;
            background:#fff;
            color:#333;
        }

        /* ===== TOP BANNER ===== */
        .about-banner{
            background:#1f134f;
            padding:40px 0;
            text-align:center;
        }

        .about-banner h1{
            color:#ff2b8a;
            font-size:32px;
            margin:0;
        }

        /* ===== STORY SECTION ===== */
        .story-section{
            display:flex;
            align-items:center;
            justify-content:center;
            padding:70px 120px;
            gap:80px;
        }

        .story-img img{
            width:320px;
        }

        .story-content{
            max-width:500px;
        }

        .story-content h2{
            color:#ff2b8a;
            font-size:22px;
            margin-bottom:15px;
        }

        .story-content p{
            font-size:14px;
            line-height:1.8;
            margin-bottom:15px;
        }
        
        /* ===== MISSION VALUES ===== */
.mv-section{
    text-align:center;
    padding:70px 150px;
}

.mv-title{
    color:#ff2b8a;
    font-size:24px;
    margin-bottom:20px;
}

.mv-desc{
    font-size:14px;
    line-height:1.8;
    max-width:900px;
    margin:0 auto 30px;
}

.mv-subtitle{
    color:#ff2b8a;
    font-size:18px;
    margin-bottom:15px;
}

.mv-list{
    max-width:900px;
    margin:0 auto 50px;
    font-size:14px;
    text-align:left;
    line-height:1.8;
}

.mv-icons{
    display:flex;
    flex-direction:column;
    gap:40px;
    max-width:900px;
    margin:auto;
}

.mv-item{
    display:flex;
    align-items:flex-start;
    gap:25px;
    text-align:left;
}

.mv-item img{
    width:60px;
}

.mv-item p{
    font-size:14px;
    line-height:1.8;
}

/* Responsive */
@media(max-width:768px){
    .mv-section{
        padding:40px 20px;
    }
    .mv-item{
        flex-direction:column;
        text-align:center;
        align-items:center;
    }
}
        

        /* ===== MISSION SECTION ===== */
        .mission-section{
            text-align:center;
            padding:70px 120px;
        }

        .mission-section h2{
            color:#ff2b8a;
            font-size:22px;
            margin-bottom:20px;
        }

        .mission-section p{
            font-size:14px;
            line-height:1.8;
            max-width:900px;
            margin:auto;
        }
       
       /* ===== OUR SECRET & STORES ===== */
      /* ===== OUR SECRET & OUR STORES FIXED ===== */
.secret-section,
.stores-section{
    display:flex;
    align-items:center;
    justify-content:center;
    gap:80px;
    padding:80px 140px;
}

/* Secret image */
.secret-img img{
    width:260px;
}

/* Common content box */
.secret-content,
.stores-content{
    max-width:520px;
}

/* Headings */
.secret-content h2,
.stores-content h2{
    color:#ff2b8a;
    font-size:22px;
    margin-bottom:15px;
}

/* Paragraphs */
.secret-content p,
.stores-content p{
    font-size:14px;
    line-height:1.8;
    margin-bottom:12px;
}

/* Our Stores — CENTERED TEXT ONLY */
.stores-section{
    flex-direction:column;   /* 🔥 main fix */
    text-align:center;
}

.stores-content{
    max-width:900px;
}

/* Responsive */
@media(max-width:768px){
    .secret-section,
    .stores-section{
        padding:40px 20px;
        flex-direction:column;
        text-align:center;
    }
}
      
         /* ===== OUR MORAL RESPONSIBILITY ===== */
.moral-section{
    padding:90px 160px;
    background:#fff;
}

.moral-title{
    text-align:center;
    margin-bottom:50px;
}

.moral-title h2{
    color:#ff2b8a;
    font-size:24px;
    margin-bottom:8px;
}

.moral-title span{
    font-size:13px;
    color:#333;
    font-weight:600;
}

.moral-content{
    max-width:900px;
    margin:0 auto;
}

.moral-block{
    margin-bottom:35px;
}

.moral-block h3{
    color:#ff2b8a;
    font-size:15px;
    margin-bottom:8px;
}

.moral-block p{
    font-size:14px;
    line-height:1.9;
    color:#222;
    margin-bottom:10px;
}

/* Responsive */
@media(max-width:768px){
    .moral-section{
        padding:50px 20px;
    }
}
          
       
       
    </style>
</head>

<body>
<%@ include file="navbar.jsp" %>
<!-- ===== ABOUT BANNER ===== -->
<div class="about-banner">
    <h1>About Us</h1>
</div>

<!-- ===== OUR STORY ===== -->
<div class="story-section">

    <div class="story-img">
        <!-- IMAGE -->
        <img src="images/about1.jpg" alt="Cake Image">
    </div>

    <div class="story-content">
        <h2>Our Story</h2>
        <p>
            Our journey began with one humble shop in Fort, Mumbai and grew to over
            one thousand locations throughout India under the inspiring vision of our
            founder, Hussain Khorakiwala in the early 1950s.
        </p>
        <p>
            Since then, our family has combined their years of experience with the vision
            of a community of collaborative shop owners, suppliers and other partners
            working together to create a brand name in the market to grow their business
            to what it is today.
        </p>
        <p>
            In order to achieve this, the family offers franchises to budding
            entrepreneurs & distributors partnering with them to ensure success
            and excellence.
        </p>
    </div>

</div>

<!-- ===== MISSION VALUES SECTION ===== -->
<div class="mv-section">

    <h2 class="mv-title">Our Mission, Values, and Vision</h2>

    <p class="mv-desc">
        Creating exceptional cakes is our way of life, and our customers and partners are the focus
        of everything that we do. Our unwavering commitment to both our customers, franchise partners
        & distributors is the key to our success in the future.
    </p>

    <h3 class="mv-subtitle">Our Core values are</h3>

    <ol class="mv-list">
        <li>
            All our products and services shall be offered with the same love, care, and affection
            as if they were meant for the most beloved person.
        </li>
        <li>
            Being fair to all our customers, stakeholders and business partners, suppliers and employees.
            For we believe good intentions yield good products & services is to make Monginis living proof
            that hard-work, integrity, innovation, and continued support can lead to all levels of success.
        </li>
    </ol>

    <!-- ICON ROWS -->
    <div class="mv-icons">

        <div class="mv-item">
            <img src="images/about2.jpg">
            <p>
                <strong>Our mission</strong> is to offer gourmet cakes, pastries, cupcakes, cookies, and more
                that are universally enjoyed by family and friends and make Monginis a part of all life's
                celebrations and memories.
            </p>
        </div>

        <div class="mv-item">
            <img src="images/about3.jpg">
            <p>
                <strong>Our Core purpose</strong> is to help people express their happiness in a memorable way.
            </p>
        </div>

        <div class="mv-item">
            <img src="images/about4.jpg">
            <p>
                <strong>Our Passion Cakes</strong> are not just our business, they are our passion. Our Gateaux,
                Pastries, cupcakes, swiss rolls, and savories are all baked and prepared with the same love,
                care, and affection that would go into preparing for our own friends and family.
            </p>
        </div>

    </div>

</div>

  <!-- ===== OUR SECRET ===== -->
<div class="secret-section">

    <div class="secret-img">
        <img src="images/about5.jpg" alt="Our Secret">
    </div>

    <div class="secret-content">
        <h2>Our Secret</h2>
        <p>
            Monginis only uses the finest ingredients in its products, ensuring the goods
            that we send out into the market are of the utmost quality. Monginis believes
            in order to give the real taste of any product, real ingredients should be
            used & not cheaper substitutes.
        </p>
        <p>
            Our production includes a highly customized, automated system but does not
            forgo the importance of the human touch, while still adhering to strict quality
            control measures at every stage of production, packaging, and delivery.
        </p>
        <p>
            Combining technology and people is what ensures that our products are the best.
            Without our dedicated, skilled, and loyal team members, Monginis would not be
            where it is today.
        </p>
    </div>

</div>

<!-- ===== OUR STORES ===== -->
<!-- ===== OUR STORES ===== -->
<div class="stores-section">

    <div class="stores-content">
        <h2>Our Stores</h2>

        <p>
            Our Cake Shops are conveniently located in local markets and communities to
            ensure the easy availability of your favorite Monginis cakes, cupcakes, and more.
        </p>

        <p>
            Whether it is for a birthday, anniversary, wedding, or just an evening at home,
            Monginis has the perfect custom-made, personalized cake for you or your choice
            from our off-the-shelf customer favorites!
        </p>

        <p>
            Great quality, service, and ethics has developed Monginis into a household name
            with over 700+ outlets. On an average, 14,000 customers visit our cake shop daily
            across the country.
        </p>

        <p>
            Additionally, our long shelf life packaged cakes products are available across
            10,00,000 outlets nationally with a sizable presence in Malls, Super markets and
            Railway stations.
        </p>
    </div>

</div>
   <!-- ===== OUR MORAL RESPONSIBILITY ===== -->
<div class="moral-section">

    <div class="moral-title">
        <h2>Our Moral Responsibility</h2>
        <span>Food Safety ISO 2020</span>
    </div>

    <div class="moral-content">

        <div class="moral-block">
            <h3>Food Processing Sanitation/Hygiene</h3>
            <p>
                The philosophical viewpoint of the Food and Drug Administration is that they
                would prefer to see industries bring their plants into compliance voluntarily
                rather than to force compliance through FDA action.
            </p>
            <p>
                The government rarely takes legal action against a processor without first making
                an inspection. The simplest examples are the finding of food products containing
                whole insects, very large fragments, whole rodent pellets or hairs, or in general,
                extraneous matter characterized by large size, indicating that the filth did not
                come from the raw ingredients.
            </p>
        </div>

        <div class="moral-block">
            <h3>Our standards</h3>
            <p>
                We are a HACCP & ISO : 22000 certified company. We believe in ensuring the highest
                degree of sanitation and hygiene. We also follow Good Manufacturing practices
                levied by the AIB (The American Institute of Baking).
            </p>
        </div>

        <div class="moral-block">
            <h3>Our values</h3>
            <p>
                We at Monginis take a moral responsibility of upholding all the laws levied by
                the FDA. We believe in using the highest quality of raw materials and ingredients
                in our manufactured goods.
            </p>
            <p>
                We believe in being honest and fair to all our stake holders. We strictly do not
                give credit nor encourage the idea of credit related transactions. Our company
                is a 100% interest free company.
            </p>
        </div>

        <div class="moral-block">
            <h3>Our Belief</h3>
            <p>
                We believe in good intentions in all our practices. For we believe that good
                intentions will always yield good products and services. If the intent is
                unworthy there is an inherent flaw from the start.
            </p>
        </div>

        <div class="moral-block">
            <h3>Good Manufacturing Practices</h3>
            <p>
                Federal guidelines under the Good Manufacturing Practices (GMPs) (CFR Title 21,
                Parts 100-199, Sub Part 110) add a further refinement to the FD&C Act.
            </p>
            <p>
                These federal guidelines state legal criteria under which food can be processed
                and are enforced as law. The “Good Manufacturing Practices” implement the
                Congressional Statute.
            </p>
            
        </div>

    </div>

</div>
   

<%@ include file="footer.jsp" %>



</body>
</html>
    