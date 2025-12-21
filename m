Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 905A5E67499
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Dec 2025 10:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EvNOudW2178XULufEl5IFcYb75Y5vuq5C0n3uO54MQ=; b=LabIycmGDasmj8
	21AxFy6ai11ClTlK3PkOmRh5iJEjgzQ6hN1O374c8j38lafK0FYLk0NzYtm6CXDVivh87FpJiKat9
	vnaTwVuhumiT/422TwGlvSsoEpxZfS3pxRs3VKvWWFjkaiyJGA7xOgNspELPyQuutShqMMYpKraQ0
	K+6ELTWL4Qa4MmGEnU6lANgLSY/f77wg+q5+LE3ngW3j96+ha5wN1JnLQe2qUJkqmZ6R6+ZJRr0pW
	zg7yZ204QCMNSlYZmGBSrnXc95hrPrZiv0OudggWfCIhPjbFU+9GvH7VOQOMQseipf+o4/FT2DCOB
	gbV3orSU12NvsOtc2anQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXGyG-0000000CLLF-2zMz;
	Sun, 21 Dec 2025 10:47:28 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXGxz-0000000CKxI-42rZ;
	Sun, 21 Dec 2025 10:47:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1766314029;
	bh=A+uwENkGHcgMbTr9ZKV4OLhPhNTxapb5MY4SXE73Flg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=KJx3pzuW+epPA/n6tgZ5VVad7p0Lkm5UL3NsAn6Fq0N6byq7rPakeWp7fZK9WcZVB
	 6RmCMP7bbn+jh0X5olQAIM0g56G7INTdA0b3hupyQh3YN3de4W1PyOBrwnjvWceIE6
	 slQsJIkUazgxvfU3iX20WcRYdiawTrLMotk7+Qtcw0FQU/PgCfo+MKT5O0iVKvr378
	 3NqsOQNNfWAUln68zwoobVilklihuQziD68lRlecPrRCRK2Q0c2ioVzr+K7tpR/vV/
	 Lu75NTmIZB27c6NXcJDYZXtMjNE+9ICGC8z7O3kn3tZIc6cM+Jf40g3KQYd6bTJuo1
	 ImgSXHjUKMpUA==
