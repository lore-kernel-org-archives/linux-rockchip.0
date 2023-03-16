Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C620C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Mar 2023 14:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2i0OLwtB4uzpQ3dsj0yZFqOncjl20bCW38+gGpNXIxY=; b=AvrsKvonEMf1na
	XPJPjCnNdPcmb6SFWHq+CwVh5D19uuEXGlz6g6QPFmfkQQIxzP+7wPeJTpAn/hsBUAlsKxerYjcTL
	8cWg7QDTLQDbwgLFCJX6wkiy/dIpU9JKUUJZzNyL08JF9ZO+wvfGq4Q7Zp26gXXqCsIzNiybeDBQ3
	7/XPUUi8zy60Yb0rLcrWlOQ7aOAf7KGvBMFfLMGua9v/X4oivGRYAOYg7t//5/UClGcwrX2mFzmqX
	B2rYEO/ekrUYZw9F1kz2BMyLvmB0/3Ov7l64DLdGX4U9WvqWhJKRNt2ruG1hOxt39BR1YwO+kthAL
	FvkHQBFVrJsCA3aDlTBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcoF9-00GdNM-35;
	Thu, 16 Mar 2023 14:06:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcoF2-00GdLe-2T;
	Thu, 16 Mar 2023 14:06:09 +0000
Received: from [62.91.42.93] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pcoEl-0001uw-A0; Thu, 16 Mar 2023 15:05:47 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com, airlied@gmail.com, daniel@ffwll.ch, nathan@kernel.org,
 ndesaulniers@google.com, michael.riesch@wolfvision.net,
 s.hauer@pengutronix.de, Tom Rix <trix@redhat.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 llvm@lists.linux.dev, Tom Rix <trix@redhat.com>
Subject:  Re: [PATCH] drm/rockchip: vop2: fix uninitialized variable possible_crtcs
Date: Thu, 16 Mar 2023 15:05:46 +0100
Message-ID: <8664878.T7Z3S40VBb@phil>
In-Reply-To: <20230316132302.531724-1-trix@redhat.com>
References: <20230316132302.531724-1-trix@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_070604_825860_8222609F 
X-CRM114-Status: GOOD (  24.06  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Donnerstag, 16. M=E4rz 2023, 14:23:02 CET schrieb Tom Rix:
> clang reportes this error
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2322:8: error:
>   variable 'possible_crtcs' is used uninitialized whenever 'if'
>   condition is false [-Werror,-Wsometimes-uninitialized]
>                         if (vp) {
>                             ^~
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2336:36: note:
>   uninitialized use occurs here
>                 ret =3D vop2_plane_init(vop2, win, possible_crtcs);
>                                                  ^~~~~~~~~~~~~~
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2322:4:
>   note: remove the 'if' if its condition is always true
>                         if (vp) {
>                         ^~~~~~~~
> =

> The else-statement changes the win->type to OVERLAY without setting the
> possible_crtcs variable.  Rework the block, initialize possible_crtcs to
> 0 to remove the else-statement.  Split the else-if-statement out to its
> own if-statement so the OVERLAY check will catch when the win-type has
> been changed.
> =

> Fixes: 368419a2d429 ("drm/rockchip: vop2: initialize possible_crtcs prope=
rly")
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/d=
rm/rockchip/rockchip_drm_vop2.c
> index 03ca32cd2050..fce992c3506f 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -2301,7 +2301,7 @@ static int vop2_create_crtcs(struct vop2 *vop2)
>  	nvp =3D 0;
>  	for (i =3D 0; i < vop2->registered_num_wins; i++) {
>  		struct vop2_win *win =3D &vop2->win[i];
> -		u32 possible_crtcs;
> +		u32 possible_crtcs =3D 0;
>  =

>  		if (vop2->data->soc_id =3D=3D 3566) {
>  			/*
> @@ -2327,12 +2327,11 @@ static int vop2_create_crtcs(struct vop2 *vop2)
>  				/* change the unused primary window to overlay window */
>  				win->type =3D DRM_PLANE_TYPE_OVERLAY;
>  			}
> -		} else if (win->type =3D=3D DRM_PLANE_TYPE_OVERLAY) {
> -			possible_crtcs =3D (1 << nvps) - 1;
> -		} else {
> -			possible_crtcs =3D 0;
>  		}
>  =

> +		if (win->type =3D=3D DRM_PLANE_TYPE_OVERLAY)
> +			possible_crtcs =3D (1 << nvps) - 1;
> +

After a long hard stare at the code in question, I think doing it this
way looks like the correct one, as as you mention in the commit message
the first "if" will change the win->type to OVERLAY in one case, but this
then will never be added.

Michael, do you agree/disagree?


Thanks
Heiko

https://lore.kernel.org/r/20230315090158.2442771-1-michael.riesch@wolfvisio=
n.net

>  		ret =3D vop2_plane_init(vop2, win, possible_crtcs);
>  		if (ret) {
>  			drm_err(vop2->drm, "failed to init plane %s: %d\n",
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
