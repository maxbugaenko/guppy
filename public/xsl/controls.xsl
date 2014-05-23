<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:include href="page.xsl"/>
  <xsl:template match="page" mode="body">
    <div class="column2 shift2 vertical-padding">
      <div class="right animate-slide-children-left-to-right">
        <img src="../images/cog.svg"/>
        <h1 class="tight">dropdowns</h1>
        <p class="darker">
          Usually, colors with the same hue are
          distinguished with adjectives referring to
        </p>
      </div>
      <div class="animate-slide-children-right-to-left">
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
    <div class="container">
      <div class="tabs center shift1">
        <input name="controls" type="radio" id="controls-tab" checked="true"/>
        <label for="controls-tab" class="tab30 upper tab-label background-default"><i class="fa fa-rub"></i><span class="desktop-only">&#160;controls</span></label>
        <input name="controls" type="radio" id="panels-tab"/>
        <label for="panels-tab" class="tab30 upper tab-label background-default"><i class="fa fa-btc"></i><span class="desktop-only">&#160;panels</span></label>
        <input name="controls" type="radio" id="readme-tab"/>
        <label for="readme-tab" class="tab30 upper tab-label background-success"><i class="fa fa-gbp"></i><span class="desktop-only">&#160;readme</span></label>
        <div class="content darken-background round-borders">
          <div class="tab padding-medium">
            <div class="column2 shift2">
              <div>
                <img src="../images/bike.svg"/>
              </div>
              <div class="left">
                <h1 class="code">controls</h1>
                <p class="darken-text">
                  Usually, colors with the same hue are with the same hue are
                </p>
                <h3 class="code">usually colors</h3>
                <p class="darken-text small">
                  Usually, colors with the same hue are with the same hue are. Colors with the same hue are with the same hue are
                </p>
              </div>
            </div>
          </div>
          <div class="tab padding-medium">
            <div class="column3 shift2">
              <div class="right">
                <h1 class="code">controls</h1>
                <p class="darken-text">
                  Usually, colors with the same hue are with the same hue are. Hue are with the same hue are
                </p>
              </div>
              <div class="center">
                <h1 class="code">readme</h1>
                <p class="darken-text">
                  Usually, colors with the same hue are with the same hue are
                </p>
              </div>
              <div class="left">
                <h1 class="code">dropdowns</h1>
                <p class="darken-text">
                  Usually, colors with the same hue are with the same hue are
                </p>
              </div>
            </div>
          </div>
          <div class="tab padding-medium">
            <div class="column2 shift1 vertical-padding">
              <div class="right">
                <h1 class="tight code">social logins</h1>
                <p class="darken-text">
                  Usually, colors with the same hue are
                  distinguished with adjectives referring to
                </p>
              </div>
              <div class="left">
                <form action="#" method="GET">
                  <input type="input" class="text-field f-span6" placeholder="email"/>
                  <input type="input" class="text-field f-span6" placeholder="password"/>
                  <button class="button-warning f-span5">login</button>
                  <button class="button-default f-span4">cancel</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container shift2 center padding-top-medium">
      <h1 class="tight">vertical menu</h1>
      <div class="unit30">
        <ul class="menu-vertical menu-vertical-spread upper right animate-slide-children-top-to-bottom">
          <li>
            <div class="dropdown-menu dropdown-menu-info left">
              <a>controls</a>
              <ul class="medium">
                <li class="item-header">
                  <a href="">controls</a>
                </li>
                <li>
                  <i class="fa fa-eur"></i><a href="">buttons</a>
                </li>
                <li>
                  <i class="fa fa-jpy"></i><a href="">web forms</a>
                </li>
                <li>
                  <i class="fa fa-usd"></i><a href="">tabs</a>
                </li>
              </ul>
            </div>
            <p class="darken-text small">
              Usually, colors with the same hue are with the same hue are
            </p>
          </li>
          <li>
            tables
            <p class="darken-text small">
              Usually, colors with the same hue are with the same hue are
            </p>
          </li>
          <li>
            panels
            <p class="darken-text small">
              Usually, colors with the same hue are with the same hue are
            </p>
          </li>
        </ul>
      </div>
      <div class="unit40 padding-medium center darken-text small">
        <img src="../images/bike.svg"/>
        Usually, colors with the same hue are
        distinguished with <a id="opens-menu-sliding">adjectives</a> to
      </div>
      <div class="unit30 left">
        <ul class="menu-vertical menu-vertical-spread upper animate-slide-children-top-to-bottom">
          <li>
            <div class="dropdown-menu dropdown-menu-default left">
              <a>controls</a>
              <ul class="small">
                <li class="item-header">
                  <a href="">controls</a>
                </li>
                <li>
                  <i class="fa fa-eur"></i><a href="">buttons</a>
                </li>
                <li>
                  <i class="fa fa-rub"></i><a href="">button groups</a>
                </li>
                <li>
                  <i class="fa fa-jpy"></i><a href="">web forms</a>
                </li>
              </ul>
            </div>
          </li>
          <li>
            tables
          </li>
          <li>
            panels
          </li>
          <li>
            sliders
          </li>
          <li>
            dropdowns
          </li>
          <li>
            readme
          </li>
        </ul>
      </div>
    </div>
    <div class="container lighten-background">
      <div class="column2 shift2 vertical-padding-large">
        <div class="right">
          <img src="../images/bike.svg"/>
          <h1 class="tight">buttons</h1>
          <p class="darker">
            Usually, colors with the same hue are
            distinguished with adjectives referring to
          </p>
        </div>
        <div class="animate-slide-children-right-to-left">
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
            <span class="span6">
              <button class="button-warning button-medium">dollar</button>
            </span>
            <span class="span6">
              <button class="button-success button-medium">pound</button>
            </span>
          </div>
          <div class="container">
            <span class="span2">
              <button class="button-warning button-small"><i class="fa fa-btc"></i></button>
            </span>
            <span class="span2">
              <button class="button-info button-small"><i class="fa fa-dollar"></i></button>
            </span>
            <span class="span2">
              <button class="button-success button-small"><i class="fa fa-eur"></i></button>
            </span>
            <span class="span2">
              <button class="button-info button-small"><i class="fa fa-gbp"></i></button>
            </span>
            <span class="span2">
              <button class="button-warning button-small"><i class="fa fa-jpy"></i></button>
            </span>
            <span class="span2">
              <button class="button-success button-small"><i class="fa fa-try"></i></button>
            </span>
          </div>
          <pre class="highlight vertical-padding left">
  &lt;button <span class="nv">class</span><span class="o">=</span><span class="s2">"button button-default control-medium"</span>&gt;
    default&lt;i <span class="nv">class</span><span class="o">=</span><span class="s2">"fa fa-eur"</span>&gt;&lt;/i&gt;
  &lt;/button&gt;
          </pre>
        </div>
      </div>
    </div>
    <div class="column2 shift2 vertical-padding-large">
      <div class="right">
        <img src="../images/car.svg"/>
        <h1 class="tight">button groups</h1>
        <p class="darker">
          Usually, colors with the same hue are
          distinguished with adjectives referring to
        </p>
      </div>
      <div>
        <div class="column4 button-group">
          <div>
            <button class="button button-success"><i class="fa fa-eur"></i></button>
          </div>
          <div>
            <button class="button button-success"><i class="fa fa-usd"></i></button>
          </div>
          <div>
            <button class="button button-success"><i class="fa fa-jpy"></i></button>
          </div>
          <div>
            <button class="button button-success"><i class="fa fa-gbp"></i></button>
          </div>
        </div>
        <div class="column4 button-group">
          <div>
            <button class="button button-warning control-medium"><i class="fa fa-eur"></i></button>
          </div>
          <div>
            <button class="button button-warning control-medium"><i class="fa fa-btc"></i></button>
          </div>
          <div>
            <button class="button button-warning control-medium"><i class="fa fa-gbp"></i></button>
          </div>
          <div>
            <button class="button button-warning control-medium"><i class="fa fa-rub"></i></button>
          </div>
        </div>
        <div class="column5 button-group">
          <div>
            <button class="button button-info control-small"><i class="fa fa-eur"></i></button>
          </div>
          <div>
            <button class="button button-info control-small"><i class="fa fa-rub"></i></button>
          </div>
          <div>
            <button class="button button-info control-small"><i class="fa fa-usd"></i></button>
          </div>
          <div>
            <button class="button button-info control-small"><i class="fa fa-jpy"></i></button>
          </div>
          <div>
            <button class="button button-info control-small"><i class="fa fa-btc"></i></button>
          </div>
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
    <div class="column2 shift2 vertical-padding-large">
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
          <input type="submit" class="button-success f-span7" value="submit"/>
          <button class="button-warning f-span5">cancel</button>
          <input type="checkbox" id="checkbox1"/><label for="checkbox1" class="form-label darker">Let me know about updates</label>
        </form>
        <pre class="highlight vertical-padding">

