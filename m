From: Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH 2/2] drm/rockchip: use DRM_DEV_WARN macro in debug output
Date: Thu, 14 Nov 2019 16:25:20 +0300
Message-ID: <20191114132520.7323-2-wambui.karugax@gmail.com>
References: <20191114132520.7323-1-wambui.karugax@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191114132520.7323-1-wambui.karugax@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, sean@poorly.run, airlied@linux.ie, daniel@ffwll.ch, hjc@rock-chips.com
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Replace the use of dev_warn in debug output with the new DRM specific
DRM_DEV_WARN debug output macro to maintain consistency across the driver.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index e5864e823020..d7ee8d1835c4 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -796,7 +796,8 @@ static struct i2c_adapter *inno_hdmi_i2c_adapter(struct inno_hdmi *hdmi)
 
 	ret = i2c_add_adapter(adap);
 	if (ret) {
-		dev_warn(hdmi->dev, "cannot add %s I2C adapter\n", adap->name);
+		DRM_DEV_WARN(hdmi->dev,
+			     "cannot add %s I2C adapter\n", adap->name);
 		devm_kfree(hdmi->dev, i2c);
 		return ERR_PTR(ret);
 	}
-- 
2.17.1
