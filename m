From: Markus Reichl <m.reichl@fivetechno.de>
Subject: [PATCH 3/3] arm64: dts: rockchip: Enable sdio0 and uart0 on
 rk3399-roc-pc-mezzanine
Date: Tue, 10 Dec 2019 13:45:16 +0100
Message-ID: <ff50dec5-ed1d-6a0b-a387-757b8c351469@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: de-DE
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The mezzanine board carries an E key type M.2 slot. This is
connected to USB, SDIO and UART0. Enable sdio and uart0 for use
with e.g. wlan and/or bt M.2 cards.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
Wifi via SDIO has been tested with Laird ST60-2230C (Marvell 88W8997)
Bluetoth via USB has been tested with Intel 9260
Bluetooth via UART has not been tested.
---
---
  .../dts/rockchip/rk3399-roc-pc-mezzanine.dts  | 21 +++++++++++++++++++
  1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
index 2db9d32ad54a..2acb3d500fb9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
@@ -70,3 +70,24 @@ pcie_perst: pcie-perst {
  		};
  	};
  };
+
+&sdio0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_ngff>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
+	status = "okay";
+};
-- 
2.24.0
