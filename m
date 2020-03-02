From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: fix compatible property for rk3399-evb
Date: Mon,  2 Mar 2020 10:27:59 +0100
Message-ID: <20200302092759.3291-3-jbx6244@gmail.com>
References: <20200302092759.3291-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200302092759.3291-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives this error:

arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: /: compatible:
['rockchip,rk3399-evb', 'rockchip,rk3399', 'google,rk3399evb-rev2']
is not valid under any of the given schemas

'google,rk3399evb-rev2' was a no longer used variant for Google.
The binding only mentions 'rockchip,rk3399-evb', 'rockchip,rk3399',
so fix this error by removing 'google,rk3399evb-rev2' from
the compatible property in rk3399-evb.dts and change it into
generic rk3399-evb support only.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
index 77008dca4..d1afd1e1d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
@@ -9,8 +9,7 @@
 
 / {
 	model = "Rockchip RK3399 Evaluation Board";
-	compatible = "rockchip,rk3399-evb", "rockchip,rk3399",
-		     "google,rk3399evb-rev2";
+	compatible = "rockchip,rk3399-evb", "rockchip,rk3399";
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-- 
2.11.0
