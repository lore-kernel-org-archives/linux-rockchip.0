From: Chen-Yu Tsai <wens@kernel.org>
Subject: [PATCH 5/6] arm64: dts: rockchip: rk3399: drop #address-cells, #size-cells from pmugrf node
Date: Fri, 27 Mar 2020 11:04:13 +0800
Message-ID: <20200327030414.5903-6-wens@kernel.org>
References: <20200327030414.5903-1-wens@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200327030414.5903-1-wens@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Chen-Yu Tsai <wens@csie.org>

The device tree compiler gives the following warning:

    /syscon@ff100000: unnecessary #address-cells/#size-cells without
    "ranges" or child "reg" property

Since the pmygrf node only has an io-domains child node that has no
reg property, remove the two properties from the pmugrf node to silence
the warning.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 74f2c3d49095..3499d1497127 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1124,8 +1124,6 @@ pd_vopl@RK3399_PD_VOPL {
 	pmugrf: syscon@ff320000 {
 		compatible = "rockchip,rk3399-pmugrf", "syscon", "simple-mfd";
 		reg = <0x0 0xff320000 0x0 0x1000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
 
 		pmu_io_domains: io-domains {
 			compatible = "rockchip,rk3399-pmu-io-voltage-domain";
-- 
2.25.1
