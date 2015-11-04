From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 6/8] ARM: dts: rockchip: add clock-cells for usb phy nodes
Date: Wed,  4 Nov 2015 22:44:12 +0100
Message-ID: <1446673454-9529-7-git-send-email-heiko@sntech.de>
References: <1446673454-9529-1-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1446673454-9529-1-git-send-email-heiko@sntech.de>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: kishon@ti.com, mturquette@baylibre.com, sboyd@codeaurora.org
Cc: Heiko Stuebner <heiko@sntech.de>, arnd@arndb.de, linux-kernel@vger.kernel.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, romain.perier@gmail.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Add the #clock-cells properties for the usbphy nodes as they
provide the pll-clocks now.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm/boot/dts/rk3066a.dtsi | 2 ++
 arch/arm/boot/dts/rk3188.dtsi  | 2 ++
 arch/arm/boot/dts/rk3288.dtsi  | 3 +++
 3 files changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 946f187..3e4b41b 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -181,6 +181,7 @@
 			reg = <0x17c>;
 			clocks = <&cru SCLK_OTGPHY0>;
 			clock-names = "phyclk";
+			#clock-cells = <0>;
 		};
 
 		usbphy1: usb-phy1 {
@@ -188,6 +189,7 @@
 			reg = <0x188>;
 			clocks = <&cru SCLK_OTGPHY1>;
 			clock-names = "phyclk";
+			#clock-cells = <0>;
 		};
 	};
 
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 6399942..48a287e 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -156,6 +156,7 @@
 			reg = <0x10c>;
 			clocks = <&cru SCLK_OTGPHY0>;
 			clock-names = "phyclk";
+			#clock-cells = <0>;
 		};
 
 		usbphy1: usb-phy1 {
@@ -163,6 +164,7 @@
 			reg = <0x11c>;
 			clocks = <&cru SCLK_OTGPHY1>;
 			clock-names = "phyclk";
+			#clock-cells = <0>;
 		};
 	};
 
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index c64a116..51a5d29 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -943,6 +943,7 @@
 			reg = <0x320>;
 			clocks = <&cru SCLK_OTGPHY0>;
 			clock-names = "phyclk";
+			#clock-cells = <0>;
 		};
 
 		usbphy1: usb-phy1 {
@@ -950,6 +951,7 @@
 			reg = <0x334>;
 			clocks = <&cru SCLK_OTGPHY1>;
 			clock-names = "phyclk";
+			#clock-cells = <0>;
 		};
 
 		usbphy2: usb-phy2 {
@@ -957,6 +959,7 @@
 			reg = <0x348>;
 			clocks = <&cru SCLK_OTGPHY2>;
 			clock-names = "phyclk";
+			#clock-cells = <0>;
 		};
 	};
 
-- 
2.6.2
