Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10AEFC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Oct 2022 08:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=riefwdIwIKLCB209yIRhr+BJedy+MOO1Uq6qLM7G6D0=; b=nBU6mEAlwgH/1N
	3sp7usHM3cLvLSt1FfPLyY/Lq6zNTR3z6e8718BI3nrjlyd+rDSGiVbXxlPBeCJipmtkZK3HiuHWE
	8uC82fywBQuGeSd030B8MFV7A32AP+ZfHWvHL7P5yvSTxmXQkQEFe3a1uv4xQRhi+qcN3KnHF9vRj
	KCuo1Za4CgyIFP+HRCfyDmBiJsLMB98RHY3P/FJDtoyOYz+GkkkUCr4Qs1FoBpm69VyOc0t3MtHN3
	pPWIiQonQZI0baUIdjp8YpPsvgh1Sv2qTmgmXNm0FoJ1EI1pL8GFNJYjA44kjfKqnu3VG8q0giOZj
	H+ZxbZo3vDV7asz/WXhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okLE0-008xOF-B4; Mon, 17 Oct 2022 08:11:52 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okLDl-008xCV-9N; Mon, 17 Oct 2022 08:11:39 +0000
Received: by mail-ej1-x62d.google.com with SMTP id k2so23095829ejr.2;
        Mon, 17 Oct 2022 01:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wCERGaQn7sjZRAiLYlbvnzUIl4AHNnyqwlHd1RuDioQ=;
        b=ebfNfbg/W10vicSUwq/67IqLltrFq1THY9oomsXeJO97fnwNAsdl4FFdJCRp1cKnc6
         MTFCjv6GfMHxKRfCH/aqq3cVI0hLxjTm6RlbWrHkUrT/z9HAnMKEj0P8XXLFqJi+xZ4y
         mcf6dr0FHBuSsl38QsL9Bc7hGSoOXP3T8grkoGVU68raeWup7lihhD6dALHo7nnlCZFd
         pCz1is7qCsrmY2SnVEK8QEw6czKEgIoEWOeW8gFfQFgudP45VWNOuPD8EYrERYGKbMo2
         kHGL6xnWDOTC2+waLJQK9EeiPM9dbGj5BoNYJQ+yAgkcm7YNVMYfNGxtyInBsTzKGK89
         6VgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wCERGaQn7sjZRAiLYlbvnzUIl4AHNnyqwlHd1RuDioQ=;
        b=kBVASZkjN2BH9mwywjHxbI7MGnqmGs6CVB9J+vVeRiH+mVbWdo/Ca9V3NFGukcAy8L
         hXwX3ohXRQe7SsSiQ9UO+L0bx7T0/oMMFYSA+IWpthLTcDnCsNX4IFtgpuktblCDHati
         qCI3fj0V403Bu4fLqKfnaGI8ZW/I3hKvX+VO1jHiJR5yHwNM5J4qrAYJJsKHy75lbcx3
         zLnbYS6hSwuOpIu9yjbOMUtuJ6NhEtv+nbRq5Xe+gXF4GT/nlF0O3EjxAgvGqeT7Jc1y
         jbm04mB1jdEj2Mx5R3qYN1nKkj2+k82sVu531EnBeoSxdrcAW169R9xJmnatEy/i9E9O
         TaaA==
X-Gm-Message-State: ACrzQf08+dVcgNaDmqGOc6qMn6VLKYe5GceWFQrakAhaZzrNZpAZr0r/
	UF2QX8ZWrlFOjoWfNA5S2u7MQJBHkKk=
X-Google-Smtp-Source: AMsMyM5AU5ACskMOANt1L8uAK5ExW1d8iSUY6sFW50PairYWGw76mhWyDDrr0+oi+gGLvSWfm0wXKQ==
X-Received: by 2002:a17:906:ee8e:b0:730:3646:d178 with SMTP id wt14-20020a170906ee8e00b007303646d178mr7754318ejb.426.1665994294538;
        Mon, 17 Oct 2022 01:11:34 -0700 (PDT)
