From: Yakir Yang <ykk@rock-chips.com>
Subject: [RFC PATCH v2 1/3] drm: bridge/analogix_dp: add the PSR function support
Date: Thu,  2 Jun 2016 20:57:25 +0800
Message-ID: <1464872245-18362-1-git-send-email-ykk@rock-chips.com>
References: <1464872228-18292-1-git-send-email-ykk@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1464872228-18292-1-git-send-email-ykk@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Yao <yzq@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, tfiga@chromium.org
Cc: David Airlie <airlied@linux.ie>, daniel.vetter@ffwll.ch, Thierry Reding <treding@nvidia.com>, dianders@chromium.org, Yakir Yang <ykk@rock-chips.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The full name of PSR is Panel Self Refresh, panel device could refresh
itself with the hardware framebuffer in panel, this would make lots of
sense to save the power consumption.

This patch have export two symbols for platform driver:
    analogix_dp_active_psr()
    analogix_dp_inactive_psr()

Signed-off-by: Yakir Yang <ykk@rock-chips.com>
---
Changes in v2:
- Introduce in v2, splite the common Analogix DP changes out

 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 69 ++++++++++++++++++++++
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.h |  4 ++
 drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c  | 54 +++++++++++++++++
 drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h  | 28 +++++++++
 include/drm/bridge/analogix_dp.h                   |  3 +
 5 files changed, 158 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 5af9ce4..a66ccb6 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -39,6 +39,72 @@ struct bridge_init {
 	struct device_node *node;
 };
 
