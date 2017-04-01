From: Jeffy Chen <jeffy.chen@rock-chips.com>
Subject: [PATCH 8/9] drm/rockchip: gem: Don't alloc/free gem buf before drm
 dev registered
Date: Sat,  1 Apr 2017 18:44:01 +0800
Message-ID: <1491043442-20626-9-git-send-email-jeffy.chen@rock-chips.com>
References: <1491043442-20626-1-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1491043442-20626-1-git-send-email-jeffy.chen@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-kernel@vger.kernel.org
Cc: Jeffy Chen <jeffy.chen@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>, briannorris@chromium.org, dianders@chromium.org, dri-devel@lists.freedesktop.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, zyw@rock-chips.com, linux-arm-kernel@lists.infradead.org, mark.yao@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
---

 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index df9e570..19679b2 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -184,6 +184,9 @@ static int rockchip_gem_alloc_buf(struct rockchip_gem_object *rk_obj,
 	struct drm_device *drm = obj->dev;
 	struct rockchip_drm_private *private = drm->dev_private;
 
+	if (!drm->registered)
+		return;
+
 	if (private->domain)
 		return rockchip_gem_alloc_iommu(rk_obj, alloc_kmap);
 	else
@@ -208,6 +211,11 @@ static void rockchip_gem_free_dma(struct rockchip_gem_object *rk_obj)
 
 static void rockchip_gem_free_buf(struct rockchip_gem_object *rk_obj)
 {
+	struct drm_device *drm = rk_obj->base.dev;
+
+	if (!drm->registered)
+		return;
+
 	if (rk_obj->pages)
 		rockchip_gem_free_iommu(rk_obj);
 	else
-- 
2.1.4