Received: from [192.168.2.4] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id r17-20020a170906351100b0078d4962a46bsm5649926eja.190.2022.10.17.01.11.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 01:11:34 -0700 (PDT)
Message-ID: <d814394b-86c3-beb1-ddd4-04c65004f138@gmail.com>
Date: Mon, 17 Oct 2022 10:11:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: [BUG] [PATCH] drm/rockchip: use generic fbdev setup
Content-Language: en-US
To: John Keeping <john@metanate.com>, dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20211029115014.264084-1-john@metanate.com>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20211029115014.264084-1-john@metanate.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_011137_404412_392CC4B1 
X-CRM114-Status: GOOD (  28.94  )
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

Hi John,

Your patch contribution causes a kernel panic on MK808 with Rockchip rk3066a SoC.
Would you like to contribute to fix this issue?
The assumtion that drm_fbdev_generic_setup() does what rockchip_drm_fbdev_init did is not true!
A revert makes it work again.

Johan

======

[    7.975906] ------------[ cut here ]------------
[    7.975929] WARNING: CPU: 0 PID: 35 at drivers/gpu/drm/drm_fb_helper.c:471 drm_fb_helper_damage_work+0x138/0x3b4
[    7.976044] rockchip-drm display-subsystem: Damage blitter failed: ret=-12
[    7.976064] Modules linked in:
[    7.976090] CPU: 0 PID: 35 Comm: kworker/0:4 Not tainted 6.0.0-next-20221013 #1
[    7.976126] Hardware name: Rockchip (Device Tree)
[    7.976145] Workqueue: events drm_fb_helper_damage_work
[    7.976196] Backtrace: 
[    7.976214]  dump_backtrace from show_stack+0x20/0x24
[    7.976276]  r7:000001d7 r6:00000009 r5:c0b2bc78 r4:60000013
[    7.976289]  show_stack from dump_stack_lvl+0x48/0x54
[    7.976357]  dump_stack_lvl from dump_stack+0x18/0x1c
[    7.976426]  r5:c0586054 r4:c0b63750
[    7.976436]  dump_stack from __warn+0xdc/0x154
[    7.976525]  __warn from warn_slowpath_fmt+0xa4/0xd8
[    7.976588]  r7:000001d7 r6:c0b63750 r5:c1004ec8 r4:c0b639ec
[    7.976598]  warn_slowpath_fmt from drm_fb_helper_damage_work+0x138/0x3b4
[    7.976670]  r9:ef7cf105 r8:c15dfc00 r7:fffffff4 r6:c200a590 r5:c1004ec8 r4:c200a594
[    7.976681]  drm_fb_helper_damage_work from process_one_work+0x230/0x518
[    7.976761]  r10:c110d140 r9:ef7cf105 r8:00000000 r7:ef7cf100 r6:ef7cbf00 r5:c200f300
[    7.976775]  r4:c200a594
[    7.976785]  process_one_work from worker_thread+0x54/0x554
[    7.976841]  r10:ef7cbf00 r9:00000008 r8:c1003d40 r7:ef7cbf1c r6:c200f318 r5:ef7cbf00
[    7.976855]  r4:c200f300
[    7.976864]  worker_thread from kthread+0xe8/0x104
[    7.976948]  r10:f0929e84 r9:c200ea40 r8:c169aa80 r7:c200f300 r6:c01419e4 r5:00000000
[    7.976962]  r4:c200e800
[    7.976971]  kthread from ret_from_fork+0x14/0x2c
[    7.977026] Exception stack(0xf092dfb0 to 0xf092dff8)
[    7.977052] dfa0:                                     00000000 00000000 00000000 00000000
[    7.977078] dfc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    7.977100] dfe0: 00000000 00000000 00000000 00000000 00000013 00000000
[    7.977128]  r10:00000000 r9:00000000 r8:00000000 r7:00000000 r6:00000000 r5:c01491a8
[    7.977144]  r4:c200e800 r3:00000001
[    7.977155] ---[ end trace 0000000000000000 ]---

