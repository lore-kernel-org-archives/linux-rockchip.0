From: Soeren Moch <smoch@web.de>
Subject: [PATCH v2 9/9] arm64: dts: rockchip: RockPro64: hook up bluetooth at uart0
Date: Thu, 12 Dec 2019 00:52:53 +0100
Message-ID: <20191211235253.2539-10-smoch@web.de>
References: <20191211235253.2539-1-smoch@web.de>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191211235253.2539-1-smoch@web.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Kalle Valo <kvalo@codeaurora.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Soeren Moch <smoch@web.de>, linux-wireless@vger.kernel.org, brcm80211-dev-list.pdl@broadcom.com, brcm80211-dev-list@cypress.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

With enabled wifi support (required for firmware loading) for the
Ampak AP6359SA based wifi/bt combo module we now also can enable
the bluetooth part.

Suggested-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Soeren Moch <smoch@web.de>
=2D--
changes in v2:
- new patch

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: linux-wireless@vger.kernel.org
Cc: brcm80211-dev-list.pdl@broadcom.com
Cc: brcm80211-dev-list@cypress.com
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
=2D--
 .../boot/dts/rockchip/rk3399-rockpro64.dts    | 29 ++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm6=
4/boot/dts/rockchip/rk3399-rockpro64.dts
index 9fa92790d6e0..94cc462e234d 100644
=2D-- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -561,6 +561,20 @@
 };

 &pinctrl {
+	bt {
+		bt_enable_h: bt-enable-h {
+			rockchip,pins =3D <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_host_wake_l: bt-host-wake-l {
+			rockchip,pins =3D <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		bt_wake_l: bt-wake-l {
+			rockchip,pins =3D <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	buttons {
 		pwrbtn: pwrbtn {
 			rockchip,pins =3D <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
@@ -729,8 +743,21 @@

 &uart0 {
 	pinctrl-names =3D "default";
-	pinctrl-0 =3D <&uart0_xfer &uart0_cts>;
+	pinctrl-0 =3D <&uart0_xfer &uart0_cts &uart0_rts>;
 	status =3D "okay";
+
+	bluetooth {
+		compatible =3D "brcm,bcm43438-bt";
+		clocks =3D <&rk808 1>;
+		clock-names =3D "extclk";
+		device-wakeup-gpios =3D <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios =3D <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios =3D <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names =3D "default";
+		pinctrl-0 =3D <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+		vbat-supply =3D <&vcc3v3_sys>;
+		vddio-supply =3D <&vcc_1v8>;
+	};
 };

 &uart2 {
=2D-
2.17.1
