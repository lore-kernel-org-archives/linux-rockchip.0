From: Carlos de Paula <me-FwFLQrstKkX3oGB3hsPCZA@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: Add txpbl node for RK3399/RK3328
Date: Tue, 18 Feb 2020 17:10:37 -0500
Message-ID: <20200218221040.10955-1-me@carlosedp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, jose.abreu-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, Carlos de Paula <me-FwFLQrstKkX3oGB3hsPCZA@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Christoph Muellner <christoph.muellner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Daniel Lezcano <daniel.lezcano-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Some rockchip SoCs like the RK3399 and RK3328 exhibit an issue
where tx checksumming does not work with packets larger than 1498.

The default Programmable Buffer Length for TX in these GMAC's is
not suitable for MTUs higher than 1498. The workaround is to disable
TX offloading with 'ethtool -K eth0 tx off rx off' causing performance
impacts as it disables hardware checksumming.

This patch sets snps,txpbl to 0x4 which is a safe number tested ok for
the most popular MTU value of 1500.

For reference, see https://lkml.org/lkml/2019/4/1/1382.

Signed-off-by: Carlos de Paula <me-FwFLQrstKkX3oGB3hsPCZA@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 ++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 +
 2 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 1f53ead52c7f..b7f1de4b7fd0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -906,6 +906,7 @@
 		resets = <&cru SRST_GMAC2IO_A>;
 		reset-names = "stmmaceth";
 		rockchip,grf = <&grf>;
+		snps,txpbl = <0x4>;
 		status = "disabled";
 	};
 
@@ -913,6 +914,7 @@
 		compatible = "rockchip,rk3328-gmac";
 		reg = <0x0 0xff550000 0x0 0x10000>;
 		rockchip,grf = <&grf>;
+		snps,txpbl = <0x4>;
 		interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "macirq";
 		clocks = <&cru SCLK_MAC2PHY_SRC>, <&cru SCLK_MAC2PHY_RXTX>,
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 33cc21fcf4c1..cd5415d7e559 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -288,6 +288,7 @@
 		resets = <&cru SRST_A_GMAC>;
 		reset-names = "stmmaceth";
 		rockchip,grf = <&grf>;
+		snps,txpbl = <0x4>;
 		status = "disabled";
 	};
 
-- 
2.20.1
