Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB4ACCA5FAD
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 20:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CX/fH+tXGsy+fh4hoQsQ3EosButgmZWn8pF0YHf4noQ=; b=1w3Rh8bw/St6N30PYJdNuYiZJl
	AbBXS2ISJgapGD2m63pHc3BKAie4r1rYJKVSFYVAfNkzEVyeZ7gRhMmee9we6pA12+azyFtU6yCOc
	OHz5pBjW6in6so7hqlKUNsdfFHSeaw9I5uieWWgy5U4ibFqwQy1hJGthlwnC7LPc9SzWevrQO81eQ
	tQWJhJSavV94iw6EKnrRYswbmzVhxIm/DeBqAvEolqew85KM3U/XuD70JxE32QFki19OJl0sdNIzb
	K/JVM9HvM5JOE8Kmnf4zyeQ8/ZVDtz/2RQUxC0ix5UFZjION0AaB1s+CSH68zoowfHTHffuUTufte
	xNScQlNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBeRI-00000004UWl-3FAd;
	Tue, 29 Sep 2026 20:28:36 +0000
Received: from mail-vs2-x0f.google.com ([2a00:1450:4864:3a::f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBeRG-00000004UW1-1mM8
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Sep 2026 20:28:35 +0000
Received: by mail-vs2-x0f.google.com with SMTP id 71dfb90a1353d-5d330f80f3bso388666e0c.1
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2026 13:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1790713713; x=1791318513; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=VQaYivWBj1ySc+nCCyxMCDWtW4eRfB8nvxBhJGO3V6s=;
        b=kLMb3vUGj+rwO4iUXBKawYLXM2kQn1FlU8TdAsAgYOTqcg0xmq5cZfEkFx/R7kWGw8
         nsW0cEDmsM9taP18RMoF5fWoJeJYc+V68luYYuZgpblzXe7EUNrazrhbqyweaSd9O+/5
         DUwjHG3DQWjrt7Zu+98J4z1BmeQi62v/c/Rqy/IrjnxNBEWvyLWZC7HCj2Xq0taiBpvk
         YgBUghsXg0PVx5K7spQMIuZZ6LJgYwTCs2aVUV7BQqaEPirJDSmbcOv3KNoJ8/ic9nrS
         Ca5YWVBFyo8qN5Nvts0E1V3COXYxzpofp/l1ChhCUgJSlZaVQVx+4MTnjqs5vXaD60hu
         T1BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790713713; x=1791318513;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VQaYivWBj1ySc+nCCyxMCDWtW4eRfB8nvxBhJGO3V6s=;
        b=0oIdKpkH2cSbTJtXXIesnr6X6tbkguQ11RORbF7Zp5MmYerSdqn6njS1/MloIpEpdX
         oAV3IQX4gtYUE1naZ9NwqPCINr7sbPfVx+sjbUBBk9BspGfQTNEOTWU3QV55wPoqR9FM
         KSqORVLKlPkRIpA5/GtK4h3W9Wzveeot9Wi4bo/3667TSJt1vPms4zoMvBaKCufL+7dN
         ZH8zx0pCUz5n5gkT1Zg7vNd35ELKsgPdB8Z3EzMgl1EwkZHD3iv/YLoUB75w7hLjALft
         +SvOhgarJTIiQlGFWgOvYxWMRZP9nBSH9bgQ3d+EoAgqmSLos7/NLxb/fCV69vI3yB9S
         Ossw==
X-Forwarded-Encrypted: i=1; AKwUvBzPifsIDWBGW/l8vpnUfJXF6bDhYAusue6Eds9QDfKVc/53+R4IbeKyEY9yBIkxh3Mo6E7hr0rLlAz8ByEmuA==@lists.infradead.org
X-Gm-Message-State: AFq9FYLMtLWoQ5fXOb68XBbgK521UuJrqTh/ZOsmm+rG0aZffSTEcddN
	IbzzEC8vVC/scWkShhkzxG2lW0oIeEl+4AomvNXnbWUGEwEwdA4RUm1x9ATFNNVnaMU=
X-Gm-Gg: AYBFou3Qpbn619DYWeaW4Tnu+pRXA9T1KrSdZoPJeGHSEZGXbS52aN/EUH8XHF5qN6L
	XQ9sLmmgN87SCna62+4Y5PHm0SkXP/BJuCPm2HSdoVwm07cSnK+/b2WoKkPS4G55VfVrSxSoUr/
	ELlkisOkvW0+lKtxM1GfdiGM2IMOLwwgXl4ohrAyFzEWWkaCiqtxpZVCEOV7hk1N41YHWN8aIdv
	IkTV1rUDeSxl82BrrqsZKzfyem4ccnmErSekDB3w6ypvE/7ZQvmePPwoC4mT/qjfb9B8D6BBkvd
	KSR8/xdSUFxm2IqWSXDhaOI/UccPC8OJRXE9vNK3MuVHTr+tRKEm/RXvjaiqZxYQ07XiuKy6ykw
	TYnwlG5ULwGGKVbtKCEO1SAAyFLm6OXSm0/p7eXA1kKGmV/oQogBh+BtX+1QBnIRsUmbUcHU/tz
	eYY27yr4zmAnB2Pen/1quize9D34EgW5uqtgsvxRfjwc+W90MuKAyUwcfEagoCJ/ibpVbQc4NUC
	Xtjk3AUxrwqRA==
X-Received: by 2002:a05:6122:e1aa:b0:5c9:c60a:e9b3 with SMTP id 71dfb90a1353d-5d51a3753bemr226593e0c.19.1790713712883;
        Tue, 29 Sep 2026 13:28:32 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:34bd::5ac? ([2606:6d00:11:34bd::5ac])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5d4e9a793e6sm1089117e0c.13.2026.09.29.13.28.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2026 13:28:32 -0700 (PDT)
Message-ID: <1fe9b189db3d0704be5b1b37a700311dac2cbfc3.camel@ndufresne.ca>
Subject: Re: [PATCH] media: rkvdec: Remove redundant dev_err()
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Diederik de Haas <diederik@cknow-tech.com>, Detlev Casanova	
 <detlev.casanova@collabora.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>,  Mauro Carvalho Chehab	
 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Tue, 29 Sep 2026 16:28:31 -0400
In-Reply-To: <20260919093449.2534901-1-diederik@cknow-tech.com>
References: <20260919093449.2534901-1-diederik@cknow-tech.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
User-Agent: Evolution 3.60.2 (3.60.2-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_132834_495027_272E7A6A 
X-CRM114-Status: GOOD (  14.95  )
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
Content-Type: multipart/mixed; boundary="===============6663601064177512778=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6663601064177512778==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-F+3ToYK5qPTGqdEYIxDv"


--=-F+3ToYK5qPTGqdEYIxDv
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le samedi 19 septembre 2026 =C3=A0 11:34 +0200, Diederik de Haas a =C3=A9cr=
it=C2=A0:
> The devm_request_threaded_irq() function already logs detailed error
> messages on failure automatically since commit
> 55b48e23f5c4 ("genirq/devres: Add error handling in devm_request_*_irq()"=
)
> So remove the now-redundant driver-specific dev_err() calls.
>=20
> Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
>  drivers/media/platform/rockchip/rkvdec/rkvdec.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/me=
dia/platform/rockchip/rkvdec/rkvdec.c
> index 061281f903f3..13d13c041509 100644
> --- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> @@ -1824,10 +1824,8 @@ static int rkvdec_probe(struct platform_device *pd=
ev)
>  	ret =3D devm_request_threaded_irq(&pdev->dev, irq, NULL,
>  					rkvdec_irq_handler, IRQF_ONESHOT,
>  					dev_name(&pdev->dev), rkvdec);
> -	if (ret) {
> -		dev_err(&pdev->dev, "Could not request vdec IRQ\n");
> +	if (ret)
>  		return ret;
> -	}
> =20
>  	rkvdec->sram_pool =3D of_gen_pool_get(pdev->dev.of_node, "sram", 0);
>  	if (!rkvdec->sram_pool && rkvdec->variant->num_rcb_sizes > 0)

--=-F+3ToYK5qPTGqdEYIxDv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCarwfbwAKCRDZQZRRKWBy
9KhKAP4k1cHvpCPn5smix40RZY42YEI2Eo0qvXxN29oEVWOpCgEAnLNOPA0qpepn
oMGr7q8y93fQEe5BvvTo5vSFZBOIxQw=
=Qt2k
-----END PGP SIGNATURE-----

--=-F+3ToYK5qPTGqdEYIxDv--


--===============6663601064177512778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6663601064177512778==--

