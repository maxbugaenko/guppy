<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:include href="main.xsl"/>
  <xsl:template match="page" mode="body">
    <div class="two-column">
      <div class="right">
        <img src="../images/teaser.jpeg"/>
        <ul class="menu menu-vertical medium success">
          <li><a href="#">видеообзор</a></li>
          <li><a href="#">фотогалерея</a></li>
          <li><a href="#">отзывы</a></li>
        </ul>
      </div>
      <div>
        <div class="big darker tight">Tangle Teaser</div>
        <div class="large success tight">Крутая Расческа</div>
        <p class="upper medium darker">
          Сто пятьдесят причин купить эту расческу. Еще пять причин купить ее
        </p>
        <button class="button-success f-span8" onclick="location.href='controls'">заказать<i class="fa fa-rocket"></i></button>
        <span class="big bolder warning">190грн</span>
        <p class="vertical-padding darker">
          Сто пятьдесят причин купить эту расческу. Еще пять причин купить ее.
          Еще немного причин не покупать это гавно
        </p>
      </div>
    </div>
    <div class="container background-success">
      fuck you
    </div>
  </xsl:template>
</xsl:stylesheet>