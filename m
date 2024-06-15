Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB7EBC27C7B
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 17:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QDdP6XitnddxkUwpX+uKvq4xBvvXcdp1HoY1ZXCyNMo=; b=bRtf11ujBGlGEd
	X17n7bbMsm9GITmK77sZZGtekXGUpbEqegHXRatSvp02+sRPPGqu1pAEZUFVvpw+l31QQCsF5yNJd
	ph/qVHTU5Nwd4JRW5nd9017oMsLFdjYAn33O6fwM76eN6KK63725TnMak92sZR7Znv32Z501oMmrA
	7VRBQAigtfPqHFRDn3RStXf4I/zlqWrk0U67NOAT/kjxqjB8EKagW5jpf4zGJlwQZUhHl2tKbJb1Q
	YSy4B7/H3N8TqrWv0wKEXYz/qb/HQNZgr6z9K5VCfoZLfFlMbYovyter1sfMtn8IKPFXGGEvj4Mwy
	STfCFFZLShMiVYPHs4pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWqe-00000005meZ-2XuO;
	Sat, 15 Jun 2024 17:05:52 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWq3-00000005mAl-0q7S
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 17:05:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1718471099; bh=GI0v1s8ba9SK2ZoNJqavRuohwLSEeWbP8DGokxC9tW4=;
 b=RYMWVOAZ5kB+dNdeVN9+EVw4xWPsjtu8LvSzkDFR4POoYVfeoqNw2mgQKa7Ywefjcib06gxbv
 zs/VpXvp7qYu1XiOPwfcYLm+KH6cC0qJ+z93m+g7EvPW5LG/VBoVr8J+7O+sM6iryN0rgvwvxxt
 PyU5etW9Pb+Fbs48XXrKflpRmcL9WW5BxnYrISEHhuZTCXfDiMqxKzPQ4T3pcAMMSqx0F31shJ0
 v8eEQfKN24WkalSiJQiui3G0F5PL1n+wJrJXQOphHRvxUx+ohxcDGOdEdG3AzkOMIrY1wQyJdCP
 nnM/rLk3oCdOD9s1bD/OP3ncsKcI3/LUFSmtoUWfaccg==
From: Jonas Karlman <jonas@kwiboo.se>
To: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 "=?UTF-8?q?Heiko=20St=C3=BCbner?=" <heiko@sntech.de>, Andy Yan
 <andy.yan@rock-chips.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 07/13] drm/rockchip: dw_hdmi: Filter modes based on hdmiphy_clk
Date: Sat, 15 Jun 2024 17:03:58 +0000
Message-ID: <20240615170417.3134517-8-jonas@kwiboo.se>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240615170417.3134517-1-jonas@kwiboo.se>
References: <20240615170417.3134517-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 666dc9b824e0254b39804051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_100515_319570_B2E62F21 
X-CRM114-Status: GOOD (  16.55  )
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

RK3228 and RK3328 clock rate is being validated against a mpll config
table intended for Synopsys phy, and not the inno-hdmi-phy used.

Instead get a reference to the hdmiphy clk and validate rates against
it to enable use of HDMI2.0 modes, e.g. 4K@60Hz, on RK3228 and RK3328.

For Synopsis phy the max_tmds_clock validation is sufficient.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 35 ++++++++++-----------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 75b5d63ec570..4acf73b5692a 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -76,6 +76,7 @@ struct rockchip_hdmi {
 	struct rockchip_encoder encoder;
 	const struct rockchip_hdmi_chip_data *chip_data;
 	const struct dw_hdmi_plat_data *plat_data;
+	struct clk *hdmiphy_clk;
 	struct clk *ref_clk;
 	struct clk *grf_clk;
 	struct dw_hdmi *hdmi;
@@ -256,10 +257,7 @@ dw_hdmi_rockchip_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
 			    const struct drm_display_mode *mode)
 {
 	struct rockchip_hdmi *hdmi = data;
-	const struct dw_hdmi_mpll_config *mpll_cfg = rockchip_mpll_cfg;
 	int pclk = mode->clock * 1000;
-	bool exact_match = hdmi->plat_data->phy_force_vendor;
-	int i;
 
 	if (hdmi->chip_data->max_tmds_clock &&
 	    mode->clock > hdmi->chip_data->max_tmds_clock)
@@ -268,26 +266,18 @@ dw_hdmi_rockchip_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
 	if (hdmi->ref_clk) {
 		int rpclk = clk_round_rate(hdmi->ref_clk, pclk);
 
-		if (abs(rpclk - pclk) > pclk / 1000)
+		if (rpclk < 0 || abs(rpclk - pclk) > pclk / 1000)
 			return MODE_NOCLOCK;
 	}
 
-	for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {
-		/*
-		 * For vendor specific phys force an exact match of the pixelclock
-		 * to preserve the original behaviour of the driver.
-		 */
-		if (exact_match && pclk == mpll_cfg[i].mpixelclock)
-			return MODE_OK;
-		/*
-		 * The Synopsys phy can work with pixelclocks up to the value given
-		 * in the corresponding mpll_cfg entry.
-		 */
-		if (!exact_match && pclk <= mpll_cfg[i].mpixelclock)
-			return MODE_OK;
+	if (hdmi->hdmiphy_clk) {
+		int rpclk = clk_round_rate(hdmi->hdmiphy_clk, pclk);
+
+		if (rpclk < 0 || abs(rpclk - pclk) > pclk / 1000)
+			return MODE_NOCLOCK;
 	}
 
-	return MODE_BAD;
+	return MODE_OK;
 }
 
 static void dw_hdmi_rockchip_encoder_disable(struct drm_encoder *encoder)
@@ -638,6 +628,15 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		goto err_clk;
 	}
 
+	if (hdmi->phy) {
+		struct of_phandle_args clkspec;
+
+		clkspec.np = hdmi->phy->dev.of_node;
+		hdmi->hdmiphy_clk = of_clk_get_from_provider(&clkspec);
+		if (IS_ERR(hdmi->hdmiphy_clk))
+			hdmi->hdmiphy_clk = NULL;
+	}
+
 	if (hdmi->chip_data == &rk3568_chip_data) {
 		regmap_write(hdmi->regmap, RK3568_GRF_VO_CON1,
 			     HIWORD_UPDATE(RK3568_HDMI_SDAIN_MSK |
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
