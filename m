Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61AB5CD8C9F
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 17:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+Mw/cYFXrCi7XWVX5nuMONS/1biniecQ2TsH6uY5oA=; b=cb5lop1QisqWH5
	2JrWdW944B3ePS5JwUCYYXkPV3I4orWyPlUOvCfseBNh+CVws7a+TRgediUhZJ9v6vbY3E3cJJ2h0
	ByKmcAEY5TgU/Hc/bXOWsvnNOrQvEKeC4xH8fnGekguI7YOkuN4s8smPZqsIHTQ93MRFYmpfyFRr2
	IfOdeIFvnQ/5uKfk82YHh1avvQhKaVzr/5phgdXgJ/6916NDUskTrJzsmtIsKGhc5UO4tabb3NhdD
	eQ+wrJJ2oAWBrIabrI7AguKoh9wCG+PzSQN+6zh+mKETNHbCqMgwj27Siy3M75pD9t/Krq9RR7Q6F
	lEQj3zI+q7nsYw9H7PLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWeEH-00000004ESS-1icn;
	Mon, 08 Jun 2026 17:57:41 +0000
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWeEE-00000004EQg-3d3e
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 17:57:40 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id 006d021491bc7-69e8583107aso801973eaf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 10:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780941457; x=1781546257; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mFoYdAxl4NolMJmpm2ZDGLTzkpcIZ1kRqHVd6sBUF0s=;
        b=sO1hnPDr5oJ85Qj+cQtx4/z7dI7ixVyzrRDEucQ3/kSQ7LMBfKYkp7u7aDYzxKUAV+
         KDgHdMmzRr8k+w+WaY6S92uQsLU+zDxHarfcOykPhWKT8Pqji3hJutozlarck8BF1nul
         Zx3HY9+Z88ztBSY1Q/amrVgbxGOk0uGJznvpwUNFRDpdXE817O2XzygxWOVC5AYDRmY1
         HbjWx8Rl57V1+l4oPKb++PrLsEezlMaFpbuksf8tXq7Boex27pqBTfKCxMSfqBIugdLS
         +xiIvtmrTnChfOONaj4X1Kji/NASIcFvtwKv+7TlqxJc4T4UR5hbatw27TSml89RkLPM
         ke/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780941457; x=1781546257;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mFoYdAxl4NolMJmpm2ZDGLTzkpcIZ1kRqHVd6sBUF0s=;
        b=ji76y9sdoadu82XoXbxc4B3mLO8jdasqVhuqFKcCTttBdWVBOWPCj/+rZYXAnmv862
         gfs3/UhP2Jvt1z1prjvia4NfmFuZtjVeKrAzL1rt2CDisoup5Hb0wR1Vlwd6MKp2R9Z1
         sW84ptn7Yf1b29U/6JrSQMJ9ZGnEjkmxPVz9RzWZ4dgWgytcAK0/vV7Mg6clyj29C2i/
         lHt7ApYUyd5YBAM2HV/PrgqZNlm5y0c4wh9FdQ++iIpCqutkt/h1Htxo5sl8qrRxdUp5
         BM3dMCG5VwsECGX3y8Epra2SJa8a1wrlfSbex0Z2/Fom8PFxHhT1Da1RnYcXVyo4sFjY
         Bo/w==
X-Gm-Message-State: AOJu0YyNCc/EWTXSBQ/QuU7u7IwJWOqoydaFvs9JGzco3+OX16CK/UK2
	PBnAQJV4ZbYFbFbnj8MnPgbkuBIfyiLIPqvCeGQybZbXDwr+L3lLGsTPUF/Fq5ui
X-Gm-Gg: Acq92OF+RYlNexd5Hcp97OND2f5lzeT7y7f2azBKjlcNg7JZXwrJsgP8axTNnuM/SRM
	ON9kEc2eeiAv0UeksuX9xs+M/XyrQhKVUZcKHwXAw6xScDLSiwn7Xf3kPe6nuMbuuHiLiz8Jxfg
	0xpMg7yFNjCPG6npk94zEdNVaDcyuAqP7cHqg5o0DdzOK83of5FlYlmZwf1q/J+S7zAOjldTPMP
	vN1HdhJODEXnikcJQ1ca3fdqbeWT+f5xN5loiI2VnOJrjkDMUGoKbo6Rnwa2XF4zRX3PbFQRVv6
	l8ZDbUzH+KkV/BDWGf3rMD8T+HaAiLiX+eQFMyvIZMSvT9wb/GbVQsMXredmVxyn3IrPAbxgld5
	LasP+kmXZ26Fn5s5goh2PV9xJep4GotImcjRl3NHhzUMmDA89ZrZDCfTFJ1FlusYh4tS1u5pqfp
	vpHPzKX7S2C4vVgJK8l+HRUKFhGPXvczM=
