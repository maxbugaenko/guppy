<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:include href="layout.xsl"/>
  <xsl:template match="page" mode="title">
    <title><xsl:value-of select="title"/></title>
  </xsl:template>
  <xsl:template match="page" mode="body">
    <div class="two-column vertical-padding">
      <div class="right">
        <img src="../images/cog.svg"/>
        <h1 class="tight">dropdowns</h1>
        <p class="darker">
          Usually, colors with the same hue are
          distinguished with adjectives referring to
        </p>
      </div>
      <div class="v-middle">
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
        <div class="dropdown success">
          <div>Succesful life</div>
          <ul>
            <li>
              <a href="#">
                <i class="fa fa-eur"></i> Settings
              </a>
            </li>
          </ul>
        </div>
        <div class="dropdown warning">
          <div>Nuclear warning</div>
          <ul>
            <li>
              <a href="#">
                <i class="fa fa-eur"></i> Settings
              </a>
            </li>
          </ul>
        </div>
        <div class="dropdown info">
          <div>Importnat information</div>
          <ul>
            <li>
              <a href="#">
                <i class="fa fa-eur"></i> Settings
              </a>
            </li>
          </ul>
        </div>
        <pre class="highlight vertical-padding">
&lt;div <span class="nv">class</span><span class="o">=</span><span class="s2">"dropdown info"</span>&gt;
  &lt;div&gt;Importnat information&lt;/div&gt;
   &lt;ul&gt;
     &lt;li&gt;
       &lt;a <span class="nv">href</span><span class="o">=</span><span class="s2">"#"</span>&gt;
         &lt;i <span class="nv">class</span><span class="o">=</span><span class="s2">"fa fa-eur"</span>&gt;&lt;/i&gt; Settings
       &lt;/a&gt;
     &lt;/li&gt;
   &lt;/ul&gt;
&lt;/div&gt;
        </pre>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>