From: =?UTF-8?q?Pawe=C5=82=20Jarosz?= <paweljarosz3691@gmail.com>
Subject: [PATCH 3/3] ARM: dts: rockchip: add tsadc node
Date: Tue, 19 Jan 2016 13:09:21 +0100
Message-ID: <1453205361-27267-4-git-send-email-paweljarosz3691@gmail.com>
References: <1453205361-27267-1-git-send-email-paweljarosz3691@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <1453205361-27267-1-git-send-email-paweljarosz3691@gmail.com>
Sender: linux-clk-owner@vger.kernel.org
To: heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, sboyd@codeaurora.org, mturquette@baylibre.com
Cc: =?UTF-8?q?Pawe=C5=82=20Jarosz?= <paweljarosz3691@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Add the device node for the TSADC found on rk3066.

Signed-off-by: Pawe=C5=82 Jarosz <paweljarosz3691@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a=
=2Edtsi
index 58bac50..adb0258 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -188,6 +188,17 @@
 		clock-names =3D "timer", "pclk";
 	};
=20
+	tsadc: tsadc@20060000 {
+		compatible =3D "rockchip,rk3066-tsadc";
+		reg =3D <0x20060000 0x100>;
+		interrupts =3D <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
+		#io-channel-cells =3D <1>;
+		clocks =3D <&cru SCLK_TSADC>, <&cru PCLK_TSADC>;
+		clock-names =3D "saradc", "apb_pclk";
+		vref-supply =3D <&vcc_io>;
+		status =3D "disabled";
+	};
+
 	usbphy: phy {
 		compatible =3D "rockchip,rk3066a-usb-phy", "rockchip,rk3288-usb-phy"=
;
 		rockchip,grf =3D <&grf>;
--=20
1.9.1

