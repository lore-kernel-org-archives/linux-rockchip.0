From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH] drm/rockchip: cdn-dp-core: Make cdn_dp_core_suspend/resume static
Date: Sun, 26 Apr 2020 18:16:53 +0200
Message-ID: <20200426161653.7710-1-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: Collabora Kernel ML <kernel@collabora.com>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This fixes the following warning detected when running make with W=1

    drivers/gpu/drm/rockchip//cdn-dp-core.c:1112:5: warning: no previous
    prototype for ‘cdn_dp_suspend’ [-Wmissing-prototypes]

    drivers/gpu/drm/rockchip//cdn-dp-core.c:1126:5: warning: no previous
    prototype for ‘cdn_dp_resume’ [-Wmissing-prototypes]

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 drivers/gpu/drm/rockchip/cdn-dp-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index eed594bd38d3..4fa00af89cca 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -1109,7 +1109,7 @@ static const struct component_ops cdn_dp_component_ops = {
 	.unbind = cdn_dp_unbind,
 };
 
-int cdn_dp_suspend(struct device *dev)
+static int cdn_dp_suspend(struct device *dev)
 {
 	struct cdn_dp_device *dp = dev_get_drvdata(dev);
 	int ret = 0;
@@ -1123,7 +1123,7 @@ int cdn_dp_suspend(struct device *dev)
 	return ret;
 }
 
-int cdn_dp_resume(struct device *dev)
+static int cdn_dp_resume(struct device *dev)
 {
 	struct cdn_dp_device *dp = dev_get_drvdata(dev);
 
-- 
2.26.2
