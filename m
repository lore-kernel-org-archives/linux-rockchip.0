Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FE89E67497
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Dec 2025 10:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLV365GPX6MAUah5gHREsxe/v1wntKYFKEVvxFbI3K4=; b=j2aeeEkFPGj/Gl
	s6MIKO1R70Al8nT9prtNKbptCLDdBqU5kG1CfEAAiXfv2iQb7TvCQYO4HA0tuVqM0bSXQ0U/NPion
	V+Yh0whyAdbRc2NP5WjYASuH+zTbvcHLufr6qlDugUCOXv8D4Ef9PNSja+0LauQdmSK2mgiULVq1h
	01qeUXqdPqRMpefwdHNuGib00L9Wl5jlYZyrO9E9BXxJVlzi+zuNRZQXyPVyZHs8U1N+qAvRfSVq0
	ndQg+F5TPUbFUeAPwAr7W9cQgeOAqvCWLjRfPfoHP6NWT4L6D3zFfVz57yZ4f91RoYzNPA1RrTCvW
	NCpP1UCv/9NzG3J9i7jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXGyH-0000000CLNo-3p4v;
	Sun, 21 Dec 2025 10:47:29 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXGy0-0000000CKxM-0xdL;
	Sun, 21 Dec 2025 10:47:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1766314030;
	bh=ty7rHkOBss4XtGNZPB+rY4ONc7mJMM6L//EU0KH5icE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=f2gwIOkIjo4DegkSbebeUFtOHMsrE0GnwQpcszgkRBexSxKXpqKMkubIsP5nf3yxT
	 h1EvKVj/E46H8sa/da0tMljbN3K6fQ3bKTFM62Inyfk6aLibHxb/cmV79YscRfsHIh
	 vci6pD2mwkuxZXJENidUJ4W8hyxmV6+mxhQm4K+YQxzRtzkPNDkWC+FmBbWaOgb+uf
	 RguynmVAq6oliRB4BKg4dE9VfC12V6KeemhENpBRTTBhx05BTZd+72CfphMP/YkBWu
	 ceoUnVZ2jGJ+dsnb6v6ofa+4owXSHO85WhUpxoZty4ed+94W8C/t46XUdjt5wiAu7w
	 i0Q5OG8+Fdm8g==
Received: from localhost (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 17ACC17E1517;
	Sun, 21 Dec 2025 11:47:10 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sun, 21 Dec 2025 12:46:57 +0200
Subject: [PATCH v5 10/11] phy: rockchip: samsung-hdptx: Extend
 rk_hdptx_phy_verify_hdmi_config() helper
MIME-Version: 1.0
Message-Id: <20251221-phy-hdptx-frl-v5-10-dac390a780be@collabora.com>
References: <20251221-phy-hdptx-frl-v5-0-dac390a780be@collabora.com>
In-Reply-To: <20251221-phy-hdptx-frl-v5-0-dac390a780be@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251221_024712_472213_94B913C9 
X-CRM114-Status: GOOD (  13.06  )
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

In order to facilitate introduction of HDMI 2.1 FRL support and to avoid
recomputing the link rate after verifying the HDMI configuration given
as input, extend rk_hdptx_phy_verify_hdmi_config() by providing an
optional output parameter to store the validated configuration.

For improved code readability, also rename the existing hdmi input
parameter.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 35 ++++++++++++-----------
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 3bec69058f7b..ecf024b5414f 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1439,25 +1439,24 @@ static int rk_hdptx_phy_power_off(struct phy *phy)
 }
 
 static int rk_hdptx_phy_verify_hdmi_config(struct rk_hdptx_phy *hdptx,
-					   struct phy_configure_opts_hdmi *hdmi)
+					   struct phy_configure_opts_hdmi *hdmi_in,
+					   struct rk_hdptx_hdmi_cfg *hdmi_out)
 {
 	int i;
 
-	if (!hdmi->tmds_char_rate || hdmi->tmds_char_rate > HDMI20_MAX_RATE)
+	if (!hdmi_in->tmds_char_rate || hdmi_in->tmds_char_rate > HDMI20_MAX_RATE)
 		return -EINVAL;
 
 	for (i = 0; i < ARRAY_SIZE(rk_hdptx_tmds_ropll_cfg); i++)
-		if (hdmi->tmds_char_rate == rk_hdptx_tmds_ropll_cfg[i].rate)
+		if (hdmi_in->tmds_char_rate == rk_hdptx_tmds_ropll_cfg[i].rate)
 			break;
 
 	if (i == ARRAY_SIZE(rk_hdptx_tmds_ropll_cfg) &&
-	    !rk_hdptx_phy_clk_pll_calc(hdmi->tmds_char_rate, NULL))
+	    !rk_hdptx_phy_clk_pll_calc(hdmi_in->tmds_char_rate, NULL))
 		return -EINVAL;
 
