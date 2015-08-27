From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v1 3/5] ARM: dts: Add arm,pl330-broken-no-flushp quirk for rk3288 platform
Date: Thu, 27 Aug 2015 22:24:41 +0800
Message-ID: <1440685481-22163-1-git-send-email-shawn.lin@rock-chips.com>
References: <1440685419-22037-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1440685419-22037-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Vinod Koul <vinod.koul@intel.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Boojin Kim <boojin.kim@samsung.com>, Doug Anderson <dianders@chromium.org>, Olof Johansson <olofj@google.com>, Sonny Rao <sonnyrao@chromium.org>, Addy Ke <addy.ke@rock-chips.com>, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

From: Addy Ke <addy.ke@rock-chips.com>

Pl330 integrated in rk3288 platform doesn't support
DMAFLUSHP function. So we add broken-no-flushp quirk
for it.

Signed-off-by: Addy Ke <addy.ke@rock-chips.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
cc: Heiko Stuebner <heiko@sntech.de>
cc: Doug Anderson <dianders@chromium.org>
cc: Olof Johansson <olofj@google.com>

---

Changes in v1:
- rename broken-no-flushp to "arm,pl330-broken-no-flushp" suggested
  by Krzysztof.
- remove Sunny's tag

 arch/arm/boot/dts/rk3288.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 22316d0..106adf7 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -144,6 +144,7 @@
 			#dma-cells = <1>;
 			clocks = <&cru ACLK_DMAC2>;
 			clock-names = "apb_pclk";
+			arm,pl330-broken-no-flushp;
 		};
 
 		dmac_bus_ns: dma-controller@ff600000 {
@@ -155,6 +156,7 @@
 			clocks = <&cru ACLK_DMAC1>;
 			clock-names = "apb_pclk";
 			status = "disabled";
+			arm,pl330-broken-no-flushp;
 		};
 
 		dmac_bus_s: dma-controller@ffb20000 {
@@ -165,6 +167,7 @@
 			#dma-cells = <1>;
 			clocks = <&cru ACLK_DMAC1>;
 			clock-names = "apb_pclk";
+			arm,pl330-broken-no-flushp;
 		};
 	};
 
-- 
2.3.7
