From: Markus Reichl <m.reichl@fivetechno.de>
Subject: [PATCH] arm64: dts: rockchip: Add LED nodes on rk3399-roc-pc
Date: Mon, 21 Oct 2019 12:24:36 +0200
Message-ID: <7d8d85c9-5fde-7943-a6b6-639bca38bdc1@fivetechno.de>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="ma6Nskd4tpvP5vsRVUnUWsgiIS2DwbBnW"
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--ma6Nskd4tpvP5vsRVUnUWsgiIS2DwbBnW
Content-Type: multipart/mixed; boundary="yJZwcp1Ymsuklh7aGS9WMHUNJ1nnL5i5j";
 protected-headers="v1"
From: Markus Reichl <m.reichl@fivetechno.de>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Message-ID: <7d8d85c9-5fde-7943-a6b6-639bca38bdc1@fivetechno.de>
Subject: [PATCH] arm64: dts: rockchip: Add LED nodes on rk3399-roc-pc

--yJZwcp1Ymsuklh7aGS9WMHUNJ1nnL5i5j
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

rk3399-roc-pc has three gpio LEDs, enable them.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
 .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/=
boot/dts/rockchip/rk3399-roc-pc.dts
index faf60b2a7673..ba52e1053a2d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
@@ -28,6 +28,33 @@
 		#clock-cells =3D <0>;
 	};
=20
+	leds {
+		compatible =3D "gpio-leds";
+		pinctrl-names =3D "default";
+		pinctrl-0 =3D <&work_led_gpio>, <&diy_led_gpio>, <&yellow_led_gpio>;
+
+		work-led {
+			label =3D "green:work";
+			gpios =3D <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
+			default-state =3D "on";
+			linux,default-trigger =3D "heartbeat";
+		};
+
+		diy-led {
+			label =3D "red:diy";
+			gpios =3D <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
+			default-state =3D "off";
+			linux,default-trigger =3D "mmc1";
+		};
+
+		yellow-led {
+			label =3D "yellow:yellow-led";
+			gpios =3D <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+			default-state =3D "off";
+			linux,default-trigger =3D "mmc0";
+		};
+	};
+
 	sdio_pwrseq: sdio-pwrseq {
 		compatible =3D "mmc-pwrseq-simple";
 		clocks =3D <&rk808 1>;
@@ -494,6 +521,20 @@
 		};
 	};
=20
+	leds {
+		work_led_gpio: work_led-gpio {
+			rockchip,pins =3D <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		diy_led_gpio: diy_led-gpio {
+			rockchip,pins =3D <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		yellow_led_gpio: yellow_led-gpio {
+			rockchip,pins =3D <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		vsel1_gpio: vsel1-gpio {
 			rockchip,pins =3D <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
--=20
2.20.1





--yJZwcp1Ymsuklh7aGS9WMHUNJ1nnL5i5j--

--ma6Nskd4tpvP5vsRVUnUWsgiIS2DwbBnW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCAAdFiEEVKeIeBh0ZWJOldzLOiXeDmsa/bIFAl2th2QACgkQOiXeDmsa
/bKXBwv7BhRzi03I9j+Me1Zp9yG27lXAQ6FOPpHmt5GJdmFZkpuurRQQ6lBOJmfd
61KOr6gNYLLVObMeRcZ30gonXE5TK0lLP6mOajtI4YBB0+/4dy3Kwf5qzmtAIaM3
47NZ9WiTlxR7Oh1ESVFLxGk7exnMq1R0zF2TLafDZxP1vZXcow7aCpgcx8HMgivf
DN+uAQ8+mMCd3i7heyBrqDUx4oBQamdPF20SpRSfX6oNMmNbO9Vno2ly8JfXBv9O
1+ThOXF+wVnO5V3Q2OQdHsyZGt3vZDugnbq9RQXjdpJkJfA3rmuGgCgnOcad0+11
g0kxyU+0il07SuUVfXVZXGraWYZ4WyOpKkOOD5YhWP8cYSK4tOFQlCpeNo/UykHc
F6bXAwcc8x5naL2J6L4N4hFmGI4I0woqZsTKNX4gHPi30XHf91mJ5n2TatPCquZ0
Li6fangI5vix3UEMbiFF09g9rKYg2k8v/UiTjYgkj5qMdklM3qgMTToYYq1rm2ay
yWfVA1OG
=KTOi
-----END PGP SIGNATURE-----

--ma6Nskd4tpvP5vsRVUnUWsgiIS2DwbBnW--
