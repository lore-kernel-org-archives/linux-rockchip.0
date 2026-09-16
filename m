Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9763CC88E77
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 13:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5z8+7Ml0/vBl6gqY6T54zrLI1OdPIR4Q6CN9bDeuY0=; b=ts/UcN90Su4GNq
	v6q9RuCS/MAqBewA3EGaGL2sSgB1kCSM8xCXUxF5khL6pirTCNulGPzz+Sx3KHIGV45rU9PkVCrLC
	LOA0kNpIko5UkmCDw2YcT4fuK9ncC8BsZ7L9Iph97nHQaQAirHzxKZtDMvXez75MFLrlYhxQIUQI8
	CIgCxa2cqF3ZHm5s/iIojfOplw1ipLjMilTkTzy+gu5JAu/27CCe2P4gwi+QOwZLarC6ZYv8rmwqt
	ix6jFe44eJvO1oqd/9I2j/JrfWtRgR9sVMu1TTDnB0EO+asQJFRIOPvAFVNA8ajbPme3MWQ878j9P
	vOCf4GUgN82RPgCOvkCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pzL-00000009Jjj-18r4;
	Wed, 16 Sep 2026 13:47:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pyz-00000009JVC-41UB
	for linux-rockchip@bombadil.infradead.org;
	Wed, 16 Sep 2026 13:47:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=F5yJhJPNA3btj/uGTb70cyHyjYgUd7jvRnU4XSDRWHQ=; b=V1PuDg6tngl5xnwR6vkVx2bk45
	bgrGWcthM3kh00kQBj8/paSpxQxGUCc4DFPwvUukbjWgCNz70am1hpe2fiXNQjdH973DCod/qp298
	VIPI5SdT6ZfKWvuJ9MsVX5y/iWg5uyFRuRIlEQKR8GVFv9BCUtbgI1NJJRi/T1+mhipYaRbyL6OUZ
	CDajPOmRzG0zbzwT96QdVWB0H8mhuCYkZOf0EH1tygTJBEE0YCnKahMiZ6gHhycqVrBzUOqivM/6t
	twLNczew9sXJYnMvGOGI5zL0juWIiEjCiERqVqYIB6sr2SlIxddDdIhEYo3BPAUiqYUA1D7lUQXig
	kh/WNr/Q==;
Received: from smtpout-02.galae.net ([185.246.84.56])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6pyw-00000007w3c-3wAd
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Sep 2026 13:47:28 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 5347B1A07A8;
	Wed, 16 Sep 2026 13:47:26 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 2580F60337;
	Wed, 16 Sep 2026 13:47:26 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7739B11C7B03A;
	Wed, 16 Sep 2026 15:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1789566443; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=F5yJhJPNA3btj/uGTb70cyHyjYgUd7jvRnU4XSDRWHQ=;
	b=stJ7pcSMxhptZLIqoyaWMV1hH4b9QQQk7L+xVlggg8oZ2HFD1RYTe1AO07Us9PNoiShZyW
	7/pb0vWC3oB0rFJbdQuWiwcDzkGRZ1elh1YLtKxevTBxSlRDB4rUQ/kqyJE/KLobMHiaHI
	5ZbcTbOrLHR4XIPQyToJru4eirdg+Rkr4R5mYnrS/AEgeXCnws0Z1lXECyj8JGmErM7Qdt
	GrW7AC9t2kQc6cnPAtdPjazwEyHFTph8VS5P52CG30ZMHJg/z0t4HErFlbkIQxyRXdGGsj
	MYs/A9Ml/n2T/xWLZseOhyHMlpo+twpUo9KC0Y8zVTj2pB8+GXh8PZYl2SMHng==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Wed, 16 Sep 2026 15:45:36 +0200
Subject: [PATCH v3 12/19] drm/mcde: dsi: don't create a panel_bridge
MIME-Version: 1.0
Message-Id: <20260916-drm-bridge-every-panel-v3-12-83afb4f1a707@bootlin.com>
References: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com>
In-Reply-To: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
 Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>, 
 Paul Kocialkowski <paulk@sys-base.io>, Linus Walleij <linusw@kernel.org>, 
 Inki Dae <inki.dae@samsung.com>, Jagan Teki <jagan@amarulasolutions.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, Sean Paul <sean@poorly.run>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
 Randy Dunlap <rdunlap@infradead.org>
Cc: Albert Esteve <aesteve@redhat.com>, 
 Anusha Srivatsa <asrivats@redhat.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Hui Pu <Hui.Pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-mips@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, asahi@lists.linux.dev, 
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, 
 linux-tegra@vger.kernel.org, linux-doc@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.16.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_144727_157734_2DA0E27D 
