<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:include href="main.xsl"/>
  <xsl:template match="page" mode="body">
    <!--<div id="overlay"></div>-->
    <ul class="menu-aside menu-vertical-tight darken-background-info controls-text-color capitalize">
      <li class="item-no-hover padding-around-base">
          <div class="button-iconed">
            <i class="darken-info fa fa-search"></i>
            <input type="text" class="search-bar" placeholder="поиск"/>
          </div>
      </li>
      <li class="item-no-hover padding-horizontal-base padding-vertical-small"><h3>Популярное</h3></li>
      <li>политика</li>
      <li>известные люди</li>
      <li>стартапы</li>
      <li>предприниматели</li>
      <li>тренды</li>
      <li class="item-no-hover padding-vertical-medium">
        <!--<h4>Максим Бугаенко</h4>-->
        <button class="f-span6 button-warning button-medium capitalize"><i class="fa fa-power-off"></i> выйти</button>
      </li>
      <li class="item-no-hover padding-vertical-medium">
        <i class="close-button lighten-info large fa fa-arrow-left"></i>
      </li>
    </ul>
    <div class="page-container">
      <nav class="menu-icon-info padding-around-base desktop-only animate-show-slow" id="menu-icons">
        <li class="item-no-hover">
          <img class="logo-image" src="../images/twentytags.svg"/>
        </li>
        <li class="item-no-hover padding-around-small controls-text-color">
          <button class="button-info button-medium capitalize">лента</button>
        </li>
        <li class="item-no-hover padding-around-small controls-text-color">
          <button class="button-info button-medium capitalize">мои теги</button>
        </li>
        <li class="item-no-hover padding-around-small controls-text-color">
          <button class="button-warning button-medium capitalize"><i class="fa fa-plus-circle"></i> добавить</button>
        </li>
        <li class="item-no-hover padding-around-small controls-text-color">
          <button class="button-info button-medium opens-menu-outter capitalize"><i class="fa fa-bars"></i> меню</button>
        </li>
        <li class="item-no-hover padding-vertical-large center">
          <i id="icon-to-top" class="double-lighten-text large fa fa-arrow-up"></i>
        </li>
      </nav>
      <nav class="container mobile-menu mobile-and-medium-only background-info controls-text-color medium right">
        <div class="mobile-span2 logo-image-mobile">
          <img  src="../images/twentytags-mobile.svg"/>
        </div>
        <div class="mobile-span3 padding-around-base">
          <i class="fa fa-bars opens-menu-outter"></i>
        </div>
        <div class="mobile-span2 padding-around-base">
          <i class="fa fa-repeat"></i>
        </div>
        <div class="mobile-span2 padding-around-base">
          <i class="fa fa-plus"></i>
        </div>
        <div class="mobile-span2 padding-around-base">
          <i class="fa fa-folder-open"></i>
        </div>
      </nav>
      <div class="container shift2 padding-around-medium">
        <h1 class="info lower">известные люди</h1>
        <div class="container padding-vertical-medium">
          <div class="unit20 right">
            <img src="http://twentytags.com/images/entities/139940412727.jpg"/>
          </div>
          <div class="unit80">
            <h2 class="info">
              <a href="">владимир путин</a>
            </h2>
            <a class="lighten-text" href="">политика</a>&#160;<a class="lighten-text" href="">известные люди</a>
            <p>
              <span class="badge-success">статей 1802</span>&#160;
              <span class="badge-info">сегодня 1802</span>
            </p>
            <p>
              российский государственный и политический деятель, президент Российской Федерации (с 7 мая 2012 года).
            </p>
            <button class="button-warning button-medium f-span5 capitalize"><i class="fa fa-check"></i> подписаться</button>
          </div>
        </div>
        <div class="container padding-vertical-medium">
          <div class="unit20 right">
            <img src="http://twentytags.com/images/entities/13969034343848.jpg"/>
          </div>
          <div class="unit80">
            <h2 class="info">
              <a href="">рафаель надаль</a>
            </h2>
            <a class="lighten-text" href="">политика</a>&#160;<a class="lighten-text" href="">известные люди</a>
            <p>
              <span class="badge-success">статей 1802</span>&#160;
              <span class="badge-warning">сегодня 1802</span>
            </p>
            <p>
              российский государственный и политический деятель, президент Российской Федерации (с 7 мая 2012 года). российский государственный и политический деятель, президент Российской Федерации (с 7 мая 2012 года).
            </p>
            <button class="button-info button-medium f-span5 capitalize"><i class="fa fa-check"></i> подписаться</button>
          </div>
        </div>
        <div class="container padding-vertical-medium">
          <div class="unit20 right">
            <img src="http://twentytags.com/images/entities/14002693063801.jpg"/>
          </div>
          <div class="unit80">
            <h2 class="info">
              <a href="">том круз</a>
            </h2>
            <a class="lighten-text" href="">актеры</a>&#160;<a class="lighten-text" href="">известные люди</a>
            <p>
              <span class="badge-success">статей 1802</span>&#160;
              <span class="badge-info">сегодня 1802</span>
            </p>
            <p>
              российский государственный и политический деятель, президент Российской Федерации (с 7 мая 2012 года). российский государственный и политический деятель, президент Российской Федерации (с 7 мая 2012 года).
            </p>
          </div>
        </div>
      </div>
    </div>
    <script>
      $(document).ActivateScrollIcon();
    </script>
  </xsl:template>
</xsl:stylesheet>