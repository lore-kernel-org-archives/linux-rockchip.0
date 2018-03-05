From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v4 27/38] drm/bridge: analogix_dp: Properly log AUX CH errors
Date: Mon,  5 Mar 2018 23:23:19 +0100
Message-ID: <20180305222324.5872-28-enric.balletbo@collabora.com>
References: <20180305222324.5872-1-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180305222324.5872-1-enric.balletbo@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: architt@codeaurora.org, inki.dae@samsung.com, thierry.reding@gmail.com, hjc@rock-chips.com, seanpaul@chromium.org, airlied@linux.ie, tfiga@chromium.org, heiko@sntech.de
Cc: hshi@chromium.org, wzz@rock-chips.com, hl@rock-chips.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, orjan.eide@arm.com, m.szyprowski@samsung.com, Enric Balletbo i Serra <enric.balletbo@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

From: Douglas Anderson <dianders@chromium.org>

The code in analogix_dp_transfer() that was supposed to print out:
  AUX CH error happened

Was actually dead code. That's because the previous check (whether
the interrupt status indicated any errors) would have hit for all
errors anyway.

Let's combine the two error checks so we can actually see AUX CH
errors.  We'll also downgrade the message to a warning since some of
these types of errors might be expected for some displays.  If this
gets too noisy we can downgrade again to debug.

Cc: 征增 王 <wzz@rock-chips.com>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>
Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
index 4eae206ec31b..58e8a28e99aa 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
@@ -1105,6 +1105,7 @@ ssize_t analogix_dp_transfer(struct analogix_dp_device *dp,
 			     struct drm_dp_aux_msg *msg)
 {
 	u32 reg;
+	u32 status_reg;
 	u8 *buffer = msg->buffer;
 	unsigned int i;
 	int num_transferred = 0;
@@ -1193,16 +1194,12 @@ ssize_t analogix_dp_transfer(struct analogix_dp_device *dp,
 
 	/* Clear interrupt source for AUX CH access error */
 	reg = readl(dp->reg_base + ANALOGIX_DP_INT_STA);
-	if (reg & AUX_ERR) {
+	status_reg = readl(dp->reg_base + ANALOGIX_DP_AUX_CH_STA);
+	if ((reg & AUX_ERR) || (status_reg & AUX_STATUS_MASK)) {
 		writel(AUX_ERR, dp->reg_base + ANALOGIX_DP_INT_STA);
-		goto aux_error;
-	}
 
-	/* Check AUX CH error access status */
-	reg = readl(dp->reg_base + ANALOGIX_DP_AUX_CH_STA);
-	if ((reg & AUX_STATUS_MASK)) {
-		dev_err(dp->dev, "AUX CH error happened: %d\n\n",
-			reg & AUX_STATUS_MASK);
+		dev_warn(dp->dev, "AUX CH error happened: %#x (%d)\n",
+			 status_reg & AUX_STATUS_MASK, !!(reg & AUX_ERR));
 		goto aux_error;
 	}
 
-- 
2.16.1
