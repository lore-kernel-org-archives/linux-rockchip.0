From: Dan Johansen <strit@manjaro.org>
Subject: [PATCH] fix usb2 on rock64
Date: Fri, 08 Mar 2019 08:35:10 +0100
Message-ID: <693449761bdd3e435089e849b0114018@manjaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

 From 5d027bc9dc27b7bb46268e2f92e853368e5f097f Mon Sep 17 00:00:00 2001
 From: Strit <strit@manjaro.org>
Date: Tue, 5 Mar 2019 16:35:48 +0100
Subject: [PATCH] fix usb2 port on rock64

Fix the issue with usb not getting power on the rock64 board from 
pine64.org.

Signed-off-by: Dan Johansen <strit@manjaro.org>

---
  arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 4 ++--
  1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts 
b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 040b36ef0dd2..4877eb1c095a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -47,7 +47,7 @@
  	vcc_host1_5v: vcc_otg_5v: vcc-host1-5v-regulator {
  		compatible = "regulator-fixed";
  		enable-active-high;
-		gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+		gpio = <&gpio0 RK_PD3 GPIO_ACTIVE_HIGH>;
  		pinctrl-names = "default";
  		pinctrl-0 = <&usb20_host_drv>;
  		regulator-name = "vcc_host1_5v";
@@ -266,7 +266,7 @@

  	usb2 {
  		usb20_host_drv: usb20-host-drv {
-			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
  		};
  	};

-- 
2.20.1
