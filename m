From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: [PATCH 2/3] ASoC: rockchip: Make RK3328 GPIO_MUTE control explicit
Date: Thu,  6 Feb 2020 01:07:12 +0000
Message-ID: <29a846da33c02df64eca62b5fa0f3884652f788f.1580950046.git.robin.murphy@arm.com>
References: <cover.1580950046.git.robin.murphy@arm.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <cover.1580950046.git.robin.murphy-5wv7dgnIgG8@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: alsa-devel-K7yf7f+aM1XWsZ/bQMPhNw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The RK3328 reference design uses an external line driver IC as a buffer
on the analog codec output, enabled by the GPIO_MUTE pin, and such a
configuration is currently assumed in the codec driver's direct poking
of GRF_SOC_CON10 to control the GPIO_MUTE output value. However, some
boards wire up analog audio yet use that pin for some other purpose, so
that assumption doesn't always hold. Update this functionality to rely
on an explicit GPIO descriptor, such that it can be managed at the
board level.

Signed-off-by: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
---
 sound/soc/codecs/rk3328_codec.c | 20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/sound/soc/codecs/rk3328_codec.c b/sound/soc/codecs/rk3328_codec.c
index 287c962ba00d..f0e9ef21c5f8 100644
--- a/sound/soc/codecs/rk3328_codec.c
+++ b/sound/soc/codecs/rk3328_codec.c
@@ -7,6 +7,7 @@
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/device.h>
+#include <linux/gpio/consumer.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
@@ -31,7 +32,7 @@
 
 struct rk3328_codec_priv {
 	struct regmap *regmap;
-	struct regmap *grf;
+	struct gpio_desc *mute;
 	struct clk *mclk;
 	struct clk *pclk;
 	unsigned int sclk;
@@ -106,16 +107,6 @@ static int rk3328_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 	return 0;
 }
 
-static void rk3328_analog_output(struct rk3328_codec_priv *rk3328, int mute)
-{
-	unsigned int val = BIT(17);
-
-	if (mute)
-		val |= BIT(1);
-
-	regmap_write(rk3328->grf, RK3328_GRF_SOC_CON10, val);
-}
-
 static int rk3328_digital_mute(struct snd_soc_dai *dai, int mute)
 {
 	struct rk3328_codec_priv *rk3328 =
@@ -205,7 +196,7 @@ static int rk3328_codec_open_playback(struct rk3328_codec_priv *rk3328)
 	}
 
 	msleep(rk3328->spk_depop_time);
-	rk3328_analog_output(rk3328, 1);
+	gpiod_set_value(rk3328->mute, 0);
 
 	regmap_update_bits(rk3328->regmap, HPOUTL_GAIN_CTRL,
 			   HPOUTL_GAIN_MASK, OUT_VOLUME);
@@ -246,7 +237,7 @@ static int rk3328_codec_close_playback(struct rk3328_codec_priv *rk3328)
 {
 	size_t i;
 
-	rk3328_analog_output(rk3328, 0);
+	gpiod_set_value(rk3328->mute, 1);
 
 	regmap_update_bits(rk3328->regmap, HPOUTL_GAIN_CTRL,
 			   HPOUTL_GAIN_MASK, 0);
@@ -446,7 +437,6 @@ static int rk3328_platform_probe(struct platform_device *pdev)
 		dev_err(&pdev->dev, "missing 'rockchip,grf'\n");
 		return PTR_ERR(grf);
 	}
-	rk3328->grf = grf;
 	/* enable i2s_acodec_en */
 	regmap_write(grf, RK3328_GRF_SOC_CON2,
 		     (BIT(14) << 16 | BIT(14)));
@@ -458,7 +448,7 @@ static int rk3328_platform_probe(struct platform_device *pdev)
 		rk3328->spk_depop_time = 200;
 	}
 
-	rk3328_analog_output(rk3328, 0);
+	rk3328->mute = gpiod_get_optional(&pdev->dev, "mute", GPIOD_OUT_HIGH);
 
 	rk3328->mclk = devm_clk_get(&pdev->dev, "mclk");
 	if (IS_ERR(rk3328->mclk))
-- 
2.17.1
