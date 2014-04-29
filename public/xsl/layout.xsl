<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html lang="en">
      <head>
        <xsl:apply-templates match="." mode="title"/>
        <meta charset="UTF-8"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="description" content="circles"/>
        <meta name="keywords" content="twitter circles"/>
        <meta name="author" content="curiost.com"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"/>
        <link type="text/css" href="../css/elements.css" rel="stylesheet"/>
        <script src="../js/jquery.js"></script>
        <script src="../js/dropdown.js"></script>
      </head>
      <body>
        <div class="container vertical-padding">
          <span class="span12 center">
            <img src="../images/icecream.svg" width="40px"/>
            <span class="brand big">
              &lt;reusable&gt;
            </span>
          </span>
        </div>
        <xsl:apply-templates match="." mode="body"/>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>