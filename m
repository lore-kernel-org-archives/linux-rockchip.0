From: Jeffy Chen <jeffy.chen@rock-chips.com>
Subject: [PATCH v3 4/9] drm/rockchip: cdn-dp: Don't try to release firmware when not loaded
Date: Wed,  5 Apr 2017 16:29:22 +0800
Message-ID: <1491380967-28570-5-git-send-email-jeffy.chen@rock-chips.com>
References: <1491380967-28570-1-git-send-email-jeffy.chen@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1491380967-28570-1-git-send-email-jeffy.chen@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: briannorris@chromium.org, dianders@chromium.org, tfiga@chromium.org, seanpaul@chromium.org, zyw@rock-chips.com, mark.yao@rock-chips.com, Jeffy Chen <jeffy.chen@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
---

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