X-Received: by 2002:a4a:ee83:0:b0:69d:e5f6:cefb with SMTP id 006d021491bc7-69e68cad71fmr8086780eaf.53.1780941457514;
        Mon, 08 Jun 2026 10:57:37 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d8297395sm15214316fac.11.2026.06.08.10.57.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 10:57:36 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V6 4/6] drm/panel: anbernic-td4310: Add RG Vita Pro panel
Date: Mon,  8 Jun 2026 12:55:19 -0500
Message-ID: <20260608175521.67449-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260608175521.67449-1-macroalpha82@gmail.com>
References: <20260608175521.67449-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_105739_011721_F4BA4A7B 
X-CRM114-Status: GOOD (  22.70  )
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

From: Chris Morgan <macromorgan@hotmail.com>

The panel used by Anbernic in the RG Vita-Pro is a DSI panel based
on the TD4310 controller IC. It measures approximately 5.5 inches
diagonally and is 1080x1920 in resolution.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/Kconfig                 |  10 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-anbernic-td4310.c | 257 ++++++++++++++++++
 3 files changed, 268 insertions(+)
 create mode 100644 drivers/gpu/drm/panel/panel-anbernic-td4310.c

diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index d592f4f4b939..61dd00297ecc 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -17,6 +17,16 @@ config DRM_PANEL_ABT_Y030XX067A
 	  Y030XX067A 320x480 3.0" panel as found in the YLM RG-280M, RG-300
 	  and RG-99 handheld gaming consoles.
 
+config DRM_PANEL_ANBERNIC_TD4310
+	tristate "Anbernic TD4310 LCD panel"
+	depends on GPIOLIB && OF
+	depends on DRM_MIPI_DSI
+	depends on BACKLIGHT_CLASS_DEVICE
+	help
+	  Say Y here to enable support for Anbernic designed panels with the
+	  TD4310 panel controller such as the ones used on the Anbernic RG
+	  Vita Pro.
+
 config DRM_PANEL_ARM_VERSATILE
 	tristate "ARM Versatile panel driver"
 	depends on OF
diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
index a4291dc3905b..9d8f70c9de3e 100644
--- a/drivers/gpu/drm/panel/Makefile
+++ b/drivers/gpu/drm/panel/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_DRM_PANEL_ABT_Y030XX067A) += panel-abt-y030xx067a.o
+obj-$(CONFIG_DRM_PANEL_ANBERNIC_TD4310) += panel-anbernic-td4310.o
 obj-$(CONFIG_DRM_PANEL_ARM_VERSATILE) += panel-arm-versatile.o
 obj-$(CONFIG_DRM_PANEL_ASUS_Z00T_TM5P5_NT35596) += panel-asus-z00t-tm5p5-n35596.o
 obj-$(CONFIG_DRM_PANEL_AUO_A030JTN01) += panel-auo-a030jtn01.o
