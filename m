From: Max Kellermann <max.kellermann@gmail.com>
Subject: [PATCH] sound/soc/rockchip: add RT5640 codec option
Date: Wed, 28 Nov 2018 08:28:52 +0100
Message-ID: <20181128072852.32760-1-max.kellermann@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, bardliao@realtek.com, oder_chiou@realtek.com, Max Kellermann <max.kellermann@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

The Firefly-RK3399 DeviceTree
(`arch/arm64/boot/dts/rockchip/rk3399-firefly.dts`) defines a
`simple-audio-card` device which selects a `realtek,rt5640` codec.
This codec however is inaccessible in the kernel configuration
(`SND_SOC_RT5640`) and thus cannot be used.

This patch adds a new configuration option named
`SND_SOC_ROCKCHIP_RT5640` which selects `SND_SOC_RT5640` and
`SND_SIMPLE_CARD`, but does nothing else.

It enables `SND_SIMPLE_CARD`, because that's what the Firefly has.
I'm not sure if there are Rockchip products which need a different
sound card driver with RT5640.

Signed-off-by: Max Kellermann <max.kellermann@gmail.com>
---
 sound/soc/rockchip/Kconfig | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/sound/soc/rockchip/Kconfig b/sound/soc/rockchip/Kconfig
index 957046ac6c8c..ac2e27043107 100644
--- a/sound/soc/rockchip/Kconfig
+++ b/sound/soc/rockchip/Kconfig
@@ -42,6 +42,16 @@ config SND_SOC_ROCKCHIP_MAX98090
 	  Say Y or M here if you want to add support for SoC audio on Rockchip
 	  boards using the MAX98090 codec, such as Veyron.
 
+config SND_SOC_ROCKCHIP_RT5640
+	tristate "ASoC support for Rockchip boards using a RT5640 codec"
+	depends on SND_SOC_ROCKCHIP
+	select SND_SOC_ROCKCHIP_I2S
+	select SND_SOC_RT5640
+	select SND_SIMPLE_CARD
+	help
+	  Say Y or M here if you want to add support for SoC audio on Rockchip
+	  boards using the RT5640 codec, such as Firefly-RK3399.
+
 config SND_SOC_ROCKCHIP_RT5645
 	tristate "ASoC support for Rockchip boards using a RT5645/RT5650 codec"
 	depends on SND_SOC_ROCKCHIP && I2C && GPIOLIB && CLKDEV_LOOKUP
-- 
2.19.2
