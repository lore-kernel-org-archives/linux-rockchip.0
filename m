From: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH 28/40] drm/bridge: analogix_dp: Fix incorrect operations with
 register ANALOGIX_DP_FUNC_EN_1
Date: Mon, 15 Jan 2018 18:16:02 +0100
Message-ID: <20180115171614.14474-29-thierry.escande@collabora.com>
References: <20180115171614.14474-1-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180115171614.14474-1-thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Transfert-Encoding: 8bit
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Archit Taneja <architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Inki Dae <inki.dae-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Thierry Reding <thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>
Cc: zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Yakir Yang <ykk-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?q?=C3=98rjan=20Eide?= <orjan.eide-5wv7dgnIgG8@public.gmane.org>, Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Haixia Shi <hshi-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Register ANALOGIX_DP_FUNC_EN_1(offset 0x18), Rockchip is different to
Exynos:

on Exynos edp phy,
BIT 7		MASTER_VID_FUNC_EN_N
BIT 6		reserved
BIT 5		SLAVE_VID_FUNC_EN_N

on Rockchip edp phy,
BIT 7		reserved
BIT 6		RK_VID_CAP_FUNC_EN_N
BIT 5		RK_VID_FIFO_FUNC_EN_N

So, we should do some private operations to Rockchip.

Cc: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Reviewed-by: Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c | 19 ++++++++++++++-----
 drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h |  2 ++
 2 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
index 02ab1aaa9993..4eae206ec31b 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
@@ -126,9 +126,14 @@ void analogix_dp_reset(struct analogix_dp_device *dp)
 	analogix_dp_stop_video(dp);
 	analogix_dp_enable_video_mute(dp, 0);
 
-	reg = MASTER_VID_FUNC_EN_N | SLAVE_VID_FUNC_EN_N |
-		AUD_FIFO_FUNC_EN_N | AUD_FUNC_EN_N |
-		HDCP_FUNC_EN_N | SW_FUNC_EN_N;
+	if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
+		reg = RK_VID_CAP_FUNC_EN_N | RK_VID_FIFO_FUNC_EN_N |
+			SW_FUNC_EN_N;
+	else
+		reg = MASTER_VID_FUNC_EN_N | SLAVE_VID_FUNC_EN_N |
+			AUD_FIFO_FUNC_EN_N | AUD_FUNC_EN_N |
+			HDCP_FUNC_EN_N | SW_FUNC_EN_N;
+
 	writel(reg, dp->reg_base + ANALOGIX_DP_FUNC_EN_1);
 
 	reg = SSC_FUNC_EN_N | AUX_FUNC_EN_N |
@@ -971,8 +976,12 @@ void analogix_dp_config_video_slave_mode(struct analogix_dp_device *dp)
 	u32 reg;
 
 	reg = readl(dp->reg_base + ANALOGIX_DP_FUNC_EN_1);
-	reg &= ~(MASTER_VID_FUNC_EN_N | SLAVE_VID_FUNC_EN_N);
-	reg |= MASTER_VID_FUNC_EN_N;
+	if (dp->plat_data && is_rockchip(dp->plat_data->dev_type)) {
+		reg &= ~(RK_VID_CAP_FUNC_EN_N | RK_VID_FIFO_FUNC_EN_N);
+	} else {
+		reg &= ~(MASTER_VID_FUNC_EN_N | SLAVE_VID_FUNC_EN_N);
+		reg |= MASTER_VID_FUNC_EN_N;
+	}
 	writel(reg, dp->reg_base + ANALOGIX_DP_FUNC_EN_1);
 
 	reg = readl(dp->reg_base + ANALOGIX_DP_VIDEO_CTL_10);
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h
index b633a4a5082a..0cf27c731727 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h
@@ -127,7 +127,9 @@
 
 /* ANALOGIX_DP_FUNC_EN_1 */
 #define MASTER_VID_FUNC_EN_N			(0x1 << 7)
+#define RK_VID_CAP_FUNC_EN_N			(0x1 << 6)
 #define SLAVE_VID_FUNC_EN_N			(0x1 << 5)
+#define RK_VID_FIFO_FUNC_EN_N			(0x1 << 5)
 #define AUD_FIFO_FUNC_EN_N			(0x1 << 4)
 #define AUD_FUNC_EN_N				(0x1 << 3)
 #define HDCP_FUNC_EN_N				(0x1 << 2)
-- 
2.14.1
