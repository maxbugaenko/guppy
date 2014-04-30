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
      <div>
        <div class="dropdown dropdown-default">
          <div>Default</div>
          <ul>
            <li>
              <a href="#">
                <i class="fa fa-eur"></i> Settings
              </a>
            </li>
          </ul>
        </div>
        <div class="dropdown dropdown-success">
          <div>Succesful life</div>
          <ul>
            <li>
              <a href="#">
                <i class="fa fa-eur"></i> Helicopter
              </a>
            </li>
            <li>
              <a href="#">
                <i class="fa fa-gbp"></i> Airplane
              </a>
            </li>
          </ul>
        </div>
        <div class="dropdown dropdown-info">
          <div>Important information</div>
          <ul>
            <li>
              <a href="#">
                <i class="fa fa-eur"></i> Settings
              </a>
            </li>
          </ul>
        </div>
        <div class="dropdown dropdown-warning">
          <div>Nuclear warning</div>
          <ul>
            <li>
              <a href="#">
                <i class="fa fa-eur"></i> Vladimir Putin
              </a>
            </li>
            <li>
              <a href="#">
                <i class="fa fa-gbp"></i> Kim Jean-Un
              </a>
            </li>
          </ul>
        </div>
        <pre class="highlight vertical-padding">
&lt;div <span class="nv">class</span><span class="o">=</span><span class="s2">"dropdown dropdown-info"</span>&gt;
  &lt;div&gt;Important information&lt;/div&gt;
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
    <div class="separator-squares"></div>
    <div class="two-column vertical-padding">
      <div class="right">
        <img src="../images/bike.svg"/>
        <h1 class="tight">buttons</h1>
        <p class="darker">
          Usually, colors with the same hue are
          distinguished with adjectives referring to
        </p>
      </div>
      <div>
        <div class="container">
          <span class="span6">
            <button class="button-success right">pound<i class="fa fa-gbp"></i></button>
          </span>
          <span class="span6">
            <button class="button-default">euro<i class="fa fa-eur"></i></button>
          </span>
        </div>
        <div class="container">
          <span class="span4">
            <button class="button-warning">dollar</button>
          </span>
          <span class="span4">
            <button class="button-info">euro</button>
          </span>
          <span class="span4">
            <button class="button-success">pound</button>
          </span>
        </div>
        <div class="container">
          <span class="span8">
            <button class="button-warning control-medium">dollar</button>
          </span>
          <span class="span4">
            <button class="button-success control-medium">pound</button>
          </span>
        </div>
        <div class="container">
          <span class="span2">
            <button class="button-warning control-small"><i class="fa fa-btc"></i></button>
          </span>
          <span class="span2">
            <button class="button-info control-small"><i class="fa fa-dollar"></i></button>
          </span>
          <span class="span2">
            <button class="button-success control-small"><i class="fa fa-eur"></i></button>
          </span>
          <span class="span2">
            <button class="button-info control-small"><i class="fa fa-gbp"></i></button>
          </span>
          <span class="span2">
            <button class="button-warning control-small"><i class="fa fa-jpy"></i></button>
          </span>
          <span class="span2">
            <button class="button-success control-small"><i class="fa fa-try"></i></button>
          </span>
        </div>
        <pre class="highlight vertical-padding left">
&lt;button <span class="nv">class</span><span class="o">=</span><span class="s2">"button button-default control-medium"</span>&gt;
  default&lt;i <span class="nv">class</span><span class="o">=</span><span class="s2">"fa fa-eur"</span>&gt;&lt;/i&gt;
&lt;/button&gt;
        </pre>
      </div>
    </div>
    <div class="separator-squares"></div>
    <div class="two-column vertical-padding">
      <div class="right">
        <img src="../images/car.svg"/>
        <h1 class="tight">button groups</h1>
        <p class="darker">
          Usually, colors with the same hue are
          distinguished with adjectives referring to
        </p>
      </div>
      <div>
        <div class="button-group padding-bottom">
          <button class="button button-info">
            <i class="fa fa-eur"></i>
          </button>
          <button class="button button-info">
            <i class="fa fa-rub"></i>
          </button>
          <button class="button button-info">
            <i class="fa fa-usd"></i>
          </button>
          <button class="button button-info">
            <i class="fa fa-gbp"></i>
          </button>
        </div>
        <div class="button-group padding-bottom">
          <button class="button button-warning control-medium">
            <i class="fa fa-eur"></i>
          </button>
          <button class="button button-warning control-medium">
            <i class="fa fa-rub"></i>
          </button>
          <button class="button button-warning control-medium">
            <i class="fa fa-usd"></i>
          </button>
          <button class="button button-warning control-medium">
            <i class="fa fa-gbp"></i>
          </button>
        </div>
        <div class="button-group padding-bottom">
          <button class="button button-success control-small">
            <i class="fa fa-eur"></i>
          </button>
          <button class="button button-success control-small">
            <i class="fa fa-rub"></i>
          </button>
          <button class="button button-success control-small">
            <i class="fa fa-usd"></i>
          </button>
          <button class="button button-success control-small">
            <i class="fa fa-gbp"></i>
          </button>
        </div>
        <pre class="highlight vertical-padding">
