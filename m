From: Your Name <you@example.com>
Subject: [PATCH v4 08/12] drm/rockchip: vop: Unprepare clocks when unbinding
Date: Thu,  6 Apr 2017 20:22:19 +0800
Message-ID: <1491481343-11025-9-git-send-email-you@example.com>
References: <1491481343-11025-1-git-send-email-you@example.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1491481343-11025-1-git-send-email-you@example.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: briannorris@chromium.org, dianders@chromium.org, tfiga@chromium.org, seanpaul@chromium.org, zyw@rock-chips.com, mark.yao@rock-chips.com, Jeffy Chen <jeffy.chen@rock-chips.com>, Your Name <you@example.com>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Jeffy Chen <jeffy.chen@rock-chips.com>

The clocks are prepared when binding vop.

Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
Signed-off-by: Your Name <you@example.com>
---

Changes in v4: None
Changes in v3: None
Changes in v2: None

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index b65b296..3f7a82d 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1634,6 +1634,10 @@ static void vop_unbind(struct device *dev, struct device *master, void *data)
 
 	pm_runtime_disable(dev);
 	vop_destroy_crtc(vop);
+
+	clk_unprepare(vop->aclk);
+	clk_unprepare(vop->hclk);
+	clk_unprepare(vop->dclk);
 }
 
 const struct component_ops vop_component_ops = {
-- 
2.1.4
