Return-Path: <SRS0=IXgf=PS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72827C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Oct 2021 12:06:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EED5660FC0
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Oct 2021 12:06:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EED5660FC0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=metanate.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrky6XQIgObj3ZCgpYQ/O01SZtI8aZCGUlVqk8xaW9E=; b=ki5QsGurkea9zP
	gr3hefKm63/Y1loEU0T0LL0NZY42l0vOAHq+A+e4ONQ+b631T3sQNOYSoE7yANRq9XMO0AXAljNda
	EdYu3R2osP8qY3kcBPADzy2tO7VS84JqQz7GAZ1bao2a6dOoGRUvJWuyQiU/cOecrsxEvQTo+zeAi
	dKAHL1LEU7d755g2aYPW4Vj7EQ6nkm4MU/tQGsPEutrxYBu1DDDKLHtUuOL1E/0IJjw9JV0I6OKfa
	pFUcDLsFK0g7ShfuTAJnb2xKrfFSHQNcxRVQCBhfQU3Vque95gz5mZpR1J8CP+e0tQyYgwretaC7f
	TGRtXoaJHWQqybeaFdZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgn7b-00D1lA-MI; Sat, 30 Oct 2021 12:06:03 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgn7M-00D1jZ-7G; Sat, 30 Oct 2021 12:05:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=In-Reply-To:Content-Type:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description; bh=ZIAjfyluv6n+7SWUoRXNUVKzRvp5Ka/4JBN91H8gIjw=; b=UlL6C
 y7KWJxvsH0KyRc8dqvUy1qBoz5CKHAOy+he56H/eaRcatnfBl2ntbvYbtPxRjeh1mvkt6QZfvQWgZ
 lvxGl1NzmJPU3R3V/Ayaxn7V6zZlemg/ZwrKAfTrQuYqToF++CMOgPfuvmpYZVmMTuzdg7jVOcdNV
 xJ29zirhfWqEb7d308lMuiX+5wHBw85PPBFrbO2NXc9i95Yr++yyLAD8hqqO3H7jqt+nn/k1bt+On
 wOS4YOogsomdox3as6PPEgk8Hjwu3iPjXux3tqDlfaUQSnGFjrsl6sUriYQLpxrVKcYoS1xCu8bRz
 2cH0rea8KUuHR8Yd7CPfe9wbdt+Yg==;
Received: from [81.174.171.191] (helo=donbot)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mgn76-0003Ms-BU; Sat, 30 Oct 2021 13:05:32 +0100
Date: Sat, 30 Oct 2021 13:05:31 +0100
From: John Keeping <john@metanate.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: use generic fbdev setup
Message-ID: <YX01C6l93I2YPgku@donbot>
References: <20211029115014.264084-1-john@metanate.com>
 <ab7ace79-0148-1efa-ec17-6994bb35fd2f@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ab7ace79-0148-1efa-ec17-6994bb35fd2f@suse.de>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_050548_272448_F74D0B92 
X-CRM114-Status: GOOD (  21.22  )
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

Hi Thomas,

On Fri, Oct 29, 2021 at 09:00:08PM +0200, Thomas Zimmermann wrote:
> Am 29.10.21 um 13:50 schrieb John Keeping:
> > The Rockchip fbdev code does not add anything compared to
> > drm_fbdev_generic_setup(); the one custom function for .fb_mmap does the
> > same thing as gem_prime_mmap which is called by the helper.
> > 
> > Signed-off-by: John Keeping <john@metanate.com>
> > ---
> >   drivers/gpu/drm/rockchip/Makefile             |   1 -
> >   drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |  10 +-
> >   drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |   2 -
> >   drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c | 164 ------------------
> >   drivers/gpu/drm/rockchip/rockchip_drm_fbdev.h |  24 ---
> >   5 files changed, 2 insertions(+), 199 deletions(-)
> >   delete mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
> >   delete mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.h
> > 
> > diff --git a/drivers/gpu/drm/rockchip/Makefile b/drivers/gpu/drm/rockchip/Makefile
> > index 17a9e7eb2130..1a56f696558c 100644
> > --- a/drivers/gpu/drm/rockchip/Makefile
> > +++ b/drivers/gpu/drm/rockchip/Makefile
> > @@ -5,7 +5,6 @@
> >   rockchipdrm-y := rockchip_drm_drv.o rockchip_drm_fb.o \
> >   		rockchip_drm_gem.o rockchip_drm_vop.o rockchip_vop_reg.o
> > -rockchipdrm-$(CONFIG_DRM_FBDEV_EMULATION) += rockchip_drm_fbdev.o
> >   rockchipdrm-$(CONFIG_ROCKCHIP_ANALOGIX_DP) += analogix_dp-rockchip.o
> >   rockchipdrm-$(CONFIG_ROCKCHIP_CDN_DP) += cdn-dp-core.o cdn-dp-reg.o
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> > index 69c699459dce..20d81ae69828 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> > @@ -26,7 +26,6 @@
> >   #include "rockchip_drm_drv.h"
> >   #include "rockchip_drm_fb.h"
> > -#include "rockchip_drm_fbdev.h"
> >   #include "rockchip_drm_gem.h"
> >   #define DRIVER_NAME	"rockchip"
> > @@ -159,10 +158,6 @@ static int rockchip_drm_bind(struct device *dev)
> >   	drm_mode_config_reset(drm_dev);
> > -	ret = rockchip_drm_fbdev_init(drm_dev);
> > -	if (ret)
> > -		goto err_unbind_all;
> > -
> >   	/* init kms poll for handling hpd */
> >   	drm_kms_helper_poll_init(drm_dev);
> > @@ -170,10 +165,11 @@ static int rockchip_drm_bind(struct device *dev)
> >   	if (ret)
> >   		goto err_kms_helper_poll_fini;
> > +	drm_fbdev_generic_setup(drm_dev, 32);
> 
> Please pass 0 for the final argument. The fbdev helpers pick 32 by default.
> Maybe leave a comment if you require 32 here.

I wanted to minimise the changes introduced here - passing 32 matches
the value passed to drm_fb_helper_initial_config() in the deleted code
from rockchip_drm_fbdev.c.

What do you think about changing this to 0 in a follow-up patch?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
