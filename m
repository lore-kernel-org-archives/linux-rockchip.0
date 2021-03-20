Return-Path: <SRS0=95DY=IS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBA2C433DB
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Mar 2021 00:21:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D278361983
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Mar 2021 00:21:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D278361983
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X5c9NS8E0p5cb0i7k3r0SbAy0sKYjBBSUXdEimtOv0s=; b=Cu2Y6oHkS5Dhmz5EX0aUsI8Bd
	zT8x2F17G0ssXXgluiSZhtLdbCtcVSG6VwBcL93lr+87jH9KyBI8O8t44IqNZpzW13quybdhv5FCb
	XzlQKowGpBR05l5/BPdg5xSjnSzQn25chudJPZu83i/Kbd07FBZfp3DnXG4ufydAdWaxDITcqssPJ
	tKMybV5LRCzikY2329E+afgLzZvRVTKxWIIIiFDixyIibhsef1MJSftUunFe1VR9vd5xnNQacPyhc
	MwafkQ+uFIPIaf+2sz6S1LjGXD7LnBT4VOB19M9n5zes9lEiihaRvk3SX87uP7wEKKhWF7fd2bsrC
	HbQwbKp5g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNPNF-008LrA-Pt; Sat, 20 Mar 2021 00:21:49 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNPN3-008Lpl-Bf; Sat, 20 Mar 2021 00:21:39 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 236598D3;
 Sat, 20 Mar 2021 01:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1616199695;
 bh=YxyYG0rUzewpkZSqO4W7En5pkRKvoNodFD5mlHd1GTk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d7IhFfS2Lv6sm+CBEt1QwgBC8BEsPfNz4YumUCf5tRZ8+by6MAIe0sVm92jSPtaNX
 lL2HCvxfBPZ+fz076pYKZ7nBlZfx6R8xUYp/Ec1dXOsS7MCOPuErg0tLU+d50Upz1a
 p8qQWdOpRX8/WbMPUQ31l4x9DadCoxbOo0Ia8c+A=
Date: Sat, 20 Mar 2021 02:20:56 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Maxime Ripard <maxime@cerno.tech>
Cc: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>,
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH] drm/rockchip: Remove unused variable
Message-ID: <YFU/6Hm1CuVL8MlO@pendragon.ideasonboard.com>
References: <20210319152920.262035-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210319152920.262035-1-maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210320_002137_524876_8AD25479 
X-CRM114-Status: GOOD (  16.54  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Maxime,

Thank you for the patch.

On Fri, Mar 19, 2021 at 04:29:20PM +0100, Maxime Ripard wrote:
> Commit 977697e20b3d ("drm/atomic: Pass the full state to planes atomic
> disable and update") added the old_state variable instead of what used
> to be a parameter, but it also removed the sole user of that variable in
> the vop_plane_atomic_update function leading to an usused variable.
> Remove it.
> 
> Fixes: 977697e20b3d ("drm/atomic: Pass the full state to planes atomic disable and update")
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 81c70d7a0471..64469439ddf2 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -879,8 +879,6 @@ static void vop_plane_atomic_disable(struct drm_plane *plane,
>  static void vop_plane_atomic_update(struct drm_plane *plane,
>  		struct drm_atomic_state *state)
>  {
> -	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
> -									   plane);
>  	struct drm_plane_state *new_state = drm_atomic_get_new_plane_state(state,
>  									   plane);
>  	struct drm_crtc *crtc = new_state->crtc;

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
