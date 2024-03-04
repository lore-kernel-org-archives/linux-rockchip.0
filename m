Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 397DAC54E41
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 22:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SrHE9VB+wsT8Z6Ani5bEwscczi7vfn+44fWiyr0naWA=; b=fFpOwc7CjMVBzP1dOlqnjPwR+C
	F71M6HDpAj1LtvYc44NC9WhNwBjPtZA/qbeUZ+7lv4O8OuNHbG6t7ySxdUUUsspO+0Ql3LeRNqHmx
	rRJovcVxKgsat4aygsceE9TnBWSwaY/OUY7UyqYRpjQfEM27BrtZEt05g3ftZjHi+k9UbSNgSzvj+
	utueooFrXCHhbmU+SLfNOsj7VqiJF9RWg0B7HRgQuxWJHpuZbTFYeYZyfRLc2XjDHebzCthNR7Ckm
	uAFqaWzWgHYh3exZzVIYDI2tCLuzk+yTJ/NmXGSl6eNYtO2N4c0Vfh3bV+/HnbR1WBmLJ0ChLN6U4
	hbRU6Urg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhH3h-0000000Ayrr-40NQ;
	Mon, 04 Mar 2024 22:45:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhH3e-0000000Ayqv-2su0
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Mar 2024 22:45:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rhH3U-0001oC-Ow; Mon, 04 Mar 2024 23:45:08 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rhH3T-004REp-Bg; Mon, 04 Mar 2024 23:45:07 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rhH3T-00H7rN-0r;
	Mon, 04 Mar 2024 23:45:07 +0100
Date: Mon, 4 Mar 2024 23:44:48 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Chen-Yu Tsai <wens@kernel.org>, 
	linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY
 connection
Message-ID: <yumnuz5w5yw4pixruukeeh5pjdheiuuxkiazmke5oh3wxpfg7c@4l3rcxcgjfts>
References: <20240304084612.711678-2-ukleinek@debian.org>
 <27139798.WhXITi6ROJ@bagend>
 <b614dd49-7dbe-452e-b3b5-cb014b30f0f8@lunn.ch>
 <2662566.GSV3oLgti5@bagend>
MIME-Version: 1.0
In-Reply-To: <2662566.GSV3oLgti5@bagend>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_144518_929203_18022C02 
X-CRM114-Status: GOOD (  49.58  )
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
Content-Type: multipart/mixed; boundary="===============5233048648343202425=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5233048648343202425==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dkkowzgn4atazppy"
Content-Disposition: inline


--dkkowzgn4atazppy
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Mon, Mar 04, 2024 at 05:43:08PM +0100, Diederik de Haas wrote:
> On Monday, 4 March 2024 16:59:38 CET Andrew Lunn wrote:
> > On Mon, Mar 04, 2024 at 04:32:03PM +0100, Diederik de Haas wrote:
> > > On Monday, 4 March 2024 14:09:15 CET Andrew Lunn wrote:
> > > > > > Andrew already pointed out when I posted the patch introducing =
the
> > > > > > gmac0 node that rgmii-id would be the preferred way to setup th=
ings.
> > > > > > Back then this didn't happen because this change broke receptio=
n of
> > > > > > network packets. However this only happend because I didn't hav=
e the
> > > > > > right phy driver loaded.
> > > > >=20
> > > > > It could be that the PHY is strapped to not use its internal RX d=
elay.
> > > > > And the PHY has some weird default TX delay, so having the driver
> > > > > put some sensible values in is probably better.
> > > >=20
> > > > It could also be the bootloader putting odd values into the PHY.
> > > >=20
> > > > Anyway, it will work better with the correct PHY, and enable WoL
> > > > support.
> > >=20
> > > Not sure if this is the right place or way, but here we go...
> > >=20
> > > A few days ago on #debian-kernel@OFTC:
> > > [28.02 16:35] <ukleinek> u-boot should be out of the game
> > > [28.02 16:36] <diederik> I'm not so sure anymore. On Quartz64 Model A=
 and
