Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85891C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 13:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eEdELNyx/b4v/cTEGRi1pSVURtTcXE15FbF1hDfx9Ew=; b=JU+BYgKKr0WhcpeNG56FO+Nqck
	Z8OCzitoeTC3DVbudyXR/w2LBVDxpQrPHMScTY10szoaQg7V91gD4jI6U7knbA/7ciLJGj7L5ToVf
	nFo0YgcH7l3XZmActBK5kCV48PAwDFs2LOP/A/Ic6DUoueFw0MjOsihgNeu5rsuGKUiw72InSqWio
	wjiwqdFRNujySHAsP78HvIBFQaEcXsuQBp6hLp4ulmYLKyJPokSqo8a7jA+RswTnrrmu8X+bEFnsm
	FibiRKRkhoDLJGGq2CkUKA5RCuNUEkHldtgntFmNWGs/C5EIiIwv57qQh9CWA8S9QCwJP+IEI0hSi
	NW1HfFSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shUOm-0000000Gt3C-3Q69;
	Fri, 23 Aug 2024 13:32:16 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shUOk-0000000Gt2T-04rB;
	Fri, 23 Aug 2024 13:32:15 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724419928; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=KPAyQPg5eTVOLlCTUyJVq1JaBUlGmOOewxA+F0jfoYKiejNzjEzAFuw3xEOHTrrVA0mNYOCiBoDwxDfC9GYqyOnUE9nu2PSYg10NvmWorAAoZIl8ZeiKnSJf+JpQn7aVn9MwO8WmB7vJU+rPoy0Do2TDUA7HEIYUQ6Sznyzp/70=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724419928; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=36+a1glbwxcI0a2i+ISO16XDr0TPQCW8/sEg2TiO13k=; 
	b=TXxIwHfmoj2KuqJfrKd99zhFQ2LWlnQxKppEhaU4UJqckb1e+uYa/fQW600Vt2+Z8VdrWvXLfo5q3jXzVwhtbsbxxnqx3UPK/OyCdFp+Be3EbaeuQZJgzd0mE1NpmILrWLAJPRzbJJzJxcBTFEKozgNUYP2YzCdzs7LSGy+Deu0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724419928;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=36+a1glbwxcI0a2i+ISO16XDr0TPQCW8/sEg2TiO13k=;
	b=brZY86nXo+B9PwbZJ+W2OizsPGsYK2O/CIryusHuS/EvssKKSXAkAzfGLqiQCQRU
	NXWK6RpGiVr2agI2aie/kPcL5t6QGlOLLt5QdthlvXmAWJCG33IyRFM2uyjX5dnXkr/
	uQAqjPazjh7QKY6XcL9r6eU8979HuuDTUAs92QhU=
Received: by mx.zohomail.com with SMTPS id 1724419926661174.78715179759513;
	Fri, 23 Aug 2024 06:32:06 -0700 (PDT)
Received: by mercury (Postfix, from userid 1000)
	id 3A8581060533; Fri, 23 Aug 2024 15:32:01 +0200 (CEST)
Date: Fri, 23 Aug 2024 15:32:01 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, mika.westerberg@linux.intel.com, 
	andriy.shevchenko@linux.intel.com, tao.huang@rock-chips.com, finley.xiao@rock-chips.com, 
	tim.chen@rock-chips.com, elaine.zhang@rock-chips.com, detlev.casanova@collabora.com
Subject: Re: [PATCH v2] gpio: rockchip: support new version gpio
Message-ID: <c6mvxcgono3s2jtotks6sfqojenj2nmvf4b5fau5uc6gmlmerb@oi34wxnqna4n>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
 <20240823034314.62305-9-ye.zhang@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20240823034314.62305-9-ye.zhang@rock-chips.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/224.322.35
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_063214_111484_5E4CF057 
X-CRM114-Status: GOOD (  22.01  )
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
Content-Type: multipart/mixed; boundary="===============2946658944123373191=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2946658944123373191==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kvez7yto2c3wu2kd"
Content-Disposition: inline


