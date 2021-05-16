Return-Path: <SRS0=WkAD=KL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10DCAC433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 05:31:01 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5CC07610A7
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 05:31:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5CC07610A7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gzIiwfakObqPREE3RpXQhIbw4JN147bFIdbQHMcAmv4=; b=PP1LhIWr2UH6H8mK6JT7ILs/o
	hU4rnfT7AfpVxgmQBEBRvAYNKhMp5OKxkE5PV4N88GaUqWrZYCkmtkVYnq83DeVmjsc9HQJb+uhbQ
	JEElDgJ0uYB60yovRwZ/LTLbnF271zYSlOsZMZepOIOjufZ3zdvUjAwyezQAQ7OLGYUWI0iIr2hWx
	8z5kU8g8iEhkbq8Yfi3XEzk1qpsRHrnnQczJlHMSDqK04ulgp9lvpsgkkifXV1IRiz2nMyHKA1VNi
	J6ZVAhE6knGqA8WBiFHRuqt37ckZ0kzmYpLfXB3bIBLq2xMClAV8oNkiU4UV2LZUXQNK3V3yKXOU8
	LhL5e4uGw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1li9Md-00Be0z-0i; Sun, 16 May 2021 05:30:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1li9MQ-00Bdyb-Hq; Sun, 16 May 2021 05:30:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:In-Reply-To:MIME-Version
 :Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=bwPSSWjFxI2lmhQmpYd6WZ3cbgz8mXaZS1DKI31szdk=; b=CTv6DlqAnPjQHrrNLAsjyHw8ae
 v1NZGjCS6de/QFqLXhQWrNO1n1qQMxiQAfHnbLC7iB6V08efp9oFl+zo+VUtmWpQJAOcsNVQjiIBd
 rpU89UB1XL/X9iT0pgC8xl05n6Wv0REgqGD47/6drsKmZcatqjJ4khcRskkUHzmYOuiTabC9kCHzb
 GuWMR3ncGr/hNc1Ot/zcKXakLz8kYvnTGHcRdX1iOuEDswGCQ3s6fhVxdObvaXVh9PiQ3F5BmPKMj
 mrFJp6xvL/vUrOC0zD+UTiUI3wk+ZatQgnAvGZ5XR1/DCWjCrItoM2tnO0hOTnb0cDKgBW5V1eEnX
 ocEDd3+g==;
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1li9MN-00CmZV-4K; Sun, 16 May 2021 05:30:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 544ABAE4B;
 Sun, 16 May 2021 05:30:36 +0000 (UTC)
Subject: Re: [PATCH] drm/rockchip: remove early framebuffers before
 registering the fbdev
