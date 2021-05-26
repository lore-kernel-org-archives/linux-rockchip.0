Return-Path: <SRS0=5mPC=KV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AF1BC47088
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 13:51:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BD5A5613D3
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 13:51:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BD5A5613D3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B/A0JExEZYFNN0bBYyMmLtfdhY6sKJKPtJpueDsnHHY=; b=aoxqbiLfgKXYjiZxzpp5jMm9Lp
	sBycWFIjxo/tT3xr4AJUxBs0G687/QgtAB/aTEF8V0j7WymMmxPXFuZ1Q0TFeH5ye24ggCEtmu2e1
	Cmk+Kc80bOIpK9oXMDQYcLv4IdGmlpKI2Co1KTEeyOoXozLqQ1fXU+c9fkUyBOOR5lrclDvB5/M4w
	ctnwQlIX29p8x1waUptJqmDVfffBacasQ1R3WUmKw9aQ6w9NZvec38y9uungoCBOixhfM67uF6eMq
	2pKH4GpWqDB/ohWbEJOtJlM56fT8LTFMFV0AMpH1VcCZoYIpVkV5qIBkzCjhwwBLbtSRiIwa4e1m5
	fW5cixjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lltwe-00EbJy-GT; Wed, 26 May 2021 13:51:36 +0000
