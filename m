Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B5E2C88E5C
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 13:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKEVAK9RnraHsAojSir4SFacSlc799c9cZ27w8+huCA=; b=uALKA8XdGXnHh5
	g+loOLi6I/tcEzNME1PC9b+m36M+FXjjLxAiRiliIejm80DRUZriR6Z76xnYP6dEUDo3wlji8mx48
	bjE6VaWp3I3QEDIfmJl3XTqGhSWoOnLrwKENfq2zwGcAim6f1Rb2hcz5njvpuXEjX7cH9WRpzNS/f
	LfQ0Oxaz/66crn1ZALRMid498zYs5MAx7CeVok81FEpyfR6S8LxB9JF/F81WtVJepO6Ki8E3n++bc
	2LmVYbs2QP9L2lusfh2zG+YiFuu7BEFgEIq1FucDeFIAF1nMi72eBPJf4MVQLKVkg2cEQRL7Iqrb9
	p8nBfCQw0rwPOvOksoHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pxx-00000009IeX-1iaQ;
	Wed, 16 Sep 2026 13:46:25 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pxh-00000009IUF-1Pp7
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Sep 2026 13:46:11 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id CA0C11A08E1;
	Wed, 16 Sep 2026 13:46:07 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 93E7660337;
	Wed, 16 Sep 2026 13:46:07 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 680BF11C7B03A;
	Wed, 16 Sep 2026 15:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1789566365; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=3E/DleiMuFSTLVuEtlsom3pL9KlwnB1jDhq/hJdTS2s=;
	b=jcyziUB5f+XKLfGg0f90awIzxC9+e4tQ7SBLyDxK0rsPfvMLTF/a2qIzDM0NZi0kGUNKne
	cbt+3Rru48IUeIruFPwUZUSISizy3iItoVOFjctwMItV1OpG03FznkKpmPBWIVom9xf+wI
	EmagRqAsvGSlWwzMPa28+1FmoP6oE36mk31CxUyiG64POfR+CsxoVfGTmuelDsBIpgXTi7
	ZYS75G+tvuFOeirSEfjvRdF0Nk3y/mEy5Q5JkFvoLefR7LzLlARB1MWqGHjEXOYlj+isor
	HZ7SOc6wQ+B02C7cASkwslK1d+3XxFFOEpdT73v/qM70wTYvxFwamny/OmVmcQ==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Wed, 16 Sep 2026 15:45:27 +0200
Subject: [PATCH v3 03/19] drm/panel: move to a new module
MIME-Version: 1.0
Message-Id: <20260916-drm-bridge-every-panel-v3-3-83afb4f1a707@bootlin.com>
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
X-CRM114-CacheID: sfid-20260916_064609_620403_8BC27FBE 
X-CRM114-Status: GOOD (  11.08  )
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

Work is in progress for every drm_panel to embed a drm_bridge, which will
make the drm_panel code (currently in the drm module) depend on the
drm_kms_helper module.

To avoid the main drm module to depend on other drm modules and create a
depepdency loop, move drm_panel.o to a new drm_panel module, so the module
dependency will be drm_panel -> drm_kms_helper instead.

Reviewed-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 drivers/gpu/drm/Makefile      | 2 +-
 drivers/gpu/drm/panel/Kconfig | 2 +-
 include/drm/drm_panel.h       | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index e635fcffd379..29c9c1d90c11 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -79,7 +79,6 @@ drm-$(CONFIG_DRM_CLIENT) += \
 	drm_client_modeset.o \
 	drm_client_sysrq.o
 drm-$(CONFIG_COMPAT) += drm_ioc32.o
-drm-$(CONFIG_DRM_PANEL) += drm_panel.o
 drm-$(CONFIG_OF) += drm_of.o
 drm-$(CONFIG_PCI) += drm_pci.o
 drm-$(CONFIG_DEBUG_FS) += \
@@ -96,6 +95,7 @@ drm-$(CONFIG_DRM_PANIC_SCREEN_QR_CODE) += drm_panic_qr.o
 drm-$(CONFIG_DRM_RAS) += drm_ras.o drm_ras_nl.o drm_ras_genl_family.o
 obj-$(CONFIG_DRM)	+= drm.o
 
+obj-$(CONFIG_DRM_PANEL) += drm_panel.o
 obj-$(CONFIG_DRM_PANEL_ORIENTATION_QUIRKS) += drm_panel_orientation_quirks.o
 obj-$(CONFIG_DRM_PANEL_BACKLIGHT_QUIRKS) += drm_panel_backlight_quirks.o
 
diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index 747f47347521..0a79a0558101 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config DRM_PANEL
-	bool
+	tristate
 	depends on DRM
 	help
 	  Panel registration and lookup framework.
diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
index bf15e40fd796..34fcbcdda2c8 100644
--- a/include/drm/drm_panel.h
+++ b/include/drm/drm_panel.h
@@ -336,7 +336,7 @@ void drm_panel_disable(struct drm_panel *panel);
 
 int drm_panel_get_modes(struct drm_panel *panel, struct drm_connector *connector);
 
-#if defined(CONFIG_OF) && defined(CONFIG_DRM_PANEL)
+#if defined(CONFIG_OF) && IS_ENABLED(CONFIG_DRM_PANEL)
 struct drm_panel *of_drm_find_panel(const struct device_node *np);
 int drm_of_find_panel_or_bridge(const struct device_node *np,
 				int port, int endpoint,
@@ -357,7 +357,7 @@ static inline int drm_of_find_panel_or_bridge(const struct device_node *np,
 }
 #endif
 
-#if defined(CONFIG_DRM_PANEL)
+#if IS_ENABLED(CONFIG_DRM_PANEL)
 bool drm_is_panel_follower(struct device *dev);
 int drm_panel_add_follower(struct device *follower_dev,
 			   struct drm_panel_follower *follower);

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