To: Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org
Cc: David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Peter Robinson <pbrobinson@gmail.com>, linux-arm-kernel@lists.infradead.org
References: <20210515221447.429779-1-javierm@redhat.com>
From: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <fe3285b7-3bc3-8292-bdc2-b8e823c1772d@suse.de>
Date: Sun, 16 May 2021 07:30:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210515221447.429779-1-javierm@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210515_223039_497002_F75243AC 
X-CRM114-Status: GOOD (  25.46  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7517433746537332588=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7517433746537332588==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="4wYW5pFUCvynnI7pjPzXACDDuKFD86ukM"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--4wYW5pFUCvynnI7pjPzXACDDuKFD86ukM
Content-Type: multipart/mixed; boundary="V1L3adRszmeBQmTFtJJuUaL5zxYtiK8Gm";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Javier Martinez Canillas <javierm@redhat.com>,
 linux-kernel@vger.kernel.org
Cc: David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Peter Robinson <pbrobinson@gmail.com>, linux-arm-kernel@lists.infradead.org
Message-ID: <fe3285b7-3bc3-8292-bdc2-b8e823c1772d@suse.de>
Subject: Re: [PATCH] drm/rockchip: remove early framebuffers before
 registering the fbdev
References: <20210515221447.429779-1-javierm@redhat.com>
In-Reply-To: <20210515221447.429779-1-javierm@redhat.com>

--V1L3adRszmeBQmTFtJJuUaL5zxYtiK8Gm
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi

Am 16.05.21 um 00:14 schrieb Javier Martinez Canillas:
> There are drivers that register framebuffer devices very early in the b=
oot
> process and make use of the existing framebuffer as setup by the firmwa=
re.
>=20
> If one of those drivers has registered a fbdev, then the fbdev register=
ed
> by a DRM driver won't be bound to the framebuffer console. To avoid tha=
t,
> remove any early framebuffer before registering a DRM framebuffer devic=
e.
>=20
> By doing that, the fb mapped to the console is switched correctly from =
the
> early fbdev to the one registered by the rockchip DRM driver:
>=20
>      [   40.752420] fb0: switching to rockchip-drm-fb from EFI VGA
>=20
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
> ---
>=20
>   drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c | 10 ++++++++++
>   1 file changed, 10 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c b/drivers/gp=
u/drm/rockchip/rockchip_drm_fbdev.c
> index 2fdc455c4ad..e3e5b63fdcc 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
> @@ -4,6 +4,7 @@
>    * Author:Mark Yao <mark.yao@rock-chips.com>
>    */
>  =20
> +#include <drm/drm_aperture.h>
>   #include <drm/drm.h>
>   #include <drm/drm_fb_helper.h>
>   #include <drm/drm_fourcc.h>
> @@ -124,6 +125,15 @@ int rockchip_drm_fbdev_init(struct drm_device *dev=
)
>  =20
>   	drm_fb_helper_prepare(dev, helper, &rockchip_drm_fb_helper_funcs);
>  =20
> +	/* Remove early framebuffers (e.g: simplefb or efifb) */
> +	ret =3D drm_aperture_remove_framebuffers(false, "rockchip-drm-fb");
> +	if (ret) {
> +		DRM_DEV_ERROR(dev->dev,
> +			      "Failed to remove early framebuffers - %d.\n",
> +			      ret);
> +		return ret;
> +	}
> +

Such code used to be part of the fbdev helpers, but it's not really=20
related to fbdev functonality. Rather it controls ownership of the I/O=20
ranges.

This code block should be done at the very beginning; before the driver=20
tries to reserve the device's I/O ranges. Probably at [1]

Best regards
Thomas

[1]=20
https://elixir.bootlin.com/linux/v5.13-rc1/source/drivers/gpu/drm/rockchi=
p/rockchip_drm_drv.c#L116


>   	ret =3D drm_fb_helper_init(dev, helper);
>   	if (ret < 0) {
>   		DRM_DEV_ERROR(dev->dev,
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--V1L3adRszmeBQmTFtJJuUaL5zxYtiK8Gm--

--4wYW5pFUCvynnI7pjPzXACDDuKFD86ukM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmCgrfsFAwAAAAAACgkQlh/E3EQov+A7
YQ/+PMhnLpkCMiK7e9qCZhznG2wyBSy+jIuI3+S473yvFhP0O9MrXz7JxNdlvVtSjQe4y2Zn3nr0
xdkH5qWk+DBUgDqKBzmirF+9dY9lIZD0L/80D+fMLpbiLCN1vzAgKlihffh9kvRPiVL+c7Iga8Jb
Sw89mj/tqKQk+8hXu85kceathNdseXNuCIZ9KW/0dLFmG3pegf9otuf6Lv617JHbxm0vLP3x79/7
FX73cKsG6PV7dqpJU19WTbKzakpLuGvhsWHy620WbBr9tD6gsZjbxDBpBB0/dJ/5XjjlduJA2vFl
hHPONYASxLO6FWBr1xhJyxhj3GgsZqRkCewJ6StbcFuxEiq5iNkHR1A6vgP90gOioGjh6arjKJUr
Xyq31y+uKv+mGlNnlYR9o3jGdGfcihLB2MXyEqupUowdc9orbPC8oTyj/j12Zq2QBQHaskE0N06H
F7DRty2aOESa8779e7iEOqZh/0kmQKyVynNqszsKpAeEFGvBTFI7T/uKrDZOfr7keZN/GA7AfuIT
w6Op56eU1FYatlnK0uqMgXm113iHIXVFBpz2slahSMfyzd86G2PL9mRWOKngLLk/Zh5iEYpCMP2b
isyBigCiGRZh9hMtE/4eJ3RWkPnN0Ji0wfvgrdtlVAYZXvW5BODsjNaA1aT3FXlk4uFn1y2m5BR+
PQw=
=Vwle
-----END PGP SIGNATURE-----

--4wYW5pFUCvynnI7pjPzXACDDuKFD86ukM--


--===============7517433746537332588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7517433746537332588==--

