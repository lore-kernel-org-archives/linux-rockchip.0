Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE7A0C77B60
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Mar 2023 17:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E31fNpreyqt8bwNlkdsjKRtXGUnztZ+Y0uIv5fv2YNQ=; b=LpP/M7mLoz7H7B
	jHVGXNprwOwYfEqbEhRHk7/BX8E/CkzNk7R0LEH9+dB+Fq/Cc6tkji3VRqEDcrccE82+3vVIF1z4+
	aNLivq0sf7BpENaiUEX21/iaVGY9E/QyeZ3TfiOJf+qUoWB3SdXCHiDuUuZMgaH33J3OKp2uXdeUU
	E96kQK3ugWs9ifGFYvB2NIu4RoJ9ukRMxbISTbpIvRsnv9CFda5zhWFblOANVs55cQhgpGGCMHL/Y
	aEhdJOLWheTKjPzy7qGfOS+ar+wr0y4cMbEinmoAvEOFuzOgucw1EwRVCvKxHWo6cbDqPaZ7zTwoD
	VVpf8XipxoM8a+SMTm9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peIsf-009ubT-38;
	Mon, 20 Mar 2023 17:01:09 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peIsc-009uZM-1I;
	Mon, 20 Mar 2023 17:01:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id E08E9CE136D;
	Mon, 20 Mar 2023 17:01:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E55CC4339B;
	Mon, 20 Mar 2023 17:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679331660;
	bh=KmJ/oFXmAm37DV4SuZPLCkjjERN6TSNmtSmlsR7nsUw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fIUXguaAn3Smfj+ncepg6XqMZ00K09/+L1F6OcxR73uhTMI4IwNFis7TBBuORpYZ7
	 zXkRaVy1XqjoZ2j4yf2QZ8C+zia52EPL9mXanmwlwyhVvaVBv5iq4FJ1UMF7JWOn7I
	 HvB2AHcz8Ux8ZvSgJdJ+BC8a4f6s7qJS9HVmxSCiJ9Ev3hITezvV9J0ibXm8AAzq+k
	 uBuEdW+VDGOPSYJp4N50nky2T/yMqMJOuGv+zrNkH3QDuXm0IWqgZvCzyyiPh+bQBd
	 pWtuiGGmeT5MnBB/4JWqNODCaxI+tAtphC6nYubeDZ4GrhRIKD9vs4m6aq8LMoMuvB
	 /3Qw8n5fFFmLQ==
Date: Mon, 20 Mar 2023 10:00:57 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Tom Rix <trix@redhat.com>
Cc: hjc@rock-chips.com, heiko@sntech.de, airlied@gmail.com, daniel@ffwll.ch,
	ndesaulniers@google.com, michael.riesch@wolfvision.net,
	s.hauer@pengutronix.de, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	llvm@lists.linux.dev
Subject: Re: [PATCH] drm/rockchip: vop2: fix uninitialized variable
 possible_crtcs
Message-ID: <20230320170057.GA592480@dev-arch.thelio-3990X>
References: <20230316132302.531724-1-trix@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230316132302.531724-1-trix@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_100106_871023_115909EF 
X-CRM114-Status: GOOD (  22.74  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Mar 16, 2023 at 09:23:02AM -0400, Tom Rix wrote:
> clang reportes this error
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2322:8: error:
>   variable 'possible_crtcs' is used uninitialized whenever 'if'
>   condition is false [-Werror,-Wsometimes-uninitialized]
>                         if (vp) {
>                             ^~
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2336:36: note:
>   uninitialized use occurs here
>                 ret = vop2_plane_init(vop2, win, possible_crtcs);
>                                                  ^~~~~~~~~~~~~~
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2322:4:
>   note: remove the 'if' if its condition is always true
>                         if (vp) {
>                         ^~~~~~~~
> 
> The else-statement changes the win->type to OVERLAY without setting the
> possible_crtcs variable.  Rework the block, initialize possible_crtcs to
> 0 to remove the else-statement.  Split the else-if-statement out to its
> own if-statement so the OVERLAY check will catch when the win-type has
> been changed.
> 
> Fixes: 368419a2d429 ("drm/rockchip: vop2: initialize possible_crtcs properly")
> Signed-off-by: Tom Rix <trix@redhat.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 03ca32cd2050..fce992c3506f 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -2301,7 +2301,7 @@ static int vop2_create_crtcs(struct vop2 *vop2)
>  	nvp = 0;
>  	for (i = 0; i < vop2->registered_num_wins; i++) {
>  		struct vop2_win *win = &vop2->win[i];
> -		u32 possible_crtcs;
> +		u32 possible_crtcs = 0;
>  
>  		if (vop2->data->soc_id == 3566) {
>  			/*
> @@ -2327,12 +2327,11 @@ static int vop2_create_crtcs(struct vop2 *vop2)
>  				/* change the unused primary window to overlay window */
>  				win->type = DRM_PLANE_TYPE_OVERLAY;
>  			}
> -		} else if (win->type == DRM_PLANE_TYPE_OVERLAY) {
> -			possible_crtcs = (1 << nvps) - 1;
> -		} else {
> -			possible_crtcs = 0;
>  		}
>  
> +		if (win->type == DRM_PLANE_TYPE_OVERLAY)
> +			possible_crtcs = (1 << nvps) - 1;
> +
>  		ret = vop2_plane_init(vop2, win, possible_crtcs);
>  		if (ret) {
>  			drm_err(vop2->drm, "failed to init plane %s: %d\n",
> -- 
> 2.27.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
