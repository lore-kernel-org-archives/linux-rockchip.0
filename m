From: Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH] drm/rockchip: Set IRQ_NOAUTOEN flag before requesting the
 interrupt
Date: Sat, 10 Feb 2018 14:20:20 +0000
Message-ID: <20180210142020.30212-1-marc.zyngier@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Mark Yao <markyao0591@gmail.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

Calling request_irq() followed by disable_irq() is usually a bad idea,
specially if the interrupt can be pending, and you're not yet in a
position to handle it.

This is exactly what happens on my kevin system when rebooting in a
second kernel using kexec: Some interrupt is left pending from
the previous kernel, and we take it too early, before disable_irq()
could do anything.

A better way of ensuring safety is to set the IRQ_NOAUTOEN flag
on the irq before requesting it.

Cc: stable@vger.kernel.org
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 19128b4dea54..72554f404b7e 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -32,6 +32,7 @@
 #include <linux/of_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/component.h>
+#include <linux/irq.h>
 
 #include <linux/reset.h>
 #include <linux/delay.h>
@@ -1569,14 +1570,12 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
 
 	mutex_init(&vop->vsync_mutex);
 
+	irq_set_status_flags(vop->irq, IRQ_NOAUTOEN);
 	ret = devm_request_irq(dev, vop->irq, vop_isr,
 			       IRQF_SHARED, dev_name(dev), vop);
 	if (ret)
 		return ret;
 
-	/* IRQ is initially disabled; it gets enabled in power_on */
-	disable_irq(vop->irq);
-
 	ret = vop_create_crtc(vop);
 	if (ret)
 		goto err_enable_irq;
-- 
2.14.2
