Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23713C27C7B
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 17:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5eQuQ/28YMeqSjt4iLCeLEOu6AHpThcShsk0UP2mNaI=; b=xKbdQ0JNNH/QjN
	/mTLBe55YDb6UPeQzLvHSxsNSpW4vU9g32dKMOnNIM0bG1NeZixc6LOWM/OAgx84OQCK86LV+FR44
	rbgNrZrAFQKimI4dj8WgW3KYrRPU6BZzhZ/lToqvc+KT40hRuYy/lG0ucn8Qd+a3FPBsHk/sBFHro
	Wff5ZT1bXFrjEe9Sr/6rFy4TE2udpa0ajpufA5/9RRjeba8PdCfSuDHmyyExzUZdJb5AMxCGcRqe0
	Gmjciky4b8pYyVwPkQEYFq+BhMS/va1sNAtxpFigQTZ4xh7FwVy1uerls022WhqpTi0WIBtrgMYN9
	R4Pne7HWzAEoHknNofTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWqF-00000005mLL-2iLO;
	Sat, 15 Jun 2024 17:05:27 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWpt-00000005m34-12fm
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 17:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1718471093; bh=BeNUhMeywog7bd6GhDGutHucpUbeatl4//PsQAMTER0=;
 b=b2iV5b79YLwntOIIK9dwVOGQX4dlmrqiQjTDw/2pvxEPm/2Mmb19Tb1mrjMXD5RdKrB6JNpB/
 0G/+edN4yucHSvXyVvLxqlg5NuNhANTil12MwFco0xgZJG4HGxDBWDQl5Zzz4tsZw/fZJ7Y3GF3
 00eb3bhkSNC5+nxUKJizpKPGEHpZ6Hs7uq157jtLGughoEyCP2vvKLkTWJ7xKA7QG0/9jD32CCt
 4XlAAv4G/mh95xpwaZLFUNA5Ets5GcMS5IzdV0oLQsZyUW4yYYrTFcGQc0eNBPZxIESncktva+8
 KE949JhftNNmU+601kcJ73MO09rsRDk/AehrOmxYpT9A==
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
Subject: [PATCH 06/13] drm/rockchip: dw_hdmi: Add max_tmds_clock validation
Date: Sat, 15 Jun 2024 17:03:57 +0000
Message-ID: <20240615170417.3134517-7-jonas@kwiboo.se>
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
X-ForwardEmail-ID: 666dc9b324e0254b3980403f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_100505_408207_3CF7E134 
X-CRM114-Status: GOOD (  11.11  )
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

Add max_tmds_clock validation to prepare for additions and changes to
the MPLL config table. Use the same rate restrictions that is currently
applied.

The rate limit for RK3288, RK3399 and RK3568 is based on current mpll
table. The rate limit for RK3228 and RK3228 is based on the
inno-hdmi-phy pre-pll table.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 5df9c9a0d369..75b5d63ec570 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -61,11 +61,13 @@
  * @lcdsel_grf_reg: grf register offset of lcdc select
  * @lcdsel_big: reg value of selecting vop big for HDMI
  * @lcdsel_lit: reg value of selecting vop little for HDMI
+ * @max_tmds_clock: maximum TMDS clock rate supported
  */
 struct rockchip_hdmi_chip_data {
 	int	lcdsel_grf_reg;
 	u32	lcdsel_big;
 	u32	lcdsel_lit;
+	int	max_tmds_clock;
 };
 
 struct rockchip_hdmi {
@@ -259,6 +261,10 @@ dw_hdmi_rockchip_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
 	bool exact_match = hdmi->plat_data->phy_force_vendor;
 	int i;
 
+	if (hdmi->chip_data->max_tmds_clock &&
+	    mode->clock > hdmi->chip_data->max_tmds_clock)
+		return MODE_CLOCK_HIGH;
+
 	if (hdmi->ref_clk) {
 		int rpclk = clk_round_rate(hdmi->ref_clk, pclk);
 
@@ -450,6 +456,7 @@ static const struct dw_hdmi_phy_ops rk3228_hdmi_phy_ops = {
 
 static struct rockchip_hdmi_chip_data rk3228_chip_data = {
 	.lcdsel_grf_reg = -1,
+	.max_tmds_clock = 594000,
 };
 
 static const struct dw_hdmi_plat_data rk3228_hdmi_drv_data = {
@@ -467,6 +474,7 @@ static struct rockchip_hdmi_chip_data rk3288_chip_data = {
 	.lcdsel_grf_reg = RK3288_GRF_SOC_CON6,
 	.lcdsel_big = HIWORD_UPDATE(0, RK3288_HDMI_LCDC_SEL),
 	.lcdsel_lit = HIWORD_UPDATE(RK3288_HDMI_LCDC_SEL, RK3288_HDMI_LCDC_SEL),
+	.max_tmds_clock = 340000,
 };
 
 static const struct dw_hdmi_plat_data rk3288_hdmi_drv_data = {
@@ -487,6 +495,7 @@ static const struct dw_hdmi_phy_ops rk3328_hdmi_phy_ops = {
 
 static struct rockchip_hdmi_chip_data rk3328_chip_data = {
 	.lcdsel_grf_reg = -1,
+	.max_tmds_clock = 594000,
 };
 
 static const struct dw_hdmi_plat_data rk3328_hdmi_drv_data = {
@@ -505,6 +514,7 @@ static struct rockchip_hdmi_chip_data rk3399_chip_data = {
 	.lcdsel_grf_reg = RK3399_GRF_SOC_CON20,
 	.lcdsel_big = HIWORD_UPDATE(0, RK3399_HDMI_LCDC_SEL),
 	.lcdsel_lit = HIWORD_UPDATE(RK3399_HDMI_LCDC_SEL, RK3399_HDMI_LCDC_SEL),
+	.max_tmds_clock = 340000,
 };
 
 static const struct dw_hdmi_plat_data rk3399_hdmi_drv_data = {
@@ -518,6 +528,7 @@ static const struct dw_hdmi_plat_data rk3399_hdmi_drv_data = {
 
 static struct rockchip_hdmi_chip_data rk3568_chip_data = {
 	.lcdsel_grf_reg = -1,
+	.max_tmds_clock = 340000,
 };
 
 static const struct dw_hdmi_plat_data rk3568_hdmi_drv_data = {
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
