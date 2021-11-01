Return-Path: <SRS0=5X13=PU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6460C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Nov 2021 11:34:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9C298610A8
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Nov 2021 11:34:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9C298610A8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=metanate.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JbJvi5DEAu6y5j0ohu7JgUJdzMPkaxAhlbX5x2hxPIA=; b=qw0/+ajmUCGhnG
	5SSgc5kTTONoNU1uF1yWKwR4ZCGGp2HZWgkd9W9wBg1m0ZbgW/R+kTI6l8JrYdkZ4tJhhMbMSosPg
	jYWBhCprAqZa/W9PooBWtknBVXaT7CJ4P7nvw82+Uyso5UNj6SdWi3YCMi4rXd3K0RUGKOLze5+j9
	+jycIVposHUF2l5WlxTxFKFnGVFDwWl669kPBPS2ct7xeAUnsT9BB85+JbqA36Y5AG2Zlcrjsq5qr
	Ddv52i+/qqhQekIHseZgkt0QBhbcZ/OVcGJLH+1FFLJlJEgXVOV9K/5e73ZmlgRmFKTXTdXVTFuiV
	0K1nfEZdAFtSUp1SOBlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhVaL-00G76S-SW; Mon, 01 Nov 2021 11:34:41 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhVa9-00G73w-Cv; Mon, 01 Nov 2021 11:34:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:Content-Type:
 References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID
 :Content-Description; bh=A9I0cE/nnKP+AaM3FVQ+7ss2XCPWFrayxinGdUWg/w4=; b=1Vm8
 feMnTe9gcKLlkTpLM83kWkvoQHg02zTj96kSb2nXQ07lt353zuIa0N7Id6v3LPB5KlA86Ppm816+u
 1hl9zM0zrNhzkD25H6Fln8nob7b/2IlMg/sqtsOXyLY5Ed32vasv7ka1AZBsfLj7TE1lI/QGOo9Pc
 X5huFp7rNatFlSTj+N2kmqh79DYs75g4eR7o8HoGTsbYaglGjZDlBnXFz4KpvoVd8aQek6+/gy8qf
 Ebbc1o5UmIPSnsb77AD50M+AdGnu9KEeiArTfgkWrp0m13TqFrb5yvaWKBUkdLdbrnlgxfZb6XjYk
 dIcWXO5UmdvEwWN77o+HZsYNVI68/g==;
Received: from [81.174.171.191] (helo=donbot)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mhVZw-00072X-C3; Mon, 01 Nov 2021 11:34:16 +0000
Date: Mon, 1 Nov 2021 11:34:15 +0000
From: John Keeping <john@metanate.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, Heiko
 =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>, David Airlie
 <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: use generic fbdev setup
Message-ID: <20211101113415.3bed0f62.john@metanate.com>
In-Reply-To: <6e69f9bb-5a1e-7b79-38e8-d2860e5ee615@suse.de>
References: <20211029115014.264084-1-john@metanate.com>
 <ab7ace79-0148-1efa-ec17-6994bb35fd2f@suse.de>
 <YX01C6l93I2YPgku@donbot>
 <6e69f9bb-5a1e-7b79-38e8-d2860e5ee615@suse.de>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_043429_450106_0695BC12 
X-CRM114-Status: GOOD (  29.23  )
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

On Sun, 31 Oct 2021 19:09:39 +0100
Thomas Zimmermann <tzimmermann@suse.de> wrote:
> Am 30.10.21 um 14:05 schrieb John Keeping:
> > On Fri, Oct 29, 2021 at 09:00:08PM +0200, Thomas Zimmermann wrote:  
> >> Am 29.10.21 um 13:50 schrieb John Keeping:  
> >>> The Rockchip fbdev code does not add anything compared to
> >>> drm_fbdev_generic_setup(); the one custom function for .fb_mmap does the
> >>> same thing as gem_prime_mmap which is called by the helper.
> >>>
> >>> Signed-off-by: John Keeping <john@metanate.com>
> >>> ---
> >>>    drivers/gpu/drm/rockchip/Makefile             |   1 -
> >>>    drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |  10 +-
> >>>    drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |   2 -
> >>>    drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c | 164 ------------------
> >>>    drivers/gpu/drm/rockchip/rockchip_drm_fbdev.h |  24 ---
> >>>    5 files changed, 2 insertions(+), 199 deletions(-)
> >>>    delete mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
> >>>    delete mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.h
> >>>
> >>> diff --git a/drivers/gpu/drm/rockchip/Makefile b/drivers/gpu/drm/rockchip/Makefile
> >>> index 17a9e7eb2130..1a56f696558c 100644
> >>> --- a/drivers/gpu/drm/rockchip/Makefile
> >>> +++ b/drivers/gpu/drm/rockchip/Makefile
> >>> @@ -5,7 +5,6 @@
> >>>    rockchipdrm-y := rockchip_drm_drv.o rockchip_drm_fb.o \
> >>>    		rockchip_drm_gem.o rockchip_drm_vop.o rockchip_vop_reg.o
> >>> -rockchipdrm-$(CONFIG_DRM_FBDEV_EMULATION) += rockchip_drm_fbdev.o
> >>>    rockchipdrm-$(CONFIG_ROCKCHIP_ANALOGIX_DP) += analogix_dp-rockchip.o
> >>>    rockchipdrm-$(CONFIG_ROCKCHIP_CDN_DP) += cdn-dp-core.o cdn-dp-reg.o
> >>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> >>> index 69c699459dce..20d81ae69828 100644
> >>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> >>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> >>> @@ -26,7 +26,6 @@
> >>>    #include "rockchip_drm_drv.h"
> >>>    #include "rockchip_drm_fb.h"
> >>> -#include "rockchip_drm_fbdev.h"
> >>>    #include "rockchip_drm_gem.h"
> >>>    #define DRIVER_NAME	"rockchip"
> >>> @@ -159,10 +158,6 @@ static int rockchip_drm_bind(struct device *dev)
> >>>    	drm_mode_config_reset(drm_dev);
> >>> -	ret = rockchip_drm_fbdev_init(drm_dev);
> >>> -	if (ret)
> >>> -		goto err_unbind_all;
> >>> -
> >>>    	/* init kms poll for handling hpd */
> >>>    	drm_kms_helper_poll_init(drm_dev);
> >>> @@ -170,10 +165,11 @@ static int rockchip_drm_bind(struct device *dev)
> >>>    	if (ret)
> >>>    		goto err_kms_helper_poll_fini;
> >>> +	drm_fbdev_generic_setup(drm_dev, 32);  
> >>
> >> Please pass 0 for the final argument. The fbdev helpers pick 32 by default.
> >> Maybe leave a comment if you require 32 here.  
> > 
> > I wanted to minimise the changes introduced here - passing 32 matches
> > the value passed to drm_fb_helper_initial_config() in the deleted code
> > from rockchip_drm_fbdev.c.  
> 
> In that case
> 
> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>

Thanks!

> > 
> > What do you think about changing this to 0 in a follow-up patch?
> >   
> 
> Yes. If possible, please provide a follow-up patch for this and set 
> modeconfig.prefered_depth to 24.

I'll follow up with a patch setting this to zero, but I'm not convinced
I understand mode_config.prefered_depth well enough to be confident
setting it to 24 is the right thing to do.

Looking at commits 23d4e55f7eeb ("drm/vkms: Unset preferred_depth") and
550f17441f53 ("drm/cirrus: flip default from 24bpp to 16bpp") it seems
that this will have a wider impact beyond fbdev.  32bpp has been used
since the Rockchip driver was added so I don't see any real need to
change to 24 now.


Regards,
John

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
