Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5DF6C352A1
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Dec 2022 12:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZattBw0dv4Jxa7GISFTpn82R6JllQxLZFdegAbAL0n4=; b=W4r/zehSjBvsTenJkn0HpDMrse
	gO91t2j3EXwOqHsD1UkYQP98Q+Htkgl7FSluV0migv+S8Hq+Z/ufjnWU7VApf4LxSLzLomJu0S2IO
	bFjds1Jvv5RkXaEBs4bOK5YSW/D+fCkElXaI+fI+4/vwBxwICr3Slfm4obmfU4or++uychV+YT705
	xOZJOV13/4UOBa+Hli1GuMRAzA2wgyD8JMIUJkc0MGWzMsrQNjoogzAewjzz+SGxA5vXzwTqGz/DB
	JGc/ho9W0pd3TrlDftFb2qfECKx842i9OJdC2k3fQBl102OZv56l+Lxh1k7gz4By+ZKKjklLpldcX
	6qTd+Xbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2XHT-009Izt-HS; Tue, 06 Dec 2022 12:42:39 +0000
Received: from phobos.denx.de ([85.214.62.61])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2XH8-009HpF-7V; Tue, 06 Dec 2022 12:42:22 +0000
Received: from wsk (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 5052E85453;
	Tue,  6 Dec 2022 13:42:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1670330531;
	bh=iI5SeUL51UC7eISdgdq26IjAocTkIL/OIraEMeV0ztw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=kohTwBtNeMzWD5rKFY2zLgtxNV3zwHgzPawC0atjqRcJLpxirfFpg13Hq82Zwlamu
	 sfG576AIyFhd/Y/MTkXpXEnLyuM+Zk9sC/hSq1SPR8vCaVL4EnDUdWyaApDZb5s27p
	 YAnrTzcZdILPc37J49JVyzpBuiShP8+xmX55o7rEVlH7cxE7PZXcOvonhLMUeedo3q
	 CtiVJdkmWSLBAQJN6rYBO7RdsT1BbqwBzYB1uws42EYmwaGMvKpPFxZn7atebPiuUP
	 /CYp2V0pE+b7s1z+DnntkIPisnI5a62ezTyrL82FZCx252xmaDV0+TWNdHMtXwVwqF
	 USZMAjXhOD3VQ==
Date: Tue, 6 Dec 2022 13:42:01 +0100
From: Lukasz Majewski <lukma@denx.de>
To: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: Quentin Schulz <foss+kernel@0leil.net>, Samuel Holland
 <samuel@sholland.org>, Bastien Nocera <hadess@hadess.net>, Guido
 =?UTF-8?B?R8O8bnRoZXI=?= <agx@sigxcpu.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Angus Ainslie <angus@akkea.ca>, Ondrej Jirman <megous@megous.com>, Icenowy
 Zheng <icenowy@aosc.io>, Andy Gross <agross@kernel.org>, Aleksei Mamlin
 <mamlinav@gmail.com>, Fabio Estevam <festevam@gmail.com>, David Jander
 <david@protonic.nl>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio
 <konrad.dybcio@somainline.org>, Peter Geis <pgwipeout@gmail.com>, Heiko
 Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jernej Skrabec
 <jernej.skrabec@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@somainline.org>, Chen-Yu Tsai <wens@csie.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, Rob Herring
 <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Hans de Goede <hdegoede@redhat.com>, Jagan
 Teki <jagan@amarulasolutions.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Quentin Schulz
 <quentin.schulz@theobroma-systems.com>, linux-input@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 4/9] ARM: dts: imx: fix touchscreen reset GPIO
 polarity
Message-ID: <20221206134201.703ad352@wsk>
In-Reply-To: <b37272ae-a939-1dce-de47-e237c6363a0f@kontron.de>
References: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
	<20221103-upstream-goodix-reset-v3-4-0975809eb183@theobroma-systems.com>
	<b37272ae-a939-1dce-de47-e237c6363a0f@kontron.de>
Organization: denx.de
X-Mailer: Claws Mail 3.19.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_044218_684148_BAC936D7 
X-CRM114-Status: GOOD (  24.17  )
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
Content-Type: multipart/mixed; boundary="===============1911791869544423033=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1911791869544423033==
Content-Type: multipart/signed; boundary="Sig_/wSkO.yKQ_Y+Ill11MbjpZ3n";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/wSkO.yKQ_Y+Ill11MbjpZ3n
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 6 Dec 2022 12:25:29 +0100
Frieder Schrempf <frieder.schrempf@kontron.de> wrote:

