Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ECC0C54EBE
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 20:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ejQbx99meTsepxXgF9gbUcOyUQb0/pkqec1BwMD6B3Q=; b=TWxwwi1gYfDfFF
	r86HSXIDaIup3/SJ+GGBqWt1kTW/Q8Y/A9Og3ha19qwJFqYTJdhRlA77NNWw57DmJFYNLZ8ADedjJ
	xBF66LMcQKiPWA+BlMfcpSZaJy8CmwzgQJZNPMjk+ks+yCJebPpmRKksaE5XPHamgRJczi025kLRv
	01S29efFx5U81Rqiw6AmlH4o6NlKtqBgRLvnqCL5xjc5Au/iFokGV99NPoYUGU+Hnv8k/8T8kqgIZ
	tmDEnKWEPL3aviTMtnwmKaA3ry2oalpKl/RtFKKrKJITQ5BESucIaH5fH7OUgy+t3lZwyLMKwYBzV
	5jxpkfMKNlPcKBr9+OXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHVtr-00BwzT-7X; Mon, 16 Jan 2023 20:16:11 +0000
Received: from mailrelay1-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:400::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHVtf-00Bwxz-Jv
	for linux-rockchip@lists.infradead.org; Mon, 16 Jan 2023 20:16:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=qWZKxlX4KW/JmPpNe4hoOYISYsciP5gHQlpn+CvfXf8=;
	b=kt2RebpVMaIBssccQkMEgek+nwW85G6J0siMHGZ1qETVQeJlMBKmjG0mlVm3r7ePnu8jfPm81ygq7
	 Mz8rQydCpwnm7+yWjbjNIN/fzDJe5WsKcBoAUsBadcQc0vOYb6T41tQjEeU/05VcOGjEkJnNNqYFDv
	 W6Hs6b61sUUwtJAeXWksNEBFK4Y9hM1amCX4haYovx3yLNNcTv+aB4AWsRcwfANqGXT1LV3gcWRrqV
	 ROUTznYXXwPl8HONFIMoZCbhWD4ezvanZv5cXNNxoJUbsVJ4K/EAnSMi/8BPSb4nuXYYFMXiL4SyAH
	 nCwGrMJpVzOvZphymhAQroedp3D9X1Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=qWZKxlX4KW/JmPpNe4hoOYISYsciP5gHQlpn+CvfXf8=;
	b=xE4aoD0tRO5MstpdlKpx4S2jKlZCleYS/37b6LqWjWapIOw44SoqoiaLAWrBeI0WODd2oUSv6O6cJ
	 cNcxfeJCQ==
X-HalOne-ID: 90146bb7-95da-11ed-afa2-11abd97b9443
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay1 (Halon) with ESMTPSA
	id 90146bb7-95da-11ed-afa2-11abd97b9443;
	Mon, 16 Jan 2023 20:15:49 +0000 (UTC)
Date: Mon, 16 Jan 2023 21:15:47 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: daniel@ffwll.ch, airlied@gmail.com, dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org, linux-aspeed@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
	nouveau@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 02/22] drm: Remove unnecessary include statements for
 drm_crtc_helper.h
Message-ID: <Y8Wwcy3LuknhDQz1@ravnborg.org>
References: <20230116131235.18917-1-tzimmermann@suse.de>
 <20230116131235.18917-3-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230116131235.18917-3-tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_121601_004134_8CF1E5B8 
X-CRM114-Status: GOOD (  16.49  )
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

Hi Thomas.

On Mon, Jan 16, 2023 at 02:12:15PM +0100, Thomas Zimmermann wrote:
> Several DRM core and helper source files include drm_crtc_helper.h
> without needing it or only to get its transitive include statements;
> leading to unnecessary compile-time dependencies.
> 
> Directly include required headers and drop drm_crtc_helper.h where
> possible. The header file, drm_fixed.h, includes <linux/kernel.h>
> for lower_32_bits().
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/drm_crtc_helper.c  | 1 -
>  drivers/gpu/drm/drm_lease.c        | 2 +-
>  drivers/gpu/drm/drm_plane_helper.c | 1 -
>  include/drm/drm_fixed.h            | 1 +
>  4 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_crtc_helper.c b/drivers/gpu/drm/drm_crtc_helper.c
> index a209659a996c..e7a23e18140c 100644
> --- a/drivers/gpu/drm/drm_crtc_helper.c
> +++ b/drivers/gpu/drm/drm_crtc_helper.c
> @@ -39,7 +39,6 @@
>  #include <drm/drm_atomic_uapi.h>
>  #include <drm/drm_bridge.h>
>  #include <drm/drm_crtc.h>
> -#include <drm/drm_crtc_helper.h>

drm_crtc_helper.c may not require drm/drm_crtc_helper.h, but it should
include it so we get a warning in case there is a mismatch between the
header file and the implementation.
I think sparse would also complain that the function is not declared
or something like that.

With this fixed:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

>  #include <drm/drm_drv.h>
>  #include <drm/drm_edid.h>
>  #include <drm/drm_encoder.h>
> diff --git a/drivers/gpu/drm/drm_lease.c b/drivers/gpu/drm/drm_lease.c
> index 08ab75303a00..150fe1555068 100644
> --- a/drivers/gpu/drm/drm_lease.c
> +++ b/drivers/gpu/drm/drm_lease.c
> @@ -6,7 +6,7 @@
>  #include <linux/uaccess.h>
>  
>  #include <drm/drm_auth.h>
> -#include <drm/drm_crtc_helper.h>
> +#include <drm/drm_crtc.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_file.h>
>  #include <drm/drm_lease.h>
> diff --git a/drivers/gpu/drm/drm_plane_helper.c b/drivers/gpu/drm/drm_plane_helper.c
> index ba6a9136a065..c91e454eba09 100644
> --- a/drivers/gpu/drm/drm_plane_helper.c
> +++ b/drivers/gpu/drm/drm_plane_helper.c
> @@ -28,7 +28,6 @@
>  #include <drm/drm_atomic.h>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_atomic_uapi.h>
> -#include <drm/drm_crtc_helper.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_encoder.h>
> diff --git a/include/drm/drm_fixed.h b/include/drm/drm_fixed.h
> index 553210c02ee0..255645c1f9a8 100644
> --- a/include/drm/drm_fixed.h
> +++ b/include/drm/drm_fixed.h
> @@ -25,6 +25,7 @@
>  #ifndef DRM_FIXED_H
>  #define DRM_FIXED_H
>  
> +#include <linux/kernel.h>
>  #include <linux/math64.h>
>  
>  typedef union dfixed {
> -- 
> 2.39.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
