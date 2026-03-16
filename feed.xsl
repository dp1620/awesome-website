<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html lang="en">
    <head>
      <meta charset="utf-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <title>RSS Feed - <xsl:value-of select="/rss/channel/title"/></title>
      <style>
        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
        body {
          font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif;
          font-size: 1rem;
          line-height: 1.65;
          color: #222;
          background: #faf9f7;
          max-width: 38rem;
          margin: 0 auto;
          padding: 2rem 1.5rem;
        }
        a { color: #1a6fb5; text-decoration: none; }
        a:hover { text-decoration: underline; }
        h1 { font-size: 1.5rem; font-weight: 700; margin-bottom: 0.25rem; letter-spacing: -0.01em; }
        .subtitle { color: #666; font-size: 0.95rem; margin-bottom: 1.5rem; }
        .notice {
          background: #f0f4f8;
          border: 1px solid #d0dae4;
          border-radius: 4px;
          padding: 0.75rem 1rem;
          font-size: 0.9rem;
          color: #555;
          margin-bottom: 2rem;
        }
        .notice strong { color: #222; }
        h2 { font-size: 1.15rem; font-weight: 600; margin-top: 2rem; margin-bottom: 0.75rem; }
        .post-list { list-style: none; margin: 0; padding: 0; }
        .post-list li { padding: 0.75rem 0; border-bottom: 1px solid #eee; }
        .post-list li:last-child { border-bottom: none; }
        .post-title { font-weight: 600; font-size: 1rem; }
        .post-date { font-size: 0.85rem; color: #888; margin-top: 0.2rem; }
        .post-desc { font-size: 0.95rem; color: #555; margin-top: 0.25rem; }
        footer { margin-top: 4rem; padding-top: 1.25rem; border-top: 1px solid #eee; font-size: 0.8rem; color: #aaa; }
        @media (max-width: 480px) { body { padding: 1.25rem 1rem; } h1 { font-size: 1.3rem; } }
      </style>
    </head>
    <body>
      <h1><xsl:value-of select="/rss/channel/title"/></h1>
      <p class="subtitle"><xsl:value-of select="/rss/channel/description"/></p>

      <div class="notice">
        <strong>This is an RSS feed.</strong> Copy the URL from your browser's address bar into your RSS reader to subscribe.
      </div>

      <h2>Posts</h2>
      <ul class="post-list">
        <xsl:for-each select="/rss/channel/item">
          <li>
            <a class="post-title" href="{link}"><xsl:value-of select="title"/></a>
            <div class="post-date"><xsl:value-of select="pubDate"/></div>
            <div class="post-desc"><xsl:value-of select="description"/></div>
          </li>
        </xsl:for-each>
      </ul>

      <footer>
        <a href="./">Back to site</a>
      </footer>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
