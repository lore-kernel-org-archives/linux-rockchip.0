From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH] drm: rockchip: rk3066_hdmi: set edid fifo address
Date: Wed, 11 Dec 2019 21:34:17 +0100
Message-ID: <20191211203417.19448-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: hjc@rock-chips.com, airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Nickey Yang <nickey.yang@rock-chips.com>

Fix edid reading error when edid's block > 2.

Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index cdb401f42..945126948 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -640,6 +640,9 @@ static int rk3066_hdmi_i2c_write(struct rk3066_hdmi *hdmi, struct i2c_msg *msgs)
 	if (msgs->addr == DDC_ADDR)
 		hdmi->i2c->ddc_addr = msgs->buf[0];
 
+	/* Set edid fifo first address. */
+	hdmi_writeb(hdmi, HDMI_EDID_FIFO_ADDR, 0x00);
+
 	/* Set edid word address 0x00/0x80. */
 	hdmi_writeb(hdmi, HDMI_EDID_WORD_ADDR, hdmi->i2c->ddc_addr);
 
-- 
2.11.0
