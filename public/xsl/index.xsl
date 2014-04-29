<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:include href="layout.xsl"/>
  <xsl:template match="page" mode="title">
    <title><xsl:value-of select="title"/></title>
  </xsl:template>
  <xsl:template match="page" mode="body">
    <div class="container">
      <div class="span12 center">
        <div class="big tight">
          Reusable CSS elements
        </div>
        <div class="medium tight upper lighter bolder">
          Just import stylesheet
        </div>
      </div>
    </div>

    <div class="container">
      <span class="span6">
        <div class="container">
          <span class="span8 right">
            <h2>Usually colors</h2>
            <p>
              Usually, colors with the same hue are
              distinguished with adjectives referring to
            </p>
            <div class="dropdown default">
              <div>Default</div>
              <ul>
                <li>
                  <a href="#">
                    <i class="fa fa-eur"></i> Settings
                  </a>
                </li>
              </ul>
            </div>
            <p>
              Usually, colors with the same hue are
              distinguished with adjectives referring to
              Usually, colors with the same hue are
              distinguished with adjectives referring to
            </p>
          </span>
          <span class="span4">
            <h2>Usually colors</h2>
            <p>
              Usually, colors with the same hue are
              distinguished with adjectives referring to
            </p>
            <div class="dropdown success">
              <div>Success</div>
              <ul>
                <li>
                  <a href="#">
                    <i class="fa fa-eur"></i> Settings
                  </a>
                </li>
              </ul>
            </div>
            <p>
              Usually, colors with the same hue are
              distinguished with adjectives referring to
            </p>
          </span>
        </div>
      </span>
      <span class="span3">
        <h2>Usually colors</h2>
        <p>
          Usually, colors with the same hue are
          distinguished with adjectives referring to
        </p>
        <div class="dropdown warning">
          <div>Warning</div>
          <ul>
            <li>
              <a href="#">
                <i class="fa fa-eur"></i> Settings
              </a>
            </li>
          </ul>
        </div>
      </span>
      <span class="span3">
        <h2>Usually colors</h2>
        <p>
          Usually, colors with the same hue are
          distinguished with adjectives referring to
          Usually, colors with the same hue are
          distinguished with adjectives referring to
        </p>
        <div class="dropdown info">
          <div>Information</div>
          <ul>
            <li>
              <a href="#">
                <i class="fa fa-eur"></i> Settings
              </a>
            </li>
          </ul>
        </div>
      </span>
    </div>
  </xsl:template>
</xsl:stylesheet>