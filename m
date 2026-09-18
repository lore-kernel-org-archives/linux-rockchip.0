Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD130C982D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2026 17:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pD1Fh4wJegMYhDZO38ZC0hiF/2oiQ47t0FtKP6SZAs0=; b=T/OuwNqptGgIancSgJLcL2T2M/
	Ht4oYsCC47haSbKiG4VEiHhJ46ch46g3OijzZoTweBFKG6NmPFgykYfNqB3Ajn8aeBoKMnC+4iBsQ
	/0z3Pw3qo2uM02ylzImXGVfeKHA5/LGEH04+8LaIp1Rl+P9MxbujWX1fVxUL+hgDYyij/j67KFXpN
	1BlM0VRSZ65dShrFl6C5pBXaJljZyHbn9hoSaYCvnuA5qnHbe3JyMMcMRXinyR/8CJtAgFIQnI3Lo
	rGQ9bdmQ+HY9VqZ6A6cDhN45GTskRvGgwl89OYIuL8UwWiCnncY5Gyu70f5lHNo1c5Kj5FP08Ii+a
	tIoJ04PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7cn3-0000000FE3Q-2G9t;
	Fri, 18 Sep 2026 17:54:25 +0000
Received: from sender5-op-o11.zoho.com ([165.173.182.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7cmz-0000000FE24-3Pqa
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Sep 2026 17:54:23 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1789754057; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=jzZp+bCCtv8N6HtMmrvG3103FUUHf/RPkD2/52jxisHwhyI1Xr8fZ3atd4PBU5zsXc45x0MNOr5iAqvd3lDQmZ92LG2taSFx2DkvCkhS+pxGVu6e9c2aL91c6S2cHAfrqXZb7t0PLPpDGpTJBOKU9aZVKvee+szALm7IZiWfitI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1789754057; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=gGFaTfRq5dYHvrVJRIxLQYdylPpTIHpysFaBIisPlMM=; 
	b=GuqnqxFXsfQqGypMFz4aEg78QyDo7YN5hMqASOfueg1H4GWN1aWVERU7nt8/O3vT4ceRG3bbiyPcBs6I+furS62Xq1utiUoIjLrC7kgH0LXPXQrH/idYujaNu0ybRrv3AsIQCA+RgMXrQyOzRuAEVIGRF70nZEOpJnd2INgHU4w=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1789754057;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=gGFaTfRq5dYHvrVJRIxLQYdylPpTIHpysFaBIisPlMM=;
	b=L3ZL1gbPjcsJ6lwtG/LAk5mFvlBqaIrMkesSe+nIEsCZ6f94A6IqP15puwmyAS8K
	FCZmeWgWvG17xUoucNdFPcKIVK8phrOY9fmUNelzr9rH733CvWGckNEoXzPQ03x26Dd
	K6TJ34ZXGblx+Ail2iARZShaFVbjHtaBVLyQY8j0=
Received: by smtp.zohomail.com with SMTPS id 1789754056775590.397012828916;
	Fri, 18 Sep 2026 10:54:16 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 41E40180608; Fri, 18 Sep 2026 19:54:14 +0200 (CEST)
Date: Fri, 18 Sep 2026 19:54:14 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Ulf Hansson <ulfh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 4/4] pmdomain: rockchip: drop duplicated errno from
 supply failure message
Message-ID: <aq16py92V1vR7kcX@venus>
References: <1789733258-10133-1-git-send-email-shawn.lin@rock-chips.com>
 <1789733258-10133-5-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <1789733258-10133-5-git-send-email-shawn.lin@rock-chips.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.13.1.5.4/289.731.60
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_105422_492007_3079441A 
X-CRM114-Status: GOOD (  16.06  )
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
Content-Type: multipart/mixed; boundary="===============2700227111487962070=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2700227111487962070==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wo4ywt35kyoe72ye"
Content-Disposition: inline


--wo4ywt35kyoe72ye
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 4/4] pmdomain: rockchip: drop duplicated errno from
 supply failure message
MIME-Version: 1.0

Hi,

On Fri, Sep 18, 2026 at 08:07:38PM +0800, Shawn Lin wrote:
> dev_err_probe() already appends the error code.
>=20
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>=20
>  drivers/pmdomain/rockchip/pm-domains.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/ro=
ckchip/pm-domains.c
> index e193f97..dd5e2987 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -721,7 +721,7 @@ static int rockchip_pd_power_on(struct generic_pm_dom=
ain *domain)
>  	ret =3D rockchip_pd_regulator_enable(pd);
>  	if (ret)
>  		return dev_err_probe(pd->pmu->dev, ret,
> -				     "Failed to enable supply: %d\n", ret);
> +				     "Failed to enable supply\n");
> =20
>  	ret =3D rockchip_pd_power(pd, true);
>  	if (ret)
> --=20
> 2.7.4
>=20
>=20

--wo4ywt35kyoe72ye
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmqtesIACgkQ2O7X88g7
+pqZuw//WxV/jL8BUfpYOrO2ZLi84y8R0/RQ1tzDgZKL3SONJyfT/ovqpUkIaMGi
eyzCCTX8ugrJQyN22eVN95C0Xxn8GDPgWh13sAvDzBrAWDFMeGtCZr+qQGVTR85O
csKLVjUWEyxrOoamG516K51D7E8+jDuIu+VLbO4be0ZGNQhQDPf383PVxAGX/9W1
dPF+9T9lzq0tR+AbDSWq+T2Fg98+9ioCRgJNLa302j2W423okiRHmjX7N8XmDJ9i
jTLVRTGKhxoRjbePz1oxuaQ/20dUflIAtLD8Pxr/gZK4DlwRopgor+EGKwENOo5R
5kMc7qTLfHeY9bE7XnRgXSdVG3oHUFnpJt0747i8TmgG7pYpfydmwx3C6QUnEyAr
kweNavOTuzZErZ7fV25+k7Nt0/BDBT/LGKSCmKatJ1bN3kAahv620amUQo3z9Qi/
epErlDzuUuBRkB0oVB7faSU3NpTj5T00JW4yQrML8cTnxEiuK39yAFoV3GBI6/Ma
MLKjcTmQmXD+4wFvQz5GghTyeCZn1q4BMyTpRQpjp4R0NjcgYSHuX4UkocayoqEj
Ep8kJIbIXjAE0ROVAk52BfBpvD8kGM79fil30Mm8UCywsQIBXVjW+K9YC1ghDORv
b1HEeY7mfVw3oEGFOOGLSyeTgqIwr9wF2b6HfQ0ExwKNSYcw/vI=
=0bqw
-----END PGP SIGNATURE-----

--wo4ywt35kyoe72ye--


--===============2700227111487962070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2700227111487962070==--

