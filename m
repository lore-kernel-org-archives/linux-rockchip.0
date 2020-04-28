From: Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] drm/rockchip: cdn-dp-core: Make cdn_dp_core_suspend/resume
 __maybe_unused
Date: Tue, 28 Apr 2020 23:31:24 +0200
Message-ID: <20200428213138.3171708-1-arnd@arndb.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Thierry Reding <treding@nvidia.com>, Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

With the new static annotation, the compiler warns when the functions
are actually unused:

drivers/gpu/drm/rockchip/cdn-dp-core.c:1123:12: error: 'cdn_dp_resume' defined but not used [-Werror=unused-function]
 1123 | static int cdn_dp_resume(struct device *dev)
      |            ^~~~~~~~~~~~~

Mark them __maybe_unused to suppress that warning as well.

Fixes: 7c49abb4c2f8 ("drm/rockchip: cdn-dp-core: Make cdn_dp_core_suspend/resume static")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index c634b95b50f7..1cde98c6b0e6 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -1106,7 +1106,7 @@ static const struct component_ops cdn_dp_component_ops = {
 	.unbind = cdn_dp_unbind,
 };
 
-static int cdn_dp_suspend(struct device *dev)
+static __maybe_unused int cdn_dp_suspend(struct device *dev)
 {
 	struct cdn_dp_device *dp = dev_get_drvdata(dev);
 	int ret = 0;
@@ -1120,7 +1120,7 @@ static int cdn_dp_suspend(struct device *dev)
 	return ret;
 }
 
-static int cdn_dp_resume(struct device *dev)
+static __maybe_unused int cdn_dp_resume(struct device *dev)
 {
 	struct cdn_dp_device *dp = dev_get_drvdata(dev);
 
-- 
2.26.0
