<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="page" mode="head">
    <head>
      <title><xsl:value-of select="title"/></title>
      <meta charset="UTF-8"/>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <meta name="description" content="circles"/>
      <meta name="keywords" content="twitter circles"/>
      <meta name="author" content="reusable.io"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"/>
      <link type="text/css" href="../css/guppy.css" rel="stylesheet"/>
      <link type="text/css" href="../css/guppy-blog.css" rel="stylesheet"/>
      <script src="../js/jquery.js"></script>
      <script src="../js/guppy.js"></script>
    </head>
  </xsl:template>
</xsl:stylesheet>
