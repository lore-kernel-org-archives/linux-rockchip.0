From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: remove properties from spdif node RK3399 Excavator
Date: Thu, 12 Mar 2020 18:22:39 +0100
Message-ID: <20200312172240.21362-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

An expermental test with the command below gives this error:

arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml:
spdif@ff870000:
'i2c-scl-falling-time-ns', 'i2c-scl-rising-time-ns', 'power-domains'
do not match any of the regexes: 'pinctrl-[0-9]+'

'i2c-scl-falling-time-ns', 'i2c-scl-rising-time-ns'
are not valid properties for 'spdif' nodes, so remove them.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sound/rockchip-spdif.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
index b4d8f60b7..73e269a8a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
@@ -230,7 +230,5 @@
 };
 
 &spdif {
-	i2c-scl-rising-time-ns = <450>;
-	i2c-scl-falling-time-ns = <15>;
 	status = "okay";
 };
-- 
2.11.0