&lt;form <span class="nv">action</span><span class="o">=</span><span class="s2">"#" </span> <span class="nv">method</span><span class="o">=</span><span class="s2">"GET"</span>&gt;
  &lt;input <span class="nb">type</span><span class="o">=</span><span class="s2">"input" </span> <span class="nv">class</span><span class="o">=</span><span class="s2">"text-field f-span6" </span> <span class="nv">placeholder</span><span class="o">=</span><span class="s2">"name"</span>/&gt;
  &lt;input <span class="nb">type</span><span class="o">=</span><span class="s2">"input" </span> <span class="nv">class</span><span class="o">=</span><span class="s2">"text-field f-span6" </span> <span class="nv">placeholder</span><span class="o">=</span><span class="s2">"lastname"</span>/&gt;
  &lt;input <span class="nb">type</span><span class="o">=</span><span class="s2">"input" </span> <span class="nv">class</span><span class="o">=</span><span class="s2">"text-field f-span12" </span> <span class="nv">placeholder</span><span class="o">=</span><span class="s2">"address"</span>/&gt;
  &lt;input <span class="nb">type</span><span class="o">=</span><span class="s2">"input" </span> <span class="nv">class</span><span class="o">=</span><span class="s2">"text-field f-span6" </span> <span class="nv">placeholder</span><span class="o">=</span><span class="s2">"city"</span>/&gt;
  &lt;input <span class="nb">type</span><span class="o">=</span><span class="s2">"input" </span> <span class="nv">class</span><span class="o">=</span><span class="s2">"text-field f-span3" </span> <span class="nv">placeholder</span><span class="o">=</span><span class="s2">"state"</span>/&gt;
  &lt;input <span class="nb">type</span><span class="o">=</span><span class="s2">"input" </span> <span class="nv">class</span><span class="o">=</span><span class="s2">"text-field f-span3" </span> <span class="nv">placeholder</span><span class="o">=</span><span class="s2">"zip"</span>/&gt;
  &lt;input <span class="nb">type</span><span class="o">=</span><span class="s2">"submit" </span> <span class="nv">class</span><span class="o">=</span><span class="s2">"button-success f-span7" </span> <span class="nv">value</span><span class="o">=</span><span class="s2">"submit"</span>/&gt;
  &lt;button <span class="nv">class</span><span class="o">=</span><span class="s2">"button-warning f-span5"</span>&gt;cancel&lt;/button&gt;
  &lt;input <span class="nb">type</span><span class="o">=</span><span class="s2">"checkbox" </span> <span class="nv">id</span><span class="o">=</span><span class="s2">"checkbox1"</span>/&gt;
  &lt;label <span class="k">for</span><span class="o">=</span><span class="s2">"checkbox1" </span> <span class="nv">class</span><span class="o">=</span><span class="s2">"darker"</span>&gt;Let me know about updates&lt;/label&gt;
