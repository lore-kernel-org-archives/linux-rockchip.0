Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 802CFC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 19:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W61ELte52TtgavVL39m9rzQ5+zbJ6drioRH7TPzx+6w=; b=SwDcCbeDq5gCIH
	Z+CxNQl06dnYDFC+LjNuooNtOhWYTQzPJlERGKRGo4uZMBrVBYJLGcL7d5egUEQUFkb+NJooxeyjz
	68OFnUPeWNW/5mAyjBpaqQnBnHFiWA2c0Z4P1mxfYv0r5FosgkK3m2Qy2R1Cbeph2nUyW0u/VqSWd
	xmhtCcM6u5srSg5PQrfjXSi7a4dxjXEqmialKXA1bb2S7NUg5ymNNFl7OUXBKo/7zFRnKEe2cQY+W
	8U0ByS8vtzpldplZdH+Eaqd8GI8PJk0VOhieCWN9/YK1BVhQto9uwp9u41kXRKq5i/lpxXCbglLZb
	XIkhe9yGLAB1GSq0MXkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj44e-00B2JK-Gb; Mon, 25 Apr 2022 19:08:40 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj44a-00B2I6-PT
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 19:08:38 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id DFEFF496;
 Mon, 25 Apr 2022 21:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1650913715;
 bh=w84GdN8TE6etnU+RLgVIIiz/BXWBEgYswbqQDCCTozY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i3joH+vsRoL3SiIf5gt6SGHDUtE5YLke5SNHWnp/GCK8IBcHJDoq+3lYtdYUM5xXw
 SLkta4oB8gupozn3y7LOZuATjW0kNbPoUwoNjqWXdja1oHnKDziSc5JS9VZSMIY/Bo
 /or6hcVfj23a74FMaxwzYNHOZnK9ZCIat+1hMKIY=
Date: Mon, 25 Apr 2022 22:08:35 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Ricardo Ribalda <ribalda@chromium.org>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 13/21] media: rkisp1: Compile debugfs support
 conditionally
Message-ID: <Ymbxs2p9Tuf331qM@pendragon.ideasonboard.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-14-laurent.pinchart@ideasonboard.com>
 <YmZ+89lToRXl4vFB@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YmZ+89lToRXl4vFB@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_120837_016466_05130EB5 
X-CRM114-Status: GOOD (  17.41  )
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

Hi Ricardo,

On Mon, Apr 25, 2022 at 12:58:59PM +0200, Ricardo Ribalda wrote:
> Laurent Pinchart wrote:
> 
> > When CONFIG_DEBUGFS is disabled, there's no need to compile the debugfs
> > support in. Make it conditional.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
> > ---
> > Changes since v3:
> > 
> > - Fix double mention of rkisp1-debug.o in Makefile
> > ---
> >  .../media/platform/rockchip/rkisp1/Makefile    | 18 ++++++++++--------
> >  .../platform/rockchip/rkisp1/rkisp1-common.h   |  9 +++++++++
> >  2 files changed, 19 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/Makefile b/drivers/media/platform/rockchip/rkisp1/Makefile
> > index 1a39bdcc608e..f7543a82aa10 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/Makefile
> > +++ b/drivers/media/platform/rockchip/rkisp1/Makefile
> > @@ -1,11 +1,13 @@
> >  # SPDX-License-Identifier: GPL-2.0
> 
> Are you sure that this work when rockchip is built as module?

I'm fairly confident it does, as I build the driver as a module :-)

> > +rockchip-isp1-y := rkisp1-capture.o \
> > +		   rkisp1-common.o \
> > +		   rkisp1-dev.o \
> > +		   rkisp1-isp.o \
> > +		   rkisp1-resizer.o \
> > +		   rkisp1-stats.o \
> > +		   rkisp1-params.o
> > +
> > +rockchip-isp1-$(CONFIG_DEBUG_FS) += rkisp1-debug.o
> > +
> >  obj-$(CONFIG_VIDEO_ROCKCHIP_ISP1) += rockchip-isp1.o
> > -rockchip-isp1-objs += 	rkisp1-capture.o \
> > -			rkisp1-common.o \
> > -			rkisp1-debug.o \
> > -			rkisp1-dev.o \
> > -			rkisp1-isp.o \
> > -			rkisp1-resizer.o \
> > -			rkisp1-stats.o \
> > -			rkisp1-params.o
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > index 07a92ed8bdc8..a7ffe2830fa8 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > @@ -518,7 +518,16 @@ void rkisp1_stats_unregister(struct rkisp1_device *rkisp1);
> >  int rkisp1_params_register(struct rkisp1_device *rkisp1);
> >  void rkisp1_params_unregister(struct rkisp1_device *rkisp1);
> >  
> > +#if IS_ENABLED(CONFIG_DEBUG_FS)
> >  void rkisp1_debug_init(struct rkisp1_device *rkisp1);
> >  void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1);
> > +#else
> > +static inline void rkisp1_debug_init(struct rkisp1_device *rkisp1)
> > +{
> > +}
> > +static inline void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
> > +{
> > +}
> > +#endif
> >  
> >  #endif /* _RKISP1_COMMON_H */

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
