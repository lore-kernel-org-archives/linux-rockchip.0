Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28304C282DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 10:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CctjOAi7V8pY2zv13nBbV40ZCKt3bFYNyUz9ej//0nw=; b=ByDdz+pFyprcOm
	YXEujB8dku5gm7UZI6C7WTbRElNgnxALq8WGSriPCLLOgnfhcvE7pyY1+oIQhfIhV0cZTGHscSY7m
	qwSXDoYn7UbVQA8n4Xd4Q+kJ1i1T4x3QDFoScuHe2PFxEfhOeJLrfT1klhQbl8X8ic1lg0jXfy30C
	flFWvcDgPBaD+ge9moTpSTH7RneSu28UIfDiwNnZcpM74NE8GlS19o748EUpPR9uOK7vbCX1917F4
	tS/5z+YvbD2XdeW5VPqxMrPTXtXNEYoi/kyqmQe46rO9WRQ7mZk8ziC4LHxIO04hoZcsUrULEJjiP
	48LCaVGPVC09c8WVyLBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1traol-00000002LYN-35t4;
	Mon, 10 Mar 2025 10:57:07 +0000
Received: from mail-m1973181.qiye.163.com ([220.197.31.81])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1traaT-00000002Hn4-42XG;
	Mon, 10 Mar 2025 10:42:23 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id dc18828a;
	Mon, 10 Mar 2025 18:42:17 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v8 08/13] drm/rockchip: analogix_dp: Add support to get panel from the DP AUX bus
Date: Mon, 10 Mar 2025 18:41:09 +0800
Message-Id: <20250310104114.2608063-9-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250310104114.2608063-1-damon.ding@rock-chips.com>
References: <20250310104114.2608063-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkxITlZCSE9OSRpJSEkaTkpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCS0
	NVSktLVUpCWQY+
X-HM-Tid: 0a957fa5f58803a3kunmdc18828a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ODI6CRw5CjJOIiM0Izk2PS8*
	Th1PFAxVSlVKTE9KTUtISEhCTUhIVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFOSUJMNwY+
DKIM-Signature: a=rsa-sha256;
	b=SNZrux65+2z148itasgWITDP2C9eY8vwJWr1tfFV3Uwq5Mu2RoVjBD/Aq+DwQDmf+XCeT5y/Twn9iVU4TJc5Ze77RUVWt8pw23xnzjBpGm7cPlaD4xPWp34MFHs9VFmq3Z4hIgBnuyd2goMISudWcRh7MJWwaKnTajQV1xTy7YE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=BjjaUkr/z4Q0qZiPadymcyXjqL+DalxJAT81z/wxaYs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_034222_179553_FC77C7F8 
X-CRM114-Status: GOOD (  22.20  )
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
Cc: dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, dmitry.baryshkov@linaro.org, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Move drm_of_find_panel_or_bridge() a little later and combine it with
component_add() into a new function rockchip_dp_link_panel(). The function
will serve as done_probing() callback of devm_of_dp_aux_populate_bus(),
aiding to support for obtaining the eDP panel via the DP AUX bus.

If failed to get the panel from the DP AUX bus, it will then try the other
way to get panel information through the platform bus.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v4:
- Use done_probing() to call drm_of_find_panel_or_bridge() and
  component_add() when getting panel from the DP AUX bus

Changes in v5:
- Use the functions exported by the Analogix side to get the pointers of
  struct analogix_dp_plat_data and struct drm_dp_aux.
- Use dev_err() instead of drm_err() in rockchip_dp_poweron().

Changes in v6:
- Keep drm_err() in rockchip_dp_poweron()
- Pass 'dp' in drm_...() rather than 'dp->drm_dev'

Changes in v7:
- Include the drm_dp_aux_bus.h for devm_of_dp_aux_populate_bus()
- Use dev_err_probe() for the return value check of
  devm_of_dp_aux_populate_bus()
- Select DRM_DISPLAY_DP_AUX_BUS if ROCKCHIP_ANALOGIX_DP
- Restore the error check for drm_of_find_panel_or_bridge() which was
  removed by mistake