&lt;/form&gt;
        </pre>
      </div>
    </div>
    <div class="column2 shift2 vertical-padding">
      <div class="right">
        <h1 class="tight code">social logins</h1>
        <p class="darken-text">
          Usually, colors with the same hue are
          distinguished with adjectives referring to
        </p>
      </div>
      <div>
        <form action="#" method="GET">
          <input type="input" class="text-field f-span6" placeholder="email"/>
          <input type="input" class="text-field f-span6" placeholder="password"/>
          <button class="button-warning f-span5">login</button>
          <button class="button-default f-span4">cancel</button>
        </form>
      </div>
    </div>
    <div class="container lighten-background center">
      <h1 class="tight vertical-padding">layouts</h1>
      <h2 class="tight vertical-padding code">spans in container</h2>
      <div class="container background-color code">
        <div class="span1 background-success">
          span1
        </div>
        <div class="span1 background-warning">
          span1
        </div>
        <div class="span1 background-info">
          span1
        </div>
        <div class="span1 background-success">
          span1
        </div>
        <div class="span1 background-info">
          span1
        </div>
        <div class="span1 background-warning">
          span1
        </div>
        <div class="span1 background-success">
          span1
        </div>
        <div class="span1 background-warning">
          span1
        </div>
        <div class="span1 background-info">
          span1
        </div>
        <div class="span1 background-warning">
          span1
        </div>
        <div class="span1 background-success">
          span1
        </div>
        <div class="span1 background-info">
          span1
        </div>
      </div>
      <div class="container background-color code">
        <div class="span2 background-success">
          span2
        </div>
        <div class="span2 background-warning">
          span2
        </div>
        <div class="span3 background-info">
          span3
        </div>
        <div class="span5 background-warning">
          span5
        </div>
      </div>
      <div class="container background-color code">
        <div class="span3 background-warning">
          span3
        </div>
        <div class="span3 background-info">
          span3
        </div>
        <div class="span3 background-success">
          span3
        </div>
        <div class="span3 background-warning">
          span3
        </div>
      </div>
      <div class="container background-color code">
        <div class="span6 background-warning">
          span6
        </div>
        <div class="span2 background-info">
          span2
        </div>
        <div class="span4 background-success">
          span4
        </div>
      </div>
      <h2 class="tight vertical-padding code">column2 shift1</h2>
      <div class="column2 shift1 background-color code">
        <div class="background-warning">
          div
        </div>
        <div class="background-info">
          div
        </div>
      </div>
      <h2 class="tight vertical-padding code">column2 shift3</h2>
      <div class="column2 shift3 background-color code">
        <div class="background-warning">
          div
        </div>
        <div class="background-info">
          div
        </div>
      </div>
      <h2 class="tight vertical-padding code">column3 shift2</h2>
      <div class="column3 shift2 background-color code">
        <div class="background-warning">
          div
        </div>
        <div class="background-success">
          div
        </div>
        <div class="background-info">
          div
        </div>
      </div>
      <h2 class="tight vertical-padding code">column5 shift4</h2>
      <div class="column5 shift4 background-color code">
        <div class="background-warning">
          div
        </div>
        <div class="background-success">
          div
        </div>
        <div class="background-info">
          div
        </div>
        <div class="background-success">
          div
        </div>
        <div class="background-info">
          div
        </div>
      </div>
      <h2 class="tight vertical-padding code">column6 shift1</h2>
      <div class="column6 shift1 code padding-bottom-large">
        <div class="background-warning">
          div
        </div>
        <div class="background-info">
          div
        </div>
        <div class="background-success">
          div
        </div>
        <div class="background-info">
          div
        </div>
        <div class="background-success">
          div
        </div>
        <div class="background-info">
          div
        </div>
      </div>
    </div>
    <h1 class="tight center vertical-padding">badges</h1>
    <div class="column3 shift2 vertical-padding-large">
      <div>
        <h2>small</h2>
        <p class="small darken-text">
          Usually, <span class="badge-default">colors</span> with the same hue are distinguished with adjectives <span class="badge-warning">referring</span> to
          Usually, colors with the same hue are <span class="badge-success">distinguished</span> with adjectives referring to
        </p>
      </div>
      <div>
        <h2>normal</h2>
        <p class="darken-text">
          Usually, colors with the <span class="badge-warning">same</span> hue are distinguished with adjectives referring to
          Usually, colors with the same hue are <span class="badge-success">distinguished</span> with adjectives referring to
        </p>
      </div>
      <div>
        <h1>medium</h1>
        <p class="medium darken-text">
          Usually, colors with the same hue are <span class="badge-success">distinguished</span> with adjectives referring to
          Usually, colors with the same hue are distinguished with adjectives referring to
        </p>
      </div>
    </div>
    <h1 class="center spread">tables</h1>
    <div class="column1 shift2 vertical-padding-medium center">
      <table class="medium">
        <thead>
          <th>
            elements
          </th>
          <th>
          </th>
          <th>
            kind
          </th>
          <th>
            status
          </th>
        </thead>
        <tbody>
          <tr>
            <td>
              dropdowns
            </td>
            <td>
              <button class="button-warning button-small">down</button>
            </td>
            <td>
              uppercase
            </td>
            <td>
              <span class="badge-default">unknown</span>
            </td>
          </tr>
          <tr>
            <td>
              buttons
            </td>
            <td>
              <button class="button-info button-small">up</button>
            </td>
            <td>
              uppercase
            </td>
            <td>
              <span class="badge-success">active</span>
            </td>
          </tr>
          <tr>
            <td>
              button groups
            </td>
            <td>
              <button class="button-success button-small">right</button>
            </td>
            <td>
              lowercase
            </td>
            <td>
              <span class="badge-warning">inactive</span>
            </td>
          </tr>
          <tr>
            <td>
              dropdowns
            </td>
            <td>
              <button class="button-default button-small">left</button>
            </td>
            <td>
              capitalize
            </td>
            <td>
              <span class="badge-default">unknown</span>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </xsl:template>
</xsl:stylesheet>