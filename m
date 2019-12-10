From: Markus Reichl <m.reichl@fivetechno.de>
Subject: [PATCH 2/3] arm64: dts: rockchip: Enable PD for USB-C-Port on
 rk3399-roc-pc.
Date: Tue, 10 Dec 2019 13:45:02 +0100
Message-ID: <678df227-38be-47af-7ee3-741a391a196c@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: de-DE
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

USB-C-Port 0 on rk3399-roc-pc is designed to supply the board.
To meet the power requirements of up to 45W a power delivery (PD)
compatible supply is needed. To configure the PD the node of the
fusb302 needs a connector property with desired PD description.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
Presently the board in mainline has to be powered from a 12V supply,
connected to two pins on the expansion header as the standard 5V
delivered by the unconfigured USB-C plug is not enough for higher
loads or peripherals on USB or M.2.

With this patch the board requests 15V from the PD and runs fine
on high loads with NVME SSD, Ethernet, SDIO WLAN and USB peripherals.
During boot the 12V supply is still needed for some seconds,
as the fusb302 shuts down or resets the PD shortly when initializing (BUG?).

The board's 12V line is running presently on 5V, the default output
voltage of the MP8859 on I2C-7, for wich no mainline kernel driver exists yet.
---
  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 16 ++++++++++++++--
  1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 8e01b04144b7..90783b2b1d1f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -6,6 +6,7 @@
  /dts-v1/;
  #include <dt-bindings/input/linux-event-codes.h>
  #include <dt-bindings/pwm/pwm.h>
+#include <dt-bindings/usb/pd.h>
  #include "rk3399.dtsi"
  #include "rk3399-opp.dtsi"
  
@@ -540,11 +541,22 @@ fusb0: usb-typec@22 {
  		compatible = "fcs,fusb302";
  		reg = <0x22>;
  		interrupt-parent = <&gpio1>;
-		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
  		pinctrl-names = "default";
  		pinctrl-0 = <&fusb0_int>;
  		vbus-supply = <&vcc_vbus_typec0>;
-		status = "okay";
+
+		usb_con: connector {
+			compatible = "usb-c-connector";
+			label = "USB-C-0";
+			power-role = "dual";
+			try-power-role = "sink";
+			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
+			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
+				     PDO_VAR(5000, 15000, 3000)
+				     PDO_PPS_APDO(5000, 15000, 3000)>;
+			op-sink-microwatt = <45000000>;
+		};
  	};
  };
  
-- 
2.24.0
