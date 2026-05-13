Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 369BFCD4F39
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 May 2026 07:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oNQWKjUnNhe3AqzQ1i87NSaQd3eFr4L61FLsEwVAfaw=; b=eUmFPihxpdY7Lg
	NwWSKxBfeKS29ki3ixe7s/ysQZjkennswT1QSZnZoMXh4SDClFQzA6sqWp9Vnb+RFibWg0YdcO3gQ
	WbGQV9eMeOq/spmngNB5z75ULfeajHTweTcLFQdlnyTqXIncr5Rf63qcX2p+2fyLAKFzM5L/o80Z9
	ntNKv7Qc2leNtDcZbh8UtNUyKmx5iP6KNunPgZkoFru/0mpbGEzFueq5ZYI99FXuCIxn9tYfucoRi
	x3M/W4IszgzyfkR1/nqdn4GE/TYGLYL3/ufeat6Rb+5F6XCbRzPg6y6r7LWOiFk1wjsPpjFE8VNB4
	T/6BrtWhf2HHct1i6Djg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN4Lg-00000001dlI-1K2N;
	Wed, 13 May 2026 07:49:44 +0000
Received: from mail-m1973194.qiye.163.com ([220.197.31.94])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN4Ld-00000001dgH-18VR;
	Wed, 13 May 2026 07:49:42 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3e3a94d03;
	Wed, 13 May 2026 15:44:35 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Subject: [PATCH v5 08/10] drm/bridge: analogix_dp: Rename and simplify is_rockchip()
Date: Wed, 13 May 2026 15:44:12 +0800
Message-Id: <20260513074414.2053435-9-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260513074414.2053435-1-damon.ding@rock-chips.com>
References: <20260513074414.2053435-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9e204b6fb503a3kunm7763bb985611e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCHUNLVkkZGR1JTUNITUlNTVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=iP54AtXFqmsXRrhEyW+o0XE5U/ZqLXOfuPvWQor/PQ2k0L+kijYbCEX9zHnGRiARV5R+9ARnTClIbFLrcIeOrd7zpZClAOKrLABcfI4Y0bddot2Zy/VNs3LxcsiwfqICSxs07KcCG1E1dHAuN9K6CSyyskXPGSx4j/c58T6Zl/M=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=LOMeAIx+KSl1dkBA7xVs1jEHQ7IWNjTCWlPoHezWkhE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_004941_491496_A8056CFA 
X-CRM114-Status: GOOD (  12.73  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Rename inline helper is_rockchip() to analogix_dp_is_rockchip()
to follow driver namespace convention consistently across code.

Replace chained equality comparisons with switch-case layout
to improve readability and simplify adding new SoC entries later.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
Suggested-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

---

Changes in v3:
- Add Reviewed-by tag.

Changes in v4:
- Modify the commit msg.
---
 .../gpu/drm/bridge/analogix/analogix_dp_core.c |  2 +-
 .../gpu/drm/bridge/analogix/analogix_dp_reg.c  | 18 +++++++++---------
 include/drm/bridge/analogix_dp.h               | 11 +++++++++--
 3 files changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 8cf6b73bceac..116de3bd83a3 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -870,7 +870,7 @@ static int analogix_dp_bridge_atomic_check(struct drm_bridge *bridge,
 	struct drm_display_info *di = &conn_state->connector->display_info;
 	u32 mask = BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) | BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422);
 
