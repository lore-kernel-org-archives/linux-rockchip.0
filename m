Return-Path: <SRS0=WkAD=KL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 351C5C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 10:30:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9BE8061183
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 10:30:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9BE8061183
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IIn7uz6i+vprIwdqZp6dE4oD64SSkZCJCWOdA1o0ZJc=; b=KLXAcapII4obQuTl1pScmmPGK
	QGnI/y85YILXWX7Yatnj3WBY3oi2NOS8v0xO5hEg6wa2MV/kSxTuCJnaKJ3byNP8kwM9ixTwB9ZjQ
	94iGVjghg0KBxySJiTl/YeKy1/YX0VZ1kxtXpf1PtElk5Xd6v7nTseWxOKVnKcWmhMtSOtWN0wR8v
	pLVwYFiGlte9YSjXGKUrVFIqVy8KQARVL2mNim2G2TLwobeef9Sf+6lH1prn/m5EhXkT5qillacWA
	Y8CPV7/Rz9qBh1/oXCJBHE37Mv8srRbg+g9CvWAPg5Pqw1xyaZLPGQ5afh2unvGtNe5/jjl1JOBOm
	S0Y8T9luw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liE2t-00C2r2-Oa; Sun, 16 May 2021 10:30:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liE2j-00C2qO-BL; Sun, 16 May 2021 10:30:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:In-Reply-To:MIME-Version
 :Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=LCChTa12xtV641dHbAni7aJQOYT+sT7/CN5okEkk4bM=; b=rVAUi8FWv4lWBHsd+pt5UOURRI
 YPIADwRjR22pcDob2x6NbqRpFUTXtMxYU7BccNob41lIP+qt5wMXBlG0oc4DqiInhvwuNuidMMJ17
 VnaZ0n7sHg/pfxmBoTwryhL0yv6YfXoZahY4ZnSpdouoBZHOLL6wkDHMpTn7daLh8gxn2M5oSBDXp
 N0Rb03PP2jpsZang4rZ4rZFY6iYgW9MW3IXOE5l0ik6TlfWGdP8fIiI2A1r6+0NP2goLKumyTpAqz
 81oJJA/SI02QRwSacDURd3T+Z1UV2uBeyDPAwFNbIr/d7XWdGePsHt9LZ48m+ddBcRBfaFiGgijtc
 neqUNiEw==;
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liE2g-00CrOO-IX; Sun, 16 May 2021 10:30:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 743F5B19E;
 Sun, 16 May 2021 10:30:34 +0000 (UTC)
Subject: Re: [PATCH v2] drm/rockchip: remove existing generic drivers to take
 over the device
To: Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org
Cc: Peter Robinson <pbrobinson@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20210516074833.451643-1-javierm@redhat.com>
From: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <ef974dd8-5619-35b7-74de-4e270033a3c3@suse.de>
Date: Sun, 16 May 2021 12:30:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210516074833.451643-1-javierm@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_033038_933803_2E72CC75 
X-CRM114-Status: GOOD (  24.86  )
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
Content-Type: multipart/mixed; boundary="===============2856814560195837445=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2856814560195837445==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="CgsAfYMijZeSUxsTEVcfK6QxtTFVXoV5Y"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--CgsAfYMijZeSUxsTEVcfK6QxtTFVXoV5Y
Content-Type: multipart/mixed; boundary="eFIA3Z1QtOvjCQCEJlVTMcjzxEoaPtTlo";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Javier Martinez Canillas <javierm@redhat.com>,
 linux-kernel@vger.kernel.org
Cc: Peter Robinson <pbrobinson@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Message-ID: <ef974dd8-5619-35b7-74de-4e270033a3c3@suse.de>
Subject: Re: [PATCH v2] drm/rockchip: remove existing generic drivers to take
 over the device
References: <20210516074833.451643-1-javierm@redhat.com>
In-Reply-To: <20210516074833.451643-1-javierm@redhat.com>

--eFIA3Z1QtOvjCQCEJlVTMcjzxEoaPtTlo
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



