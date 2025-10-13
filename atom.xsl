<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <!-- 引入博客主题的 CSS -->
        <link rel="stylesheet" href="/css/main.css"/> 
      </head>
      <body class="atom-feed">
        <xsl:for-each select="feed/entry">
          <article class="post-card"> <!-- 复用主题文章卡片样式 -->
            <h2><xsl:value-of select="title"/></h2>
            <div><xsl:value-of select="summary" disable-output-escaping="yes"/></div>
          </article>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
