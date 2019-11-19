From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4.19 231/422] arm64: dts: rockchip: Fix I2C bus unit-address error on rk3399-puma-haikou
Date: Tue, 19 Nov 2019 06:17:08 +0100
Message-ID: <20191119051414.015045393@linuxfoundation.org>
References: <20191119051400.261610025@linuxfoundation.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191119051400.261610025@linuxfoundation.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>, Sasha Levin <sashal@kernel.org>
List-Id: linux-rockchip.vger.kernel.org

From: Rob Herring <robh@kernel.org>

[ Upstream commit 501500e65fa96f899230d66153fefd780f08dd34 ]

dtc has new checks for I2C buses. Fix the warnings in unit-addresses.

arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dtb: Warning (i2c_bus_reg): /i2c@ff3d0000/codec@0a: I2C bus unit address format error, expected "a"

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index 8ce4a79d9360f..1e6a71066c163 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -131,7 +131,7 @@
 	status = "okay";
 	clock-frequency = <400000>;
 
-	sgtl5000: codec@0a {
+	sgtl5000: codec@a {
 		compatible = "fsl,sgtl5000";
 		reg = <0x0a>;
 		clocks = <&sgtl5000_clk>;
-- 
2.20.1
