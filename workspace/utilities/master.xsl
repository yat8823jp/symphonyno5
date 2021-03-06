<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:include href="format-date.xsl"/>
  <xsl:include href="page-title.xsl"/>
  <xsl:include href="navigation.xsl"/>

  <xsl:variable name="jQueryVersion" select="'1.10.2'"/>

  <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="no" media-type="text/html" />

  <xsl:template match="/">
    <xsl:text disable-output-escaping="yes"><![CDATA[<!doctype html>]]></xsl:text>
    <xsl:comment><![CDATA[[if lt IE 8 ]><html class="no-js oldie" lang="en"><![endif]]]></xsl:comment>
    <xsl:comment><![CDATA[[if IE 8 ]><html class="no-js ie8" lang="en"><![endif]]]></xsl:comment>
    <xsl:comment><![CDATA[[if gt IE 8 ]><!]]></xsl:comment><html class="no-js" lang="en"><xsl:comment><![CDATA[<![endif]]]></xsl:comment>

      <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <title><xsl:call-template name="page-title"/></title>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link type="text/plain" rel="author" href="/humans.txt" />
        <link rel="stylesheet" data-compile="true" href="/workspace/styles/main.css"/>
        <link rel="apple-touch-icon" href="/workspace/images/icons/apple-touch-icon.png"/>
        <xsl:comment><![CDATA[[if (lt IE 9) & (!IEMobile) ]><script src="/workspace/scripts/vendor/selectivizr-min.js"></script><![endif]]]></xsl:comment>
        <script src="/workspace/scripts/vendor/modernizr-2.6.2.min.js"></script>
      </head>

      <body class="{$current-page}">
        <xsl:comment><![CDATA[[if lt IE 8 ]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]]]></xsl:comment>

        <header class="main masthead" role="banner">
          <!--<h1><a href="/"><xsl:value-of select="$website-name"/></a></h1>-->
          <xsl:apply-templates select="data/navigation"/>
        </header>

        <div class="main content" role="main">
          <xsl:apply-templates/>
        </div>

        <footer class="main" role="contentinfo">
        </footer>

        <script src="//ajax.googleapis.com/ajax/libs/jquery/{$jQueryVersion}/jquery.min.js"></script>
        <script><![CDATA[window.jQuery || document.write('<script src="/workspace/scripts/vendor/jquery-]]><xsl:value-of select="$jQueryVersion"/><![CDATA[.min.js">\x3C/script>')]]></script>
        <script data-compile="true" src="/workspace/scripts/plugins.js"></script>
        <script data-compile="true" src="/workspace/scripts/main.js"></script>

        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
            var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
            (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
            g.src='//www.google-analytics.com/ga.js';
            s.parentNode.insertBefore(g,s)}(document,'script'));
        </script>
      </body>

    </html>
  </xsl:template>
  <xsl:strip-space elements="*"/><!-- strip whitespace from output -->
</xsl:stylesheet>
