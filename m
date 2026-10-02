Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08DE4CA5FE5
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2026 19:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=csvoKT0EQdA0/1Ps2jkHzL/69wEr4ddLHCqvuO8GHOs=; b=N86u/Jgk77WRlK9kr0bb75kUZ0
	/VBXoH+CbeMEDA6FQr6RFKv961ovebGCXLdeaFe0LnWj4RFwRxHF6RGjZULHEwy639K39Q5ho+eKt
	JV4QIU5y+XOQLh1BiIeUYjPTPWgFnxFykWsKLmh0RlkEA3MkaP6xUIkpWr6e/RdeJsL5CFl7fK3FF
	zgSVCm04xyUX22RTvMf5K22dnkvZGChIVzcfM1LzlPqFTv1X1gjEdQzTGWnJ9ld3Im2zYSXd7MG3p
	sJpgh6ubK/P/m3gSJeO61KCyYTR7U1Xfbs/DSp2LJAWX2ExOH2ltckrMAhclbb7AHl3W/oRqM/DYg
	46cBmR/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCjLZ-0000000CRPK-3tIt;
	Fri, 02 Oct 2026 19:55:09 +0000
Received: from mail-qk2-x0d.google.com ([2607:f8b0:4864:34::d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCjLX-0000000CRO2-173e
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Oct 2026 19:55:08 +0000
Received: by mail-qk2-x0d.google.com with SMTP id d75a77b69052e-534af4d1a37so9668981cf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 02 Oct 2026 12:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1790970905; x=1791575705; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=sGlzclWAPvmV9l90+X/3UL+TEboVyGRPeZlBqSVtL2g=;
        b=TAWnRCwLvuEy27OXAN3dAkTJtIC7quwbbbqRnKNfY1KV3tl3Dl7T3BzomsOkCacpKn
         B+N5YGKtIIMwKwZic7XxnyJW44ZAq6Y3lJ45PldK8J4gD4nFjNdmlkbpZfBG/1eU/jg9
         UN75Xj53jVCPzg2+XFOyetCT/AjidrpZdN/QR6d618o8DxyWqGNeufJJEXsO8ZUrUSCt
         M0rWVQlWfSBmvBeLlN4MtRKIMRof9D+mLiTdY3cZL+YbFzpGxzHmWkb3BTrsQiyyT8X9
         eCDzE+hyfk59eMEeOG7smKtVgZQod8sRuW9YFYXA14IqDsys+aX2jcG2HYbQP6V57GRx
         i10A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790970905; x=1791575705;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sGlzclWAPvmV9l90+X/3UL+TEboVyGRPeZlBqSVtL2g=;
        b=AgqU2XkCB6wpQxs1QkeR3Bk3GtqcqjohEmGW4WRPrKCyHoUJ51hBytbOLj3+6geZ7C
         0qtuhdJyzdNIrPwGSlFvELvX7AfqPd67jkm6uLe9F735bTfij/mPO4F/l82KNE8r5Yub
         INA8XIGE4I052UbK+dcVjIwIvSAzLxJ7lE5vS3/2jVbEVp1u3kr0dy01dZ+jbW85xgFl
         1rDcokOO6QGMIf68SOCDZ68J++LTLB+4vKovVnf7sSZO+pD9X7Ha7Q4DEDO1b7+GTp6O
         YwBfsylMPsXSiMOJGrz7/6EiQOe0qonj5z/zwkSwjQbRGN/sFztXGtM/hO8VArwbMJgL
         IU6w==
X-Forwarded-Encrypted: i=1; AKwUvBwxyR6bITkN7oAe8fES55g3NA2VPXQk2EDxQZRlLl9baezwwXzWpu8AcjuKOBrR3DFbyDM2Gq/xozFajMbWxw==@lists.infradead.org
X-Gm-Message-State: AFuF++n/T2koplcK7x0Unr52xexC9fLThvpY4Hql4HdpzPb4tc0mEolq
	DzUsdHpmjI6FP/3b3GdMX1PqxpN8RjH3Pm/VtQv5AxEdDPPQIciTpI5Vh1gEdFjNQuA=
X-Gm-Gg: AYBFou26BAYSuGjW7EDXvoeTB2vNxflmX1DtjYJ3F/JohopMX57a2YiO0lVKFsp2e4t
	pYzxi6CMzjKu822VM9zdzK/DzAxmQDipJYM/xknGAC7WmmiJnou/HdlfqAcG2bEJxPtbgUSQa9E
	3uxFATl5/Cucf3g9Tma+DqU2RnpHsbQnnwrAzaCGMCXIyaz42lZBjpLLQUx55zI/WTSMajFwZqC
	pv20TiUUWOCFjQWoUvPMm0vih6O+XsfM2xJ3HCv0ZBv/xa7/PfOkEPEgLVmvYG55RVKU0xEypTN
	4+jr93kpNk+adD92Y0Dv0xzj3YwubIh1cwkbZi62xJy61+OHRG3hEBjM9/lWRFIk18Rkpsh/HKc
	5OM1R1RYw9fx2ckuDI+POLQAbnVSSnlyPDjMq+S/fBRvpm4X2i/U70dvCccC7Wx1833bHH+OSzY
	xg+3HHWfyq8RIZDVA6czEjOlgCFZcP8LPx+DzJd4VoHxLVNFHD1qTcPUDYVbYdpvmCyif+r0BAk
	cp+oNcE4U065PIcRPNVAy7z
X-Received: by 2002:ac8:5d8b:0:b0:533:1038:ad50 with SMTP id d75a77b69052e-533d9587585mr69965091cf.45.1790970905305;
        Fri, 02 Oct 2026 12:55:05 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:34bd::5ac? ([2606:6d00:11:34bd::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-917e0b6b636sm27285076d6.26.2026.10.02.12.55.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2026 12:55:04 -0700 (PDT)
Message-ID: <aaf70162b2f8353d198e4f0a0137574b9963870d.camel@ndufresne.ca>
Subject: Re: [PATCH 1/3] media: rkvdec: Switch to modern PM_OPS
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Diederik de Haas <diederik@cknow-tech.com>, Dafna Hirschfeld	
 <dafna@fastmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
  Mauro Carvalho Chehab	 <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Detlev Casanova	 <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,  Jacob Chen
 <jacob-chen@iotwrt.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Fri, 02 Oct 2026 15:55:02 -0400
In-Reply-To: <20261001173610.158931-2-diederik@cknow-tech.com>
References: <20261001173610.158931-1-diederik@cknow-tech.com>
	 <20261001173610.158931-2-diederik@cknow-tech.com>
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
User-Agent: Evolution 3.60.2 (3.60.2-2.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_125507_577039_2784E7D6 
X-CRM114-Status: GOOD (  20.28  )
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
Content-Type: multipart/mixed; boundary="===============3415235492840067916=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3415235492840067916==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-u687AWLeNGHFAtWYehS2"


--=-u687AWLeNGHFAtWYehS2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeudi 01 octobre 2026 =C3=A0 19:34 +0200, Diederik de Haas a =C3=A9crit=
=C2=A0:
> A new set of modern PM_OPS macros got defined in commit
> 1a3c7bb08826 ("PM: core: Add new *_PM_OPS macros, deprecate old ones")
>=20
> Switch to those new macros so that the PM callbacks are always seen by th=
e
> compiler, but discarded if not used. This lets us drop the check for
> CONFIG_PM.
>=20
> Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
>  drivers/media/platform/rockchip/rkvdec/rkvdec.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/me=
dia/platform/rockchip/rkvdec/rkvdec.c
> index 061281f903f3..936abd92f703 100644
> --- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> @@ -1877,7 +1877,6 @@ static void rkvdec_remove(struct platform_device *p=
dev)
>  		iommu_domain_free(rkvdec->empty_domain);
>  }
> =20
> -#ifdef CONFIG_PM
>  static int rkvdec_runtime_resume(struct device *dev)
>  {
>  	struct rkvdec_dev *rkvdec =3D dev_get_drvdata(dev);
> @@ -1892,12 +1891,10 @@ static int rkvdec_runtime_suspend(struct device *=
dev)
>  	clk_bulk_disable_unprepare(rkvdec->num_clocks, rkvdec->clocks);
>  	return 0;
>  }
> -#endif
> =20
>  static const struct dev_pm_ops rkvdec_pm_ops =3D {
> -	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> -				pm_runtime_force_resume)
> -	SET_RUNTIME_PM_OPS(rkvdec_runtime_suspend, rkvdec_runtime_resume, NULL)
> +	SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend, pm_runtime_force_resume)
> +	RUNTIME_PM_OPS(rkvdec_runtime_suspend, rkvdec_runtime_resume, NULL)
>  };
> =20
>  static struct platform_driver rkvdec_driver =3D {
> @@ -1906,7 +1903,7 @@ static struct platform_driver rkvdec_driver =3D {
>  	.driver =3D {
>  		   .name =3D "rkvdec",
>  		   .of_match_table =3D of_rkvdec_match,
> -		   .pm =3D &rkvdec_pm_ops,
> +		   .pm =3D pm_ptr(&rkvdec_pm_ops),
>  	},
>  };
>  module_platform_driver(rkvdec_driver);

--=-u687AWLeNGHFAtWYehS2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCasAMFgAKCRDZQZRRKWBy
9FScAP9oQFR10NikWDA9nu2Dfv7rKQ2BsngLSDea0lYtTWwcEgD9HVcbeQIF371C
sm9RTJ7S2Z9Gr+G5/grG+QsiqbS/kws=
=Ce67
-----END PGP SIGNATURE-----

--=-u687AWLeNGHFAtWYehS2--


--===============3415235492840067916==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3415235492840067916==--

