Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A83606A686
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 21:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Fe6UlmIq;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=IwOG9Omk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WtJqhrr2O1b5yOUyq8wbrer+4BMpk/nVqMyhIYjYMnw=; b=Fe6UlmIqhPowkCpiPuby+SfLic
	hW5BrGDMIuAsGvRtfPzdklJFIyUAQEzGAZBIJ2wps6FQQ+FzPJ2jYD8/FdAt4OHZu0YO/ooSJ1FvH
	JwTy7maWRn3AcVJ1TqbuOdPTVobJKkWbgh0Lzizg15n4c6b74sHDwApbD2mzF2FBd8N0A/FrjEd9L
	5CLLlOtgxUISrYf5lj+jU1Ewu30js4fI+4SmyAgtXB/ZQ2vqtoqayPyopEfTPg73A88AQEj+9W4oa
	DxP8Flktn5B6CTND+PNOTIEU+A4qJZKXkaV1dxVcrtJDY/G7QZ5Oq14rX180t7vDHje7ruuh/lGg5
	yZTrWLiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVy69-00000007s02-3vba;
	Tue, 24 Nov 2026 21:30:45 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVy66-00000007ryt-3S84
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 21:30:44 +0000
Received: by mail-qv1-xf31.google.com with SMTP id 6a1803df08f44-92157f2e8c1so29895466d6.1
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 13:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1795555841; x=1796160641; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=JTZbfiL8h6libj4MHWHrf7zVUgJWzRuBE28KYs3BHsY=;
        b=IwOG9OmkeEvVCJDbFpQw6EWTQiRZxyvslesB8Vm+sLHoSZJKB5QYMn7BNdpfaGB5CG
         YkodRYOsW5KSmn+7JB4Z96W56ajZA6rPW1gA1L2kf0JaPuPk5TuL1OjMIuyYWK1fZwY4
         Jc6TCNjtRhKXkYVziWynW44gyXheO25t0Afrm0xStBSd1D2J0GA6VizZ1Sx5B5ScnCbe
         GUqRJXGodtBiVr/Qk+fEhp5pnLGh/ucvBeMDIge8e3D66jqPmPw/gOZ3JxzeQMGlzQD7
         lXLHG62X81BGYSfeBK8/mfgTMtN7S3E7QgnWt6EWdcRRj9YDkYw/yrF/vQc6u8gl99G6
         aVuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795555841; x=1796160641;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JTZbfiL8h6libj4MHWHrf7zVUgJWzRuBE28KYs3BHsY=;
        b=W3te4TinO9WMJ4qs4Tu4yCj6x/nxU7EUBx0XBGRKD2vBfuMf6oTIFtkghcPBZN9rFL
         IFSwMpdqRnDecGJq9TPnbDFrHVIQ2tq6P4uDtYyjFsmTDRkSXF+wL1uJOHmOhRdoBzRJ
         D06dGRX+Anb48/V5ey0o/UXrdv451tlsJHBbYlhEIfcbMRxPGh5m1quYmmlU7fyt9CjX
         wAf+63M/KdcevcSX4Zcb9VpaRZWfXoo4Tdz8FjJLvxj2+WHkFGvPDgugAK6DuvlsISVI
         f81vI39Zf8H0HmDkZzUZOxm6N5LbICCEDRGuTMzlZ0AjaOtoCBHMo3GGLP2N8FHjr/xU
         8Dgg==
X-Forwarded-Encrypted: i=1; AL+hErE3YArp+A8CClUwCFqgG189zD/tsfIyz+PiUYLFJ7oAM1BUjYKBmtHEYRdzUAb+cJZzxaO6QGlqA8SOr/RNCw==@lists.infradead.org
X-Gm-Message-State: APuU4Z+sUFvAOf8EXy0lI+aXDRiQjzi7luFR/BW2czn27pSelMeB1rW2
	j69E+3Nt0YDV2iMORkzSKYYMX8RLjSieQE3BMF0tPJt2rpueHHAlkED2SFm8KSseiKc=
