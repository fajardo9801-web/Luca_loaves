<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Luca's Loaves</title>

             
                <link href="https://fonts.googleapis.com/css2?family=Momo+Trust+Display:wght@400;700display=swap" rel="stylesheet"/>

                <style>
                    body {
                        background-image: url('Media/Bread.gif');
                        background-size: cover;
                        background-repeat: no-repeat;
                        text-align: center;
                        font-family: "Momo Trust Display", cursive;
                        color: #3a2c2c;
                    }

                    h1 {
                        font-size: 48px;
                        margin-top: 20px;
                        font-family: "Momo Trust Display", cursive;
                        letter-spacing: 2px;
                        color: #5c4033;
                    }

                    h2 {
                        font-size: 32px;
                        margin: 10px 0;
                        font-family: "Momo Trust Display", cursive;
                    }

                    p {
                        font-size: 20px;
                        font-family: "Momo Trust Display", cursive;
                    }

                    .bread-container {
                        background-color: rgba(255, 255, 255, 0.88);
                        margin: 20px 20%;
                        padding: 20px;
                        border-radius: 25px;
                        box-shadow: 0 0 15px rgba(0,0,0,0.2);
                    }

                    .price {
                        background-color: #8B4513;
                        color: white;
                        padding: 8px 16px;
                        border-radius: 12px;
                        font-size: 22px;
                        display: inline-block;
                        margin-bottom: 12px;
                        font-family: "Momo Trust Display", cursive;
                    }

                    .audio-controls {
                        margin: 20px auto;
                    }
                </style>
            </head>

            <body>
                <h1>Luca's Loaves</h1>

              
                <div class="audio-controls">
    <audio controls="controls" autoplay="autoplay">
        <source src="{luca_loaves/audio}" type="audio/mpeg"/>
            </audio>
                </div>
                <xsl:for-each select="luca_loaves/bread">
                    <div class="bread-container">
                        <h2><xsl:value-of select="name"/></h2>
                        <div class="price"><xsl:value-of select="price"/></div>
                        <p><xsl:value-of select="description"/></p>
                    </div>
                </xsl:for-each>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>