<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:include href="head.xsl"/>
  <xsl:template match="/">
    <html lang="en">
      <body>
        <xsl:apply-templates match="." mode="head"/>
        <div class="container vertical-padding lighten-background center mobile-only">
            <span class="spread big code">
              grains
            </span>
        </div>
        <div class="container vertical-padding lighten-background center animate-show-slow">
          <ul class="menu darker upper">
            <li>
              <div class="dropdown-menu dropdown-menu-warning left">
                <a>controls</a>
                <ul>
                  <li>
                    <i class="fa fa-eur"></i><a href="">buttons</a>
                  </li>
                  <li>
                    <i class="fa fa-rub"></i><a href="">button groups</a>
                  </li>
                  <li>
                    <i class="fa fa-jpy"></i><a href="">web forms</a>
                  </li>
                  <li>
                    <i class="fa fa-usd"></i><a href="">tabs</a>
                  </li>
                </ul>
              </div>
            </li>
            <li>
              <div class="dropdown-menu dropdown-menu-success left">
                <a>readme</a>
                <ul class="small">
                  <li>
                    <a href="">get started</a>
                  </li>
                  <li>
                    <a href="">html</a>
                  </li>
                  <li>
                    <a href="">sass</a>
                  </li>
                </ul>
              </div>
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