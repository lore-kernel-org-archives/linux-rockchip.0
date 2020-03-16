From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH] ARM: dts: rockchip: rk3xxx: fix L2 cache-controller nodename
Date: Mon, 16 Mar 2020 17:54:53 +0100
Message-ID: <20200316165453.3022-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives for example this error:

arch/arm/boot/dts/rk3066a-bqcurie2.dt.yaml:
l2-cache-controller@10138000: $nodename:0:
'l2-cache-controller@10138000'
does not match '^(cache-controller|cpu)(@[0-9a-f,]+)*$'

Fix error by changing nodename to 'cache-controller'.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/l2c2x0.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3xxx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index 9438332b8..f9fcb7e96 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -91,7 +91,7 @@
 		status = "disabled";
 	};
 
-	L2: l2-cache-controller@10138000 {
+	L2: cache-controller@10138000 {
 		compatible = "arm,pl310-cache";
 		reg = <0x10138000 0x1000>;
 		cache-unified;
-- 
2.11.0
