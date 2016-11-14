From: Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 05/10] dt-bindings: add documentation for rk1108 pinctrl
Date: Mon, 14 Nov 2016 20:09:53 +0800
Message-ID: <1479125393-24355-1-git-send-email-andy.yan@rock-chips.com>
References: <1479124550-24037-1-git-send-email-andy.yan@rock-chips.com>
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <1479124550-24037-1-git-send-email-andy.yan@rock-chips.com>
Sender: linux-gpio-owner@vger.kernel.org
To: heiko@sntech.de
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org, linus.walleij@linaro.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org, mark.rutland@arm.com, linux-kernel@vger.kernel.org, Andy Yan <andy.yan@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

This adds the dt-binding documentation for rk1108 pinctrl

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v2:
- add dt-binding documentation for pinctrl

 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
index c68b955..4722bc6 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
@@ -19,10 +19,11 @@ The pins are grouped into up to 5 individual pin banks which need to be
 defined as gpio sub-nodes of the pinmux controller.
 
 Required properties for iomux controller:
-  - compatible: one of "rockchip,rk2928-pinctrl", "rockchip,rk3066a-pinctrl"
-		       "rockchip,rk3066b-pinctrl", "rockchip,rk3188-pinctrl"
-		       "rockchip,rk3228-pinctrl", "rockchip,rk3288-pinctrl"
-		       "rockchip,rk3368-pinctrl", "rockchip,rk3399-pinctrl"
+  - compatible: one of "rockchip,rk1108-pinctrl", "rockchip,rk2928-pinctrl"
+		       "rockchip,rk3066a-pinctrl", "rockchip,rk3066b-pinctrl"
+		       "rockchip,rk3188-pinctrl", "rockchip,rk3228-pinctrl"
+		       "rockchip,rk3288-pinctrl", "rockchip,rk3368-pinctrl"
+		       "rockchip,rk3399-pinctrl"
   - rockchip,grf: phandle referencing a syscon providing the
 	 "general register files"
 
-- 
2.7.4


