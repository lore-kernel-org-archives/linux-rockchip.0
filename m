Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3466CA0ED3
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 10:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e7lPT7jhqfaqJojXsUQQYnAlOSIe9HG+t7a/9zlCYro=; b=aodlWBNw8QEGxPwQufCorXHUfP
	lR5akEHfSQoyEkGVPNRRQ/HscXlubXo0vZkse0A6QgkK+fWbXLJvKwG0CWsi1WVtrpJlQywv4qYpz
	6XgzEHh6fsKdOmAU+ArylpaCndUMlfaMCjjmAXpNbAVsefoZibpoB686NuAZq03d3DXqZXmQh8Tak
	Sdc8CpOx0dzwtHWJSicj7zWO7dlGyTLlcPtVFVdmYcZ58ZEitSABg6cnYuoDerYycBZYzHEkGUoZw
	VTMgcA1g0FApQU4CTQ4rkXkGd0VT7csVzDpf7CfGaETue6FKktXTtKu2pK8hwktD5KD0St4FewNtc
	qR6zZVdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slmt9-00000003ou0-2l4V;
	Wed, 04 Sep 2024 10:05:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slmGf-00000003fDp-3hOr
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Sep 2024 09:25:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1slmGU-0005LV-8C; Wed, 04 Sep 2024 11:25:26 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1slmGT-005Pwc-K1; Wed, 04 Sep 2024 11:25:25 +0200
Received: from pengutronix.de (pd9e5994e.dip0.t-ipconnect.de [217.229.153.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 355FC332322;
	Wed, 04 Sep 2024 09:25:25 +0000 (UTC)
Date: Wed, 4 Sep 2024 11:25:24 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: kernel@pengutronix.de, Alibek Omarov <a1ba.omarov@gmail.com>, 
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Elaine Zhang <zhangqing@rock-chips.com>, 
	David Jander <david.jander@protonic.nl>, Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, David Jander <david@protonic.nl>
Subject: Re: [PATCH can-next v5 03/20] arm64: dts: rockchip: mecsbc: add CAN0
 and CAN1 interfaces
Message-ID: <20240904-calculating-wapiti-of-renovation-148501-mkl@pengutronix.de>
References: <20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de>
 <20240904-rockchip-canfd-v5-3-8ae22bcb27cc@pengutronix.de>
 <8027881.qOBuL9xsDt@diego>
MIME-Version: 1.0
In-Reply-To: <8027881.qOBuL9xsDt@diego>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_022537_979568_75702217 
X-CRM114-Status: GOOD (  20.99  )
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
Content-Type: multipart/mixed; boundary="===============7090808056498679911=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7090808056498679911==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jcdxuxpemqhvjpvs"
Content-Disposition: inline


--jcdxuxpemqhvjpvs
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 04.09.2024 10:52:54, Heiko St=C3=BCbner wrote:
> Am Mittwoch, 4. September 2024, 10:12:47 CEST schrieb Marc Kleine-Budde:
> > From: David Jander <david@protonic.nl>
> >=20
> > This patch adds support for the CAN0 and CAN1 interfaces to the board.
> >=20
> > Signed-off-by: David Jander <david@protonic.nl>
> > Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>
> > Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts b/arch/arm6=
4/boot/dts/rockchip/rk3568-mecsbc.dts
> > index c2dfffc638d1..052ef03694cf 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
> > @@ -117,6 +117,20 @@ &cpu3 {
> >  	cpu-supply =3D <&vdd_cpu>;
> >  };
> > =20
> > +&can0 {
> > +	compatible =3D "rockchip,rk3568v3-canfd", "rockchip,rk3568v2-canfd";
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&can0m0_pins>;
> > +	status =3D "okay";
> > +};
> > +
> > +&can1 {
> > +	compatible =3D "rockchip,rk3568v3-canfd", "rockchip,rk3568v2-canfd";
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&can1m1_pins>;
> > +	status =3D "okay";
> > +};
> > +
>=20
> cpu3 > can0 ... aka alphabetical sorting of phandles
>=20
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
>=20
> No need to resend for that though.

Fixed.

Thanks,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--jcdxuxpemqhvjpvs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbYJ4EACgkQKDiiPnot
vG8zpQf40HRtHMi6gDrD4NgXJljWVMNsQS8fbDw689XxsH3RaHudW1E3WIyNPoUc
CkL+WRcoGismYlISOSBB7k/D8iU2kL9+S8JNteVd4S9MXz8D9Np9KjDjlfmnp7qh
8Ey75faWgM9+a3uvOpnD7KUrfq+mXx0o1mOj6H7T5J6cLx63+blYCpgUCkRQKXga
fH2LQGDmgAYQiCA3q2yFM+0SAUPpvk2Yg0BtPW76wptN2vD/OxXkQ6/UFNalRsrK
u4PtTWSs5YoyUZpKzeafXvqUIcTcS0CzjM3Z7z9F5FoPebiwqnUqN5CPMHdPnBtt
Eyi168DqvJX2vx54l4L4s71lYF4k
=DXUB
-----END PGP SIGNATURE-----

--jcdxuxpemqhvjpvs--


--===============7090808056498679911==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7090808056498679911==--