+int analogix_dp_actice_psr(struct device *dev)
+{
+	struct analogix_dp_device *dp = dev_get_drvdata(dev);
+
+	if (!dp->psr_support)
+		return -EINVAL;
+
+	analogix_dp_send_vsc(dp, EDP_VSC_PSR_STATE_ACTIVE |
+			     EDP_VSC_PSR_CRC_VALUES_VALID);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(analogix_dp_actice_psr);
+
+int analogix_dp_inactice_psr(struct device *dev)
+{
+	struct analogix_dp_device *dp = dev_get_drvdata(dev);
+
+	if (!dp->psr_support)
+		return -EINVAL;
+
+	analogix_dp_send_vsc(dp, 0);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(analogix_dp_inactice_psr);
+
+int analogix_dp_enable_psr(struct analogix_dp_device *dp)
+{
+	unsigned char psr_version, psr_caps;
+	unsigned char psr_en;
+
+	/* disable psr function */
+	analogix_dp_read_byte_from_dpcd(dp, DP_PSR_EN_CFG, &psr_en);
+	psr_en &= ~DP_PSR_ENABLE;
+	analogix_dp_write_byte_to_dpcd(dp, DP_PSR_EN_CFG, psr_en);
+
+	/* check panel psr version */
+	analogix_dp_read_byte_from_dpcd(dp, DP_PSR_SUPPORT, &psr_version);
+	analogix_dp_read_byte_from_dpcd(dp, DP_PSR_CAPS, &psr_caps);
+	dev_info(dp->dev, "Panel PSR version : %x.%x\n", psr_version, psr_caps);
+
+	if (!(psr_version & DP_PSR_IS_SUPPORTED))
+		return -1;
+
+	/* Main-Link transmitter remains active during PSR active states */
+	analogix_dp_read_byte_from_dpcd(dp, DP_PSR_EN_CFG, &psr_en);
+	psr_en = DP_PSR_MAIN_LINK_ACTIVE | DP_PSR_CRC_VERIFICATION;
+	analogix_dp_write_byte_to_dpcd(dp, DP_PSR_EN_CFG, psr_en);
+
+	/* enable PSR function */
+	analogix_dp_read_byte_from_dpcd(dp, DP_PSR_EN_CFG, &psr_en);
+	psr_en = DP_PSR_ENABLE | DP_PSR_MAIN_LINK_ACTIVE |
+		 DP_PSR_CRC_VERIFICATION;
+	analogix_dp_write_byte_to_dpcd(dp, DP_PSR_EN_CFG, psr_en);
+
+	/* read sink psr state */
+	analogix_dp_read_byte_from_dpcd(dp, DP_PSR_EN_CFG, &psr_en);
+	dev_info(dp->dev, "DP_PSR_EN_CFG: %x\n", psr_en);
+
+	analogix_dp_enable_psr_crc(dp);
+	dp->psr_support = true;
+
+	return 0;
+}
+
 static void analogix_dp_init_dp(struct analogix_dp_device *dp)
 {
 	analogix_dp_reset(dp);
@@ -921,6 +987,9 @@ static void analogix_dp_commit(struct analogix_dp_device *dp)
 
 	/* Enable video */
 	analogix_dp_start_video(dp);
+
+	/* Enable PSR support */
+	analogix_dp_enable_psr(dp);
 }
 
 int analogix_dp_get_modes(struct drm_connector *connector)
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
index b456380..2d1dae2 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
@@ -177,6 +177,7 @@ struct analogix_dp_device {
 	int			hpd_gpio;
 	bool                    force_hpd;
 	unsigned char           edid[EDID_BLOCK_LENGTH * 2];
+	bool			psr_support;
 
 	struct analogix_dp_plat_data *plat_data;
 };
@@ -278,4 +279,7 @@ int analogix_dp_is_video_stream_on(struct analogix_dp_device *dp);
 void analogix_dp_config_video_slave_mode(struct analogix_dp_device *dp);
 void analogix_dp_enable_scrambling(struct analogix_dp_device *dp);
 void analogix_dp_disable_scrambling(struct analogix_dp_device *dp);
+void analogix_dp_enable_psr_crc(struct analogix_dp_device *dp);
+void analogix_dp_send_vsc(struct analogix_dp_device *dp, int db1);
+
 #endif /* _ANALOGIX_DP_CORE_H */
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
index 31366bf..8d8c37a 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
@@ -1322,3 +1322,57 @@ void analogix_dp_disable_scrambling(struct analogix_dp_device *dp)
 	reg |= SCRAMBLING_DISABLE;
 	writel(reg, dp->reg_base + ANALOGIX_DP_TRAINING_PTN_SET);
 }
+
+void analogix_dp_enable_psr_crc(struct analogix_dp_device *dp)
+{
+	writel(PSR_VID_CRC_FLUSH | PSR_VID_CRC_ENABLE,
+	       dp->reg_base + ANALOGIX_DP_CRC_CON);
+
+	usleep_range(10, 20);
+
+	writel(PSR_VID_CRC_ENABLE, dp->reg_base + ANALOGIX_DP_CRC_CON);
+}
+
+void analogix_dp_send_vsc(struct analogix_dp_device *dp, int db1)
+{
+	unsigned int val;
+
+	/* don't send info frame */
+	val = readl(dp->reg_base + ANALOGIX_DP_PKT_SEND_CTL);
+	val &= ~IF_EN;
+	writel(val, dp->reg_base + ANALOGIX_DP_PKT_SEND_CTL);
+
+	/* configure single frame update mode */
+	writel(0x3, dp->reg_base + ANALOGIX_DP_PSR_FRAME_UPDATE_CTRL);
+
+	/* configure VSC HB0 ~ HB3 */
+	writel(0x00, dp->reg_base + ANALOGIX_DP_SPD_HB0);
+	writel(0x07, dp->reg_base + ANALOGIX_DP_SPD_HB1);
+	writel(0x02, dp->reg_base + ANALOGIX_DP_SPD_HB2);
+	writel(0x08, dp->reg_base + ANALOGIX_DP_SPD_HB3);
+
+	/* configure VSC HB0 ~ HB3 */
+	writel(0x00, dp->reg_base + ANALOGIX_DP_SPD_PB0);
+	writel(0x16, dp->reg_base + ANALOGIX_DP_SPD_PB1);
+	writel(0xCE, dp->reg_base + ANALOGIX_DP_SPD_PB2);
+	writel(0x5D, dp->reg_base + ANALOGIX_DP_SPD_PB3);
+
+	/* configure DB0 / DB1 values */
+	writel(0x00, dp->reg_base + ANALOGIX_DP_VSC_SHADOW_DB0);
+	writel(db1, dp->reg_base + ANALOGIX_DP_VSC_SHADOW_DB1);
+
+	/* set reuse spd inforframe */
+	val = readl(dp->reg_base + ANALOGIX_DP_VIDEO_CTL_3);
+	val |= REUSE_SPD_EN;
+	writel(val, dp->reg_base + ANALOGIX_DP_VIDEO_CTL_3);
+
+	/* mark info frame update */
+	val = readl(dp->reg_base + ANALOGIX_DP_PKT_SEND_CTL);
+	val = (val | IF_UP) & ~IF_EN;
+	writel(val, dp->reg_base + ANALOGIX_DP_PKT_SEND_CTL);
+
+	/* send info frame */
+	val = readl(dp->reg_base + ANALOGIX_DP_PKT_SEND_CTL);
+	val |= IF_EN;
+	writel(val, dp->reg_base + ANALOGIX_DP_PKT_SEND_CTL);
+}
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h
index cdcc6c5..a2698e4 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h
@@ -22,6 +22,8 @@
 #define ANALOGIX_DP_VIDEO_CTL_8			0x3C
 #define ANALOGIX_DP_VIDEO_CTL_10		0x44
 
+#define ANALOGIX_DP_SPDIF_AUDIO_CTL_0		0xD8
+
 #define ANALOGIX_DP_PLL_REG_1			0xfc
 #define ANALOGIX_DP_PLL_REG_2			0x9e4
 #define ANALOGIX_DP_PLL_REG_3			0x9e8
@@ -30,6 +32,21 @@
 
 #define ANALOGIX_DP_PD				0x12c
 
+#define ANALOGIX_DP_IF_TYPE			0x244
+#define ANALOGIX_DP_IF_PKT_DB1			0x254
+#define ANALOGIX_DP_IF_PKT_DB2			0x258
+#define ANALOGIX_DP_SPD_HB0			0x2F8
+#define ANALOGIX_DP_SPD_HB1			0x2FC
+#define ANALOGIX_DP_SPD_HB2			0x300
+#define ANALOGIX_DP_SPD_HB3			0x304
+#define ANALOGIX_DP_SPD_PB0			0x308
+#define ANALOGIX_DP_SPD_PB1			0x30C
+#define ANALOGIX_DP_SPD_PB2			0x310
+#define ANALOGIX_DP_SPD_PB3			0x314
+#define ANALOGIX_DP_PSR_FRAME_UPDATE_CTRL	0x318
+#define ANALOGIX_DP_VSC_SHADOW_DB0		0x31C
+#define ANALOGIX_DP_VSC_SHADOW_DB1		0x320
+
 #define ANALOGIX_DP_LANE_MAP			0x35C
 
 #define ANALOGIX_DP_ANALOG_CTL_1		0x370
@@ -103,6 +120,8 @@
 
 #define ANALOGIX_DP_SOC_GENERAL_CTL		0x800
 
+#define ANALOGIX_DP_CRC_CON			0x890
+
 /* ANALOGIX_DP_TX_SW_RESET */
 #define RESET_DP_TX				(0x1 << 0)
 
@@ -151,6 +170,7 @@
 #define VID_CHK_UPDATE_TYPE_SHIFT		(4)
 #define VID_CHK_UPDATE_TYPE_1			(0x1 << 4)
 #define VID_CHK_UPDATE_TYPE_0			(0x0 << 4)
+#define REUSE_SPD_EN				(0x1 << 3)
 
 /* ANALOGIX_DP_VIDEO_CTL_8 */
 #define VID_HRES_TH(x)				(((x) & 0xf) << 4)
@@ -376,4 +396,12 @@
 #define VIDEO_MODE_SLAVE_MODE			(0x1 << 0)
 #define VIDEO_MODE_MASTER_MODE			(0x0 << 0)
 
+/* ANALOGIX_DP_PKT_SEND_CTL */
+#define IF_UP					(0x1 << 4)
+#define IF_EN					(0x1 << 0)
+
+/* ANALOGIX_DP_CRC_CON */
+#define PSR_VID_CRC_FLUSH			(0x1 << 2)
+#define PSR_VID_CRC_ENABLE			(0x1 << 0)
+
 #endif /* _ANALOGIX_DP_REG_H */
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index 9ef89de..dd38527 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -41,6 +41,9 @@ struct analogix_dp_plat_data {
 					   struct drm_display_mode *);
 };
 
+int analogix_dp_actice_psr(struct device *dev);
+int analogix_dp_inactice_psr(struct device *dev);
+
 int analogix_dp_resume(struct device *dev);
 int analogix_dp_suspend(struct device *dev);
 
-- 
1.9.1