> > > B
> > > (rk3566) I had massive packet loss and tracked it down to a change in
> > > u-boot [28.02 16:37] <ukleinek> diederik: sounds like the Linux netwo=
rk
> > > driver on that machine could do something better
> > > [28.02 16:38] <diederik> yeah, probably
> > >=20
> > > I reported this about a month ago to Jonas Karlman as I bisected the
> > > problem>=20
> > > to a change in u-boot:
> > > > diederik@bagend:~/dev/u-boot/u-boot$ git bisect bad
> > > > 25f56459aebced8e4bb7d01061dcb1b765b197e2 is the first bad commit
> > > > commit 25f56459aebced8e4bb7d01061dcb1b765b197e2
> > > > Author: Jonas Karlman <jonas@kwiboo.se>
> > > > Date:   Sun Oct 1 19:17:21 2023 +0000
> > > >=20
> > > >     configs: rockchip: Enable ethernet driver on RK356x boards
> > > >    =20
> > > >     Enable DWC_ETH_QOS_ROCKCHIP and related PHY driver on RK356x bo=
ards
> > > >     that
> > > >     have an enabled gmac node.
> > >=20
> > > I just checked and both Quartz64 Model A and B have `phy-mode =3D "rg=
mii";`
> > > and set `tx_delay` and `rx_delay` to some (other) values.
> > > Without knowing nor understanding the details, this seem very much
> > > related?
> >=20
> > If you don't have a specific Linux PHY driver, you are at the mercies
> > of how the bootloader, or strapping set up the PHY. So it is always
> > best to use the correct PHY driver.=20
>=20
> This part is a bit over my head (that's ok, no need to explain it).
>=20
> > The Linux PHY driver should assume
> > nothing and setup the hardware from scratch, removing anything odd the
> > bootloader did. However, the fall back generic PHY driver has no chip
> > specific knowledge, so it cannot undo whatever the bootloader did.
> >=20
> > So, in an ideal world, we don't care about what the bootloader did,
> > just use the correct MAC and PHY driver and it should work. And if it
> > does not work, it is a Linux bug, which needs to be found and fixed.
>=20
> I agree.
>=20
> > > Not sure if this is the right place or way, but here we go...
>=20
> That was because it's actually a bug report (wrt Quartz64 A and B), but=
=20
> especially your remark made all the pieces I found earlier fall into plac=
e.
> Therefor I 'abused' this thread/patch to report it.
>=20
> I'm happy to test patches, but I lack the knowledge to come up with one=
=20
> myself.

I guess that would be:

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm6=
4/boot/dts/rockchip/rk3566-quartz64-a.dts
index 59843a7a199c..f4d1deba3110 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -269,7 +269,7 @@ &gmac1 {
 	assigned-clock-parents =3D <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC=
1>, <&gmac1_clkin>;
 	clock_in_out =3D "input";
 	phy-supply =3D <&vcc_3v3>;
-	phy-mode =3D "rgmii";
+	phy-mode =3D "rgmii-id";
 	pinctrl-names =3D "default";
 	pinctrl-0 =3D <&gmac1m0_miim
 		     &gmac1m0_tx_bus2
@@ -281,8 +281,6 @@ &gmac1m0_clkinout
 	snps,reset-active-low;
 	/* Reset time is 20ms, 100ms for rtl8211f */
 	snps,reset-delays-us =3D <0 20000 100000>;
-	tx_delay =3D <0x30>;
-	rx_delay =3D <0x10>;
 	phy-handle =3D <&rgmii_phy1>;
 	status =3D "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm6=
4/boot/dts/rockchip/rk3566-quartz64-b.dts
index 2d92713be2a0..ec1351a171d4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
@@ -176,7 +176,7 @@ &gmac1 {
 	assigned-clocks =3D <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1_RGMII_SPEED=
>, <&cru SCLK_GMAC1>;
 	assigned-clock-parents =3D <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC=
1>, <&gmac1_clkin>;
 	clock_in_out =3D "input";
-	phy-mode =3D "rgmii";
+	phy-mode =3D "rgmii-id";
 	phy-supply =3D <&vcc_3v3>;
 	pinctrl-names =3D "default";
 	pinctrl-0 =3D <&gmac1m1_miim
@@ -189,8 +189,6 @@ &gmac1m1_clkinout
 	snps,reset-active-low;
 	/* Reset time is 20ms, 100ms for rtl8211f, also works well here */
 	snps,reset-delays-us =3D <0 20000 100000>;
-	tx_delay =3D <0x4f>;
-	rx_delay =3D <0x24>;
 	phy-handle =3D <&rgmii_phy1>;
 	status =3D "okay";
 };

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--dkkowzgn4atazppy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXmTt8ACgkQj4D7WH0S
/k7fvwf/ahDTgIknS2dCz9wAhHSepa0xfncRl6VVdR7aVbTXvHZChbgFFgmiT6KP
gHQLpjnX6YYTwX+if4TcupatKceBx50DeNZqgycYbBbBBKcv69IOwhM0FiuNXiKe
uApDcDp00A7u52i5KXeFjnKsavCx/bHv5BOecygIJFWtFWpefIj+wwnycSHOJNST
gaODQYBW8V3J3EL0nF8SAExmZeliN18SYeigwSl5ggyJbwq3D3szVQUQ9SZ16p9G
MIIv6rVzheZCy4lCWXvNn8plLY5rdrC3mUSmIZcglmoiWlzw6qcFA9xPszAz8Yvl
w2Xcr4yQlPch+Q/ed0puSCzQvYM3Mw==
=Z4tS
-----END PGP SIGNATURE-----

--dkkowzgn4atazppy--


--===============5233048648343202425==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5233048648343202425==--

