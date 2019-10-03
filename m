From: Soeren Moch <smoch@web.de>
Subject: [PATCH 2/3] arm64: dts: rockchip: fix RockPro64 sdhci settings
Date: Thu,  3 Oct 2019 23:50:35 +0200
Message-ID: <20191003215036.15023-2-smoch@web.de>
References: <20191003215036.15023-1-smoch@web.de>
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191003215036.15023-1-smoch@web.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Soeren Moch <smoch@web.de>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The RockPro64 schematics [1], [2] show that the rk3399 EMMC_STRB pin is
connected to the RESET pin instead of the DATA_STROBE pin of the eMMC modu=
le.
So the data strobe cannot be used for its intended purpose on this board,
and so the HS400 eMMC mode is not functional. Limit the controller to HS20=
0.

[1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf
[2] http://files.pine64.org/doc/rock64/PINE64_eMMC_Module_20170719.pdf

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
index 845eb070b5b0..2e44dae4865a 100644
=2D-- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -636,8 +636,7 @@

 &sdhci {
 	bus-width =3D <8>;
-	mmc-hs400-1_8v;
-	mmc-hs400-enhanced-strobe;
+	mmc-hs200-1_8v;
 	non-removable;
 	status =3D "okay";
 };
=2D-
2.17.1
