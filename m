From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH v2 05/11] dt-bindings: devfreq: rk3399_dmc:  Replace
 deprecated 'devfreq-events' property
Date: Fri, 20 Dec 2019 09:24:24 +0900
Message-ID: <20191220002430.11995-6-cw00.choi@samsung.com>
References: <20191220002430.11995-1-cw00.choi@samsung.com>
        <CGME20191220001759epcas1p495fc9cdb6f2bd86abf63d16f61e68804@epcas1p4.samsung.com>
Content-Type: text/plain; charset="utf-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191220002430.11995-1-cw00.choi@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: robh+dt@kernel.org, krzk@kernel.org, heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com
Cc: mark.rutland@arm.com, a.swigon@samsung.com, m.szyprowski@samsung.com, kgene@kernel.org, cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com, linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

In order to remove the deprecated 'devfreq-events' property,
replace with new 'rockchip,dfi-device' property.

But, to guarantee the backward-compatibility, keep the support
of 'devfreq-events' property.

Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
index 0ec68141f85a..e484768a4077 100644
--- a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
+++ b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
@@ -2,7 +2,7 @@
 
 Required properties:
 - compatible:		 Must be "rockchip,rk3399-dmc".
-- devfreq-events:	 Node to get DDR loading, Refer to
+- rockchip,dfi-device:	 Node to get DDR loading, Refer to
 			 Documentation/devicetree/bindings/devfreq/event/
 			 rockchip-dfi.txt
 - clocks:		 Phandles for clock specified in "clock-names" property
@@ -173,7 +173,7 @@ Example:
 
 	dmc: dmc {
 		compatible = "rockchip,rk3399-dmc";
-		devfreq-events = <&dfi>;
+		rockchip,dfi-device = <&dfi>;
 		interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_DDRCLK>;
 		clock-names = "dmc_clk";
-- 
2.17.1
