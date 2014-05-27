<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:include href="main.xsl"/>
  <xsl:template match="page" mode="body">
    <div id="overlay"></div>
    <ul class="menu-aside double-darken-background-info controls-text-color upper">
      <li class="item-no-hover">
          <div class="button-iconed">
            <i class="darken-info fa fa-search"></i>
            <input type="text" class="search-bar" placeholder="search"/>
          </div>
      </li>
      <li class="padding-horizontal-medium">browse</li>
      <li class="padding-horizontal-medium">following</li>
      <li class="padding-horizontal-medium">add tag</li>
      <li class="item-no-hover padding-vertical-big"><button class="button-success button-medium f-span12">sign in</button></li>
    </ul>
    <div class="page-container">
      <nav class="menu-icon-info padding-around-base desktop-only" id="menu-icons">
        <li class="">
          <img src="../images/twentytags.svg"/>
        </li>
        <li class="item-no-hover padding-around-small controls-text-color">
          <button class="button-info button-medium">лента</button>
        </li>
        <li class="item-no-hover padding-around-small controls-text-color">
          <button class="button-info button-medium">мои теги</button>
        </li>
        <li class="item-no-hover padding-around-small controls-text-color">
          <button class="button-success button-medium">добавить</button>
        </li>
        <li class="item-no-hover padding-around-small controls-text-color">
          <button class="button-warning button-medium">войти</button>
        </li>
      </nav>
      <nav class="container mobile-and-medium-only">
        <div class="mobile-span3">
          <img src="../images/twentytags.svg" width="100px"/>
        </div>
        <div class="mobile-span9 right ">
        </div>
      </nav>
      <div class="container shift2 padding-around-medium">
        <h1 class="info lower">дмитрий ярош</h1>
        <span class="badge-success">статей 180</span>&#160;<span class="badge-info">сегодня 7</span>
        <p class="lighten-text">
          Северокорейский политический, государственный, военный и партийный деятель.
          Высший руководитель, лидер партии, армии и народа КНДР,
          Верховный Главнокомандующий Корейской народной армии,
          Первый секретарь Центрального комитета Трудовой партии Кореи,
          маршал, депутат Верховного народного собрания КНДР.
        </p>
        <button class="button-info f-span4">подписаться</button>
        <div class="container padding-vertical-medium">
          <div class="unit25 right">
            <img src="http://twentytags.com/images/alerts/1401008999907.jpg"/>
          </div>
          <div class="unit60">
            <h3 class="info medium">
              <a href="">ким чен ын сжег "врага народа" заживо, обстреляв из огнемета</a>
            </h3>
            <p class="lighten-text">
              Диктатор Северной Кореи Ким Чен Ын заживо сжег министра общественной безопасности О Сон Хона, обстреляв его из огнемета.
            </p>
          </div>
          <div class="unit10 desktop-only">
            <i class="fa fa-play-circle-o large lighten-info"></i>
          </div>
          <div class="unit5 double-lighten-text small">
            March, 20th
          </div>
        </div>
        <div class="container padding-vertical-medium">
          <div class="unit25">
            <img src="http://twentytags.com/images/alerts/14008937042730.jpg"/>
          </div>
          <div class="unit60">
            <h3>
              <a href="">Почему лидер КНДР Ким Чен Ын решился казнить своего влиятельного дядю?</a>
            </h3>
            <p class="lighten-text">
              В Северной Корее по обвинению в попытке свержения государственной власти
              был казнен Чан Сон Тхэк – бывший заместитель председателя
              Государственного комитета обороны и дядя руководителя страны Ким Чен Ына.
            </p>
          </div>
          <div class="unit10 desktop-only">
            <i class="fa fa-play-circle-o large lighten-warning"></i>
          </div>
          <div class="unit5 lighten-text">
            Март, 20
          </div>
        </div>
        <div class="container padding-vertical-medium">
          <div class="unit85">
            <h3>
              <a href="">В Северной Корее обязали мужчин стричься как Ким Чен Ын</a>
            </h3>
            <p class="lighten-text">
              Своеобразную стрижку северокорейского диктатора раньше называли "прической китайского контрабандиста". Далеко не все жители страны хотят выглядеть так же.
            </p>
          </div>
          <div class="unit10 desktop-only">
            <i class="fa fa-play-circle-o large lighten-warning"></i>
          </div>
          <div class="unit5 lighten-text">
            March, 20th
          </div>
        </div>
        <div class="container padding-vertical-medium">
          <div class="unit25 right">
            <img src="http://twentytags.com/images/alerts/1401008999907.jpg"/>
          </div>
          <div class="unit60">
            <h3>
              <a href="">Ким Чен Ын сжег "врага народа" заживо, обстреляв из огнемета</a>
            </h3>
            <p class="lighten-text">
              Диктатор Северной Кореи Ким Чен Ын заживо сжег министра общественной безопасности О Сон Хона, обстреляв его из огнемета.
            </p>
          </div>
          <div class="unit10 desktop-only">
            <i class="fa fa-play-circle-o large lighten-info"></i>
          </div>
          <div class="unit5 double-lighten-text small">
            March, 20th
          </div>
        </div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>