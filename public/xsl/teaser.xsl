<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:include href="main.xsl"/>
  <xsl:template match="page" mode="body">
    <div class="two-column background-color">
      <div class="right">
        <img src="../images/teaser.jpeg"/>
        <p class="code success">
          Украина, Днепропетровск<br/>
          <a href="mailto:support@buildstar.com.ua">support@topsales.sx</a>
          <div class="phone success">800 890 770</div>
        </p>
      </div>
      <div>
        <div class="big darker tight">Tangle Teaser</div>
        <div class="large success tight">Крутая Расческа</div>
        <p class="upper medium darker">
          Сто пятьдесят причин купить эту расческу. Еще пять причин купить ее
        </p>
        <button class="button-warning f-span8" onclick="location.href='controls'">заказать<i class="fa fa-rocket"></i></button>
        <span class="big bolder warning">190грн</span>
        <p class="vertical-padding darker">
          Сто пятьдесят причин купить эту расческу. Еще пять причин купить ее.
          Еще немного причин не покупать это гавно
        </p>
      </div>
    </div>
    <div class="four-column">
      <div><img src="../images/teaser/teaser1.png"/></div>
      <div><img src="../images/teaser/teaser2.png"/></div>
      <div><img src="../images/teaser/teaser3.png"/></div>
      <div><img src="../images/teaser/teaser4.png"/></div>
    </div>
    <div class="four-column">
      <div><img src="../images/teaser/teaser5.png"/></div>
      <div><img src="../images/teaser/teaser6.png"/></div>
      <div><img src="../images/teaser/teaser7.png"/></div>
      <div><img src="../images/teaser/teaser8.png"/></div>
    </div>
    <div class="container background-success controls-text-color">
      <div class="span1"></div>
      <div class="span3 right medium">полный возврат денег в течение 30 дней</div>
      <div class="span2 right"><i class="icon-money large"></i></div>
      <div class="span2 left"><i class="icon-truck large"></i></div>
      <div class="span3 left medium">бесплатная доставка по Украине</div>
      <div class="span1"></div>
    </div>
    <div class="container vertical-padding lighten-background darker">
      <div class="two-column vertical-padding">
        <div>
          <div class="span4">
            <img src="../images/chick1.jpg" class="photo"/>
          </div>
          <div class="span8">
            <h3 class="tight padding-bottom">Елена Самохина г. Киев. Салон "Amadus"</h3>
            Я работаю в области бьюти- индустрии уже 12 лет и являюсь парикмахером- стилистом, владея собственным салоном красоты в г.Киеве. Могу с уверенностью заявить, что tangle teezer меняет жизни девушек к лучшему. Эту расческу по праву можно назвать единственной, которая может решить все проблемы связанные с расчесыванием волос.
          </div>
        </div>
        <div>
          <div class="span4">
            <img src="../images/chick2.jpg" class="photo"/>
          </div>
          <div class="span8">
            <h3 class="tight padding-bottom">Ольга Киреева г. Тверь дизайнер, маркетолог</h3>
            Тангл заменил мне все расчески! Очень редко, когда иду с маленькой сумкой, беру туда деревянную малюську, а так я собой постоянно ношу Тангл. Такая расческа просто незаменимый аксессуар и помощник. Я настоятельно рекомендую Вам иметь что то подобное в своем уходе.
          </div>
        </div>
      </div>
      <div class="two-column vertical-padding">
        <div>
          <div class="span4">
            <img src="../images/chick4.jpg" class="photo"/>
          </div>
          <div class="span8">
            <h3 class="tight padding-bottom">Валентина Ермолаенко г. Севастополь парикмахер в салоне "Престиж"</h3>
            Я рекомендую Tangle Teezer всем клиентам, кто хочет ухаживать за своими волосами и кожей головы всеми возможными способами и не выдирать при расчёсывании лишних волосинок!
          </div>
        </div>
        <div>
          <div class="span4">
            <img src="../images/chick6.jpg" class="photo"/>
          </div>
          <div class="span8">
            <h3 class="tight padding-bottom">Ольга г. Москва студентка
            </h3>
            Волосы заметно разглаживаются и становятся гладкими и блестящими. Зимой меньше электризуются. И самое главное, я заметила что у меня начали быстрее расти волосы, подозреваю в этом именно расческу, потому что она дает легкий массаж головы, что очень приятно! Стали меньше сечься и обламываться на концах.
          </div>
        </div>
      </div>
    </div>
    <div class="container lighten-background">
      <div class="two-column controls-text-color vertical-padding">
        <div>
          <iframe width="100%" height="350px" src="//www.youtube.com/embed/1NZLh9gRXsw" frameborder="0" allowfullscreen="1">
          </iframe>
        </div>
        <div>
          <iframe width="100%" height="350px" src="//www.youtube.com/embed/isZyGn_hO2s" frameborder="0" allowfullscreen="1">
          </iframe>
        </div>
      </div>
      <div class="container">
        <div class="span12 center">
          <button class="button button-success f-span4">добавить коментарий<i class="fa fa-plus"></i></button>
        </div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>