-	if (!hdmi->bpc)
-		hdmi->bpc = 8;
-
-	switch (hdmi->bpc) {
+	switch (hdmi_in->bpc) {
+	case 0:
 	case 8:
 	case 10:
 	case 12:
@@ -1467,6 +1466,11 @@ static int rk_hdptx_phy_verify_hdmi_config(struct rk_hdptx_phy *hdptx,
 		return -EINVAL;
 	}
 
+	if (hdmi_out) {
+		hdmi_out->rate = hdmi_in->tmds_char_rate;
+		hdmi_out->bpc = hdmi_in->bpc ?: 8;
+	}
+
 	return 0;
 }
 
@@ -1732,17 +1736,15 @@ static int rk_hdptx_phy_configure(struct phy *phy, union phy_configure_opts *opt
 	int ret;
 
 	if (mode != PHY_MODE_DP) {
-		ret = rk_hdptx_phy_verify_hdmi_config(hdptx, &opts->hdmi);
+		ret = rk_hdptx_phy_verify_hdmi_config(hdptx, &opts->hdmi, &hdptx->hdmi_cfg);
 		if (ret) {
 			dev_err(hdptx->dev, "invalid hdmi params for phy configure\n");
 		} else {
-			hdptx->hdmi_cfg.rate = opts->hdmi.tmds_char_rate;
-			hdptx->hdmi_cfg.bpc = opts->hdmi.bpc;
 			hdptx->restrict_rate_change = true;
+			dev_dbg(hdptx->dev, "%s rate=%llu bpc=%u\n", __func__,
+				hdptx->hdmi_cfg.rate, hdptx->hdmi_cfg.bpc);
 		}
 
-		dev_dbg(hdptx->dev, "%s rate=%llu bpc=%u\n", __func__,
-			hdptx->hdmi_cfg.rate, hdptx->hdmi_cfg.bpc);
 		return ret;
 	}
 
@@ -1786,7 +1788,7 @@ static int rk_hdptx_phy_validate(struct phy *phy, enum phy_mode mode,
 	struct rk_hdptx_phy *hdptx = phy_get_drvdata(phy);
 
 	if (mode != PHY_MODE_DP)
-		return rk_hdptx_phy_verify_hdmi_config(hdptx, &opts->hdmi);
+		return rk_hdptx_phy_verify_hdmi_config(hdptx, &opts->hdmi, NULL);
 
 	return rk_hdptx_phy_verify_dp_config(hdptx, &opts->dp);
 }
@@ -1926,12 +1928,11 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 		struct phy_configure_opts_hdmi hdmi = {
 			.tmds_char_rate = rate,
 		};
-		int ret = rk_hdptx_phy_verify_hdmi_config(hdptx, &hdmi);
+
+		int ret = rk_hdptx_phy_verify_hdmi_config(hdptx, &hdmi, &hdptx->hdmi_cfg);
 
 		if (ret)
 			return ret;
-
-		hdptx->hdmi_cfg.rate = rate;
 	}
 
 	/*

-- 
2.51.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
