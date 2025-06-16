Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2779DC7115A
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jun 2025 15:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mmn0FkYz/fOAMEHHcwZ/wBDoElYFDL0G1uKq8Gf1WYI=; b=OU/ycXw4uvOCCcKz54e9b9nuGT
	Gn/Pwya4cva98Bb/zatUzK7NN+H+KrtmU6X+gboGufAVS4Bwx2mN51QhFTVbxM7Woy/94V152VgyS
	4YITdKktHog6M6pb68LhL3aYA3zKEyfRuAgxtWXSCAC+njI9jBb8hcAtMp0GWkU7rmpxTKnWT1V3i
	IziLcS2EcfFqbx9pzFF75Xh0KjIRRQUncmkwWDoKEZDTwm4cu3E3kR3zzQ4tZFuUr0j88ZQoot/o8
	g83hU9jaiDSXLOUhgn4IoXsXggHwS3/9jFOJv3O5cz0uV1NAQAB81naG530F1oSaE0F8m1Iv3D/gk
	7Jkbi2Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRBih-00000004p4W-0pIG;
	Mon, 16 Jun 2025 15:25:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR9Uy-00000004TOx-0cn8;
	Mon, 16 Jun 2025 13:03:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 91F3D4AC56;
	Mon, 16 Jun 2025 13:03:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD64CC4CEEA;
	Mon, 16 Jun 2025 13:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750079019;
	bh=a7j27RQuAyvZnCvRGb4L4XPkG2jx93P21IQMnptuauU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qbCdWXICAoHbASkv2kppLcyRQQ6+aYqV7jEI2SspphRpmjFSXmRaAHbscPyOf27+p
	 vib9dZYkbzP1B0oxXG4d3QbJkXWHo6aMXpOzbqRLfgG+BFVbh1goeHmihfmGw0cXan
	 z+HD8WKupg2opOlUu+S+re67Q/s2Jv5tmCCHhxj70dvkKuzN4Py5VzF7j5/g710Vjh
	 s7F4pove0fhUsgVqtZ17TrOJ+RtSr0qlblAQgTBNvRQDXiX97VrbgPOON2z+Po5zby
	 Fnk29kIHu6BhwrRI6Gvk4YUturpgSMUOhORTkRTY0Oi+0axDDOveKR3/KPVKiObNzB
	 YZERVv/rLzA5g==
Date: Mon, 16 Jun 2025 15:03:36 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, 
	Brian Norris <briannorris@chromium.org>, Boris Brezillon <bbrezillon@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, kernel@collabora.com, linux-pwm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] pwm: rockchip: round period/duty down on apply, up on get
Message-ID: <nf5bpi3sv5rrlvjg7q2ehyck6brmm3bzmzw4zclirwtiy7vrjp@yzsiao7krnt7>
References: <20250522-rockchip-pwm-rounding-fix-v1-1-b516ad76a25a@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20250522-rockchip-pwm-rounding-fix-v1-1-b516ad76a25a@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_060340_229132_00E3ECEB 
X-CRM114-Status: GOOD (  25.51  )
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
Content-Type: multipart/mixed; boundary="===============0313822012660778362=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0313822012660778362==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t53uq6jf7edocakw"
Content-Disposition: inline


--t53uq6jf7edocakw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] pwm: rockchip: round period/duty down on apply, up on get
MIME-Version: 1.0

Hello Nico,

On Thu, May 22, 2025 at 09:26:44PM +0200, Nicolas Frattaroli wrote:
> With CONFIG_PWM_DEBUG=3Dy, the rockchip PWM driver produces warnings like
> this:
>=20
>   rockchip-pwm fd8b0010.pwm: .apply is supposed to round down
>   duty_cycle (requested: 23529/50000, applied: 23542/50000)
>=20
> This is because the driver chooses ROUND_CLOSEST for idempotency
> reasons. However, it's possible to keep idempotency while always
> rounding down in .apply.

Note that rounding nearest is difficult for idempotency. Consider a PWM
can implement the following period lengths:

	20.61, 21.4, 22.19

First if you use round-nearest you cannot set 21.4 because if you
request 21 you get 20.61 and if you request 22 you get 22.19. So if the
hardware still runs at 21.4, obviously apply =E2=9A=AC get_state cannot be
idempotent. If you round down in apply and up in get_state (or
vice-versa) you get idempotency. So using ROUND_CLOSEST for idempotency
is based on a wrong intuition.

> Do this by making get_state always round up, and making apply always
> round down. This is done with u64 maths, and setting both period and
> duty to U32_MAX (the biggest the hardware can support) if they would
> exceed their 32 bits confines.
>=20
> Fixes: 12f9ce4a5198 ("pwm: rockchip: Fix period and duty cycle approximat=
ion")
> Fixes: 1ebb74cf3537 ("pwm: rockchip: Add support for hardware readout")
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
> This fix may need some careful testing from others before definitely
> being applied and backported. While I did test it myself of course,
> making sure to try a combination of periods and duty cycles, I really
> don't want to accidentally undo someone else's fix.

I like it apart from a small nitpick, see below. I think the danger of
breaking something is small and I tend to apply your patch.

> Some of the u64 math is a bit overkill, but I don't want to assume
> prescalers will never get larger than 4, which is where we start needing
> the 64-bit prescaled NSECS_PER_SEC value. clk_rate could also
> comfortably fit within u32 for any expected clock rate, but unsigned
> long can fit more depending on architecture, even if nobody is running
> the PWM hardware at 4.294967296 GHz.
> ---
> [...]
> @@ -103,8 +106,9 @@ static void rockchip_pwm_config(struct pwm_chip *chip=
, struct pwm_device *pwm,
>  			       const struct pwm_state *state)
>  {
>  	struct rockchip_pwm_chip *pc =3D to_rockchip_pwm_chip(chip);
> -	unsigned long period, duty;
> -	u64 clk_rate, div;
> +	u64 prescaled_ns =3D (u64)pc->data->prescaler * NSEC_PER_SEC;
> +	u64 clk_rate, tmp;
> +	u32 period, duty;

These hold the period and duty in ticks, so I'd call them period_ticks
and duty_ticks respectively.

>  	u32 ctrl;
> =20
>  	clk_rate =3D clk_get_rate(pc->clk);
> @@ -114,12 +118,15 @@ static void rockchip_pwm_config(struct pwm_chip *ch=
ip, struct pwm_device *pwm,

Best regards
Uwe

--t53uq6jf7edocakw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmhQFiUACgkQj4D7WH0S
/k6RIggAsLLr/RA5R0kZBQiL6qGYpa0dMKd4CntzFu4LMeuLZsSWcXFKnP5RdvO0
2ysAsVZCJLejyUxDn9VjSDFwpSgw4LoP/hnKbGguh9h/zGozMq/A1E0dYPXqSfPD
BePTzoZkw7qfzHVMrvR/dY2wTIOuzQHiBSi02eSiO0ye1CfuDIJ0CUQfT86SQ5ju
VpBfoU63QPjF+o6Ewp/ewIomFgw3J+xytch2HT15kJcrwRibobH2j6ZyDriMt3jh
ak0utCjLsxnJLXTlGTb0Z/DROUMXnHsCrSutyDFcAa057c0/zas+cwS+PErlW53s
RdAGcmvcBnvbX+vNuqTSO5f11T0zfQ==
=ljjR
-----END PGP SIGNATURE-----

--t53uq6jf7edocakw--


--===============0313822012660778362==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0313822012660778362==--

