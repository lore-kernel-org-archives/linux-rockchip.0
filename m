Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34E4CC07E9D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 08:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4VrBzaQXrbPYMPBd06M7cQa7m7JZlN3KdsIkKaxXEs=; b=Mokl6HsHqqgHdN
	rrGdA/9hrmj0bt/bgtVKKbVZjRSQTDq3wqDCs0w8eiU6hE3AdlE7mvobs8FXk3NGUMGPVLjuMhiEu
	fpQ5AlF2hiP4TFgsCRosd11QCYnaYXJ2PbpIALi1ezY1CoTSOnGoiCu5qLC+ZXDejYjr1hIsbjRbN
	SOPKEkp7Ji7xVcmP6oU3OlMh7RTLRq7hh7NM434krahe0pRSV4oJyaZe1pr70sC6fkcmNL4Zfndbo
	PpGZc1kkKzP70AEQYD/97vaP2g+XjKr3WCFIOT7F6LE8zdpYInfuQGxd3SWrevcvl9jgqZGUnKrRa
	vymzV+Sis3NqbhDzbAEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocj6v-002zB3-CZ; Mon, 26 Sep 2022 08:05:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocj6p-002z5w-Pf
	for linux-rockchip@lists.infradead.org; Mon, 26 Sep 2022 08:05:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ocj6Y-0007T5-7P; Mon, 26 Sep 2022 10:04:42 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ocj6W-002zK3-HT; Mon, 26 Sep 2022 10:04:39 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ocj6T-0016vg-S4; Mon, 26 Sep 2022 10:04:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 1/2] drm/rockchip: dw_hdmi: relax mode_valid hook
Date: Mon, 26 Sep 2022 10:04:34 +0200
Message-Id: <20220926080435.259617-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220926080435.259617-1-s.hauer@pengutronix.de>
References: <20220926080435.259617-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_010459_863663_333832DA 
X-CRM114-Status: GOOD (  19.38  )
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

The driver checks if the pixel clock of the given mode matches an entry
in the mpll config table. At least for the Synopsys phy the frequencies
in the mpll table are meant as a frequency range up to which the entry
works, not as a frequency that must match the pixel clock. Return
MODE_OK when the pixelclock is smaller than one of the mpll frequencies
to allow for more display resolutions.
Limit this behaviour to the Synopsys phy at the moment and keep the
current behaviour of forcing exact pixelclock rates for the other phys
until it has been sorted out how and if the vendor specific phys work
with non standard clock rates.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v1:
    - Allow non standard clock rates only for the Synopsys phy and stick the
      vendor specific phys to current behaviour.

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 26 +++++++++++++++------
 1 file changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index c14f888938688..6a387780562b1 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -74,6 +74,7 @@ struct rockchip_hdmi {
 	struct regmap *regmap;
 	struct rockchip_encoder encoder;
 	const struct rockchip_hdmi_chip_data *chip_data;
+	const struct dw_hdmi_plat_data *plat_data;
 	struct clk *ref_clk;
 	struct clk *grf_clk;
 	struct dw_hdmi *hdmi;
@@ -241,23 +242,32 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 }
 
 static enum drm_mode_status
-dw_hdmi_rockchip_mode_valid(struct dw_hdmi *hdmi, void *data,
+dw_hdmi_rockchip_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
 			    const struct drm_display_info *info,
 			    const struct drm_display_mode *mode)
 {
+	struct rockchip_hdmi *hdmi = data;
 	const struct dw_hdmi_mpll_config *mpll_cfg = rockchip_mpll_cfg;
 	int pclk = mode->clock * 1000;
-	bool valid = false;
+	bool exact_match = hdmi->plat_data->phy_force_vendor;
 	int i;
 
 	for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {
-		if (pclk == mpll_cfg[i].mpixelclock) {
-			valid = true;
-			break;
-		}
+		/*
+		 * For vendor specific phys force an exact match of the pixelclock
+		 * to preserve the original behaviour of the driver.
+		 */
+		if (exact_match && pclk == mpll_cfg[i].mpixelclock)
+			return MODE_OK;
+		/*
+		 * The Synopsys phy can work with pixelclocks up to the value given
+		 * in the corresponding mpll_cfg entry.
+		 */
+		if (!exact_match && pclk <= mpll_cfg[i].mpixelclock)
+			return MODE_OK;
 	}
 
-	return (valid) ? MODE_OK : MODE_BAD;
+	return MODE_BAD;
 }
 
 static void dw_hdmi_rockchip_encoder_disable(struct drm_encoder *encoder)
@@ -546,8 +556,10 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		return -ENOMEM;
 
 	hdmi->dev = &pdev->dev;
+	hdmi->plat_data = plat_data;
 	hdmi->chip_data = plat_data->phy_data;
 	plat_data->phy_data = hdmi;
+	plat_data->priv_data = hdmi;
 	encoder = &hdmi->encoder.encoder;
 
 	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
