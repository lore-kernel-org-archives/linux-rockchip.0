From: Jacob Chen <jacob-chen@iotwrt.com>
Subject: [PATCH] media: i2c: OV5647: ensure clock lane in LP-11 state before streaming on
Date: Mon, 11 Sep 2017 09:53:40 +0800
Message-ID: <1505094820-11958-1-git-send-email-jacob-chen@iotwrt.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, roliveir@synopsys.com, linux-media@vger.kernel.org, mchehab@kernel.org, vladimir_zapolskiy@mentor.com, hans.verkuil@cisco.com, sakari.ailus@linux.intel.com, lolivei@synopsys.com, p.zabel@pengutronix.de, Jacob Chen <jacob-chen@iotwrt.com>
List-Id: linux-rockchip.vger.kernel.org

When I was supporting Rpi Camera Module on the ASUS Tinker board,
I found this driver have some issues with rockchip's mipi-csi driver.
It didn't place clock lane in LP-11 state before performing
D-PHY initialisation.

From our experience, on some OV sensors,
LP-11 state is not achieved while BIT(5)-0x4800 is cleared.

So let's set BIT(5) and BIT(0) both while not streaming, in order to
coax the clock lane into LP-11 state.

0x4800 : MIPI CTRL 00
	BIT(5) : clock lane gate enable
		0: continuous
		1: none-continuous
	BIT(0) : manually set clock lane
		0: Not used
		1: used

Changes in V2:
	modify commit messages

Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
---
 drivers/media/i2c/ov5647.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/ov5647.c b/drivers/media/i2c/ov5647.c
index 95ce90f..247302d 100644
--- a/drivers/media/i2c/ov5647.c
+++ b/drivers/media/i2c/ov5647.c
@@ -253,6 +253,10 @@ static int ov5647_stream_on(struct v4l2_subdev *sd)
 {
 	int ret;
 
+	ret = ov5647_write(sd, 0x4800, 0x04);
+	if (ret < 0)
+		return ret;
+
 	ret = ov5647_write(sd, 0x4202, 0x00);
 	if (ret < 0)
 		return ret;
@@ -264,6 +268,10 @@ static int ov5647_stream_off(struct v4l2_subdev *sd)
 {
 	int ret;
 
+	ret = ov5647_write(sd, 0x4800, 0x25);
+	if (ret < 0)
+		return ret;
+
 	ret = ov5647_write(sd, 0x4202, 0x0f);
 	if (ret < 0)
 		return ret;
@@ -320,7 +328,10 @@ static int __sensor_init(struct v4l2_subdev *sd)
 			return ret;
 	}
 
-	return ov5647_write(sd, 0x4800, 0x04);
+	/*
+	 * stream off to make the clock lane into LP-11 state.
+	 */
+	return ov5647_stream_off(sd);
 }
 
 static int ov5647_sensor_power(struct v4l2_subdev *sd, int on)
-- 
2.7.4