Changes in v8:
- Add comments when drm_of_find_panel_or_bridge() returns -ENODEV
- Remove some redundant return cases
- Add comments when devm_of_dp_aux_populate_bus() returns -ENODEV
---
 drivers/gpu/drm/rockchip/Kconfig              |  1 +
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 42 +++++++++++++++----
 2 files changed, 34 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 26c4410b2407..f9d7776a859a 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -8,6 +8,7 @@ config DRM_ROCKCHIP
 	select DRM_PANEL
 	select VIDEOMODE_HELPERS
 	select DRM_ANALOGIX_DP if ROCKCHIP_ANALOGIX_DP
+	select DRM_DISPLAY_DP_AUX_BUS if ROCKCHIP_ANALOGIX_DP
 	select DRM_DW_HDMI if ROCKCHIP_DW_HDMI
 	select DRM_DW_HDMI_QP if ROCKCHIP_DW_HDMI_QP
 	select DRM_DW_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index a8265a1bf9ff..5632b7e3e122 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -21,6 +21,7 @@
 #include <video/of_videomode.h>
 #include <video/videomode.h>
 
+#include <drm/display/drm_dp_aux_bus.h>
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
@@ -392,11 +393,28 @@ static const struct component_ops rockchip_dp_component_ops = {
 	.unbind = rockchip_dp_unbind,
 };
 
+static int rockchip_dp_link_panel(struct drm_dp_aux *aux)
+{
+	struct analogix_dp_plat_data *plat_data = analogix_dp_aux_to_plat_data(aux);
+	struct rockchip_dp_device *dp = pdata_encoder_to_dp(plat_data);
+	int ret;
+
+	/*
+	 * If drm_of_find_panel_or_bridge() returns -ENODEV, there may be no valid panel
+	 * or bridge nodes. The driver should go on for the driver-free bridge or the DP
+	 * mode applications.
+	 */
+	ret = drm_of_find_panel_or_bridge(dp->dev->of_node, 1, 0, &plat_data->panel, NULL);
+	if (ret && ret != -ENODEV)
+		return ret;
+
+	return component_add(dp->dev, &rockchip_dp_component_ops);
+}
+
 static int rockchip_dp_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	const struct rockchip_dp_chip_data *dp_data;
-	struct drm_panel *panel = NULL;
 	struct rockchip_dp_device *dp;
 	struct resource *res;
 	int i;
@@ -406,10 +424,6 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 	if (!dp_data)
 		return -ENODEV;
 
-	ret = drm_of_find_panel_or_bridge(dev->of_node, 1, 0, &panel, NULL);
-	if (ret < 0 && ret != -ENODEV)
-		return ret;
-
 	dp = devm_kzalloc(dev, sizeof(*dp), GFP_KERNEL);
 	if (!dp)
 		return -ENOMEM;
@@ -432,7 +446,6 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 
 	dp->dev = dev;
 	dp->adp = ERR_PTR(-ENODEV);
-	dp->plat_data.panel = panel;
 	dp->plat_data.dev_type = dp->data->chip_type;
 	dp->plat_data.power_on = rockchip_dp_poweron;
 	dp->plat_data.power_off = rockchip_dp_powerdown;
@@ -448,9 +461,20 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 	if (IS_ERR(dp->adp))
 		return PTR_ERR(dp->adp);
 
-	ret = component_add(dev, &rockchip_dp_component_ops);
-	if (ret)
-		return ret;
+	ret = devm_of_dp_aux_populate_bus(analogix_dp_get_aux(dp->adp), rockchip_dp_link_panel);
+	if (ret) {
+		/*
+		 * If devm_of_dp_aux_populate_bus() returns -ENODEV, the done_probing() will not
+		 * be called because there are no EP devices. Then the rockchip_dp_link_panel()
+		 * will be called directly in order to support the other valid DT configurations.
+		 *
+		 * NOTE: The devm_of_dp_aux_populate_bus() is allowed to return -EPROBE_DEFER.
+		 */
+		if (ret != -ENODEV)
+			return dev_err_probe(dp->dev, ret, "failed to populate aux bus\n");
+
+		return rockchip_dp_link_panel(analogix_dp_get_aux(dp->adp));
+	}
 
 	return 0;
 }
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