X-CRM114-Status: GOOD (  14.78  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Now a panel_bridge is automatically created for every drm_panel and the
panel-bridge API is just a deprecated wrapper to access it.

Update and simplify the code by just getting a reference to the
already-existing bridge using of_drm_find_and_get_bridge().

Also keep the "connected to non-panel bridge (unsupported)\n" error logic
by using the drm_bridge_is_panel() function.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 drivers/gpu/drm/mcde/Kconfig    |  1 -
 drivers/gpu/drm/mcde/mcde_dsi.c | 41 +++++++++--------------------------------
 2 files changed, 9 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/mcde/Kconfig b/drivers/gpu/drm/mcde/Kconfig
index 6ebfb930cbfa..81e7d3796c06 100644
--- a/drivers/gpu/drm/mcde/Kconfig
+++ b/drivers/gpu/drm/mcde/Kconfig
@@ -10,7 +10,6 @@ config DRM_MCDE
 	select DRM_MIPI_DSI
 	select DRM_BRIDGE
 	select DRM_PANEL
-	select DRM_PANEL_BRIDGE
 	select DRM_KMS_HELPER
 	select DRM_GEM_DMA_HELPER
 	help
diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_dsi.c
index 77cf253a2152..daac8d67913d 100644
--- a/drivers/gpu/drm/mcde/mcde_dsi.c
+++ b/drivers/gpu/drm/mcde/mcde_dsi.c
@@ -37,7 +37,6 @@ struct mcde_dsi {
 	struct device *dev;
 	struct mcde *mcde;
 	struct drm_bridge bridge;
-	struct drm_panel *panel;
 	struct mipi_dsi_host dsi_host;
 	struct mipi_dsi_device *mdsi;
 	const struct drm_display_mode *mode;
@@ -1074,7 +1073,6 @@ static int mcde_dsi_bind(struct device *dev, struct device *master,
 	struct drm_device *drm = data;
 	struct mcde *mcde = to_mcde(drm);
 	struct mcde_dsi *d = dev_get_drvdata(dev);
-	struct drm_panel *panel = NULL;
 	struct drm_bridge *bridge __free(drm_bridge_put) = NULL;
 
 	if (!of_get_available_child_count(dev->of_node)) {
@@ -1102,40 +1100,21 @@ static int mcde_dsi_bind(struct device *dev, struct device *master,
 
 	/* Look for a panel as a child to this node */
 	for_each_available_child_of_node_scoped(dev->of_node, child) {
-		panel = of_drm_find_panel(child);
-		if (IS_ERR(panel)) {
-			dev_err(dev, "failed to find panel try bridge (%ld)\n",
-				PTR_ERR(panel));
-			panel = NULL;
-
-			bridge = of_drm_find_and_get_bridge(child);
-			if (!bridge) {
-				dev_err(dev, "failed to find bridge\n");
-				return -EINVAL;
-			}
+		bridge = of_drm_find_and_get_bridge(child);
+		if (!bridge) {
+			dev_err(dev, "failed to find bridge\n");
+			return -EINVAL;
 		}
 
-		if (panel || bridge)
-			break;
+		break;
 	}
-	if (panel) {
-		bridge = drm_panel_bridge_add_typed(panel,
-						    DRM_MODE_CONNECTOR_DSI);
-		drm_panel_put(panel);
-		if (IS_ERR(bridge)) {
-			dev_err(dev, "error adding panel bridge\n");
-			return PTR_ERR(bridge);
-		}
-		drm_bridge_get(bridge);
-		dev_info(dev, "connected to panel\n");
-		d->panel = panel;
-	} else if (bridge) {
+	if (!bridge) {
+		dev_err(dev, "no bridge\n");
+		return -ENODEV;
+	} else if (!drm_bridge_is_panel(bridge)) {
 		/* TODO: AV8100 HDMI encoder goes here for example */
 		dev_info(dev, "connected to non-panel bridge (unsupported)\n");
 		return -ENODEV;
-	} else {
-		dev_err(dev, "no panel or bridge\n");
-		return -ENODEV;
 	}
 
 	d->bridge.next_bridge = drm_bridge_get(bridge);
@@ -1157,8 +1136,6 @@ static void mcde_dsi_unbind(struct device *dev, struct device *master,
 {
 	struct mcde_dsi *d = dev_get_drvdata(dev);
 
-	if (d->panel)
-		drm_panel_bridge_remove(d->bridge.next_bridge);
 	regmap_update_bits(d->prcmu, PRCM_DSI_SW_RESET,
 			   PRCM_DSI_SW_RESET_DSI0_SW_RESETN, 0);
 }

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
