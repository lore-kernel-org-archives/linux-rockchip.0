Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D43D2C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jul 2022 09:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9f1hGRW7q4GQGkGc4ny9FQuSe2LEeUqz6XmbKWuakg=; b=oR8KYw60D+96Vc
	7Cbgy2XPHsosA/2JS7PH6uTAtdcSIuDjWTrfbCD7rBUEKPXMPH3DQbrLkQJGk8wXjLqwKrXJhnTE7
	TuMRkcJUwjDkIRRZIQZNgbZtlzAUEGzt4X6oKzdDJ4Xc3QDB1UAphHTED25xz7jnw6YEDd1vGnPI1
	FLoMcnwYbkwfbuzI38VEoaWztbj28AqNLfI1eHKFjnNXR7N2llKAhqwzx6Q0+mIZ0KT/XgqkM9nv7
	bl9/4rvaAxDGuvO9AzUeWid3FIDpFsEcitHHcE2M3bUk0wm8ayJje7wwlq9Jhivn7g8wEQgFbUkkF
	3/Q95lUoRpMHdAHIaZgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE5w3-003DxU-16; Wed, 20 Jul 2022 09:24:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE5w0-003Drv-Dh
	for linux-rockchip@lists.infradead.org; Wed, 20 Jul 2022 09:24:02 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5BBD06DB;
	Wed, 20 Jul 2022 11:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1658309033;
	bh=RpPl9cL1oqAlCUZ6Z+EF4kC8MQCB0XzQjdVQjdAWtw8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n0y/40ZVQcRQI3KjtLNZ/IV04ijikHJ7kd6jJ83fisCP3Qr7uOPb7HQszyMnS6Q8j
	 rdAgJ/plpQGwD+rbUNYe4++RNVngVrl1qs0duwMdmRczCodoSp2KKv3Pk6fGGFHODz
	 Ito+/3gVrDqInUBBtPBQdO/vPiP6YKnVrwmVeBfw=
Date: Wed, 20 Jul 2022 12:23:19 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jacopo Mondi <jacopo@jmondi.org>
Cc: libcamera-devel@lists.libcamera.org, linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>
Subject: Re: [libcamera-devel] [PATCH] media: rkisp1: Add and use
 rkisp1_has_feature() macro
Message-ID: <YtfJh/0DWxe/98QD@pendragon.ideasonboard.com>
References: <20220719221751.4159-1-laurent.pinchart@ideasonboard.com>
 <20220720091536.atwmju6pfhfekwim@uno.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220720091536.atwmju6pfhfekwim@uno.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_022400_655218_79177EC0 
X-CRM114-Status: GOOD (  17.51  )
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

Hi Jacopo,

On Wed, Jul 20, 2022 at 11:15:36AM +0200, Jacopo Mondi wrote:
> On Wed, Jul 20, 2022 at 01:17:51AM +0300, Laurent Pinchart via libcamera-devel wrote:
> > Simplify feature tests with a macro that shortens lines.
> >
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >  .../media/platform/rockchip/rkisp1/rkisp1-common.h |  3 +++
> >  .../media/platform/rockchip/rkisp1/rkisp1-dev.c    | 14 +++++++-------
> >  2 files changed, 10 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > index 8056997d5c29..0aae802464ac 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> 
> Was this meant for linux-media ? :)

Yes, I realized just after sending, and sent another one to linux-media.
I need to write a git-send-email wrapper that will validate recipients
based on the content of the patches... Sorry for the noise.

> > @@ -111,6 +111,9 @@ enum rkisp1_feature {
> >  	RKISP1_FEATURE_MIPI_CSI2 = BIT(0),
> >  };
> >
> > +#define rkisp1_has_feature(rkisp1, feature) \
> > +	((rkisp1)->info->features & RKISP1_FEATURE_##feature)
> > +
> >  /*
> >   * struct rkisp1_info - Model-specific ISP Information
> >   *
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > index f2475c6235ea..e348d8c86861 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > @@ -206,7 +206,7 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
> >  		switch (reg) {
> >  		case 0:
> >  			/* MIPI CSI-2 port */
> > -			if (!(rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)) {
> > +			if (!rkisp1_has_feature(rkisp1, MIPI_CSI2)) {
> >  				dev_err(rkisp1->dev,
> >  					"internal CSI must be available for port 0\n");
> >  				ret = -EINVAL;
> > @@ -338,7 +338,7 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
> >  	unsigned int i;
> >  	int ret;
> >
> > -	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
> > +	if (rkisp1_has_feature(rkisp1, MIPI_CSI2)) {
> >  		/* Link the CSI receiver to the ISP. */
> >  		ret = media_create_pad_link(&rkisp1->csi.sd.entity,
> >  					    RKISP1_CSI_PAD_SRC,
> > @@ -390,7 +390,7 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
> >
> >  static void rkisp1_entities_unregister(struct rkisp1_device *rkisp1)
> >  {
> > -	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
> > +	if (rkisp1_has_feature(rkisp1, MIPI_CSI2))
> >  		rkisp1_csi_unregister(rkisp1);
> >  	rkisp1_params_unregister(rkisp1);
> >  	rkisp1_stats_unregister(rkisp1);
> > @@ -423,7 +423,7 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
> >  	if (ret)
> >  		goto error;
> >
> > -	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
> > +	if (rkisp1_has_feature(rkisp1, MIPI_CSI2)) {
> >  		ret = rkisp1_csi_register(rkisp1);
> >  		if (ret)
> >  			goto error;
> > @@ -590,7 +590,7 @@ static int rkisp1_probe(struct platform_device *pdev)
> >  		goto err_unreg_v4l2_dev;
> >  	}
> >
> > -	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
> > +	if (rkisp1_has_feature(rkisp1, MIPI_CSI2)) {
> >  		ret = rkisp1_csi_init(rkisp1);
> >  		if (ret)
> >  			goto err_unreg_media_dev;
> > @@ -611,7 +611,7 @@ static int rkisp1_probe(struct platform_device *pdev)
> >  err_unreg_entities:
> >  	rkisp1_entities_unregister(rkisp1);
> >  err_cleanup_csi:
> > -	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
> > +	if (rkisp1_has_feature(rkisp1, MIPI_CSI2))
> >  		rkisp1_csi_cleanup(rkisp1);
> >  err_unreg_media_dev:
> >  	media_device_unregister(&rkisp1->media_dev);
> > @@ -630,7 +630,7 @@ static int rkisp1_remove(struct platform_device *pdev)
> >  	v4l2_async_nf_cleanup(&rkisp1->notifier);
> >
> >  	rkisp1_entities_unregister(rkisp1);
> > -	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
> > +	if (rkisp1_has_feature(rkisp1, MIPI_CSI2))
> >  		rkisp1_csi_cleanup(rkisp1);
> >  	rkisp1_debug_cleanup(rkisp1);
> >

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