X-Gm-Gg: AZFdTZf0r8jWop+HO5GEhr7R3edC1LJC30kjxQGAC2kB47t7Xyk5FiXAOR9OOdIBHr2
	aZ+YAbEnVEyz2NTGyQBR5EcdnYtpi3YkL70GkSYkwy5LjS4fnQHCOyk8KmYP3/elnt7zgMn3G/9
	LpMzmTCSPLG7UXGZnsNoOlb5HSgur2mo7GGwjQDoJGDRmL0bmVza0nvKYxVwFnI3EY8yuuakvWc
	sgeUvh/OgpgmTfa4A6JPCgK0KFJV7X2F5M9NtL8te2Jc22Wd015ydgcBjTR2Ip9SaPCAFInUPCG
	5xTuGjHSY2Z1MiEblTlaU3H88sLJ6U5OLqzImlz2ysQIh3o+NBC+tT5L4NRDWI+n5gk7lu/uaR+
	xurFK7LD6MgkXTqZjyacBNcYk31B5LEGdXmttNMZ4zb1URM+NZDa7R3dNmr2rPqGmTCbHuvXvJ3
	C9YG2OXYJHz9SWkr8lI0zM6aiaYc5BSgyiaYprI7/s2I80WjMEr/W4DlMgMI2oERnnQiorBMGUc
	SENbJyBwheCMKCIFu2whx+595H3Byz3R3B8TOxJT+xDeT7Y8LUW30lCwaNeGaA0ZsoZPuU+ciRO
	y5wuW6xvDn6AMQixJlv/fZYjG0F+ugvUZ9NWFBLpKRANcadle7nMQyM=