> On 05.12.22 14:40, Quentin Schulz wrote:
> > From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> >=20
> > The reset line is active low for the Goodix touchscreen controller
> > so let's fix the polarity in the Device Tree node.
> >=20
> > Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> > ---
> >  arch/arm/boot/dts/imx6q-kp.dtsi            | 2 +-
> >  arch/arm/boot/dts/imx6ul-kontron-bl-43.dts | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/arch/arm/boot/dts/imx6q-kp.dtsi
> > b/arch/arm/boot/dts/imx6q-kp.dtsi index
> > 1ade0bff681d6..dae14aaf803a8 100644 ---
> > a/arch/arm/boot/dts/imx6q-kp.dtsi +++
> > b/arch/arm/boot/dts/imx6q-kp.dtsi @@ -188,7 +188,7 @@
> > touchscreen@5d { interrupt-parent =3D <&gpio1>;
> >  		interrupts =3D <9 IRQ_TYPE_EDGE_FALLING>;
> >  		irq-gpios =3D <&gpio1 9 GPIO_ACTIVE_HIGH>;
> > -		reset-gpios =3D <&gpio5 2 GPIO_ACTIVE_HIGH>;
> > +		reset-gpios =3D <&gpio5 2 GPIO_ACTIVE_LOW>;
> >  	};
> > =20
> >  	ds1307: rtc@32 {
> > diff --git a/arch/arm/boot/dts/imx6ul-kontron-bl-43.dts
> > b/arch/arm/boot/dts/imx6ul-kontron-bl-43.dts index
> > 0c643706a158b..767ef5da76136 100644 ---
> > a/arch/arm/boot/dts/imx6ul-kontron-bl-43.dts +++
> > b/arch/arm/boot/dts/imx6ul-kontron-bl-43.dts @@ -29,7 +29,7 @@
> > touchscreen@5d { pinctrl-0 =3D <&pinctrl_cap_touch>;
> >  		interrupt-parent =3D <&gpio5>;
> >  		interrupts =3D <6 IRQ_TYPE_LEVEL_LOW>;
> > -		reset-gpios =3D <&gpio5 8 GPIO_ACTIVE_HIGH>;
> > +		reset-gpios =3D <&gpio5 8 GPIO_ACTIVE_LOW>;
> >  		irq-gpios =3D <&gpio5 6 GPIO_ACTIVE_HIGH>;
> >  	};
> >  }; =20
>=20
> The imx6ul-kontron-bl-43.dts misses a working panel node, so I'm
> pretty sure it is not used and nobody will bother about change
> breaking compatibility. I don't have the hardware at hand at the
> moment to perform a test, so for now:
>=20
> Acked-by: Frieder Schrempf <frieder.schrempf@kontron.de> #
> imx6ul-kontron-bl-43.dts

Reviewed-by: Lukasz Majewski <lukma@denx.de>

For imx6 TPC70 device.

Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--Sig_/wSkO.yKQ_Y+Ill11MbjpZ3n
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAmOPOJkACgkQAR8vZIA0
zr3LxAf/cTdBTk+iiToN5yxnqM4qT8HJEan6BzkjWYMZcb6PMMKqHZW+Zsr/SP8o
O+3ChkrLogmz7NjwQqaA09s4IIqYJA5+Wfqd/AqYxjoed5hnRK7tsItBPzJtBmtc
wHxhAkrz/cMcALf8pTfzM3SL1dTB4y+8rPr7O1vhMGS7GPTZMdfXa0WU/QGi6TtZ
GgBZjk8Qutd0SjxaHiqH0FuciHrBNXGX3cLKytigm+WFgtqSFYw9+cU41SyN1Kdx
TodH+8TTz1tURnTAd5vBcq8INdx9N0C2xyeq228bGO2xfnGxjsuOmA00EUzsOmbU
pp/MnwgcQS0r4qXma8E7t1o19CU7Dg==
=buG3
-----END PGP SIGNATURE-----

--Sig_/wSkO.yKQ_Y+Ill11MbjpZ3n--


--===============1911791869544423033==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1911791869544423033==--

