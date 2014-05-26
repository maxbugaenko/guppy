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
      <li class="item-no-hover"><button class="button-success button-medium f-span12">sign in</button></li>
    </ul>
    <div class="page-container">
      <nav class="menu-icon-info background-info desktop-only" id="menu-icons">
        <li class="darken-background-info">
          <img src="../images/twentytags.svg"/>
        </li>
        <li class="padding-around-medium controls-text-color">
          <i class="big fa fa-bars opens-menu-outter"></i>
        </li>
      </nav>
      <nav class="container mobile-and-medium-only">
        <div class="mobile-span3">
          <img src="../images/twentytags.svg" width="100px"/>
        </div>
        <div class="mobile-span9 right padding-horizontal-base">
          <i class="big info fa fa-bars opens-menu-outter"></i>
        </div>
      </nav>
      <div class="container shift2 padding-around-medium">
        <h1 class="info">Kim Jong-un</h1>
        <p class="lighten-text">
          Kim is the supreme leader of the Democratic People's Republic of
          Korea, commonly known as North Korea. He is the son of Kim
          Jong-il (1941–2011) and the grandson of Kim Il-sung (1912–1994)
        </p>
        <button class="button-info f-span4">follow</button>
        <div class="container padding-vertical-medium">
          <div class="unit25">
            <img src="http://twentytags.com/images/alerts/1401008999907.jpg"/>
          </div>
          <div class="unit65">
            <h3>
              <a href="">kim jong-un's playboy half brother kim jong-nam enjoys spaghetti in jakarta - youtube</a>
            </h3>
            <p class="small lighten-text">
              playboy half brother kim jong-nam enjoys spaghetti in jakarta.kim
              jong-un's playboy half brother enjoys spaghetti in
              jakarta amid concerns of a...
            </p>
          </div>
          <div class="unit5 desktop-only">
            <i class="fa fa-play-circle-o big success"></i>
          </div>
          <div class="unit5 lighten-text small">
            March, 20th
          </div>
        </div>
        <div class="container padding-vertical-medium">
          <div class="unit25">
            <img src="http://twentytags.com/images/alerts/14008937042730.jpg"/>
          </div>
          <div class="unit65">
            <h3>
              <a href="">feel good friday: 22 fun photos to start your long weekend</a>
            </h3>
            <p class="small lighten-text">
              north korean leader kim jong un plays with children during a
              visit to the taesongsan general hospital in pyongyang, in an undated photo released ...          </p>
          </div>
          <div class="unit5 desktop-only">
            <i class="fa fa-play-circle-o big success"></i>
          </div>
          <div class="unit5 lighten-text">
            March, 20th
          </div>
        </div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>