Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06D68CD4F4C
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 14:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95mFVZ6Oes8JtiRSMg7sSnbiMP00ZB15DAU3SkzmPmQ=; b=PNBsGGkR7AbihV
	Ye7zg3ZWqLp/uh8cM11KPHbQQp0ym3Vsc44W7qVMPSesssZj/R0Mcj3Z83BwnSYLr4eXoMF9+RyX5
	+beXS8b5PuJ68pZbXppnuAHFLdFO0/FZi9CJPWL7W5MgzM/D9Ur/FGpWyc5L+6wgrvGPViGTYOvTS
	xqZeCC5G8rnF9GUnIQj2XXnZlQkzH1BOXprnteZohZV0FToRnRaFPWsAIVIIgh4ePfT5d7E4JvPaO
	Gz1SuQYezrpkVKQAcCC4FWHcHCvG2g3qJhtPXyihNofH0wmJ+rhDM77HGGd1nhv9e3o8nEc2EIZtP
	two2/eWkpU52f9GyUs8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snJKL-0000000Gz5h-3y7q;
	Sun, 08 Sep 2024 14:55:45 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snJKH-0000000Gz2p-2iTa
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Sep 2024 14:55:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1725807327; bh=V2dGVPkW7unWHK16HPMh1/1tKtsd3J5CV8rFRUeW/os=;
 b=Xcwgz2+y07DjXft8NL+zfJrIjmZ8fw28DzkAvO75Yq1c3YWf+mmsCKWB6RW3IrXy9wJC8N7UW
 fUcvLtn1GWtp73WlMCHVUxqIwj3NPOOrXAjK/Bru3lzI+fCCE2VkQrk7CDfXPJTC39PhZ/xOWU1
 h03E6Xnq9KHY2XpDPs3oWAnYfww4LjV1ofRPXKjWHGxuanY2fUb5EMeB4pVvkNNiAs8pGgMCZB6
 pZ3J3xhvQCPljW4JqLlkQAoPPCuA/SO04okkwx00X5kxtx2nUk3a8scv4GRsMcUsV0GqbP5g9jt
 u6w/T+WzEO70CmXKY7vqIAeVp8i3eLxkFAHZJVJJ+QlA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: Diederik de Haas <didi.debian@cknow.org>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 1/7] drm/rockchip: dw_hdmi: Filter modes based on hdmiphy_clk
Date: Sun,  8 Sep 2024 14:54:58 +0000
Message-ID: <20240908145511.3331451-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240908145511.3331451-1-jonas@kwiboo.se>
References: <20240908145511.3331451-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 66ddbadb3c9877b459588e82
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_075541_831448_7515B264 
X-CRM114-Status: GOOD (  17.29  )
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
table intended for a Synopsys phy, and not the used inno-hdmi-phy.

Instead get a reference to the hdmiphy clk and validate rates against
it to enable use of HDMI2.0 modes, e.g. 4K@60Hz, on RK3228 and RK3328.

For Synopsis phy the max_tmds_clock validation is sufficient.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Tested-by: Diederik de Haas <didi.debian@cknow.org> # Rock64
---
v2: Collect t-b tag
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 35 ++++++++++-----------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 240552eb517f..36cc700766fd 100644
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
@@ -251,10 +252,7 @@ dw_hdmi_rockchip_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
 			    const struct drm_display_mode *mode)
 {
 	struct rockchip_hdmi *hdmi = data;
-	const struct dw_hdmi_mpll_config *mpll_cfg = rockchip_mpll_cfg;
 	int pclk = mode->clock * 1000;
-	bool exact_match = hdmi->plat_data->phy_force_vendor;
-	int i;
 
 	if (hdmi->chip_data->max_tmds_clock &&
 	    mode->clock > hdmi->chip_data->max_tmds_clock)
@@ -263,26 +261,18 @@ dw_hdmi_rockchip_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
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
@@ -607,6 +597,15 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		return ret;
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
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
