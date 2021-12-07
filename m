Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 271E7C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Dec 2021 11:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xip/gz/TzU2pgHEj/ewB0wKiwa069ARI8kBbngtsQuw=; b=VZWYkPfPmABm6Y
	UIn3eZLbWzi4cFs8JaDUG3U5NBpSWFi3SRRpuwm7gXjU5GOTCikTYF7kcKMjA5zmKNgLVoSc3byRy
	liFU0BkXNttWN0SmDd9agG3f8ML5A8j8liof4DnFJ+a8lP2WsDFD+RaXi2+E/nIwV/aMGzdRTiF+m
	ogggZeVRilFZJIvNUpYOI0LFSIxcZ9eLY/QOvEhGLhJ34QjeVnXJXtHKrW4OkFP9HLswTwQXTc1YK
	5vDR8JaukAorG0cX9cRwIm1Wi5O5q26QFldOGrUM/QE0qlgTLB705xhu/C7Dis5nNFjvjzJapeKOA
	q8MKW2nCr6GBWJwX9smg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muZ3i-008JUi-K7; Tue, 07 Dec 2021 11:54:58 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muZ3V-008JQL-Ot; Tue, 07 Dec 2021 11:54:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=In-Reply-To:Content-Type:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description; bh=/p4R2MJ54JWAasn2vcmZIBkf95G1c272J6p1ijwkBXY=; b=KFHxJ
 /a1LGziBgLC66FJecVCE5eu8F9MBJejLwjEFLY/BShx3ZKR3znFdhxYkmpNJD5/VWocZ9wK0WAoRJ
 HYmligvo5UhsR5YIzUaqUKJSvVdcS/scS8KEayPtElxazPEkMxx7kCYgMY+qpUiPkvX/4nNoXnGKv
 B5SLQs4aw13xSFWtQcw34u+xmlEZSNqHF/LHYN1jeRSvYqklerValcq59dvP2fMAPNstOB0lYFyux
 0nPnHrAbo4JsYWSOByz5KK3PO2Ihb6ynYpimR5KjAZgCM+991usv+43/kENF7+czf4VDsdxs/7o3D
 vbUbHPdlojAfjkPMFEGIfcwVHWkUA==;
Received: from [81.174.171.191] (helo=donbot)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1muZ3I-0005EC-4g; Tue, 07 Dec 2021 11:54:32 +0000
Date: Tue, 7 Dec 2021 11:54:30 +0000
From: John Keeping <john@metanate.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: use generic fbdev setup
Message-ID: <Ya9LdiutXV7lCOtT@donbot>
References: <20211029115014.264084-1-john@metanate.com>
 <ab7ace79-0148-1efa-ec17-6994bb35fd2f@suse.de>
 <YX01C6l93I2YPgku@donbot>
 <6e69f9bb-5a1e-7b79-38e8-d2860e5ee615@suse.de>
 <20211101113415.3bed0f62.john@metanate.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211101113415.3bed0f62.john@metanate.com>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_035445_836740_985FEB19 
X-CRM114-Status: GOOD (  23.68  )
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

On Mon, Nov 01, 2021 at 11:34:15AM +0000, John Keeping wrote:
> On Sun, 31 Oct 2021 19:09:39 +0100
> Thomas Zimmermann <tzimmermann@suse.de> wrote:
> > Am 30.10.21 um 14:05 schrieb John Keeping:
> > > On Fri, Oct 29, 2021 at 09:00:08PM +0200, Thomas Zimmermann wrote:  
> > >> Am 29.10.21 um 13:50 schrieb John Keeping:  
> > >>> The Rockchip fbdev code does not add anything compared to
> > >>> drm_fbdev_generic_setup(); the one custom function for .fb_mmap does the
> > >>> same thing as gem_prime_mmap which is called by the helper.
> > >>>
> > >>> Signed-off-by: John Keeping <john@metanate.com>
> > >>> ---
> > >>>    drivers/gpu/drm/rockchip/Makefile             |   1 -
> > >>>    drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |  10 +-
> > >>>    drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |   2 -
> > >>>    drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c | 164 ------------------
> > >>>    drivers/gpu/drm/rockchip/rockchip_drm_fbdev.h |  24 ---
> > >>>    5 files changed, 2 insertions(+), 199 deletions(-)
> > >>>    delete mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
> > >>>    delete mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.h
> > >>>
> > >>> diff --git a/drivers/gpu/drm/rockchip/Makefile b/drivers/gpu/drm/rockchip/Makefile
> > >>> index 17a9e7eb2130..1a56f696558c 100644
> > >>> --- a/drivers/gpu/drm/rockchip/Makefile
> > >>> +++ b/drivers/gpu/drm/rockchip/Makefile
> > >>> @@ -5,7 +5,6 @@
> > >>>    rockchipdrm-y := rockchip_drm_drv.o rockchip_drm_fb.o \
> > >>>    		rockchip_drm_gem.o rockchip_drm_vop.o rockchip_vop_reg.o
> > >>> -rockchipdrm-$(CONFIG_DRM_FBDEV_EMULATION) += rockchip_drm_fbdev.o
> > >>>    rockchipdrm-$(CONFIG_ROCKCHIP_ANALOGIX_DP) += analogix_dp-rockchip.o
> > >>>    rockchipdrm-$(CONFIG_ROCKCHIP_CDN_DP) += cdn-dp-core.o cdn-dp-reg.o
> > >>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> > >>> index 69c699459dce..20d81ae69828 100644
> > >>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> > >>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> > >>> @@ -26,7 +26,6 @@
> > >>>    #include "rockchip_drm_drv.h"
> > >>>    #include "rockchip_drm_fb.h"
> > >>> -#include "rockchip_drm_fbdev.h"
> > >>>    #include "rockchip_drm_gem.h"
> > >>>    #define DRIVER_NAME	"rockchip"
> > >>> @@ -159,10 +158,6 @@ static int rockchip_drm_bind(struct device *dev)
> > >>>    	drm_mode_config_reset(drm_dev);
> > >>> -	ret = rockchip_drm_fbdev_init(drm_dev);
> > >>> -	if (ret)
> > >>> -		goto err_unbind_all;
> > >>> -
> > >>>    	/* init kms poll for handling hpd */
> > >>>    	drm_kms_helper_poll_init(drm_dev);
> > >>> @@ -170,10 +165,11 @@ static int rockchip_drm_bind(struct device *dev)
> > >>>    	if (ret)
> > >>>    		goto err_kms_helper_poll_fini;
> > >>> +	drm_fbdev_generic_setup(drm_dev, 32);  
> > >>
> > >> Please pass 0 for the final argument. The fbdev helpers pick 32 by default.
> > >> Maybe leave a comment if you require 32 here.  
> > > 
> > > I wanted to minimise the changes introduced here - passing 32 matches
> > > the value passed to drm_fb_helper_initial_config() in the deleted code
> > > from rockchip_drm_fbdev.c.  
> > 
> > In that case
> > 
> > Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
> 
> Thanks!

Are you able to pick this up (and [1])?  Otherwise what is needed here
and who should pick this up?

[1] https://lore.kernel.org/dri-devel/20211101114622.813536-1-john@metanate.com/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