On 10/29/21 13:50, John Keeping wrote:
> The Rockchip fbdev code does not add anything compared to
> drm_fbdev_generic_setup(); the one custom function for .fb_mmap does the
> same thing as gem_prime_mmap which is called by the helper.
> 
> Signed-off-by: John Keeping <john@metanate.com>
> ---
>  drivers/gpu/drm/rockchip/Makefile             |   1 -
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |  10 +-
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |   2 -
>  drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c | 164 ------------------
>  drivers/gpu/drm/rockchip/rockchip_drm_fbdev.h |  24 ---
>  5 files changed, 2 insertions(+), 199 deletions(-)
>  delete mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
>  delete mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.h
> 
> diff --git a/drivers/gpu/drm/rockchip/Makefile b/drivers/gpu/drm/rockchip/Makefile
> index 17a9e7eb2130..1a56f696558c 100644
> --- a/drivers/gpu/drm/rockchip/Makefile
> +++ b/drivers/gpu/drm/rockchip/Makefile
> @@ -5,7 +5,6 @@
>  
>  rockchipdrm-y := rockchip_drm_drv.o rockchip_drm_fb.o \
>  		rockchip_drm_gem.o rockchip_drm_vop.o rockchip_vop_reg.o
> -rockchipdrm-$(CONFIG_DRM_FBDEV_EMULATION) += rockchip_drm_fbdev.o
>  
>  rockchipdrm-$(CONFIG_ROCKCHIP_ANALOGIX_DP) += analogix_dp-rockchip.o
>  rockchipdrm-$(CONFIG_ROCKCHIP_CDN_DP) += cdn-dp-core.o cdn-dp-reg.o
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> index 69c699459dce..20d81ae69828 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -26,7 +26,6 @@
>  
>  #include "rockchip_drm_drv.h"
>  #include "rockchip_drm_fb.h"
> -#include "rockchip_drm_fbdev.h"
>  #include "rockchip_drm_gem.h"
>  
>  #define DRIVER_NAME	"rockchip"
> @@ -159,10 +158,6 @@ static int rockchip_drm_bind(struct device *dev)
>  
>  	drm_mode_config_reset(drm_dev);
>  
> -	ret = rockchip_drm_fbdev_init(drm_dev);
> -	if (ret)
> -		goto err_unbind_all;
> -
>  	/* init kms poll for handling hpd */
>  	drm_kms_helper_poll_init(drm_dev);
>  
> @@ -170,10 +165,11 @@ static int rockchip_drm_bind(struct device *dev)
>  	if (ret)
>  		goto err_kms_helper_poll_fini;
>  
> +	drm_fbdev_generic_setup(drm_dev, 32);
> +
>  	return 0;
>  err_kms_helper_poll_fini:
>  	drm_kms_helper_poll_fini(drm_dev);
> -	rockchip_drm_fbdev_fini(drm_dev);
>  err_unbind_all:
>  	component_unbind_all(dev, drm_dev);
>  err_iommu_cleanup:
> @@ -189,7 +185,6 @@ static void rockchip_drm_unbind(struct device *dev)
>  
>  	drm_dev_unregister(drm_dev);
>  
> -	rockchip_drm_fbdev_fini(drm_dev);
>  	drm_kms_helper_poll_fini(drm_dev);
>  
>  	drm_atomic_helper_shutdown(drm_dev);
> @@ -203,7 +198,6 @@ DEFINE_DRM_GEM_FOPS(rockchip_drm_driver_fops);
>  
>  static const struct drm_driver rockchip_drm_driver = {
>  	.driver_features	= DRIVER_MODESET | DRIVER_GEM | DRIVER_ATOMIC,
> -	.lastclose		= drm_fb_helper_lastclose,
>  	.dumb_create		= rockchip_gem_dumb_create,
>  	.prime_handle_to_fd	= drm_gem_prime_handle_to_fd,
>  	.prime_fd_to_handle	= drm_gem_prime_fd_to_handle,
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
> index aa0909e8edf9..143a48330f84 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
> @@ -43,8 +43,6 @@ struct rockchip_crtc_state {
>   * @mm_lock: protect drm_mm on multi-threads.
>   */
>  struct rockchip_drm_private {
> -	struct drm_fb_helper fbdev_helper;
> -	struct drm_gem_object *fbdev_bo;
>  	struct iommu_domain *domain;
>  	struct mutex mm_lock;
>  	struct drm_mm mm;
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
> deleted file mode 100644
> index d8418dd39d0e..000000000000
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
> +++ /dev/null
> @@ -1,164 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0-only
> -/*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> - * Author:Mark Yao <mark.yao@rock-chips.com>
> - */
> -
> -#include <drm/drm.h>
> -#include <drm/drm_fb_helper.h>
> -#include <drm/drm_fourcc.h>
> -#include <drm/drm_prime.h>
> -#include <drm/drm_probe_helper.h>
> -
> -#include "rockchip_drm_drv.h"
> -#include "rockchip_drm_gem.h"
> -#include "rockchip_drm_fb.h"
> -#include "rockchip_drm_fbdev.h"
> -
> -#define PREFERRED_BPP		32
> -#define to_drm_private(x) \
> -		container_of(x, struct rockchip_drm_private, fbdev_helper)
> -
> -static int rockchip_fbdev_mmap(struct fb_info *info,
> -			       struct vm_area_struct *vma)
> -{
> -	struct drm_fb_helper *helper = info->par;
> -	struct rockchip_drm_private *private = to_drm_private(helper);
> -
> -	return drm_gem_prime_mmap(private->fbdev_bo, vma);
> -}
> -
> -static const struct fb_ops rockchip_drm_fbdev_ops = {
> -	.owner		= THIS_MODULE,
> -	DRM_FB_HELPER_DEFAULT_OPS,
> -	.fb_mmap	= rockchip_fbdev_mmap,
> -	.fb_fillrect	= drm_fb_helper_cfb_fillrect,
> -	.fb_copyarea	= drm_fb_helper_cfb_copyarea,
> -	.fb_imageblit	= drm_fb_helper_cfb_imageblit,
> -};
> -
> -static int rockchip_drm_fbdev_create(struct drm_fb_helper *helper,
> -				     struct drm_fb_helper_surface_size *sizes)
> -{
> -	struct rockchip_drm_private *private = to_drm_private(helper);
> -	struct drm_mode_fb_cmd2 mode_cmd = { 0 };
> -	struct drm_device *dev = helper->dev;
> -	struct rockchip_gem_object *rk_obj;
> -	struct drm_framebuffer *fb;
> -	unsigned int bytes_per_pixel;
> -	unsigned long offset;
> -	struct fb_info *fbi;
> -	size_t size;
> -	int ret;
> -
> -	bytes_per_pixel = DIV_ROUND_UP(sizes->surface_bpp, 8);
> -
> -	mode_cmd.width = sizes->surface_width;
> -	mode_cmd.height = sizes->surface_height;
> -	mode_cmd.pitches[0] = sizes->surface_width * bytes_per_pixel;
> -	mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
> -		sizes->surface_depth);
> -
> -	size = mode_cmd.pitches[0] * mode_cmd.height;
> -
> -	rk_obj = rockchip_gem_create_object(dev, size, true);
> -	if (IS_ERR(rk_obj))
> -		return -ENOMEM;
> -
> -	private->fbdev_bo = &rk_obj->base;
> -
> -	fbi = drm_fb_helper_alloc_fbi(helper);
> -	if (IS_ERR(fbi)) {
> -		DRM_DEV_ERROR(dev->dev, "Failed to create framebuffer info.\n");
> -		ret = PTR_ERR(fbi);
> -		goto out;
> -	}
> -
> -	helper->fb = rockchip_drm_framebuffer_init(dev, &mode_cmd,
> -						   private->fbdev_bo);
> -	if (IS_ERR(helper->fb)) {
> -		DRM_DEV_ERROR(dev->dev,
> -			      "Failed to allocate DRM framebuffer.\n");
> -		ret = PTR_ERR(helper->fb);
> -		goto out;
> -	}
> -
> -	fbi->fbops = &rockchip_drm_fbdev_ops;
> -
> -	fb = helper->fb;
> -	drm_fb_helper_fill_info(fbi, helper, sizes);
> -
> -	offset = fbi->var.xoffset * bytes_per_pixel;
> -	offset += fbi->var.yoffset * fb->pitches[0];
> -
> -	dev->mode_config.fb_base = 0;
> -	fbi->screen_base = rk_obj->kvaddr + offset;
> -	fbi->screen_size = rk_obj->base.size;
> -	fbi->fix.smem_len = rk_obj->base.size;
> -
> -	DRM_DEBUG_KMS("FB [%dx%d]-%d kvaddr=%p offset=%ld size=%zu\n",
> -		      fb->width, fb->height, fb->format->depth,
> -		      rk_obj->kvaddr,
> -		      offset, size);
> -
> -	return 0;
> -
> -out:
> -	rockchip_gem_free_object(&rk_obj->base);
> -	return ret;
> -}
> -
> -static const struct drm_fb_helper_funcs rockchip_drm_fb_helper_funcs = {
> -	.fb_probe = rockchip_drm_fbdev_create,
> -};
> -
> -int rockchip_drm_fbdev_init(struct drm_device *dev)
> -{
> -	struct rockchip_drm_private *private = dev->dev_private;
> -	struct drm_fb_helper *helper;
> -	int ret;
> -
> -	if (!dev->mode_config.num_crtc || !dev->mode_config.num_connector)
> -		return -EINVAL;
> -
> -	helper = &private->fbdev_helper;
> -
> -	drm_fb_helper_prepare(dev, helper, &rockchip_drm_fb_helper_funcs);
> -
> -	ret = drm_fb_helper_init(dev, helper);
> -	if (ret < 0) {
> -		DRM_DEV_ERROR(dev->dev,
> -			      "Failed to initialize drm fb helper - %d.\n",
> -			      ret);
> -		return ret;
> -	}
> -
> -	ret = drm_fb_helper_initial_config(helper, PREFERRED_BPP);
> -	if (ret < 0) {
> -		DRM_DEV_ERROR(dev->dev,
> -			      "Failed to set initial hw config - %d.\n",
> -			      ret);
> -		goto err_drm_fb_helper_fini;
> -	}
> -
> -	return 0;
> -
> -err_drm_fb_helper_fini:
> -	drm_fb_helper_fini(helper);
> -	return ret;
> -}
> -
> -void rockchip_drm_fbdev_fini(struct drm_device *dev)
> -{
> -	struct rockchip_drm_private *private = dev->dev_private;
> -	struct drm_fb_helper *helper;
> -
> -	helper = &private->fbdev_helper;
> -
> -	drm_fb_helper_unregister_fbi(helper);
> -
> -	if (helper->fb)
> -		drm_framebuffer_put(helper->fb);
> -
> -	drm_fb_helper_fini(helper);
> -}
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.h b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.h
> deleted file mode 100644
> index 5fb7ac2371a8..000000000000
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.h
> +++ /dev/null
> @@ -1,24 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> -/*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> - * Author:Mark Yao <mark.yao@rock-chips.com>
> - */
> -
> -#ifndef _ROCKCHIP_DRM_FBDEV_H
> -#define _ROCKCHIP_DRM_FBDEV_H
> -
> -#ifdef CONFIG_DRM_FBDEV_EMULATION
> -int rockchip_drm_fbdev_init(struct drm_device *dev);
> -void rockchip_drm_fbdev_fini(struct drm_device *dev);
> -#else
> -static inline int rockchip_drm_fbdev_init(struct drm_device *dev)
> -{
> -	return 0;
> -}
> -
> -static inline void rockchip_drm_fbdev_fini(struct drm_device *dev)
> -{
> -}
> -#endif
> -
> -#endif /* _ROCKCHIP_DRM_FBDEV_H */

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
