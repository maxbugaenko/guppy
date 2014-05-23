<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:include href="head.xsl"/>
  <xsl:template match="/">
    <html lang="en">
      <body>
        <xsl:apply-templates match="." mode="head"/>
        <div id="overlay"></div>
        <ul class="menu-sliding upper">
          <li class="big lower tight item-no-hover"><img src="images/grains.svg"/></li>
          <li><i class="fa fa-eur success"></i>controls</li>
          <li><i class="fa fa-jpy warning"></i>readme</li>
          <li><i class="fa fa-rub info"></i>tables</li>
          <li class="small darken-text item-no-hover">
              Usually, colors with the same hue are distinguished
          </li>
          <li class="small darken-text item-no-hover">
            <button class="button button-medium button-default">login</button>
          </li>
        </ul>
        <div class="container vertical-padding lighten-background center mobile-only">
              <span class="upper large code spread">guppy</span>
        </div>
        <div class="container vertical-padding lighten-background center animate-show-slow">
          <ul class="menu darken-text upper animate-slide-children-top-to-bottom">
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
                  <li class="item-header">
                    <a href="">readme</a>
                  </li>
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
              <a id="opens-menu-sliding">tables</a>
            </li>
            <li>
              <button class="button button-medium button-default" id="opens-menu-sliding">login</button>
            </li>
          </ul>
        </div>
        <xsl:apply-templates match="." mode="body"/>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>