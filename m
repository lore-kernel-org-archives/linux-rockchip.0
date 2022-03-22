Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B720C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Mar 2022 09:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y0boF31h2zaOO9izVsb0W3lmEEzzd5qN1idKN2bcsS8=; b=hE7Tjcmhnx7+Vr
	M0ITLG4PLGXF+fdRSawJ748vgadH0TG/m+1MP/YuA5h8FzLfyoruLbsMj3PxiUc5kkIwQrsTadaNi
	GmTeemPwFwmZeZFAN+N8ySXV4Ml+is6rQVf9OpY35KhlZcp5x6bYbIaFglPKubY3hGPgl91zu3JNK
	SZqZyZOzaNxfllcufe7Tgef7aMCrgBCSfozpT1nr0prTvq7SmCZe/0605OFyv/DX/3hSK5mzc/Yjo
	Fj0x241h1r3cx74Sr8X9Ss1/GuxN3y1uEEUXytlwGL3IahdQ9hY1XuLlwOAbkY7t6emcRuWbRmeU3
	JrlKmvE5fdOxaE4qHV0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWbHZ-00Aeuf-7x; Tue, 22 Mar 2022 09:58:29 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWbHW-00Aets-By
 for linux-rockchip@lists.infradead.org; Tue, 22 Mar 2022 09:58:27 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id CE8DB9DE;
 Tue, 22 Mar 2022 10:58:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1647943103;
 bh=DswX2kfrS856LewmIspY3LDA5hl7TTAsCqlFb8OGsXM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i9p00CH3tl3GZbk78BA5JXsM8SvA5qcNbMrIZ2Tdfdb0HbClRSaSUFirifQ9lRBeV
 d+f7qEJEMVIuy/lML9yAvaKw2BqtoFuavEy1u8UvDlVIhsx+4cEaBA9MdNl4DWzfX+
 yKHh1GgPlsu4P7vsi0OcDZtsgtxiP3jFUUY1T8Tc=
Date: Tue, 22 Mar 2022 11:58:06 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [PATCH v3 03/17] media: rkisp1: isp: Fix and simplify
 (un)registration
Message-ID: <Yjmdri0OAHOeaej0@pendragon.ideasonboard.com>
References: <20220319163100.3083-1-laurent.pinchart@ideasonboard.com>
 <20220319163100.3083-4-laurent.pinchart@ideasonboard.com>
 <20220322042305.fcriktxrjd4vfbfo@guri>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220322042305.fcriktxrjd4vfbfo@guri>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220322_025826_585362_45865CF3 
X-CRM114-Status: GOOD (  24.57  )
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

Hi Dafna,

On Tue, Mar 22, 2022 at 06:23:05AM +0200, Dafna Hirschfeld wrote:
> On 19.03.2022 18:30, Laurent Pinchart wrote:
> > The rkisp1_isp_register() and rkisp1_isp_unregister() functions don't
> > destroy the mutex (in the error path for the former). Fix this, simplify
> > error handling at registration time as media_entity_cleanup() can be
> > called on an uninitialized entity, and make rkisp1_isp_unregister() and
> > safe to be called on an unregistered isp subdev to prepare for
> > simplification of error handling at probe time.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >  .../platform/rockchip/rkisp1/rkisp1-isp.c     | 20 ++++++++++++-------
> >  1 file changed, 13 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> > index 2a35bf24e54e..f84e53b60ee1 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> > @@ -1090,29 +1090,35 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1)
> >  	mutex_init(&isp->ops_lock);
> >  	ret = media_entity_pads_init(&sd->entity, RKISP1_ISP_PAD_MAX, pads);
> >  	if (ret)
> > -		return ret;
> > +		goto error;
> >  
> >  	ret = v4l2_device_register_subdev(&rkisp1->v4l2_dev, sd);
> >  	if (ret) {
> >  		dev_err(rkisp1->dev, "Failed to register isp subdev\n");
> > -		goto err_cleanup_media_entity;
> > +		goto error;
> >  	}
> >  
> >  	rkisp1_isp_init_config(sd, &state);
> > +
> >  	return 0;
> >  
> > -err_cleanup_media_entity:
> > +error:
> >  	media_entity_cleanup(&sd->entity);
> 
> I remember long ago that Ezequiel suggested removing that
> 'media_entity_cleanup' since it was never implemented which
> indicates there is probably no need for it.

The function is empty indeed, but I'd rather keep it. If we happen to
need to cleanup anything in the future, having to patch all drivers to
add media_entity_cleanup() calls would be very painful.

> > -
> > +	mutex_destroy(&isp->ops_lock);
> > +	isp->sd.flags = 0;
> >  	return ret;
> >  }
> >  
> >  void rkisp1_isp_unregister(struct rkisp1_device *rkisp1)
> >  {
> > -	struct v4l2_subdev *sd = &rkisp1->isp.sd;
> > +	struct rkisp1_isp *isp = &rkisp1->isp;
> >  
> > -	v4l2_device_unregister_subdev(sd);
> > -	media_entity_cleanup(&sd->entity);
> > +	if (!isp->sd.flags)
> 
> We assume no flags means that the device is not registered. This might
> stop working if we ever decide to remove the existing flags.
> So better "if (!isp->sd.v4l2_dev)" ?

Good point. I'll change that.

> > +		return;
> > +
> > +	v4l2_device_unregister_subdev(&isp->sd);
> > +	media_entity_cleanup(&isp->sd.entity);
> > +	mutex_destroy(&isp->ops_lock);
> >  }
> >  
> >  /* ----------------------------------------------------------------------------

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
