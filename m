Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D306AC54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 15:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K7/NjyKSyOkDZygR+0RmN5X1QiPTRw5tV3GYMZd+Opo=; b=442luIUZo5jGVq5QNq5CkFYFzI
	jPCad0EX9L9EdPZiZ2fUsCVIm5mIBsXmbc+WZ6kxXv4HeCZhJ9t7txLR+2pjXqNAfXJ3KJmD85q1z
	2rN4xWhZdhEtE8h8yD3F/5WVFb9zEyF/YxQ8gBHsi8juM2SD0dyHzOpN2YJSou2xZbrx9ify/RRrJ
	s4nl3BjPGRYjKz10KRHImKumegILvoWP39PCwgbPhWIaWwbbqwmK515ADvsRbHdyvCtN/eIzk8Gf8
	Rwscg72csZB3TJb6z4+MSz6KSxks7VpuhYhzoJPQx2sJR//rR08KnQv0abMXUQ4qHoiqmd/qTR+cD
	EQWkk//Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1romjC-00000000dFZ-2L2g;
	Mon, 25 Mar 2024 15:59:14 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1romj7-00000000dEI-1Mzv
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 15:59:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711382347;
	bh=z6TktM9oeZYfD2iw3BnLyXq0E5TG0XoAbr6D5qI8LfY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d2JaH/4tV0LyVi0uyRz3byEOEifMu162pRb26KxjcEUxZ5VvtYxVsHk/rmSVV57bD
	 7byKasfozdy+2czFVurHQ7KjR4IltkaPUvLq6P3evAaYL6i4pG5bXSAHBlY2/0O6hP
	 q26QHHeeOTN3SPezNEI90RM8dn3ZGJiVYxyodSkuv2Myr+nAcMkx+GY0E4/Fwyrpnr
	 w+DkvDV/oof3kyfGe/O+rCGFKivV6YNPkSXUqsxx9W4nnXrL91mI3/eO1fBG0L5CTH
	 HdLeM6/ZS4PgqjBuBxFSIgNAx6p/qJK4IRUedivCsRs7V+aTWYjWASZWvpAem//4ff
	 OXQRIwFVCUHYw==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 3D48337813B7;
	Mon, 25 Mar 2024 15:59:07 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 769C3106074E; Mon, 25 Mar 2024 16:58:47 +0100 (CET)
Date: Mon, 25 Mar 2024 16:58:47 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Subject: Re: [PATCH v1 3/4] arm64: dts: rockchip: rk3588-rock5b: Enable GPU
Message-ID: <a6uu7b3y7d4nirxbplc5cj4oeuyblx2grpvvldeovofhx3tnqc@dlse3vixhpws>
References: <20240325153850.189128-1-sebastian.reichel@collabora.com>
 <20240325153850.189128-4-sebastian.reichel@collabora.com>
 <20240325164441.1dab4018@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240325164441.1dab4018@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_085909_532922_1F823D55 
X-CRM114-Status: GOOD (  24.93  )
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
Content-Type: multipart/mixed; boundary="===============0585288483464703245=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0585288483464703245==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rdf73uqhcgedopzb"
Content-Disposition: inline


--rdf73uqhcgedopzb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Mar 25, 2024 at 04:44:41PM +0100, Boris Brezillon wrote:
> On Mon, 25 Mar 2024 16:37:20 +0100
> Sebastian Reichel <sebastian.reichel@collabora.com> wrote:
>=20
> > From: Boris Brezillon <boris.brezillon@collabora.com>
> >=20
> > Enable the Mali GPU in the Rock 5B.
> >=20
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
>=20
> I don't remember writing this patch ;-), maybe I screwed authorship at
> some point, dunno.

mh, I cherry-picked the DT patches from your branch before
cleaning them up.

> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm=
64/boot/dts/rockchip/rk3588-rock-5b.dts
> > index 1fe8b2a0ed75..096ee7a98b89 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > @@ -180,6 +180,11 @@ &cpu_l3 {
> >  	cpu-supply =3D <&vdd_cpu_lit_s0>;
> >  };
> > =20
> > +&gpu {
> > +	mali-supply =3D <&vdd_gpu_s0>;
> > +	status =3D "okay";
> > +};
> > +
> >  &i2c0 {
> >  	pinctrl-names =3D "default";
> >  	pinctrl-0 =3D <&i2c0m2_xfer>;
> > @@ -470,6 +475,7 @@ rk806_dvs3_null: dvs3-null-pins {
> > =20
> >  		regulators {
> >  			vdd_gpu_s0: vdd_gpu_mem_s0: dcdc-reg1 {
> > +				regulator-always-on;
>=20
> Hm, should we mention why the regulator is always on here?

In case of the EVB1 it's needed because the generic coupler driver
cannot handle regulators that are not always on. I'm not sure why
it was added for the Rock 5B. I will check if it works without that
flag.

Greetings,

-- Sebastian

--rdf73uqhcgedopzb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmYBny4ACgkQ2O7X88g7
+poZyQ/9G9QEr+2KbYk/fyuDkbFekDi5Glgsc2BnOzUb7Fc/xRgFCjcxrHlYKwgO
PiNmoQd3mtYg5dV9LXrAk6CCSwMulGLpYvPbeb2CWrSRz2GdzKFuSbSz1Cu8QcUi
taJwzSCCIkKA6yp6KJU8zasTVOhfOMuuWymfKomL6nE/4UqoLCMWNurt5IAuyWQw
ygipqVELxmkDFoS2yx3s2wDi/MrvG5jWVTeX8d4WWyfAyl4SIeiHlpwFNZ1QjFBr
39RxnW7Z/OxyASUHg6YV5ysoxd4Mo07XBxEEzjsMCvUxoc6PvQxsQjZYJ330Qa7c
vbGsrlG3359jmybiFZyJnAcXgwyA9Ly5AtRP+XcO20gCDBe55pTuAr5zMQe2943c
6jApERBuQTbMSsQHoUXFi6zDKhfs2I8GM4vKmk1zOk5slDCWnYHfrG7qMtkzAKN6
R7hPsj7DuBdNP0i6kiepHUqhU3G+LzsyqxD0Jh4VxiRiNiRUcOAyQT0JY29AkXhT
hYyF5n8Q5Y7DvtqH2NKGRoXsLhI/jo6FXU9aBeuTVxYCdCNe4gkDkCWtHLSmMIu3
wdPwJy2lq9GLaNd0Z9IHc06ymM5Uy9RyzhhHcrWJvPKDeAKfl264bcqJbwySjmug
jvvGSbwi1CX+a+6iKqfXAvYwxUBJ1pLI/Jxqeyz0Ml/zMeREsAY=
=Gono
-----END PGP SIGNATURE-----

--rdf73uqhcgedopzb--


--===============0585288483464703245==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0585288483464703245==--

