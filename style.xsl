<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
<style>  
h1 {
  text-align: center;
   background-color: #e6f2ff;
  font-weight: bold;
} 
h2{
background-color:aliceblue;
font-weight: bold;
}

th, td {
  text-align: left;
  padding: 8px;
  font-weight: bold;
}
table {
  
  width: 63%;
}
tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #00cc99;
  color: white;
   height: 45px;
   font-weight: bold;
   font-size :16px;
} 
td{
text-align: left;
font-weight: bold;
}
body {
   background-image: url("https://cdn.wallpapersafari.com/79/82/Uth7MZ.jpg");
}
.btn {
  background-color: aliceblue;
  border: none;
  color:  black;
  padding: 12px 16px;
  font-size: 18px;
  font-weight:bold:
  cursor: pointer;
}

.btn:hover {
  background-color: aliceblue;
}
.button {
  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

</style>


<body>
  <h1 style="color:#0099cc;">MEET MY TUTOR</h1>
  
<button class="btn"><i class="fa fa-home"></i> Home</button>
<button class="btn"><i class="fa fa-bars"></i> About Course and Mentor</button>
<button class="btn"><i class="fa fa-trash"></i> Course -Learn English</button>
<button class="btn"><i class="fa fa-close"></i> Grade</button>
<button class="btn"><i class="fa fa-folder"></i> Contact</button>
    <h2 style="color:#0099cc;">My English Dictionary</h2>

    <table border="1">
      <tr bgcolor="#00cc99">
        <th>Word</th>
        <th>Meaning</th>
      </tr>
      <xsl:for-each select="catalog/cd">
      <xsl:sort select="word"/>
      <tr>
        <td><xsl:value-of select="word"/></td>
        <td><xsl:value-of select="meaning"/></td>
      </tr>
      </xsl:for-each>
    </table>
	<p>
	<button class="btn" style="width:100%"><i class="fa fa-download"></i> Download the Dictionary</button></p>
	<p><button class="button">HOME</button></p>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>

