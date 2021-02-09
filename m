Return-Path: <SRS0=fMZx=HL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79FB0C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 21:13:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D1E3164DAF
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 21:13:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D1E3164DAF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=inria.fr
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=C9XU3on7HdP5pOAXde3yj+FhdbOphgTTDRRyrUUPMXs=; b=YG1ERIei6xB6AXP22QMuCSKNvn
	k0nCpwAH5YPZRq5Q62ilMY/HmB1ptc0abfQDO1/OJ59/2CYN187i5MjIJin5iypbFluoXTL2PpkwJ
	F94CB5xXUXo6xZCILNVWrW3lXsxZA6zblMJgXRVizQuehmv4+iw4UOvXtvawumFlKCyb9k9Y/Pgov
	SrLibU5L3rN2UedxfXD4kp5U9WWxo0y7Y+wUseZmnjc4N/by8DIQK0NwggtqL8ZGPrA4Ld8usCDlA
	RAHABMidLq05HXabYA7P8qM3NRMm9Gk86QCzLdpCdHVERa1cO/PVZOjUclK0qMQo1gNE5K2EZxzj3
	cKPDhX8Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9aJy-0001BB-JE; Tue, 09 Feb 2021 21:13:18 +0000
Received: from mail2-relais-roc.national.inria.fr ([192.134.164.83])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9aJv-00019j-Ia; Tue, 09 Feb 2021 21:13:16 +0000
X-IronPort-AV: E=Sophos;i="5.81,166,1610406000"; d="scan'208";a="492125955"
Received: from palace.lip6.fr ([132.227.105.202])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA;
 09 Feb 2021 22:13:10 +0100
From: Julia Lawall <Julia.Lawall@inria.fr>
To: David Airlie <airlied@linux.ie>
Subject: [PATCH] drm: use getter/setter functions
Date: Tue,  9 Feb 2021 22:13:04 +0100
Message-Id: <20210209211304.1261740-1-Julia.Lawall@inria.fr>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210209_161315_848536_7B611322 
X-CRM114-Status: GOOD (  11.94  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 linux-aspeed@lists.ozlabs.org, Neil Armstrong <narmstrong@baylibre.com>,
 Andrew Jeffery <andrew@aj.id.au>, Jonas Karlman <jonas@kwiboo.se>,
 kernel-janitors@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org,
 Joel Stanley <joel@jms.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Use getter and setter functions, for platform_device structures and a
mipi_dsi_device structure.

Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

---
 drivers/gpu/drm/aspeed/aspeed_gfx_drv.c             |    2 +-
 drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c |    2 +-
 drivers/gpu/drm/panel/panel-lvds.c                  |    2 +-
 drivers/gpu/drm/panel/panel-seiko-43wvf1g.c         |    4 ++--
 drivers/gpu/drm/panel/panel-simple.c                |    2 +-
 drivers/gpu/drm/rockchip/rockchip_lvds.c            |    2 +-
 6 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 4e2dad314c79..9858079f9e14 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -4800,7 +4800,7 @@ static int panel_simple_dsi_probe(struct mipi_dsi_device *dsi)
 
 	err = mipi_dsi_attach(dsi);
 	if (err) {
-		struct panel_simple *panel = dev_get_drvdata(&dsi->dev);
+		struct panel_simple *panel = mipi_dsi_get_drvdata(dsi);
 
 		drm_panel_remove(&panel->base);
 	}
diff --git a/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c b/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
index 0ee508576231..3939b25e6666 100644
--- a/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
+++ b/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
@@ -267,7 +267,7 @@ static int seiko_panel_probe(struct device *dev,
 
 static int seiko_panel_remove(struct platform_device *pdev)
 {
-	struct seiko_panel *panel = dev_get_drvdata(&pdev->dev);
+	struct seiko_panel *panel = platform_get_drvdata(pdev);
 
 	drm_panel_remove(&panel->base);
 	drm_panel_disable(&panel->base);
@@ -277,7 +277,7 @@ static int seiko_panel_remove(struct platform_device *pdev)
 
 static void seiko_panel_shutdown(struct platform_device *pdev)
 {
-	struct seiko_panel *panel = dev_get_drvdata(&pdev->dev);
+	struct seiko_panel *panel = platform_get_drvdata(pdev);
 
 	drm_panel_disable(&panel->base);
 }
diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 654bc52d9ff3..bd5ba10822c2 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -725,7 +725,7 @@ static int rockchip_lvds_probe(struct platform_device *pdev)
 
 static int rockchip_lvds_remove(struct platform_device *pdev)
 {
-	struct rockchip_lvds *lvds = dev_get_drvdata(&pdev->dev);
+	struct rockchip_lvds *lvds = platform_get_drvdata(pdev);
 
 	component_del(&pdev->dev, &rockchip_lvds_component_ops);
 	clk_unprepare(lvds->pclk);
diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
index 457ec04950f7..c7707338bfdb 100644
--- a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
+++ b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
@@ -284,7 +284,7 @@ static int aspeed_gfx_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	dev_set_drvdata(&pdev->dev, priv);
+	platform_set_drvdata(pdev, priv);
 
 	ret = sysfs_create_group(&pdev->dev.kobj, &aspeed_sysfs_attr_group);
 	if (ret)
diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
index d0c65610ebb5..989a05bc8197 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
@@ -2457,7 +2457,7 @@ static int cdns_mhdp_probe(struct platform_device *pdev)
 
 static int cdns_mhdp_remove(struct platform_device *pdev)
 {
-	struct cdns_mhdp_device *mhdp = dev_get_drvdata(&pdev->dev);
+	struct cdns_mhdp_device *mhdp = platform_get_drvdata(pdev);
 	unsigned long timeout = msecs_to_jiffies(100);
 	bool stop_fw = false;
 	int ret;
diff --git a/drivers/gpu/drm/panel/panel-lvds.c b/drivers/gpu/drm/panel/panel-lvds.c
index 66c7d765b8f7..59a8d99e777d 100644
--- a/drivers/gpu/drm/panel/panel-lvds.c
+++ b/drivers/gpu/drm/panel/panel-lvds.c
@@ -244,7 +244,7 @@ static int panel_lvds_probe(struct platform_device *pdev)
 
 static int panel_lvds_remove(struct platform_device *pdev)
 {
-	struct panel_lvds *lvds = dev_get_drvdata(&pdev->dev);
+	struct panel_lvds *lvds = platform_get_drvdata(pdev);
 
 	drm_panel_remove(&lvds->panel);
 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
