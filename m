From: Soeren Moch <smoch@web.de>
Subject: [PATCH 3/3] arm64: dts: rockchip: fix RockPro64 sdmmc settings
Date: Thu,  3 Oct 2019 23:50:36 +0200
Message-ID: <20191003215036.15023-3-smoch@web.de>
References: <20191003215036.15023-1-smoch@web.de>
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191003215036.15023-1-smoch@web.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Soeren Moch <smoch@web.de>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

According to the RockPro64 schematic [1] the rk3399 sdmmc controller is
connected to a microSD (TF card) slot, which cannot be switched to 1.8V.
So also configure the vcc_sdio regulator, which drives the i/o voltage
of the sdmmc controller, accordingly.

While at it, also remove the cap-mmc-highspeed property of the sdmmc
controller, since no mmc card can be connected here.

[1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf

Fixes: e4f3fb490967 ("arm64: dts: rockchip: add initial dts support for Ro=
ckpro64")
Signed-off-by: Soeren Moch <smoch@web.de>
=2D--
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
=2D--
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm6=
4/boot/dts/rockchip/rk3399-rockpro64.dts
index 2e44dae4865a..084f1d994a50 100644
=2D-- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -353,7 +353,7 @@
 				regulator-name =3D "vcc_sdio";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-min-microvolt =3D <1800000>;
+				regulator-min-microvolt =3D <3000000>;
 				regulator-max-microvolt =3D <3000000>;
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -624,7 +624,6 @@

 &sdmmc {
 	bus-width =3D <4>;
-	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	cd-gpios =3D <&gpio0 7 GPIO_ACTIVE_LOW>;
 	disable-wp;
=2D-
2.17.1
