From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: fix compatible property for Radxa ROCK Pi N10
Date: Fri, 28 Feb 2020 07:14:36 +0100
Message-ID: <20200228061436.13506-4-jbx6244@gmail.com>
References: <20200228061436.13506-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200228061436.13506-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives this error:

arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dt.yaml: /: compatible:
['radxa,rockpi-n10', 'rockchip,rk3399pro']
is not valid under any of the given schemas

During the review process the binding was changed,
but the dts file was somehow not updated.
Fix this error by adding 'vamrs,rk3399pro-vmarc-som' to
the compatible property.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts b/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
index b42f94179..a1783e7f7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
@@ -13,5 +13,6 @@
 
 / {
 	model = "Radxa ROCK Pi N10";
-	compatible = "radxa,rockpi-n10", "rockchip,rk3399pro";
+	compatible = "radxa,rockpi-n10", "vamrs,rk3399pro-vmarc-som",
+		     "rockchip,rk3399pro";
 };
-- 
2.11.0