Received: from localhost (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4169E17E1513;
	Sun, 21 Dec 2025 11:47:09 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sun, 21 Dec 2025 12:46:56 +0200
Subject: [PATCH v5 09/11] phy: rockchip: samsung-hdptx: Switch to driver
 specific HDMI config
MIME-Version: 1.0
Message-Id: <20251221-phy-hdptx-frl-v5-9-dac390a780be@collabora.com>
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
X-CRM114-CacheID: sfid-20251221_024712_253028_68F5EEEA 
X-CRM114-Status: GOOD (  17.81  )
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

In preparation to support the FRL operation mode which gets configured
via the lanes and rate per lane tuple, switch to a driver specific
struct for configuring the link rate and bpc.

This simplifies and optimizes the implementation by allowing implicit
switches between TMDS and FRL rates, without requiring additional checks
of the active PHY mode followed by recalculations of the link rate when
operating in FRL mode.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 44 +++++++++++++----------
 1 file changed, 25 insertions(+), 19 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 5a534c53a52d..3bec69058f7b 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -373,6 +373,11 @@ struct rk_hdptx_phy_cfg {
 	unsigned int phy_ids[MAX_HDPTX_PHY_NUM];
 };
 
+struct rk_hdptx_hdmi_cfg {
+	unsigned long long rate;
+	unsigned int bpc;
+};
+
 struct rk_hdptx_phy {
 	struct device *dev;
 	struct regmap *regmap;
@@ -380,7 +385,7 @@ struct rk_hdptx_phy {
 
 	int phy_id;
 	struct phy *phy;
-	struct phy_configure_opts_hdmi hdmi_cfg;
+	struct rk_hdptx_hdmi_cfg hdmi_cfg;
 	struct clk_bulk_data *clks;
 	int nr_clks;
 	struct reset_control_bulk_data rsts[RST_MAX];
@@ -932,19 +937,19 @@ static int rk_hdptx_tmds_ropll_cmn_config(struct rk_hdptx_phy *hdptx)
 	struct ropll_config rc = {0};
 	int i;
 
-	if (!hdptx->hdmi_cfg.tmds_char_rate)
+	if (!hdptx->hdmi_cfg.rate)
 		return 0;
 
 	for (i = 0; i < ARRAY_SIZE(rk_hdptx_tmds_ropll_cfg); i++)
-		if (hdptx->hdmi_cfg.tmds_char_rate == rk_hdptx_tmds_ropll_cfg[i].rate) {
+		if (hdptx->hdmi_cfg.rate == rk_hdptx_tmds_ropll_cfg[i].rate) {
 			cfg = &rk_hdptx_tmds_ropll_cfg[i];
 			break;
 		}
 
 	if (!cfg) {
-		if (!rk_hdptx_phy_clk_pll_calc(hdptx->hdmi_cfg.tmds_char_rate, &rc)) {
+		if (!rk_hdptx_phy_clk_pll_calc(hdptx->hdmi_cfg.rate, &rc)) {
 			dev_err(hdptx->dev, "%s cannot find pll cfg for rate=%llu\n",
-				__func__, hdptx->hdmi_cfg.tmds_char_rate);
+				__func__, hdptx->hdmi_cfg.rate);
 			return -EINVAL;
 		}
 
@@ -952,7 +957,7 @@ static int rk_hdptx_tmds_ropll_cmn_config(struct rk_hdptx_phy *hdptx)
 	}
 
 	dev_dbg(hdptx->dev, "%s rate=%llu mdiv=%u sdiv=%u sdm_en=%u k_sign=%u k=%u lc=%u\n",
-		__func__, hdptx->hdmi_cfg.tmds_char_rate, cfg->pms_mdiv, cfg->pms_sdiv + 1,
+		__func__, hdptx->hdmi_cfg.rate, cfg->pms_mdiv, cfg->pms_sdiv + 1,
 		cfg->sdm_en, cfg->sdm_num_sign, cfg->sdm_num, cfg->sdm_deno);
 
 	rk_hdptx_pre_power_up(hdptx);
@@ -1001,7 +1006,7 @@ static int rk_hdptx_tmds_ropll_mode_config(struct rk_hdptx_phy *hdptx)
 
 	regmap_write(hdptx->regmap, LNTOP_REG(0200), 0x06);
 
-	if (hdptx->hdmi_cfg.tmds_char_rate > HDMI14_MAX_RATE) {
+	if (hdptx->hdmi_cfg.rate > HDMI14_MAX_RATE) {
 		/* For 1/40 bitrate clk */
 		rk_hdptx_multi_reg_write(hdptx, rk_hdptx_tmds_lntop_highbr_seq);
 	} else {
@@ -1372,19 +1377,19 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
 	int ret, lane;
 
 	if (mode != PHY_MODE_DP) {
-		if (!hdptx->hdmi_cfg.tmds_char_rate) {
+		if (!hdptx->hdmi_cfg.rate) {
 			/*
 			 * FIXME: Temporary workaround to setup TMDS char rate
 			 * from the RK DW HDMI QP bridge driver.
 			 * Will be removed as soon the switch to the HDMI PHY
 			 * configuration API has been completed on both ends.
 			 */
-			hdptx->hdmi_cfg.tmds_char_rate = phy_get_bus_width(hdptx->phy) & 0xfffffff;
-			hdptx->hdmi_cfg.tmds_char_rate *= 100;
+			hdptx->hdmi_cfg.rate = phy_get_bus_width(hdptx->phy) & 0xfffffff;
+			hdptx->hdmi_cfg.rate *= 100;
 		}
 
 		dev_dbg(hdptx->dev, "%s rate=%llu bpc=%u\n", __func__,
-			hdptx->hdmi_cfg.tmds_char_rate, hdptx->hdmi_cfg.bpc);
+			hdptx->hdmi_cfg.rate, hdptx->hdmi_cfg.bpc);
 	}
 
 	ret = rk_hdptx_phy_consumer_get(hdptx);
@@ -1731,12 +1736,13 @@ static int rk_hdptx_phy_configure(struct phy *phy, union phy_configure_opts *opt
 		if (ret) {
 			dev_err(hdptx->dev, "invalid hdmi params for phy configure\n");
 		} else {
-			hdptx->hdmi_cfg = opts->hdmi;
+			hdptx->hdmi_cfg.rate = opts->hdmi.tmds_char_rate;
+			hdptx->hdmi_cfg.bpc = opts->hdmi.bpc;
 			hdptx->restrict_rate_change = true;
 		}
 
 		dev_dbg(hdptx->dev, "%s rate=%llu bpc=%u\n", __func__,
-			hdptx->hdmi_cfg.tmds_char_rate, hdptx->hdmi_cfg.bpc);
+			hdptx->hdmi_cfg.rate, hdptx->hdmi_cfg.bpc);
 		return ret;
 	}
 
@@ -1916,7 +1922,7 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 	 * To be dropped as soon as the RK DW HDMI QP bridge driver
 	 * switches to make use of phy_configure().
 	 */
-	if (!hdptx->restrict_rate_change && rate != hdptx->hdmi_cfg.tmds_char_rate) {
+	if (!hdptx->restrict_rate_change && rate != hdptx->hdmi_cfg.rate) {
 		struct phy_configure_opts_hdmi hdmi = {
 			.tmds_char_rate = rate,
 		};
@@ -1925,7 +1931,7 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 		if (ret)
 			return ret;
 
-		hdptx->hdmi_cfg = hdmi;
+		hdptx->hdmi_cfg.rate = rate;
 	}
 
 	/*
@@ -1933,7 +1939,7 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 	 * hence ensure rk_hdptx_phy_clk_set_rate() won't be invoked with
 	 * a different rate argument.
 	 */
-	return DIV_ROUND_CLOSEST_ULL(hdptx->hdmi_cfg.tmds_char_rate * 8, hdptx->hdmi_cfg.bpc);
+	return DIV_ROUND_CLOSEST_ULL(hdptx->hdmi_cfg.rate * 8, hdptx->hdmi_cfg.bpc);
 }
 
 static int rk_hdptx_phy_clk_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -1943,10 +1949,10 @@ static int rk_hdptx_phy_clk_set_rate(struct clk_hw *hw, unsigned long rate,
 	unsigned long long tmds_rate = DIV_ROUND_CLOSEST_ULL(rate * hdptx->hdmi_cfg.bpc, 8);
 
 	/* Revert any unlikely TMDS char rate change since round_rate() */
-	if (hdptx->hdmi_cfg.tmds_char_rate != tmds_rate) {
+	if (hdptx->hdmi_cfg.rate != tmds_rate) {
 		dev_warn(hdptx->dev, "Reverting unexpected rate change from %llu to %llu\n",
-			 tmds_rate, hdptx->hdmi_cfg.tmds_char_rate);
-		hdptx->hdmi_cfg.tmds_char_rate = tmds_rate;
+			 tmds_rate, hdptx->hdmi_cfg.rate);
+		hdptx->hdmi_cfg.rate = tmds_rate;
 	}
 
 	/*

-- 
2.51.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
