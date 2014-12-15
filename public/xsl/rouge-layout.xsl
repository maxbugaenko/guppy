<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:include href="head.xsl"/>
  <xsl:template match="/">
    <html lang="en">
      <body>
        <xsl:apply-templates match="." mode="head"/>
        <div class="container vertical-padding lighten-background center">
          <span class="brand big">
            &lt;reusable&gt;
          </span>
        </div>
        <div class="container vertical-padding lighten-background center">
          <ul class="menu darker">
            <li>
              <a href="">controls</a>
            </li>
            <li>
              <a href="">tabs</a>
            </li>
            <li>
              <a href="">tables</a>
            </li>
            <li>
              <a href="">layouts</a>
            </li>
            <li>
              <a href="">build own</a>
            </li>
          </ul>
        </div>
        <xsl:apply-templates match="." mode="body"/>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>