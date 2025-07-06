Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DB58C83F07
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Jul 2025 10:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ev/3jVahdP/CSRQUD36KiNyBUmsWhhgzjO7EvJvrjNQ=; b=zJ5qKUT2cNTDBKcYsmo4Dh7UwI
	rE7QY6xPYJ6S+SIrz6j0mlfj/cvFttSsladDpPmErpmzfI2HqPwKaFzsNZa09OhlxALNVX7GeFsr8
	psfdps1CNUtJQNxxOMacNfIXDnpcVtM2YOjr5hNY0ufOdKGW3Tvde33qWmwps/fyZ1sNqObw6LMhr
	1ZjbzU6+Wp3uRjJtxOUFVDvZ2DdQ/655cAC9tLBUalu2xkR8p7pSJFL8M2qmfgEMf8NhNY2IzNhn8
	ZtwU4kcH7NZMmnqjymUA9bZ2wIomAtW7OTOxWdIZZFeUIDisPmupsMQtTx83UukKC6gjuG1pdRVyF
	X6/zC9hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYMJ2-000000006lK-0Vsu;
	Sun, 06 Jul 2025 10:09:08 +0000
Received: from out-173.mta0.migadu.com ([91.218.175.173])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYMHh-000000006ay-0CHP
	for linux-rockchip@lists.infradead.org;
	Sun, 06 Jul 2025 10:07:46 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751796454;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=DNC8u3mnnYqkifuAxCAn9WLN0+7etet2UpFGM0Q0muA=;
	b=GLYYiPlfLk8FgxcvvzkCj3TNUdIGzKuuEbKMbFy2Ahm0huPXJHwEuSK9UTdDWvg2iC7mfq
	JIIhB3gwxUucP/FNLKkVjJC8X95Dyz/CbwVHRLy9U+YQQZWhiKZ2NdonPLjbepZlesK41C
	+sge7unmeb2LNPUlAqAkDuC6TqHDsUvMy/8kAMHmbaw6QlYgjxpZ2son+T1yW1CUg08mfS
	KE0wUtBiYWBTrL5pm3v3gSV640HoS0L7YGUaza3ZscIy7RWolxEuBhZPR0UtwX0/GFTkb9
	Z8bIsbjr85FyfC1Occv96E8Qys7mC1E8uwYsRp9ztR3Z3wGTuWMEcuwdH8c3RQ==
Date: Sun, 06 Jul 2025 12:07:24 +0200
Message-Id: <DB4W0GOQZ8MZ.MA7QXHJWCTK2@cknow.org>
Cc: <hjc@rock-chips.com>, <heiko@sntech.de>, <andy.yan@rock-chips.com>,
 <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
 <tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] rockchip/drm: vop2: make vp registers nonvolatile
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Piotr Zalewski" <pZ010001011111@proton.me>
References: <20250706083629.140332-2-pZ010001011111@proton.me>
In-Reply-To: <20250706083629.140332-2-pZ010001011111@proton.me>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_030745_229821_38A7057C 
X-CRM114-Status: GOOD (  25.95  )
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
Content-Type: multipart/mixed; boundary="===============8665626418991061230=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8665626418991061230==
Content-Type: multipart/signed;
 boundary=48696b13996c954d2523b795f4ed39a48c4c5615ae4bc44190dfce43a0dc;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--48696b13996c954d2523b795f4ed39a48c4c5615ae4bc44190dfce43a0dc
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Piotr,

On Sun Jul 6, 2025 at 10:36 AM CEST, Piotr Zalewski wrote:
> Make video port registers nonvolatile. As DSP_CTRL register is written
> to twice due to gamma LUT enable bit which is set outside of the main
> DSP_CTRL initialization within atomic_enable (for rk356x case it is also
> necesarry to always disable gamma LUT before writing a new LUT) there is
> a chance that DSP_CTRL value read-out in gamma LUT init/update code is
> not the one which was written by the preceding DSP_CTRL initialization
> code within atomic_enable. This might result in misconfigured DSP_CTRL
> which leads to no visual output[1]. Since DSP_CTRL write takes effect
> after VSYNC[1] the issue is not always present. When tested on Pinetab2
> with kernel 6.14 it happenes only when DRM is compiled as a module[1].
> In order to confirm that it is a timing issue I inserted 18ms udelay
> before vop2_crtc_atomic_try_set_gamma in atomic enable and compiled DRM
> as module - this has also fixed the issue.
>
> [1] https://lore.kernel.org/linux-rockchip/562b38e5.a496.1975f09f983.Core=
mail.andyshrk@163.com/
>
> Reported-by: Diederik de Haas <didi.debian@cknow.org>
> Closes: https://lore.kernel.org/linux-rockchip/DAEVDSTMWI1E.J454VZN0R9MA@=
cknow.org/
> Suggested-by: Andy Yan <andy.yan@rock-chips.com>
> Signed-off-by: Piotr Zalewski <pZ010001011111@proton.me>

With a new version of a patch, you're supposed to add the tags you
received for previous versions, like my Tested-by tag [1].

(unless the new version has changed so much you feel they should not be
carried over; you then need to explicitly describe that and why you
dropped them)

Cheers,
  Diederik

[1] https://lore.kernel.org/linux-rockchip/DAZ4BALHEJ9M.10FO1U9IYP4WA@cknow=
.org/

> ---
>
> Notes:
>     Changes in v2:
>         - add spaces before and after '+'
>    =20
>     Link to v1: https://lore.kernel.org/linux-rockchip/20250628180914.117=
7177-2-pZ010001011111@proton.me/
>
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/d=
rm/rockchip/rockchip_drm_vop2.c
> index d0f5fea15e21..0931cb636493 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -2589,12 +2589,13 @@ static int vop2_win_init(struct vop2 *vop2)
>  }
> =20
>  /*
> - * The window registers are only updated when config done is written.
> - * Until that they read back the old value. As we read-modify-write
> - * these registers mark them as non-volatile. This makes sure we read
> - * the new values from the regmap register cache.
> + * The window and video port registers are only updated when config
> + * done is written. Until that they read back the old value. As we
> + * read-modify-write these registers mark them as non-volatile. This
> + * makes sure we read the new values from the regmap register cache.
>   */
>  static const struct regmap_range vop2_nonvolatile_range[] =3D {
> +	regmap_reg_range(RK3568_VP0_CTRL_BASE, RK3588_VP3_CTRL_BASE + 255),
>  	regmap_reg_range(0x1000, 0x23ff),
>  };
> =20


--48696b13996c954d2523b795f4ed39a48c4c5615ae4bc44190dfce43a0dc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaGpK3wAKCRDXblvOeH7b
bsgGAQDKhtYMoJQQ6FyMfHefj094BK4k7kSFaqb99MqJAY/8fwD/adNayRiFMkDa
f4C/qQzbsts/+9/ZEZYYu/MNmFatvQU=
=/7Mh
-----END PGP SIGNATURE-----

--48696b13996c954d2523b795f4ed39a48c4c5615ae4bc44190dfce43a0dc--


--===============8665626418991061230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8665626418991061230==--