X-Received: by 2002:a05:6214:8616:b0:91f:2374:d001 with SMTP id 6a1803df08f44-92134aef4e6mr298052886d6.25.1795555841277;
        Tue, 24 Nov 2026 13:30:41 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:8ec9::c41? ([2606:6d00:11:8ec9::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-921349d2322sm147433536d6.19.2026.11.24.13.30.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 13:30:40 -0800 (PST)
Message-ID: <e20c4d1d343b3162394c9f900a7bacf698ad04d8.camel@ndufresne.ca>
Subject: Re: [PATCH v2 12/17] media: rockchip: rga: move rockchip_rga
 allocation to master probe
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Philipp Zabel
	 <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@pengutronix.de, Detlev Casanova <detlev.casanova@collabora.com>, 
 Michael Tretter <m.tretter@pengutronix.de>, Guangshuo Li
 <lgs201920130244@gmail.com>
Date: Tue, 24 Nov 2026 16:30:39 -0500
In-Reply-To: <20260916-spu-rga3multicore-v2-12-23aa2cb74e61@pengutronix.de>
References: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
	 <20260916-spu-rga3multicore-v2-12-23aa2cb74e61@pengutronix.de>
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
User-Agent: Evolution 3.62.1 (3.62.1-1.fc45) 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_133042_875938_F94113B1 
X-CRM114-Status: GOOD (  18.19  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2521669722253182089=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============2521669722253182089==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-0iHuTyOqnMvKgly+r/YZ"

--=-0iHuTyOqnMvKgly+r/YZ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 16 septembre 2026 =C3=A0 17:09 +0200, Sven P=C3=BCschel a =C3=
=A9crit=C2=A0:
> Move the rockchip_rga struct allocation to the master component probe
> function in preparation of enabling all cores. This also adjusts the
> allocation to use the actual number of cores found in the of tree
> instead of being fixed to one core.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
>  drivers/media/platform/rockchip/rga/rga.c | 32 ++++++++++++++++++-------=
------
>  1 file changed, 19 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index 367df0ee7b02f..37ccac5b406a4 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -741,7 +741,7 @@ static int rga_parse_dt(struct rga_core *core)
>  static int rga_core_bind(struct device *dev, struct device *master, void=
 *data)
>  {
>  =09struct platform_device *pdev =3D to_platform_device(dev);
> -=09struct rockchip_rga *rga;
> +=09struct rockchip_rga *rga =3D data;
>  =09struct rga_core *core;
>  =09struct video_device *vfd;
>  =09int ret =3D 0;
> @@ -750,17 +750,6 @@ static int rga_core_bind(struct device *dev, struct =
device *master, void *data)
>  =09if (!pdev->dev.of_node)
>  =09=09return -ENODEV;
> =20
> -=09rga =3D devm_kzalloc(&pdev->dev, sizeof(*rga) + 1 * sizeof(*rga->core=
s), GFP_KERNEL);
> -=09if (!rga)
> -=09=09return -ENOMEM;
> -
> -=09rga->hw =3D of_device_get_match_data(&pdev->dev);
> -=09if (!rga->hw)
> -=09=09return dev_err_probe(&pdev->dev, -ENODEV, "failed to get match dat=
a\n");
> -
> -=09spin_lock_init(&rga->ctrl_lock);
> -=09mutex_init(&rga->mutex);
> -
>  =09core =3D devm_kzalloc(&pdev->dev, sizeof(*core), GFP_KERNEL);
>  =09if (!core)
>  =09=09return -ENOMEM;
> @@ -941,9 +930,10 @@ static struct platform_driver rga_core_pdrv =3D {
> =20
>  static int rga_bind(struct device *dev)
>  {
> +=09struct rockchip_rga *rga =3D dev_get_drvdata(dev);
>  =09int ret;
> =20
> -=09ret =3D component_bind_all(dev, NULL);
> +=09ret =3D component_bind_all(dev, rga);
>  =09if (ret) {
>  =09=09dev_err(dev, "component bind failed\n");
>  =09=09return ret;
> @@ -968,6 +958,8 @@ static int rga_probe(struct platform_device *pdev)
>  =09struct device *dev =3D &pdev->dev;
>  =09struct component_match *match =3D NULL;
>  =09struct device_node *core_node;
> +=09struct rockchip_rga *rga;
> +=09u8 num_cores =3D 0;
> =20
>  =09if (!match_desc)
>  =09=09return dev_err_probe(dev, -ENODEV, "missing platform data\n");
> @@ -979,6 +971,7 @@ static int rga_probe(struct platform_device *pdev)
>  =09=09of_node_get(core_node);
>  =09=09component_match_add_release(dev, &match, component_release_of,
>  =09=09=09=09=09    component_compare_of, core_node);
> +=09=09num_cores++;
> =20
>  =09=09/*
>  =09=09 * As multi core is not implemented yet,
> @@ -989,6 +982,19 @@ static int rga_probe(struct platform_device *pdev)
>  =09=09break;
>  =09}
> =20
> +=09rga =3D devm_kzalloc(dev, sizeof(*rga) + num_cores * sizeof(*rga->cor=
es), GFP_KERNEL);
> +=09if (!rga)
> +=09=09return -ENOMEM;
> +
> +=09rga->hw =3D match_desc->data;
> +=09if (!rga->hw)
> +=09=09return dev_err_probe(dev, -ENODEV, "failed to get match data\n");
> +
> +=09spin_lock_init(&rga->ctrl_lock);
> +=09mutex_init(&rga->mutex);
> +
> +=09dev_set_drvdata(dev, rga);
> +
>  =09return component_master_add_with_match(dev, &rga_master_ops, match);
>  }
> =20

--=-0iHuTyOqnMvKgly+r/YZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawYB/wAKCRDZQZRRKWBy
9ECCAQC+deSrUC8XaYp7KyJkq6hxi/cBcfk+FAraOaSImCZpTQEAlogWlperaC7/
3uOxWQhYh5ZmAsh6d2alRohlL9U3WwE=
=uDa9
-----END PGP SIGNATURE-----

--=-0iHuTyOqnMvKgly+r/YZ--


--===============2521669722253182089==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2521669722253182089==--

