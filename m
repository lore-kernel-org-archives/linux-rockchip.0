Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E7A5C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Mar 2023 16:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLzj0biRAu8llc90PPgc/6SxE9Wdcb3nfsWf/l5sYqI=; b=gcyxM7oXtLFfWt
	/25O+znXDoJPJ/DNeNZM7SHAeUI/C0k/uABJib6lgs8++ycWJbxZJmXe8yAqmTHTEzWth8RvF49Ys
	Ia86Szz640myMexrOo8Ntp5pptJt0M8Roha20692kTCzK4yXnfntZe2IxPtxvFaTqfhNY3GbRY2yr
	a6sX/08XyZv3D2HgzLQqjgqE7Oe6f4qSlZV7vANIz7fe2RpQrc4ihXqL2kUEr2voC0fiD8u4G9QNJ
	AA6LBzzQRYs+xKXrpjT5JfQfExtzYiCSBEeGk+MVEKbRqo4goFRFqdHN+Tzkxic7QlxxbrXuEsNSr
	gYrHt5VPXfpthNBe/fUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc7CT-00AkQ1-03;
	Tue, 14 Mar 2023 16:08:33 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc7CN-00AkO2-2G;
	Tue, 14 Mar 2023 16:08:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id EE023B81A1F;
	Tue, 14 Mar 2023 16:08:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F2D7C4339B;
	Tue, 14 Mar 2023 16:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678810104;
	bh=wA9DCnSggZ7AMT9yojgtSsTiqRDWjhLpUyEUud8IvmE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dAbWryZpUw6TZWSzeXV/L6G7XErOuD5W4Xe6WLiyuLNeL5oEXrwhuvOWjDanp/69q
	 hgoQeZ5BmogcMEB440DbybHqh9Egk7TDdok25Z9tVdHbNLFe3es76W8aPjqv6FZ0wq
	 kUmqHRPOsl67nHr1DQqXGxnXQcqheiprkRAhmfm6xlwY6nN/6z4kGsPjPhaACjCjHk
	 cbEtMPzPOssPONhgcuAWztD9X5JkNuK+AN/wX3wPmtVss/ayeNF1dBIqjd8YBZoe+k
	 BdIy+OoFmSKUHA0dV4YWkvvGdkLgebsG+aJ8geyRfS4suXrOTRHAlII9BwhvPH6i+o
	 sBBgS3bHSLV9g==
Date: Tue, 14 Mar 2023 09:08:21 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Sascha Hauer <sha@pengutronix.de>,
	kernel test robot <lkp@intel.com>,
	Dan Carpenter <error27@gmail.com>, llvm@lists.linux.dev
Subject: Re: [PATCH v3 1/6] drm/rockchip: vop2: initialize possible_crtcs
 properly
Message-ID: <20230314160821.GA13416@dev-arch.thelio-3990X>
References: <20230124054706.3921383-1-michael.riesch@wolfvision.net>
 <20230124054706.3921383-2-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230124054706.3921383-2-michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_090828_028951_79590039 
X-CRM114-Status: GOOD (  27.27  )
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

Hi Michael,

On Tue, Jan 24, 2023 at 06:47:01AM +0100, Michael Riesch wrote:
> The variable possible_crtcs is only initialized for primary and
> overlay planes. Since the VOP2 driver only supports these plane
> types at the moment, the current code is safe. However, in order
> to provide a future-proof solution, fix the initialization of
> the variable.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <error27@gmail.com>
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
> v3:
>  - no changes
> v2:
>  - new patch
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 8cecf81a5ae0..374ef821b453 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -2322,10 +2322,11 @@ static int vop2_create_crtc(struct vop2 *vop2)
>  				/* change the unused primary window to overlay window */
>  				win->type = DRM_PLANE_TYPE_OVERLAY;
>  			}
> -		}
> -
> -		if (win->type == DRM_PLANE_TYPE_OVERLAY)
> +		} else if (win->type == DRM_PLANE_TYPE_OVERLAY) {
>  			possible_crtcs = (1 << nvps) - 1;
> +		} else {
> +			possible_crtcs = 0;
> +		}
>  
>  		ret = vop2_plane_init(vop2, win, possible_crtcs);
>  		if (ret) {
> -- 
> 2.30.2
> 

This patch is now in -next as commit 368419a2d429 ("drm/rockchip: vop2:
initialize possible_crtcs properly") and it actually appears to
introduce a path where possible_crtcs could be used uninitialized.

  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2316:8: error: variable 'possible_crtcs' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
                          if (vp) {
                              ^~
  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2330:36: note: uninitialized use occurs here
                  ret = vop2_plane_init(vop2, win, possible_crtcs);
                                                   ^~~~~~~~~~~~~~
  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2316:4: note: remove the 'if' if its condition is always true
                          if (vp) {
                          ^~~~~~~~
  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2298:21: note: initialize the variable 'possible_crtcs' to silence this warning
                  u32 possible_crtcs;
                                    ^
                                     = 0
  1 error generated.

Prior to this change, if that else path was hit, clang recognized based on
the assignment that the next if statement would always be true. Now, if
the else path is taken, the possible_crtcs assignment will be missed. Is
that intentional?

Cheers,
Nathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
