Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA71CC982C3
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 13:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9a9hH7A2EjIQpdce6hiRCDlguJsDzWtaUdJr3W1O1I=; b=13d/fiiuUD+gSB
	D2gzvqGaSE32u8BBc2ibmFLUfWt0eVtJDEysur2GE07VjwU05pY/w/xt3C1/Qp1si2LVmhyMcZ8Sk
	J4FA7v/WjvFsT4RZsSG1g9t51z8kU+9NJYMkvUu7nqdoaY9R+2hRLntgHuiI6IEeq9sJbsL1nO59b
	XxVGhWjcu/sNz5BFtz0C7ivTrAeo+CrcA6lgzZbZchOHMACJHi5HUhN2OK0y4eZ0HazJw380l4o15
	u2yoCBgwZjhZJlUHeQi6HovncqPexwl7lSTTliW3VnSUl7pNnHfKKxBYRzOg/4/j+tqI90uNQSuWO
	3G9VznBDDH2eSM3Fr+jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pyW-00000009J2f-3tih;
	Wed, 16 Sep 2026 13:47:00 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6py6-00000009Ik8-2Oca
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Sep 2026 13:46:44 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id C37934E40727;
	Wed, 16 Sep 2026 13:46:32 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 94B6A60337;
	Wed, 16 Sep 2026 13:46:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2319A11C7B031;
	Wed, 16 Sep 2026 15:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1789566384; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=7JYe70QxeTzij/tSzgebCehRNZ/P8wl4nEuocul1G1A=;
	b=vJhCH9asXkMbC8mU6xmTlwqD3d1PepS3t3atiWwABctTcX4/6JCoCiilaYSJxmgap4i0Hi
	FXfV2kkY0Y/NGOdcwONJ8/Cs/n1L7aT5O8G7EGE9U6ZaiYr9SG8HdMfFZTC5w481G82zXL
	OHqg2kpZlol6boPgCn10aADQHClvGL1vonHyUHMfXx8pGKoK0oitXM8OItttDFNnT7giW2
	+sXku2Cop9KZtsP+psuns7ZeRK4Y6dF9LSFXHS69y+Izo/1zhX+/iOI9EP6bXNokxbkzxz
	RGF7ForS3BiW6EPqxC3dVApq4tlkmUaXRP15Y0CJm3U+h2Mqxi7Hvmng86DhTA==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Wed, 16 Sep 2026 15:45:30 +0200
Subject: [PATCH v3 06/19] drm/bridge: remove devm_drm_put_bridge()
MIME-Version: 1.0
Message-Id: <20260916-drm-bridge-every-panel-v3-6-83afb4f1a707@bootlin.com>
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
X-CRM114-CacheID: sfid-20260916_064637_346267_7F3B52E7 
X-CRM114-Status: GOOD (  10.49  )
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

The deprecated devm_drm_put_bridge() function is not used anymore.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 Documentation/gpu/todo.rst   | 16 ----------------
 drivers/gpu/drm/drm_bridge.c | 17 -----------------
 include/drm/drm_bridge.h     |  2 --
 3 files changed, 35 deletions(-)

diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
index b7351467dc74..cb0ce432c114 100644
--- a/Documentation/gpu/todo.rst
+++ b/Documentation/gpu/todo.rst
@@ -484,22 +484,6 @@ Contact: Douglas Anderson <dianders@chromium.org>
 
 Level: Starter
 
-Remove devm_drm_put_bridge()
-----------------------------
-
-Due to how the panel bridge handles the drm_bridge object lifetime, special
-care must be taken to dispose of the drm_bridge object when the
-panel_bridge is removed. This is currently managed using
-devm_drm_put_bridge(), but that is an unsafe, temporary workaround. To fix
-that, the DRM panel lifetime needs to be reworked. After the rework is
-done, remove devm_drm_put_bridge() and the TODO in
-drm_panel_bridge_remove().
-
-Contact: Maxime Ripard <mripard@kernel.org>,
-         Luca Ceresoli <luca.ceresoli@bootlin.com>
-
-Level: Intermediate
-
 Convert users of of_drm_find_bridge() to of_drm_find_and_get_bridge()
 ---------------------------------------------------------------------
 
diff --git a/drivers/gpu/drm/drm_bridge.c b/drivers/gpu/drm/drm_bridge.c
index 649f6b6ab5c8..632dccd79e91 100644
--- a/drivers/gpu/drm/drm_bridge.c
+++ b/drivers/gpu/drm/drm_bridge.c
@@ -1737,23 +1737,6 @@ struct drm_bridge *of_drm_get_bridge_by_endpoint(const struct device_node *np,
 EXPORT_SYMBOL_GPL(of_drm_get_bridge_by_endpoint);
 #endif
 
-/**
- * devm_drm_put_bridge - Release a bridge reference obtained via devm
- * @dev: device that got the bridge via devm
- * @bridge: pointer to a struct drm_bridge obtained via devm
- *
- * Same as drm_bridge_put() for bridge pointers obtained via devm functions
- * such as devm_drm_bridge_alloc().
- *
- * This function is a temporary workaround and MUST NOT be used. Manual
- * handling of bridge lifetime is inherently unsafe.
- */
-void devm_drm_put_bridge(struct device *dev, struct drm_bridge *bridge)
-{
-	devm_release_action(dev, drm_bridge_put_void, bridge);
-}
-EXPORT_SYMBOL(devm_drm_put_bridge);
-
 static void drm_bridge_debugfs_show_bridge(struct drm_printer *p,
 					   struct drm_bridge *bridge,
 					   unsigned int idx,
diff --git a/include/drm/drm_bridge.h b/include/drm/drm_bridge.h
index 11c203391de5..9a688b20bc1e 100644
--- a/include/drm/drm_bridge.h
+++ b/include/drm/drm_bridge.h
@@ -1473,8 +1473,6 @@ void drm_bridge_hpd_disable(struct drm_bridge *bridge);
 void drm_bridge_hpd_notify(struct drm_bridge *bridge,
 			   enum drm_connector_status status);
 
-void devm_drm_put_bridge(struct device *dev, struct drm_bridge *bridge);
-
 void drm_bridge_debugfs_params(struct dentry *root);
 void drm_bridge_debugfs_encoder_params(struct dentry *root, struct drm_encoder *encoder);
 

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
