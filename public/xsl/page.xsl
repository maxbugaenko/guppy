<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:include href="head.xsl"/>
  <xsl:template match="/">
    <html lang="en">
      <body>
        <xsl:apply-templates match="." mode="head"/>
        <div id="overlay"></div>
        <div class="modal-window lighten-background" id="modal-tables">
          <div class="container padding-medium">
            <h1 class="code">modal dialog</h1>
            <p>
              Usually, colors with the same hue are distinguished. With the same hue are distinguished.
              Are distinguished with the same
            </p>
            <button class="button-success f-span6">subscribe</button>
            <button class="button-default f-span3 close-button">cancel</button>
          </div>
        </div>
        <div class="modal-window lighten-background" id="modal-docs">
          <div class="container padding-medium">
            <h1 class="code">guppy documentation</h1>
            <p>
              Usually, colors with the same hue are distinguished. With the same hue are distinguished.
              Are distinguished with the same
            </p>
            <button class="button-success f-span7">unsubscribe</button>
            <button class="button-default f-span3 close-button">cancel</button>
          </div>
        </div>
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
                <a class="tooltip-default tooltip-bottom" title="get started with guppy">readme</a>
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
              <a class="opens-modal" modal="modal-tables">tables</a>
            </li>
            <li>
              <a class="opens-modal" modal="modal-docs">docs</a>
            </li>
            <li>
              <button class="button button-medium button-default opens-menu-sliding">login</button>
            </li>
          </ul>
        </div>
        <xsl:apply-templates match="." mode="body"/>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>