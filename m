Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86A76C43217
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Oct 2022 09:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XiYl5AGR3kW94HlPe/8dt6hgWWjxnyKzondBRE47bTs=; b=Pfp2jdzi3iPyGf
	X7n7+80egFopfLPbSpa9kDsEJNAW558LG2gYyviWQw283vIVclxCMId865tHmeenRVUaWNmCIcZDJ
	ZqEWbuhA2ntVvUzP2/bhhXrayWr3jVT9uwjHdS0dTX9g2azXC1n+mdoI04JdaGLsOgGH+R8m3Vokn
	kAX2iUFz+r7HxVIdMFrasC4oJELY8Oi5XaqhxfOkrkR4x5Nww7we25an1WQX63UOpKhkoizUHuswJ
	Bkhq4yc1HRxgnAMZKgsiFjTVkY/+K3gxfq8C+3PFbSfPTNL+A0YHPvBNPaH7hqFp1/0/5aJvC4j1F
	wP3vT8UvwRGhHugTulIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olS1e-00D4sm-Ko; Thu, 20 Oct 2022 09:39:42 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olRtJ-00CzE6-GS; Thu, 20 Oct 2022 09:31:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=metanate.com; s=stronger; h=In-Reply-To:Content-Type:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description; bh=IqJ+PXWSgAwEtUKSxNWOIpPEVROLORYHEj928+nb8F0=; b=mA+cP
	1Th1gRoOUnc4A4HI5zcTh4Qmq14q9vYCyFAGndWmeeQF9c9tbs283dNbMo0vOcljn/PaCnsvgCavd
	Vb8bmLkUYczh77aCyJg6rCfkx8Q9wRveH3TF1HvI901VLgXuPlqw+AUF0TzoAegl9NXlDhSjckzJ4
	5ttxSjMy7IP0T5Yev8vyLDqli4wYJjnEx7SgOCAfC4mjZOjCKK5ArFSKM0+rSkl/TJs8ISnQTB2L9
	/vE6Wjr4vroB/s0cEnBGdBnPG/SH+C1XP071rXyKgfA9Kxedl0CvfVp0r4N8drQEwpPEeMTRqlZ+8
	uv0pOaaQ80h5yWNhw75uke7Yy7t+A==;
Received: from [81.174.171.191] (helo=donbot)
	by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <john@metanate.com>)
	id 1olRt2-0007uq-8e;
	Thu, 20 Oct 2022 10:30:49 +0100
Date: Thu, 20 Oct 2022 10:30:48 +0100
From: John Keeping <john@metanate.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, airlied@gmail.com, daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] drm: rockchip: remove rockchip_drm_framebuffer_init()
 function
Message-ID: <Y1EVSNa6bkh5JCLV@donbot>
References: <ebe91504-c5df-99e4-635f-832218584051@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ebe91504-c5df-99e4-635f-832218584051@gmail.com>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_023106_165835_464010D7 
X-CRM114-Status: GOOD (  19.46  )
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

On Wed, Oct 19, 2022 at 11:35:03PM +0200, Johan Jonker wrote:
> The function rockchip_drm_framebuffer_init() was in use
> in the rockchip_drm_fbdev.c file, but that is now replaced
> by a generic fbdev setup. Reduce the image size by
> removing the rockchip_drm_framebuffer_init() and sub function
> rockchip_fb_alloc() and cleanup the rockchip_drm_fb.h header file.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Reviewed-by: John Keeping <john@metanate.com>

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 43 ----------------------
>  drivers/gpu/drm/rockchip/rockchip_drm_fb.h |  6 ---
>  2 files changed, 49 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> index 092bf863110b..409eaa1bf092 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> @@ -25,35 +25,6 @@ static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
>  	.dirty	       = drm_atomic_helper_dirtyfb,
>  };
>  
> -static struct drm_framebuffer *
> -rockchip_fb_alloc(struct drm_device *dev, const struct drm_mode_fb_cmd2 *mode_cmd,
> -		  struct drm_gem_object **obj, unsigned int num_planes)
> -{
> -	struct drm_framebuffer *fb;
> -	int ret;
> -	int i;
> -
> -	fb = kzalloc(sizeof(*fb), GFP_KERNEL);
> -	if (!fb)
> -		return ERR_PTR(-ENOMEM);
> -
> -	drm_helper_mode_fill_fb_struct(dev, fb, mode_cmd);
> -
> -	for (i = 0; i < num_planes; i++)
> -		fb->obj[i] = obj[i];
> -
> -	ret = drm_framebuffer_init(dev, fb, &rockchip_drm_fb_funcs);
> -	if (ret) {
> -		DRM_DEV_ERROR(dev->dev,
> -			      "Failed to initialize framebuffer: %d\n",
> -			      ret);
> -		kfree(fb);
> -		return ERR_PTR(ret);
> -	}
> -
> -	return fb;
> -}
> -
>  static const struct drm_mode_config_helper_funcs rockchip_mode_config_helpers = {
>  	.atomic_commit_tail = drm_atomic_helper_commit_tail_rpm,
>  };
> @@ -106,20 +77,6 @@ static const struct drm_mode_config_funcs rockchip_drm_mode_config_funcs = {
>  	.atomic_commit = drm_atomic_helper_commit,
>  };
>  
> -struct drm_framebuffer *
> -rockchip_drm_framebuffer_init(struct drm_device *dev,
> -			      const struct drm_mode_fb_cmd2 *mode_cmd,
> -			      struct drm_gem_object *obj)
> -{
> -	struct drm_framebuffer *fb;
> -
> -	fb = rockchip_fb_alloc(dev, mode_cmd, &obj, 1);
> -	if (IS_ERR(fb))
> -		return ERR_CAST(fb);
> -
> -	return fb;
> -}
> -
>  void rockchip_drm_mode_config_init(struct drm_device *dev)
>  {
>  	dev->mode_config.min_width = 0;
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.h b/drivers/gpu/drm/rockchip/rockchip_drm_fb.h
> index 1a696521096d..bae4e079dfb1 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.h
> @@ -7,11 +7,5 @@
>  #ifndef _ROCKCHIP_DRM_FB_H
>  #define _ROCKCHIP_DRM_FB_H
>  
> -struct drm_framebuffer *
> -rockchip_drm_framebuffer_init(struct drm_device *dev,
> -			      const struct drm_mode_fb_cmd2 *mode_cmd,
> -			      struct drm_gem_object *obj);
> -void rockchip_drm_framebuffer_fini(struct drm_framebuffer *fb);
> -
>  void rockchip_drm_mode_config_init(struct drm_device *dev);
>  #endif /* _ROCKCHIP_DRM_FB_H */
> -- 
> 2.20.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
