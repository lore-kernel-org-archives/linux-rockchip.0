From: Wolfram Sang <wsa@the-dreams.de>
Subject: [PATCH] i2c: rk3x: populate correct variable for sda_falling_time
Date: Wed, 25 Nov 2015 16:58:18 +0100
Message-ID: <1448467098-10198-1-git-send-email-wsa@the-dreams.de>
Return-path: <linux-i2c-owner@vger.kernel.org>
Sender: linux-i2c-owner@vger.kernel.org
To: linux-i2c@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, Wolfram Sang <wsa@the-dreams.de>
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Wolfram Sang <wsa@the-dreams.de>
---
 drivers/i2c/busses/i2c-rk3x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index c1935ebd6a9c38..9096d17beb5bb0 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -908,7 +908,7 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 				 &i2c->scl_fall_ns))
 		i2c->scl_fall_ns = 300;
 	if (of_property_read_u32(pdev->dev.of_node, "i2c-sda-falling-time-ns",
-				 &i2c->scl_fall_ns))
+				 &i2c->sda_fall_ns))
 		i2c->sda_fall_ns = i2c->scl_fall_ns;
 
 	strlcpy(i2c->adap.name, "rk3x-i2c", sizeof(i2c->adap.name));
-- 
2.1.4