-	if (is_rockchip(dp->plat_data->dev_type)) {
+	if (analogix_dp_is_rockchip(dp->plat_data->dev_type)) {
 		if ((di->color_formats & mask)) {
 			DRM_DEBUG_KMS("Swapping display color format from YUV to RGB\n");
 			di->color_formats &= ~mask;
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
index 38fd8d5014d2..6207ded7ffd5 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
@@ -72,7 +72,7 @@ void analogix_dp_init_analog_param(struct analogix_dp_device *dp)
 	reg = SEL_24M | TX_DVDD_BIT_1_0625V;
 	writel(reg, dp->reg_base + ANALOGIX_DP_ANALOG_CTL_2);
 
-	if (dp->plat_data && is_rockchip(dp->plat_data->dev_type)) {
+	if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type)) {
 		reg = REF_CLK_24M;
 		if (dp->plat_data->dev_type == RK3288_DP)
 			reg ^= REF_CLK_MASK;
@@ -123,7 +123,7 @@ void analogix_dp_reset(struct analogix_dp_device *dp)
 	analogix_dp_stop_video(dp);
 	analogix_dp_enable_video_mute(dp, 0);
 
-	if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
+	if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type))
 		reg = RK_VID_CAP_FUNC_EN_N | RK_VID_FIFO_FUNC_EN_N |
 			SW_FUNC_EN_N;
 	else
@@ -233,7 +233,7 @@ void analogix_dp_set_pll_power_down(struct analogix_dp_device *dp, bool enable)
 	u32 mask = DP_PLL_PD;
 	u32 pd_addr = ANALOGIX_DP_PLL_CTL;
 
-	if (dp->plat_data && is_rockchip(dp->plat_data->dev_type)) {
+	if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type)) {
 		pd_addr = ANALOGIX_DP_PD;
 		mask = RK_PLL_PD;
 	}
@@ -254,12 +254,12 @@ void analogix_dp_set_analog_power_down(struct analogix_dp_device *dp,
 	u32 phy_pd_addr = ANALOGIX_DP_PHY_PD;
 	u32 mask;
 
-	if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
+	if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type))
 		phy_pd_addr = ANALOGIX_DP_PD;
 
 	switch (block) {
 	case AUX_BLOCK:
-		if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
+		if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type))
 			mask = RK_AUX_PD;
 		else
 			mask = AUX_PD;
@@ -317,7 +317,7 @@ void analogix_dp_set_analog_power_down(struct analogix_dp_device *dp,
 		 * to power off everything instead of DP_PHY_PD in
 		 * Rockchip
 		 */
-		if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
+		if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type))
 			mask = DP_INC_BG;
 		else
 			mask = DP_PHY_PD;
@@ -329,7 +329,7 @@ void analogix_dp_set_analog_power_down(struct analogix_dp_device *dp,
 			reg &= ~mask;
 
 		writel(reg, dp->reg_base + phy_pd_addr);
-		if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
+		if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type))
 			usleep_range(10, 15);
 		break;
 	case POWER_ALL:
@@ -465,7 +465,7 @@ void analogix_dp_init_aux(struct analogix_dp_device *dp)
 	analogix_dp_reset_aux(dp);
 
 	/* AUX_BIT_PERIOD_EXPECTED_DELAY doesn't apply to Rockchip IP */
-	if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
+	if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type))
 		reg = 0;
 	else
 		reg = AUX_BIT_PERIOD_EXPECTED_DELAY(3);
@@ -837,7 +837,7 @@ void analogix_dp_config_video_slave_mode(struct analogix_dp_device *dp)
 	u32 reg;
 
 	reg = readl(dp->reg_base + ANALOGIX_DP_FUNC_EN_1);
-	if (dp->plat_data && is_rockchip(dp->plat_data->dev_type)) {
+	if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type)) {
 		reg &= ~(RK_VID_CAP_FUNC_EN_N | RK_VID_FIFO_FUNC_EN_N);
 	} else {
 		reg &= ~(MASTER_VID_FUNC_EN_N | SLAVE_VID_FUNC_EN_N);
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index 854af692229b..7b670dd769e9 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -19,9 +19,16 @@ enum analogix_dp_devtype {
 	RK3588_EDP,
 };
 
-static inline bool is_rockchip(enum analogix_dp_devtype type)
+static inline bool analogix_dp_is_rockchip(enum analogix_dp_devtype type)
 {
-	return type == RK3288_DP || type == RK3399_EDP || type == RK3588_EDP;
+	switch (type) {
+	case RK3288_DP:
+	case RK3399_EDP:
+	case RK3588_EDP:
+		return true;
+	default:
+		return false;
+	}
 }
 
 struct analogix_dp_plat_data {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
