From: Jeffy Chen <jeffy.chen@rock-chips.com>
Subject: [PATCH v5 05/12] drm/rockchip: cdn-dp: Don't try to release firmware
 when not loaded
Date: Thu,  6 Apr 2017 20:31:18 +0800
Message-ID: <1491481885-13775-6-git-send-email-jeffy.chen@rock-chips.com>
References: <1491481885-13775-1-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1491481885-13775-1-git-send-email-jeffy.chen@rock-chips.com>
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

Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 drivers/gpu/drm/rockchip/cdn-dp-core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index 4e55d63..ee4195d 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -1053,6 +1053,7 @@ static int cdn_dp_bind(struct device *dev, struct device *master, void *data)
 	dp->connected = false;
 	dp->active = false;
 	dp->active_port = -1;
+	dp->fw_loaded = false;
 
 	INIT_WORK(&dp->event_work, cdn_dp_pd_event_work);
 
@@ -1133,7 +1134,8 @@ static void cdn_dp_unbind(struct device *dev, struct device *master, void *data)
 	connector->funcs->destroy(connector);
 
 	pm_runtime_disable(dev);
-	release_firmware(dp->fw);
+	if (dp->fw_loaded)
+		release_firmware(dp->fw);
 	kfree(dp->edid);
 	dp->edid = NULL;
 }
-- 
2.1.4
