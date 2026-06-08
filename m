Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D39DCD8CA7
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 21:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hi4JjGqePbAGPc/j4HlkdG0M28ECXAZNuqv9WSbOTWk=; b=k4hm2099Dea9x1Yhsn8m1+xLIP
	q4UbGjPyLMuv61fQV4OntSPvUmUiWBKoPiHb8LN2I5YLDzwRFK52mpYeVFXo8QUkmHGweQMcwu4BJ
	A07YGRZK1a6mJ+3odK+YQHufGpoIZMLrn5DXIPY8lftscFW2LgWQaaOxY7QzBzqUtCI599D2g67wN
	Y2V/o3KICKQDsfOnU/NOE6Se2lxb1v/wq4/vyXaUsTJ+qnr8TrCgZNuIYoTNNqLRJ94/Xp1DIbhzI
	H2HibpIE4TrHHbIdK1a7wVSd+cLQ6MHR969dptFosK9qCzV11irsVM2NDMFaZa45bbV/5MRNHDXHW
	ytPE1t4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWhOQ-00000004QGr-26lY;
	Mon, 08 Jun 2026 21:20:22 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWhOO-00000004QGT-22SY
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 21:20:21 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1780953606; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=jG263+DS9Fw87K4TA1LVvSQ3CZfSIbUqza/lKyY0kZ2S4ElrbRwDA96RZg0kCoe5spvpW0mkcVttUg+omXpIDFpDaMynvEOxU+WQvtnVMU/n++oOBoKfPLSavRBXxLf0Ce/nWyunfDfOy0IIUBmvP6m/VdwqTT/LOdBE2El8yxk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1780953606; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=IQjvXllQJscKn7i+I8ubhM+/AQ6Ry31b6cOUj9O+wgc=; 
	b=LcbRC4uwRv8P29gQAJ/ug2fZjjFp+tFGVMcmRU8106J8SpCuGCP06P+svfwxC1j7lh6NYQwiKNInG3jYgDI4BtGQxjdZH2P4GDrLTUeIolpHQ46xf1iQ27tjcj/Pol7/E/H78Lryj1KxBOvG7a/s0+UFz2fkNcAiQQRqRwhZMkc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1780953606;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=IQjvXllQJscKn7i+I8ubhM+/AQ6Ry31b6cOUj9O+wgc=;
	b=KZW2Jf+vXOkFIASURHjPh/X/dSiiGlAn1x2ghD3lYZQB00/52cSvS33lxyMeIx3y
	i/ptQk0anJ4+AYPchEvxHK22DeeVgi0vwN+YZhklFOr00VNefdwSWMKp0dYrD5QH1Oz
	ICnu0utgu4dt98T9rahDvs+ejrDZdohNWefJNVxU=
Received: by mx.zohomail.com with SMTPS id 1780953604718869.7760144683933;
	Mon, 8 Jun 2026 14:20:04 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id B0DC8180380; Mon, 08 Jun 2026 23:19:54 +0200 (CEST)
Date: Mon, 8 Jun 2026 23:19:54 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	xsf@rock-chips.com, simona@ffwll.ch, airlied@gmail.com, tzimmermann@suse.de, 
	mripard@kernel.org, maarten.lankhorst@linux.intel.com, jesszhan0024@gmail.com, 
	neil.armstrong@linaro.org, heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V6 2/6] power: supply: sgm41542: Add SG Micro sgm41542
 charger
Message-ID: <aicv4neDA5Ke0FAB@venus>
References: <20260608175521.67449-1-macroalpha82@gmail.com>
 <20260608175521.67449-3-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260608175521.67449-3-macroalpha82@gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.10.1.5.2/280.943.11
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_142020_583681_18BCD128 
X-CRM114-Status: GOOD (  13.35  )
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
Content-Type: multipart/mixed; boundary="===============6908973875574097703=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6908973875574097703==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jdqx244eltbi25x2"
Content-Disposition: inline


