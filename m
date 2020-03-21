From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 4/6] arm64: dts: rockchip: fix &pinctrl phy sub nodename for rk3399-nanopi4
Date: Sat, 21 Mar 2020 22:54:21 +0100
Message-ID: <20200321215423.12176-4-jbx6244@gmail.com>
References: <20200321215423.12176-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200321215423.12176-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robin.murphy@arm.com, aballier@gentoo.org, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dt.yaml: phy:
'#phy-cells' is a required property
arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4.dt.yaml: phy:
'#phy-cells' is a required property
arch/arm64/boot/dts/rockchip/rk3399-nanopi-neo4.dt.yaml: phy:
'#phy-cells' is a required property

'phy' is a reserved nodename and should not be used for pinctrl,
so change it to 'gmac'.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 20529105c..1d246c2ca 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -525,7 +525,7 @@
 		};
 	};
 
-	phy {
+	gmac {
 		phy_intb: phy-intb {
 			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
-- 
2.11.0
