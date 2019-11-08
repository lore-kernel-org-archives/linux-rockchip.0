From: Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.14 101/103] ARM: dts: rockchip: Fix erroneous SPI bus dtc warnings on rk3036
Date: Fri,  8 Nov 2019 06:43:06 -0500
Message-ID: <20191108114310.14363-101-sashal@kernel.org>
References: <20191108114310.14363-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <stable-owner@vger.kernel.org>
In-Reply-To: <20191108114310.14363-1-sashal@kernel.org>
Sender: stable-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, stable@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Rob Herring <robh@kernel.org>

[ Upstream commit 131c3eb428ccd5f0c784b9edb4f72ec296a045d2 ]

dtc has new checks for SPI buses. The rk3036 dts file has a node named
spi' which causes false positive warnings. As the node is a pinctrl child
node, change the node name to be 'spi-pins' to fix the warnings.

arch/arm/boot/dts/rk3036-evb.dtb: Warning (spi_bus_bridge): /pinctrl/spi: incorrect #address-cells for SPI bus
arch/arm/boot/dts/rk3036-kylin.dtb: Warning (spi_bus_bridge): /pinctrl/spi: incorrect #address-cells for SPI bus
arch/arm/boot/dts/rk3036-evb.dtb: Warning (spi_bus_bridge): /pinctrl/spi: incorrect #size-cells for SPI bus
arch/arm/boot/dts/rk3036-kylin.dtb: Warning (spi_bus_bridge): /pinctrl/spi: incorrect #size-cells for SPI bus

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3036.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 5c0a76493d22a..03cf0c84ac0aa 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -750,7 +750,7 @@
 			/* no rts / cts for uart2 */
 		};
 
-		spi {
+		spi-pins {
 			spi_txd:spi-txd {
 				rockchip,pins = <1 29 RK_FUNC_3 &pcfg_pull_default>;
 			};
-- 
2.20.1
