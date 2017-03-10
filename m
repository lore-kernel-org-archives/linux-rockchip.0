From: Sean Paul <seanpaul@chromium.org>
Subject: [PATCH 20/41] drm/bridge: analogix_dp: Set PD_INC_BG first when powering up edp phy
Date: Thu,  9 Mar 2017 23:32:35 -0500
Message-ID: <20170310043305.17216-21-seanpaul@chromium.org>
References: <20170310043305.17216-1-seanpaul@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20170310043305.17216-1-seanpaul@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Cc: zain wang <wzz@rock-chips.com>, =?UTF-8?q?St=C3=A9phane=20Marchesin?= <marcheu@chromium.org>, Sean Paul <seanpaul@chromium.org>, Archit Taneja <architt@codeaurora.org>, David Airlie <airlied@linux.ie>, Yakir Yang <ykk@rock-chips.com>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Douglas Anderson <dianders@chromium.org>, Lin Huang <hl@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Tomasz Figa <tomasz.figa@chromium.com>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: zain wang <wzz@rock-chips.com>

Following the correct power up sequence:
dp_pd=ff => dp_pd=7f => wait 10us => dp_pd=00

Cc: Stéphane Marchesin <marcheu@chromium.org>
Signed-off-by: zain wang <wzz@rock-chips.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c | 10 ++++++++--
 drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h |  3 +++
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
index b47c5af43560..bb72f8b0e603 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
@@ -321,10 +321,16 @@ void analogix_dp_set_analog_power_down(struct analogix_dp_device *dp,
 		break;
 	case POWER_ALL:
 		if (enable) {
-			reg = DP_PHY_PD | AUX_PD | CH3_PD | CH2_PD |
-				CH1_PD | CH0_PD;
+			reg = DP_ALL_PD;
 			writel(reg, dp->reg_base + phy_pd_addr);
 		} else {
+			reg = DP_ALL_PD;
+			writel(reg, dp->reg_base + phy_pd_addr);
+			usleep_range(10, 15);
+			reg &= ~DP_INC_BG;
+			writel(reg, dp->reg_base + phy_pd_addr);
+			usleep_range(10, 15);
+
 			writel(0x00, dp->reg_base + phy_pd_addr);
 		}
 		break;
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h
index 40200c652533..9602668669f4 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h
@@ -342,12 +342,15 @@
 #define DP_PLL_REF_BIT_1_2500V			(0x7 << 0)
 
 /* ANALOGIX_DP_PHY_PD */
+#define DP_INC_BG				(0x1 << 7)
+#define DP_EXP_BG				(0x1 << 6)
 #define DP_PHY_PD				(0x1 << 5)
 #define AUX_PD					(0x1 << 4)
 #define CH3_PD					(0x1 << 3)
 #define CH2_PD					(0x1 << 2)
 #define CH1_PD					(0x1 << 1)
 #define CH0_PD					(0x1 << 0)
+#define DP_ALL_PD				(0xff)
 
 /* ANALOGIX_DP_PHY_TEST */
 #define MACRO_RST				(0x1 << 5)
-- 
2.12.0.246.ga2ecc84866-goog
