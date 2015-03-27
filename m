From: Russell King <rmk+kernel@arm.linux.org.uk>
Subject: [PATCH 2/3] drm: bridge/dw_hdmi: protect n/cts setting with a mutex
Date: Fri, 27 Mar 2015 11:13:50 +0000
Message-ID: <E1YbSD0-0007z4-Uc@rmk-PC.arm.linux.org.uk>
References: <20150327111320.GA4019@n2100.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20150327111320.GA4019@n2100.arm.linux.org.uk>
Content-Disposition: inline
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Cc: Fabio Estevam <fabio.estevam@freescale.com>, mmind00@googlemail.com, David Airlie <airlied@linux.ie>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dianders@chromium.org, djkurtz@chromium.org, Philipp Zabel <p.zabel@pengutronix.de>, marcheu@chromium.org, Andy Yan <andy.yan@rock-chips.com>, mark.yao@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

The HDMI n/cts settings need to be updated whenever the audio sample
rate or the video pixel clock changes.  This needs to be protected
against concurrency as there is no synchronisation between these two
operations.  Introduce a mutex (called audio_mutex) to protect against
two threads trying to update the video clock rate and pixel clock
simultaneously.

Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
---
 drivers/gpu/drm/bridge/dw_hdmi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/bridge/dw_hdmi.c b/drivers/gpu/drm/bridge/dw_hdmi.c
index 78363552d80e..b75922d4901e 100644
--- a/drivers/gpu/drm/bridge/dw_hdmi.c
+++ b/drivers/gpu/drm/bridge/dw_hdmi.c
@@ -16,6 +16,7 @@
 #include <linux/err.h>
 #include <linux/clk.h>
 #include <linux/hdmi.h>
+#include <linux/mutex.h>
 #include <linux/of_device.h>
 
 #include <drm/drm_of.h>
@@ -126,6 +127,7 @@ struct dw_hdmi {
 	struct i2c_adapter *ddc;
 	void __iomem *regs;
 
+	struct mutex audio_mutex;
 	unsigned int sample_rate;
 	int ratio;
 
@@ -357,12 +359,16 @@ static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
 
 static void hdmi_init_clk_regenerator(struct dw_hdmi *hdmi)
 {
+	mutex_lock(&hdmi->audio_mutex);
 	hdmi_set_clk_regenerator(hdmi, 74250000);
+	mutex_unlock(&hdmi->audio_mutex);
 }
 
 static void hdmi_clk_regenerator_update_pixel_clock(struct dw_hdmi *hdmi)
 {
+	mutex_lock(&hdmi->audio_mutex);
 	hdmi_set_clk_regenerator(hdmi, hdmi->hdmi_data.video_mode.mpixelclock);
+	mutex_unlock(&hdmi->audio_mutex);
 }
 
 /*
@@ -1565,6 +1571,8 @@ int dw_hdmi_bind(struct device *dev, struct device *master,
 	hdmi->ratio = 100;
 	hdmi->encoder = encoder;
 
+	mutex_init(&hdmi->audio_mutex);
+
 	of_property_read_u32(np, "reg-io-width", &val);
 
 	switch (val) {
-- 
1.8.3.1
