From: Soeren Moch <smoch@web.de>
Subject: [PATCH v2 8/9] arm64: dts: rockchip: RockPro64: enable wifi module at sdio0
Date: Thu, 12 Dec 2019 00:52:52 +0100
Message-ID: <20191211235253.2539-9-smoch@web.de>
References: <20191211235253.2539-1-smoch@web.de>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <20191211235253.2539-1-smoch@web.de>
Sender: netdev-owner@vger.kernel.org
To: Kalle Valo <kvalo@codeaurora.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Soeren Moch <smoch@web.de>, linux-wireless@vger.kernel.org, brcm80211-dev-list.pdl@broadcom.com, brcm80211-dev-list@cypress.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

RockPro64 supports an Ampak AP6359SA based wifi/bt combo module.
The BCM4359/9 wifi controller in this module is connected to sdio0,
enable this interface.

Use the in-band sdio irq instead of the out-of-band wifi_host_wake_l
signal since the latter is not working reliably on this board (probably
due to it's PCIe WAKE# connection).

Signed-off-by: Soeren Moch <smoch@web.de>
=2D--
changes in v2:
- add comment about irq in commit message

Not sure where to place exactly the sdio0 node in the dts because
existing sd nodes are not sorted alphabetically.

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
 .../boot/dts/rockchip/rk3399-rockpro64.dts    | 21 ++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm6=
4/boot/dts/rockchip/rk3399-rockpro64.dts
index 7f4b2eba31d4..9fa92790d6e0 100644
=2D-- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -71,13 +71,6 @@
 		clock-names =3D "ext_clock";
 		pinctrl-names =3D "default";
 		pinctrl-0 =3D <&wifi_enable_h>;
-
-		/*
-		 * On the module itself this is one of these (depending
-		 * on the actual card populated):
-		 * - SDIO_RESET_L_WL_REG_ON
-		 * - PDN (power down when low)
-		 */
 		reset-gpios =3D <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
 	};

@@ -650,6 +643,20 @@
 	status =3D "okay";
 };

+&sdio0 {
+	bus-width =3D <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	disable-wp;
+	keep-power-in-suspend;
+	mmc-pwrseq =3D <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	status =3D "okay";
+};
+
 &sdmmc {
 	bus-width =3D <4>;
 	cap-sd-highspeed;
=2D-
2.17.1
