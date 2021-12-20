Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B98DDC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 11:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTCvP5oMxkNmTs4apCO9OkbobskV+GkCYONHF1uyLfw=; b=j2wJfRGuFu1e++
	pr2HuHF53GsdfuQHz0j151nJipLNNGTx/4QEHFJQ2AX1Q/WK+7pOvjAxanhyI7KIK8Fld/zOGJ6kd
	I0nRQt6721wuOwJN55LQYhI+39w66W6/F+y5WfTlrZpLPWIcac0fWZK60fGPKbJHe++kokndy2ubc
	5nZv0zgEOqXIzGsJu+q7ZKsvl7eGRLasynIOLSqf932B679Wjvem2v10lVy3qUPiINVRaaLJM7Gg1
	Vji1wvTc+FiPbC2SVw+BYKVhbtdwjv1CrO6YQ2qdV6r+HuUDqRFIjN4jm58Ju7BowEQK6jbf3J/hO
	q9C04N6G84vqpt0ewLKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzGhC-001utO-NP; Mon, 20 Dec 2021 11:19:10 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzGVY-001oNu-4h
 for linux-rockchip@lists.infradead.org; Mon, 20 Dec 2021 11:07:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mzGVE-0004x2-DO; Mon, 20 Dec 2021 12:06:48 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mzGVA-00EmE4-Ho; Mon, 20 Dec 2021 12:06:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 03/22] drm/rockchip: dw_hdmi: add rk3568 support
Date: Mon, 20 Dec 2021 12:06:11 +0100
Message-Id: <20211220110630.3521121-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211220110630.3521121-1-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_030708_243530_FC02C8CB 
X-CRM114-Status: GOOD (  14.41  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add a new dw_hdmi_plat_data struct and new compatible for rk3568.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 31 +++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index e352e0404f772..262eef614cb12 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -50,6 +50,10 @@
 #define RK3399_GRF_SOC_CON20		0x6250
 #define RK3399_HDMI_LCDC_SEL		BIT(6)
 
+#define RK3568_GRF_VO_CON1		0x0364
+#define RK3568_HDMI_SDAIN_MSK		BIT(15)
+#define RK3568_HDMI_SCLIN_MSK		BIT(14)
+
 #define HIWORD_UPDATE(val, mask)	(val | (mask) << 16)
 
 /**
@@ -470,6 +474,19 @@ static const struct dw_hdmi_plat_data rk3399_hdmi_drv_data = {
 	.use_drm_infoframe = true,
 };
 
+static struct rockchip_hdmi_chip_data rk3568_chip_data = {
+	.lcdsel_grf_reg = -1,
+};
+
+static const struct dw_hdmi_plat_data rk3568_hdmi_drv_data = {
+	.mode_valid = dw_hdmi_rockchip_mode_valid,
+	.mpll_cfg   = rockchip_mpll_cfg,
+	.cur_ctr    = rockchip_cur_ctr,
+	.phy_config = rockchip_phy_config,
+	.phy_data = &rk3568_chip_data,
+	.use_drm_infoframe = true,
+};
+
 static const struct of_device_id dw_hdmi_rockchip_dt_ids[] = {
 	{ .compatible = "rockchip,rk3228-dw-hdmi",
 	  .data = &rk3228_hdmi_drv_data
@@ -483,6 +500,9 @@ static const struct of_device_id dw_hdmi_rockchip_dt_ids[] = {
 	{ .compatible = "rockchip,rk3399-dw-hdmi",
 	  .data = &rk3399_hdmi_drv_data
 	},
+	{ .compatible = "rockchip,rk3568-dw-hdmi",
+	  .data = &rk3568_hdmi_drv_data
+	},
 	{},
 };
 MODULE_DEVICE_TABLE(of, dw_hdmi_rockchip_dt_ids);
@@ -517,6 +537,9 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 	encoder = &hdmi->encoder;
 
 	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
+
+	encoder->port = of_graph_get_port_by_id(dev->of_node, 0);
+
 	/*
 	 * If we failed to find the CRTC(s) which this encoder is
 	 * supposed to be connected to, it's because the CRTC has
@@ -547,6 +570,14 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		return ret;
 	}
 
+	if (hdmi->chip_data == &rk3568_chip_data) {
+		regmap_write(hdmi->regmap, RK3568_GRF_VO_CON1,
+			     HIWORD_UPDATE(RK3568_HDMI_SDAIN_MSK |
+					   RK3568_HDMI_SCLIN_MSK,
+					   RK3568_HDMI_SDAIN_MSK |
+					   RK3568_HDMI_SCLIN_MSK));
+	}
+
 	drm_encoder_helper_add(encoder, &dw_hdmi_rockchip_encoder_helper_funcs);
 	drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TMDS);
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