&lt;div <span class="nv">class</span><span class="o">=</span><span class="s2">"button-group"</span>&gt;
  &lt;button <span class="nv">class</span><span class="o">=</span><span class="s2">"button button-default"</span>&gt;
    &lt;i <span class="nv">class</span><span class="o">=</span><span class="s2">"fa fa-eur"</span>&gt;&lt;/i&gt;
  &lt;/button&gt;
  &lt;button <span class="nv">class</span><span class="o">=</span><span class="s2">"button button-success"</span>&gt;
    &lt;i <span class="nv">class</span><span class="o">=</span><span class="s2">"fa fa-rub"</span>&gt;&lt;/i&gt;
  &lt;/button&gt;
  &lt;button <span class="nv">class</span><span class="o">=</span><span class="s2">"button button-warning"</span>&gt;
    &lt;i <span class="nv">class</span><span class="o">=</span><span class="s2">"fa fa-usd"</span>&gt;&lt;/i&gt;
  &lt;/button&gt;
  &lt;button <span class="nv">class</span><span class="o">=</span><span class="s2">"button button-info"</span>&gt;
    &lt;i <span class="nv">class</span><span class="o">=</span><span class="s2">"fa fa-gbp"</span>&gt;&lt;/i&gt;
  &lt;/button&gt;
&lt;/div&gt;
        </pre>
      </div>
    </div>
    <div class="two-column vertical-padding">
      <div class="right">
        <img src="../images/arrow.svg"/>
        <h1 class="tight">web forms</h1>
        <p class="darker">
          Usually, colors with the same hue are
         distinguished with adjectives referring to
        </p>
      </div>
      <div>
        <form action="#" method="GET">
          <input type="input" class="text-field f-span6" placeholder="name"/>
          <input type="input" class="text-field f-span6" placeholder="lastname"/>
          <input type="input" class="text-field f-span12" placeholder="address"/>
          <input type="input" class="text-field f-span6" placeholder="city"/>
          <input type="input" class="text-field f-span3" placeholder="state"/>
          <input type="input" class="text-field f-span3" placeholder="zip"/>
          <input type="submit" class="button-success f-span7" value="submit"></input>
          <button class="button-warning f-span5">cancel</button>
          <input type="checkbox" id="checkbox1"/><label for="checkbox1" class="darker">Let me know about updates</label>
        </form>
        <pre class="highlight vertical-padding">

&lt;form <span class="nv">action</span><span class="o">=</span><span class="s2">"#" </span> <span class="nv">method</span><span class="o">=</span><span class="s2">"GET"</span>&gt;
  &lt;input <span class="nb">type</span><span class="o">=</span><span class="s2">"input" </span> <span class="nv">class</span><span class="o">=</span><span class="s2">"text-field f-span6" </span> <span class="nv">placeholder</span><span class="o">=</span><span class="s2">"name"</span>/&gt;
  &lt;input <span class="nb">type</span><span class="o">=</span><span class="s2">"input" </span> <span class="nv">class</span><span class="o">=</span><span class="s2">"text-field f-span6" </span> <span class="nv">placeholder</span><span class="o">=</span><span class="s2">"lastname"</span>/&gt;
  &lt;input <span class="nb">type</span><span class="o">=</span><span class="s2">"input" </span> <span class="nv">class</span><span class="o">=</span><span class="s2">"text-field f-span12" </span> <span class="nv">placeholder</span><span class="o">=</span><span class="s2">"address"</span>/&gt;
  &lt;input <span class="nb">type</span><span class="o">=</span><span class="s2">"input" </span> <span class="nv">class</span><span class="o">=</span><span class="s2">"text-field f-span6" </span> <span class="nv">placeholder</span><span class="o">=</span><span class="s2">"city"</span>/&gt;
  &lt;input <span class="nb">type</span><span class="o">=</span><span class="s2">"input" </span> <span class="nv">class</span><span class="o">=</span><span class="s2">"text-field f-span3" </span> <span class="nv">placeholder</span><span class="o">=</span><span class="s2">"state"</span>/&gt;
  &lt;input <span class="nb">type</span><span class="o">=</span><span class="s2">"input" </span> <span class="nv">class</span><span class="o">=</span><span class="s2">"text-field f-span3" </span> <span class="nv">placeholder</span><span class="o">=</span><span class="s2">"zip"</span>/&gt;
  &lt;input <span class="nb">type</span><span class="o">=</span><span class="s2">"submit" </span> <span class="nv">class</span><span class="o">=</span><span class="s2">"button-success f-span7" </span> <span class="nv">value</span><span class="o">=</span><span class="s2">"submit"</span>&gt;&lt;/input&gt;
  &lt;button <span class="nv">class</span><span class="o">=</span><span class="s2">"button-warning f-span5"</span>&gt;cancel&lt;/button&gt;
  &lt;input <span class="nb">type</span><span class="o">=</span><span class="s2">"checkbox" </span> <span class="nv">id</span><span class="o">=</span><span class="s2">"checkbox1"</span>/&gt;
  &lt;label <span class="k">for</span><span class="o">=</span><span class="s2">"checkbox1" </span> <span class="nv">class</span><span class="o">=</span><span class="s2">"darker"</span>&gt;Let me know about updates&lt;/label&gt;
&lt;/form&gt;
        </pre>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>