Received: from smtp-out2.suse.de ([195.135.220.29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llsD7-00Dlkg-6R; Wed, 26 May 2021 12:00:31 +0000
Received: from imap.suse.de (imap-alt.suse-dmz.suse.de [192.168.254.47])
 by smtp-out2.suse.de (Postfix) with ESMTP id 2D33B1FD2A;
 Wed, 26 May 2021 12:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1622030424; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=IjDfVNGyLqkqsPwVm25MULiJLzVWqdHHv+ncw0xAGyk=;
 b=UeoYFvN0l10pOObHYxLSXztHiWtXmYwEV18Dfzb26DvzzZSd0DGois5lXazPBpwQSIOoS5
 M3C2BOiJ3IRmdlVN7t61wRROiLWWheuTgPUI5vSAyFNzbyn1Izep3UAH63C+aXNf9s+bHr
 4fP+d2Y7nJS3PTrpSkjxRy1uqfKTUj8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1622030424;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=IjDfVNGyLqkqsPwVm25MULiJLzVWqdHHv+ncw0xAGyk=;
 b=tlTC+ARnM+GuMeOKQJIThyu7MqxL9cgstGXGa4v/zBZ5gfaqKA4+2C/FTzMGc+LOacp2Y2
 MlFneooEigMAzGDw==
Received: from director2.suse.de (director2.suse-dmz.suse.de [192.168.254.72])
 by imap.suse.de (Postfix) with ESMTPSA id D078711A98;
 Wed, 26 May 2021 12:00:23 +0000 (UTC)
Subject: Re: [PATCH] drm/rockchip: kick firmware-based framebuffer when
 initializing
To: Icenowy Zheng <icenowy@aosc.io>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
References: <20210526085527.155840-1-icenowy@aosc.io>
From: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <13c50c42-4f2a-eed3-fc79-cbe6d1e7cae9@suse.de>
Date: Wed, 26 May 2021 14:00:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210526085527.155840-1-icenowy@aosc.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_050029_438072_1F3AB32E 
X-CRM114-Status: GOOD (  22.71  )
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
Content-Type: multipart/mixed; boundary="===============4939702587570314814=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4939702587570314814==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="8BYw6q2hiLDaE4D6t7JULaNP7Anat21W2"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--8BYw6q2hiLDaE4D6t7JULaNP7Anat21W2
Content-Type: multipart/mixed; boundary="LZzy5vKYeS6aAktdZRJoJ4RLNbvtCfZeM";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Icenowy Zheng <icenowy@aosc.io>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Message-ID: <13c50c42-4f2a-eed3-fc79-cbe6d1e7cae9@suse.de>
Subject: Re: [PATCH] drm/rockchip: kick firmware-based framebuffer when
 initializing
References: <20210526085527.155840-1-icenowy@aosc.io>
In-Reply-To: <20210526085527.155840-1-icenowy@aosc.io>

--LZzy5vKYeS6aAktdZRJoJ4RLNbvtCfZeM
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi

I think we already fixed this at [1]. Apparently no on epicked it up. If =

you awant to test, I'll add your Tested-by before merging the patch.

Best regards
Thomas

[1]=20
https://lore.kernel.org/dri-devel/20210516074833.451643-1-javierm@redhat.=
com/

Am 26.05.21 um 10:55 schrieb Icenowy Zheng:
> Since U-Boot now supports EFI and FB passing via EFI GOP, when booting
> rockchip SoCs via EFI, a EFI FB is available. However, currently when
> re-initializing display pipeline, the EFI FB is not removed, lead to
> fbcon not working (because the EFI FB is no longer bound to the display=

> pipeline although it's still /dev/fb0 and fbcon is bound to it).
>=20
> Add some code for removing firmware-based FB when initializing KMS of
> rockchipdrm.
>=20
> Tested on Pinebook Pro (RK3399) with U-Boot patchset for initializing
> eDP display applied.
>=20
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
>   drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 3 +++
>   1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/=
drm/rockchip/rockchip_drm_drv.c
> index 212bd87c0c4a..3905fce6ce0b 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -158,6 +158,9 @@ static int rockchip_drm_bind(struct device *dev)
>   	 */
>   	drm_dev->irq_enabled =3D true;
>  =20
> +	/* Remove early framebuffers (ie. efifb) */
> +	drm_fb_helper_remove_conflicting_framebuffers(NULL, "rockchipdrmfb", =
false);
> +
>   	ret =3D rockchip_drm_fbdev_init(drm_dev);
>   	if (ret)
>   		goto err_unbind_all;
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--LZzy5vKYeS6aAktdZRJoJ4RLNbvtCfZeM--

--8BYw6q2hiLDaE4D6t7JULaNP7Anat21W2
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmCuOFcFAwAAAAAACgkQlh/E3EQov+CU
Mg//V2gspuj9JuJo17jjUtDZxGtg0cclw4uF6RWE0TZxjSpREAsLdCEFd9WrxIqgbGTJU+nFVzE1
wJaL1TfnACOmm/6BYr+xUm4F9ArpMDKbJcLpDzCYJmP+n0u1twXjrVBfE5xoW7ja40Vvx0LcImpb
/dnWF2xks5dZt0KbaOXAmtySqL1N4wQZr+BKj6T00bXctekhz/Hfgc8FwwQy+gD8ToEBfb46uzuT
wZGfXMbPPZ5BFvQFj6FwsXfORTpyevyeQGoFruqj6aTDxQpiYXWxtLS9/DzlTmHCPYHXqjxHSltM
igkb8qVEw7yAsuThVSTPBK6lt1C0YCvFUVpZGHL2LSraDXLna7K3bYvMDqbTNgWnprB0ImaL2RVy
9+1SYL2MDwBZFle8qsZsUbrG8w6zRZYUUO3H5EjUGC0ZG3dnFvLuH3IS5HUHhu2RPAv8dXfysvc7
wi3lQ+lNylV6Vt7NbQELWQC5Y8fHp08Un8MCQJFpXbYnQZUr2+ALdUc6RADPcBtuWipWKTkw+HwI
e5lBnZ9DeHsQkGDq9M0/PJu34NjeyK2vCjvqgsCsI7UrhooJ0ray9h038FNP/h5XA+NULExYIvC6
SMSAtmLsTjyryAgMHEMpJLaADJG0nr3OE/mReUG6Kn+dsjrSR71y7NOIRMOm5dJ2Z/iiWr/BEWrD
S84=
=LAV6
-----END PGP SIGNATURE-----

--8BYw6q2hiLDaE4D6t7JULaNP7Anat21W2--


--===============4939702587570314814==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4939702587570314814==--