Am 16.05.21 um 09:48 schrieb Javier Martinez Canillas:
> There are drivers that register framebuffer devices very early in the b=
oot
> process and make use of the existing framebuffer as setup by the firmwa=
re.
>=20
> If one of those drivers has registered a fbdev, then the fallback fbdev=20
of
> the DRM driver won't be bound to the framebuffer console. To avoid that=
,
> remove any existing generic driver and take over the graphics device.
>=20
> By doing that, the fb mapped to the console is switched correctly from =
the
> early fbdev to the one registered by the rockchip DRM driver:
>=20
>      [   40.752420] fb0: switching to rockchip-drm-fb from EFI VGA
>=20
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>

Acked-by: Thomas Zimmermann <tzimmermann@suse.de>

Ping me if no one else merges the patch.

Best regards
Thomas

> ---
>=20
> Changes in v2:
> - Move drm_aperture_remove_framebuffers() call to .bind callback (tzimm=
ermann).
> - Adapt subject line, commit message, etc accordingly.
>=20
>   drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 10 ++++++++++
>   1 file changed, 10 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/=
drm/rockchip/rockchip_drm_drv.c
> index 212bd87c0c4..b730b8d5d94 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -16,6 +16,7 @@
>   #include <linux/console.h>
>   #include <linux/iommu.h>
>  =20
> +#include <drm/drm_aperture.h>
>   #include <drm/drm_drv.h>
>   #include <drm/drm_fb_helper.h>
>   #include <drm/drm_gem_cma_helper.h>
> @@ -114,6 +115,15 @@ static int rockchip_drm_bind(struct device *dev)
>   	struct rockchip_drm_private *private;
>   	int ret;
>  =20
> +	/* Remove existing drivers that may own the framebuffer memory. */
> +	ret =3D drm_aperture_remove_framebuffers(false, "rockchip-drm-fb");
> +	if (ret) {
> +		DRM_DEV_ERROR(dev,
> +			      "Failed to remove existing framebuffers - %d.\n",
> +			      ret);
> +		return ret;
> +	}
> +
>   	drm_dev =3D drm_dev_alloc(&rockchip_drm_driver, dev);
>   	if (IS_ERR(drm_dev))
>   		return PTR_ERR(drm_dev);
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--eFIA3Z1QtOvjCQCEJlVTMcjzxEoaPtTlo--

--CgsAfYMijZeSUxsTEVcfK6QxtTFVXoV5Y
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmCg9EgFAwAAAAAACgkQlh/E3EQov+Cp
Qg/9HN4te27mlOT2TDrylnxgpX3owAC7vklx3in4qv98txGEXqyu/9Cm2i/4gZhcmlKHVstRt6a9
2frl4GDI3pnwJKQDhq9z81Ylc2hpH+Cb1TePDsl/wyLKRbG5bJtJ1kspkcFSk9azjtS97Iv8WW/8
ZDpTsyyTCtKU4vNIKIkHriDZQ8Yc3nSZV3eCcueYxzvRoGw/Q776Rn3UQryabzUTQLf+L6qYRS4n
BaFo2sx1xndVn9cuo+fX0lOG+jHj0wuMLWQ+VInLYxpoNF1GaYf22DE00h8OTozckcbDfVyaYjou
LJnsBbqWy4MvjFXQ6FomefoiATUbkOw1hVIs6k4IRWYX860v93XBTzVl75gMlBpmPzfnd1O5WlzC
4WOfcnLYG/0I64P8cG+vFEmcmOt4XNJUrrft82hYMR7Dx/38aQcP39n0YnkE5FEarkKaadicnSx/
0hC9o6iQCe8uc3KxBNONHuqRIoToQAGd7L9YB+3TV54pzKc1hOP0ciRBu76G+A70bRn2CPzAoMop
JVSjOmci6VMxz5JBhLG9zl81jrBvzRO0dPjZBy+zhIQNmVGIxQUFROfeBv0U6LZsURFuD9s6JfZz
bjLc+P92rB7Tu/YGQlwuyCt7+00TCMbMoJBEd03F9IaNUi4JYWaXt6f7+MuxKfUR5DAY3iICHgTz
Nq4=
=1U/I
-----END PGP SIGNATURE-----

--CgsAfYMijZeSUxsTEVcfK6QxtTFVXoV5Y--


--===============2856814560195837445==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2856814560195837445==--