--kvez7yto2c3wu2kd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Aug 23, 2024 at 11:43:11AM GMT, Ye Zhang wrote:
> The next version gpio controller on SoCs like rk3576 which support four
> OS operation and four interrupts
>=20
> Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
> ---
>  drivers/gpio/gpio-rockchip.c | 40 ++++++++++++++++++++++++------------
>  1 file changed, 27 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index 25ddf6a82c09..5289c94d5c60 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -29,6 +29,7 @@
>  #define GPIO_TYPE_V1		(0)           /* GPIO Version ID reserved */
>  #define GPIO_TYPE_V2		(0x01000C2B)  /* GPIO Version ID 0x01000C2B */
>  #define GPIO_TYPE_V2_1		(0x0101157C)  /* GPIO Version ID 0x0101157C */
> +#define GPIO_TYPE_V2_2		(0x010219C8)  /* GPIO Version ID 0x010219C8 */

The comments for anything but the V1 define are redundant.

[...]

> @@ -648,13 +655,20 @@ static int rockchip_get_bank_data(struct rockchip_p=
in_bank *bank)
> =20
>  	id =3D readl(bank->reg_base + gpio_regs_v2.version_id);
> =20
> -	/* If not gpio v2, that is default to v1. */
> -	if (id =3D=3D GPIO_TYPE_V2 || id =3D=3D GPIO_TYPE_V2_1) {
> +	switch (id) {
> +	case GPIO_TYPE_V2:
> +	case GPIO_TYPE_V2_1:
>  		bank->gpio_regs =3D &gpio_regs_v2;
>  		bank->gpio_type =3D GPIO_TYPE_V2;
> -	} else {
> +		break;
> +	case GPIO_TYPE_V2_2:
> +		bank->gpio_regs =3D &gpio_regs_v2;
> +		bank->gpio_type =3D GPIO_TYPE_V2_2;
> +		break;

Can't this just be handled like GPIO_TYPE_V2_1 (i.e. reusing the V2
case)? Also it looks risky to use >=3D on gpio_type. GPIO_TYPE_V2_2
looks like a simple enum, but it contains the ID. Is it guranteed to
be increasing? In that case any ID > GPIO_TYPE_V2_2 should not
default to GPIO_TYPE_V1?

> +	default:
>  		bank->gpio_regs =3D &gpio_regs_v1;
>  		bank->gpio_type =3D GPIO_TYPE_V1;
> +		pr_info("Note: Use default GPIO_TYPE_V1!\n");

Can we have a list of valid V1 IDs and default to -ENODEV?

Greetings,

-- Sebastian

--kvez7yto2c3wu2kd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmbIj0YACgkQ2O7X88g7
+po2CRAAqG5J+F5LRYbd+YUt4EK3DRMoN2w4n0P/DMq1lXgeH555/OJOW4pncyrR
6/wkI8KYwKLLEZSbRbgo3PCOiobC6GlEtyX9p0h9ZDl8ioLAymUIbHT0EOkVtj7N
PlgLcAu/bZRH1IucSOP7ks474ePpdePiCLw6101pqWpjLpVrQZryq6iEA5YJU60f
VpaSLcNp3HF5nAyo5tlfyUexgEJEDMhMDpzf/Rrm4Z6o5yJxbGjn+tSkGJm64atu
EkGmFX96ACW+9HtGrX6Oc7FModh1mPwDJBc9VIvxTCbhvvrZ4BTUcPbdRxHUdKNs
kfSYmZ6t2HMEVG+madk+4IJgFHRdd8IeD9i1XDfpSni9lv/qQNgBQibYd6CVGvc2
bMk6h/WmLv/Mc1mSQ/CLPahSjoYRjKzbWrvg96aZkLejBOU6UcY4fO3/CpSTXGp/
HNWe/TSfY1B2ErSdKp4Izw5SbXC93SrZZvPf45FGX/iUUkw9RdhvirVRaTbV/jmI
J3Ih00t+XHPsIuwRnuRglAlloHPPkJp2TUMv9WkpI5dTuAzh3TO5JABsxNx0WwF0
UtJBEEuYtV9bDwVDWsvG+aI4cf5zmxAriWbAZljpu5hbruVjmX00YZXWxyj3FxjU
5EnhBWyiLQHGHakN5okQj7BC2Z0pDc6UXVcZPvrGNGMa8nySYN4=
=xJ6l
-----END PGP SIGNATURE-----

--kvez7yto2c3wu2kd--


--===============2946658944123373191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2946658944123373191==--

