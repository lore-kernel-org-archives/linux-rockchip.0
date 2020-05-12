From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 2/3] dt-bindings: pinctrl: rockchip: update example
Date: Tue, 12 May 2020 22:35:23 +0200
Message-ID: <20200512203524.7317-2-jbx6244@gmail.com>
References: <20200512203524.7317-1-jbx6244@gmail.com>
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <20200512203524.7317-1-jbx6244@gmail.com>
Sender: linux-gpio-owner@vger.kernel.org
To: heiko@sntech.de
Cc: linus.walleij@linaro.org, robh+dt@kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The Rockchip dtsi and dts files have been bulk-converted for the
remaining raw gpio numbers into their descriptive counterparts and
also got rid of the unhelpful RK_FUNC_x -> x and RK_GPIOx -> x
mappings, so update the example as well.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
index 2113cfaa2..d3eae61a3 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
@@ -110,8 +110,8 @@ pinctrl@20008000 {
 
 	uart2 {
 		uart2_xfer: uart2-xfer {
-			rockchip,pins = <RK_GPIO1 8 1 &pcfg_pull_default>,
-					<RK_GPIO1 9 1 &pcfg_pull_default>;
+			rockchip,pins = <1 RK_PB0 1 &pcfg_pull_default>,
+					<1 RK_PB1 1 &pcfg_pull_default>;
 		};
 	};
 };
-- 
2.11.0