--jdqx244eltbi25x2
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH V6 2/6] power: supply: sgm41542: Add SG Micro sgm41542
 charger
MIME-Version: 1.0

Hi,

On Mon, Jun 08, 2026 at 12:55:17PM -0500, Chris Morgan wrote:
> Add support for the SG Micro SGM41542 charger/boost converter.
> Driver was adapted from Rockchip BSP driver [1] and confirmed
> with vendor datasheet [2].
>=20
> [1] https://github.com/rockchip-linux/kernel/blob/develop-6.6/drivers/pow=
er/supply/sgm41542_charger.c
> [2] https://www.sg-micro.de/rect/assets/1e8de70b-657e-4156-be68-a64fdbe8e=
418/SGM41541_SGM41542.pdf
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  drivers/power/supply/Kconfig            |    8 +
>  drivers/power/supply/Makefile           |    1 +
>  drivers/power/supply/sgm41542_charger.c | 1057 +++++++++++++++++++++++
>  3 files changed, 1066 insertions(+)
>  create mode 100644 drivers/power/supply/sgm41542_charger.c
> [...]
> +static int sgm4154x_set_recharge_volt_ua(struct sgm4154x_device *sgm, in=
t recharge_volt)
> +{
> +	int reg_val;
> +	int ret;
> +
> +	recharge_volt =3D recharge_volt / 1000;
> +
> +	reg_val =3D (recharge_volt - SGM4154X_VRECHRG_OFFSET_MV) / SGM4154X_VRE=
CHRG_STEP_MV;

These are the only millivolt offset/steps, so drop the 1000 divison
and simply do:

#define SGM4154X_VRECHRG_OFFSET_UV      100000
#define SGM4154X_VRECHRG_STEP_UV        100000

reg_val =3D (recharge_volt - SGM4154X_VRECHRG_OFFSET_UV) / SGM4154X_VRECHRG=
_STEP_UV;

Otherwise LGTM.

> [...]

Greetings,

-- Sebastian

--jdqx244eltbi25x2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmonMfcACgkQ2O7X88g7
+pqYYg/+LcYsNUAi80bpA0ntxXi9FElhS41n8dRtZW7Urt+idmo3tajin08Embdn
F2UPWJ0+MmkKco54E1yzeUQrJHobFqIFgzCEwN8f5JqpapWAdr+hFmPmmVQh+sAT
xkbegwQroiSGlr9HuOqwbKMb9Rqt1XzDfGMEJUrxQIZr2zDzHkm8yd0UPu/72+mh
0evgdTzyXH0RF5hkOUOg183dbqpZie9wZqF0uKc092WvrRmuRmWgTXcKfFzBHNka
6WWuMioOqEIk1jlLk5HUNMsWBMyuMxsfLZ0zVJei/dA+5lT64jgmnQh5Y4rdI+Q8
HTwTloR7Eb97iULL5y+qf8501nJnBvUMxr1p7W5gHWfDqyqiZYOAzzQ3gz5+QSQF
yBD8JqjVMl49apI+uDWN+WVtYbwoH5jm4eSwFaBrtWashjohqEvBOwiHp+2pWiZF
q9bEqoXn9vDGZppFqNFHb+9KojnmikN1WVZCZTFpgzqR048ximCynEl/VY2m0Syt
UEls9M5WdMDKUQ4z1N2uh/Tn0Zq1kMhT2IvN+jQYC2QJnZUqBb+OwoV8KzrNfSuR
CiMCl9+YmwYlrqKy7cxNFco3gum/gW+dDctBANB7+Me2ehhQDxuAJb5rENRviy/g
s+oizR8vQ3mNnlWLz57M5Co9TrEjwIqT10ujLy1jnIkVGMdZMJc=
=8RYq
-----END PGP SIGNATURE-----

--jdqx244eltbi25x2--


--===============6908973875574097703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6908973875574097703==--

