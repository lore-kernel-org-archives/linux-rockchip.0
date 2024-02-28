Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D37EC54E41
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 07:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ar8qFuj+ntsslXGiyKuPZ0EemdUdT7xeGHWOBaJ3PjQ=; b=49Cl8k4kNxHcxxGCZc+X7G0Cyp
	6tWiOdCKlL/qtdTUEAs09Zlecbp9vvw9VHZMr0JETnBK2I3doLXX41MTnUzURb90gE6mhZ71MMyZm
	98fQf1AtwJm+jGjuauuDeGfqhHwetWvZG5orlETxgJSnZt2w6t1XT0x3VbikBGehG8KT2eR2BFocS
	nSz3W1n6BIiB4HQB4nZfA5ta7Un2VLJst8tbAHscmvGqhrP1UNeR6TN5RnHylAMfytOQfbMruDOMt
	0CdL98PVxg7evfOgARpMVv1WOvDeRncP0qUCUT8ln8GzLouw5e8jDdCpuDemCvvcLdF1KPrz/FIAf
	Hjsgx+0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfEIA-00000008I84-0Fzw;
	Wed, 28 Feb 2024 07:23:50 +0000
Received: from master.debian.org ([2001:41b8:202:deb:216:36ff:fe40:4001])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfEI6-00000008I63-1Vcj;
	Wed, 28 Feb 2024 07:23:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description;
	bh=q9H//BiI/ym0fKCLWzaI/cltEf13UeT/Rxb1Q8FD9Ro=; b=cA5AbS7FT2W+TtczbuXrokzsLh
	gh9c0U16ZT+TQJAOJx7Wb2S7BYBfTVz8swofccvQG7Jdek3itaWF1lStLcxB5+zAkCrM+9qYabPqq
	Qibul3Q09z1zXkuPojXp+41G/nYkMuOKmo24rWrW3Id7KOiC7wE6nUlfKta6N+FZILMU7ItnH3sFw
	oUs/Yel6+2IpRU3Q5efTlGS2r3dNDqD32opLVj3z1t4K9QGFWMdWMMNDY0Cgra3FUQSSOvMy9T3NX
	2mqm4rZS4QLKNXIwA+eg7YfyelCy1qFHBIA+FjNMei8+QgfBRJIQRbkAJ/8rzobBgZGdguCpfDE2Q
	NgXRnMcw==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rfEHv-006pgV-3P; Wed, 28 Feb 2024 07:23:35 +0000
Date: Wed, 28 Feb 2024 08:23:33 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add basic support for QNAP
 TS-433
Message-ID: <lcvokzcmifxl7skfz2h2shewuou7xpazuhtpnpkgtcyejcfgcy@vvdn5ypyklsx>
References: <cover.1709034476.git.ukleinek@debian.org>
 <0d9fa5d730ac1cb91261b25b6809fcef3a12f03a.1709034476.git.ukleinek@debian.org>
 <b48cde05-c583-4414-9424-fbb2db3a53ce@lunn.ch>
MIME-Version: 1.0
In-Reply-To: <b48cde05-c583-4414-9424-fbb2db3a53ce@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_232346_426086_961589FD 
X-CRM114-Status: GOOD (  15.49  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0261700666449729408=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0261700666449729408==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2ujsyxbuinxttmqy"
Content-Disposition: inline


--2ujsyxbuinxttmqy
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 27, 2024 at 10:00:48PM +0100, Andrew Lunn wrote:
> > +&gmac0 {
> > +	assigned-clocks =3D <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
> > +	assigned-clock-parents =3D <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_M=
AC0_2TOP>;
> > +	assigned-clock-rates =3D <0>, <125000000>;
> > +	clock_in_out =3D "output";
> > +	phy-handle =3D <&rgmii_phy0>;
> > +	phy-mode =3D "rgmii";
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&gmac0_miim
> > +		     &gmac0_tx_bus2
> > +		     &gmac0_rx_bus2
> > +		     &gmac0_rgmii_clk
> > +		     &gmac0_rgmii_bus>;
> > +	rx_delay =3D <0x2f>;
> > +	tx_delay =3D <0x3c>;
>=20
> Have you tried phy-mode =3D "rgmii-id"; and not have these two _delay
> settings?

I didnt' up to now. I applied the following on top of my dts:

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm6=
4/boot/dts/rockchip/rk3568-qnap-ts433.dts
index ba7137f80075..a8747d9f36da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -39,15 +39,13 @@ &gmac0 {
 	assigned-clock-rates =3D <0>, <125000000>;
 	clock_in_out =3D "output";
 	phy-handle =3D <&rgmii_phy0>;
-	phy-mode =3D "rgmii";
+	phy-mode =3D "rgmii-id";
 	pinctrl-names =3D "default";
 	pinctrl-0 =3D <&gmac0_miim
 		     &gmac0_tx_bus2
 		     &gmac0_rx_bus2
 		     &gmac0_rgmii_clk
 		     &gmac0_rgmii_bus>;
-	rx_delay =3D <0x2f>;
-	tx_delay =3D <0x3c>;
 	status =3D "okay";
 };
=20
and this makes the machine unable to complete dhcp. I see the requests
and replies on the dhcp server side, but the machine tells me not to
receive a dhcp reply. So the above patch breaks the receive path.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--2ujsyxbuinxttmqy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXe33QACgkQj4D7WH0S
/k7RGQf/VOOi8RQ6O6wC8HHbsx0rt4Zy1y7PhIMp+mIQTFYEZFeufAySXLSIKevd
L54Bh9wF8pJrzoFEaq0bVcO7SWEL1Xmo0cni4FcKEHDemEUL+vvprP8OuzPUTY7v
zVupTSIh9IW12dHekSxSqNHMkEwFyglKyyYFzDqTRTvJmh6QbjmZWdKqlAteMkxa
Zq6j2Z8QKwqh5MGleAKlqeIiBXTrBL0zg7CgKxznv21cz9Pjqm0g7XiS2drixj2L
JZ2XGkUmy0+X5MIEbaOEak3fjDMxYs9x6nOfSOmwizCuC9HwCrxtmM0ZE1Q7gwLg
ngERLNaJtWI5y4lENFSrJUFLND68SQ==
=jwME
-----END PGP SIGNATURE-----

--2ujsyxbuinxttmqy--


--===============0261700666449729408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0261700666449729408==--

