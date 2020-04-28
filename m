From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 1/2] arm64: dts: rockchip: fix defines in pd_vio node for rk3399
Date: Tue, 28 Apr 2020 22:30:02 +0200
Message-ID: <20200428203003.3318-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: pd_vio@15:
'pd_tcpc0@RK3399_PD_TCPC0', 'pd_tcpc1@RK3399_PD_TCPC1'
do not match any of the regexes:
'.*-names$', '.*-supply$', '^#.*-cells$',
'^#[a-zA-Z0-9,+\\-._]{0,63}$',
'^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}$',
'^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-fA-F]+(,[0-9a-fA-F]+)*$',
'^__.*__$', 'pinctrl-[0-9]+'

Fix error by replacing the wrong defines by the ones
mentioned in 'rk3399-power.h'.

make -k ARCH=arm64 dtbs_check

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 2e7164c82..37279db53 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1088,12 +1088,12 @@
 					pm_qos = <&qos_isp1_m0>,
 						 <&qos_isp1_m1>;
 				};
-				pd_tcpc0@RK3399_PD_TCPC0 {
+				pd_tcpc0@RK3399_PD_TCPD0 {
 					reg = <RK3399_PD_TCPD0>;
 					clocks = <&cru SCLK_UPHY0_TCPDCORE>,
 						 <&cru SCLK_UPHY0_TCPDPHY_REF>;
 				};
-				pd_tcpc1@RK3399_PD_TCPC1 {
+				pd_tcpc1@RK3399_PD_TCPD1 {
 					reg = <RK3399_PD_TCPD1>;
 					clocks = <&cru SCLK_UPHY1_TCPDCORE>,
 						 <&cru SCLK_UPHY1_TCPDPHY_REF>;
-- 
2.11.0
