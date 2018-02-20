From: Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH 2/3] drm/rockchip: Do not use memcpy for MMIO addresses
Date: Tue, 20 Feb 2018 13:01:19 +0000
Message-ID: <20180220130120.5254-3-marc.zyngier@arm.com>
References: <20180220130120.5254-1-marc.zyngier@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20180220130120.5254-1-marc.zyngier@arm.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: David Airlie <airlied@linux.ie>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

memcpy is only meant to be used for memory, and only that.
MMIO accessors should be used to access MMIO regions, preferably
the ones that correspond to the size of the register accessed.

Let's convert the bulk register copy to writel/readl_relaxed,
which is the correct API.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 7b224e08cbf1..f2bde1c76bbe 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -528,7 +528,10 @@ static int vop_enable(struct drm_crtc *crtc)
 		goto err_disable_aclk;
 	}
 
-	memcpy(vop->regs, vop->regsbak, vop->len);
+	spin_lock(&vop->reg_lock);
+	for (i = 0; i < vop->len; i += 4)
+		writel_relaxed(vop->regsbak[i / 4], vop->regs + i);
+
 	/*
 	 * We need to make sure that all windows are disabled before we
 	 * enable the crtc. Otherwise we might try to scan from a destroyed
@@ -538,10 +541,9 @@ static int vop_enable(struct drm_crtc *crtc)
 		struct vop_win *vop_win = &vop->win[i];
 		const struct vop_win_data *win = vop_win->data;
 
-		spin_lock(&vop->reg_lock);
 		VOP_WIN_SET(vop, win, enable, 0);
-		spin_unlock(&vop->reg_lock);
 	}
+	spin_unlock(&vop->reg_lock);
 
 	vop_cfg_done(vop);
 
@@ -1417,7 +1419,8 @@ static int vop_initial(struct vop *vop)
 	VOP_INTR_SET_TYPE(vop, clear, INTR_MASK, 1);
 	VOP_INTR_SET_TYPE(vop, enable, INTR_MASK, 0);
 
-	memcpy(vop->regsbak, vop->regs, vop->len);
+	for (i = 0; i < vop->len; i += sizeof(u32))
+		vop->regsbak[i / 4] = readl_relaxed(vop->regs + i);
 
 	VOP_REG_SET(vop, misc, global_regdone_en, 1);
 	VOP_REG_SET(vop, common, dsp_blank, 0);
-- 
2.14.2