diff --git a/drivers/gpu/drm/panel/panel-anbernic-td4310.c b/drivers/gpu/drm/panel/panel-anbernic-td4310.c
new file mode 100644
index 000000000000..9a1b4525423c
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-anbernic-td4310.c
@@ -0,0 +1,257 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Driver for Anbernic panels with TD4310 panel controller.
+ *
+ * Copyright (C) 2026 Chris Morgan <macromorgan@hotmail.com>
+ *
+ */
+
+#include <linux/gpio/consumer.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/regulator/consumer.h>
+
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_panel.h>
+#include <drm/drm_probe_helper.h>
+
+#include <video/mipi_display.h>
+
+struct anbernic_panel_td4310_info {
+	const struct drm_display_mode *display_mode;
+	u16 width_mm;
+	u16 height_mm;
+	u32 bus_flags;
+	unsigned long mode_flags;
+	u32 format;
+	u32 lanes;
+	u16 prepare_delay;
+	u16 reset_delay;
+	u16 init_delay;
+	u16 enable_delay;
+	u16 disable_delay;
+	u16 unprepare_delay;
+};
+
+struct anbernic_panel_td4310 {
+	struct device *dev;
+	struct mipi_dsi_device *dsi;
+	struct drm_panel panel;
+	const struct anbernic_panel_td4310_info *panel_info;
+	struct gpio_desc *reset_gpio;
+	struct gpio_desc *enable_gpio;
+	struct regulator *vdd;
+	enum drm_panel_orientation orientation;
+};
+
+static inline struct anbernic_panel_td4310 *panel_to_anbernic_panel_td4310(struct drm_panel *panel)
+{
+	return container_of(panel, struct anbernic_panel_td4310, panel);
+}
+
+static int panel_anbernic_td4310_prepare(struct drm_panel *panel)
+{
+	struct anbernic_panel_td4310 *ctx = panel_to_anbernic_panel_td4310(panel);
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
+	int ret;
+
+	ret = regulator_enable(ctx->vdd);
+	if (ret)
+		return ret;
+
+	ret = gpiod_set_value_cansleep(ctx->enable_gpio, 1);
+	if (ret)
+		goto err_enable;
+
+	if (ctx->panel_info->enable_delay)
+		mipi_dsi_msleep(&dsi_ctx, ctx->panel_info->enable_delay);
+
+	ret = gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+	if (ret)
+		goto err_reset;
+
+	mipi_dsi_msleep(&dsi_ctx, 10);
+
+	ret = gpiod_set_value_cansleep(ctx->reset_gpio, 0);
+	if (ret)
+		goto err_reset;
+
+	if (ctx->panel_info->reset_delay)
+		mipi_dsi_msleep(&dsi_ctx, ctx->panel_info->reset_delay);
+
+	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
+	mipi_dsi_msleep(&dsi_ctx, ctx->panel_info->prepare_delay);
+	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
+	mipi_dsi_msleep(&dsi_ctx, ctx->panel_info->prepare_delay);
+
+	if (dsi_ctx.accum_err) {
+		ret = dsi_ctx.accum_err;
+		goto err_reset;
+	}
+
+	return 0;
+
+err_reset:
+	gpiod_set_value_cansleep(ctx->enable_gpio, 0);
+err_enable:
+	regulator_disable(ctx->vdd);
+	return ret;
+}
+
+static int panel_anbernic_td4310_unprepare(struct drm_panel *panel)
+{
+	struct anbernic_panel_td4310 *ctx = panel_to_anbernic_panel_td4310(panel);
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
+
+	mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
+	mipi_dsi_msleep(&dsi_ctx, ctx->panel_info->unprepare_delay);
+	mipi_dsi_dcs_enter_sleep_mode_multi(&dsi_ctx);
+	mipi_dsi_msleep(&dsi_ctx, ctx->panel_info->disable_delay);
+
+	gpiod_set_value_cansleep(ctx->enable_gpio, 0);
+
+	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+
+	regulator_disable(ctx->vdd);
+
+	return 0;
+}
+
+static int panel_anbernic_td4310_get_mode(struct drm_panel *panel,
+				    struct drm_connector *connector)
+{
+	struct anbernic_panel_td4310 *ctx = panel_to_anbernic_panel_td4310(panel);
+	const struct anbernic_panel_td4310_info *panel_info = ctx->panel_info;
+
+	connector->display_info.bpc = 8;
+	connector->display_info.width_mm = panel_info->width_mm;
+	connector->display_info.height_mm = panel_info->height_mm;
+	connector->display_info.bus_flags = panel_info->bus_flags;
+
+	return drm_connector_helper_get_modes_fixed(connector, panel_info->display_mode);
+}
+
+static enum drm_panel_orientation panel_anbernic_td4310_get_orientation(struct drm_panel *panel)
+{
+	struct anbernic_panel_td4310 *ctx = panel_to_anbernic_panel_td4310(panel);
+
+	return ctx->orientation;
+}
+
+static const struct drm_panel_funcs panel_anbernic_td4310_funcs = {
+	.prepare = panel_anbernic_td4310_prepare,
+	.unprepare = panel_anbernic_td4310_unprepare,
+	.get_modes = panel_anbernic_td4310_get_mode,
+	.get_orientation = panel_anbernic_td4310_get_orientation,
+};
+
+static int panel_anbernic_td4310_probe(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	struct anbernic_panel_td4310 *ctx;
+	int ret;
+
+	ctx = devm_drm_panel_alloc(dev, struct anbernic_panel_td4310, panel,
+				   &panel_anbernic_td4310_funcs,
+				   DRM_MODE_CONNECTOR_DSI);
+	if (IS_ERR(ctx))
+		return PTR_ERR(ctx);
+
+	ctx->dev = dev;
+
+	ctx->panel_info = of_device_get_match_data(dev);
+	if (!ctx->panel_info)
+		return -EINVAL;
+
+	ret = of_drm_get_panel_orientation(dev->of_node, &ctx->orientation);
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "Failed to get panel orientation\n");
+
+	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(ctx->reset_gpio))
+		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
+				     "Cannot get reset gpio\n");
+
+	ctx->enable_gpio = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_LOW);
+	if (IS_ERR(ctx->enable_gpio))
+		return dev_err_probe(dev, PTR_ERR(ctx->enable_gpio),
+				     "Cannot get enable gpio\n");
+
+	ctx->vdd = devm_regulator_get(dev, "vdd");
+	if (IS_ERR(ctx->vdd))
+		return dev_err_probe(dev, PTR_ERR(ctx->vdd),
+				     "Failed to request vdd regulator\n");
+
+	ctx->dsi = dsi;
+	mipi_dsi_set_drvdata(dsi, ctx);
+
+	dsi->lanes = ctx->panel_info->lanes;
+	dsi->format = ctx->panel_info->format;
+	dsi->mode_flags = ctx->panel_info->mode_flags;
+
+	ret = drm_panel_of_backlight(&ctx->panel);
+	if (ret)
+		return ret;
+
+	devm_drm_panel_add(dev, &ctx->panel);
+
+	ret = devm_mipi_dsi_attach(dev, dsi);
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "Failed to attach to DSI host\n");
+
+	return 0;
+}
+
+static const struct drm_display_mode anbernic_vitapro_mode = {
+	.clock = 140020,
+	.hdisplay = 1080,
+	.hsync_start = 1080 + 50,
+	.hsync_end = 1080 + 50 + 4,
+	.htotal = 1080 + 50 + 4 + 50,
+	.vdisplay = 1920,
+	.vsync_start = 1920 + 15,
+	.vsync_end = 1920 + 15 + 4,
+	.vtotal = 1920 + 15 + 4 + 32,
+	.flags = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+};
+
+static const struct anbernic_panel_td4310_info anbernic_vitapro_info = {
+	.display_mode = &anbernic_vitapro_mode,
+	.width_mm = 69,
+	.height_mm = 121,
+	.bus_flags = DRM_BUS_FLAG_DE_LOW | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		      MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET |
+		      MIPI_DSI_CLOCK_NON_CONTINUOUS,
+	.format = MIPI_DSI_FMT_RGB888,
+	.lanes = 4,
+	.prepare_delay = 50,
+	.reset_delay = 220,
+	.enable_delay = 120,
+	.disable_delay = 50,
+	.unprepare_delay = 20,
+};
+
+static const struct of_device_id panel_anbernic_td4310_of_match[] = {
+	{
+		.compatible = "anbernic,panel-vita-pro",
+		.data = &anbernic_vitapro_info,
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, panel_anbernic_td4310_of_match);
+
+static struct mipi_dsi_driver anbernic_panel_td4310_driver = {
+	.driver = {
+		.name = "panel-anbernic-td4310",
+		.of_match_table = panel_anbernic_td4310_of_match,
+	},
+	.probe	= panel_anbernic_td4310_probe,
+};
+module_mipi_dsi_driver(anbernic_panel_td4310_driver);
+
+MODULE_AUTHOR("Chris Morgan <macromorgan@hotmail.com>");
+MODULE_DESCRIPTION("DRM driver for Anbernic TD4310 MIPI DSI panels");
+MODULE_LICENSE("GPL");
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
