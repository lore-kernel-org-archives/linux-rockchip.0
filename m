From: David Wu <david.wu@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: Add rk3328 io-domain node
Date: Tue, 25 Jul 2017 18:08:01 +0800
Message-ID: <1500977281-3404-1-git-send-email-david.wu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, robh+dt@kernel.org
Cc: huangtao@rock-chips.com, mark.rutland@arm.com, catalin.marinas@arm.com, will.deacon@arm.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.or, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, David Wu <david.wu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: David Wu <david.wu@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 7e69f1f..cf34529 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -162,6 +162,11 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 
+		io_domains: io-domains {
+			compatible = "rockchip,rk3328-io-voltage-domain";
+			status = "disabled";
+		};
+
 		power: power-controller {
 			compatible = "rockchip,rk3328-power-controller";
 			#power-domain-cells = <1>;
-- 
1.9.1
