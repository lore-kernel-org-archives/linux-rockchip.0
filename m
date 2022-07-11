Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A846BC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 22:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mp7pn9lIo24/jsuaETwq3MFREs3tIiq90ruYJHQ/CN4=; b=qlJDy/QjqdilxO
	rc9D3wd8K/7dxi1KY/FH3LZtofu+5NH4s9I9hdPd4tKb6UX0ONVce86nYbHlYcPgdjk+5P6v39Ru3
	2+PXLCf5IfI2Kggt/4OlSTmtlSDhqgkrh8grGTSRUaSL5X4EqkHt4GD1L62R4MF4ZR7WNFpeCk4+z
	5DpyEwmIDrNRJqDFbOaeEsmmePyuFB+7gV/geQNXRq1w9eI3Up+n3ZO1tEpUm2fUAe8RCgr9mBotc
	mtBNlWUxd8sAVq8IckD739pjNtwwIRQqnV6oCQqGSg5PJs8t2alz+HefdZrSOs7h0kRsM0AlZQNww
	wviEQkOVuwXuUSUkH5oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oB1r5-005G9H-0I; Mon, 11 Jul 2022 22:26:15 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oB1qr-005G34-KW; Mon, 11 Jul 2022 22:26:03 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 821C130B;
	Tue, 12 Jul 2022 00:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657578357;
	bh=EMIk7oKkKjDIpKxYPgn5RbkGgIVQ5ElGowwFCDFkkDE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hivFfM1FaMc+IAs+ioI7Fl/Siy4MrVNLhcXQrH+tQJ9G4p7JuIFwpcEyPro/BEPde
	 NEv6+djoF99dETwW+GJK1yZzs4YdALVOaH9NmgNlD2/zzvTqJ3yz/AsgoGQoV/DLIQ
	 Tfkny6393VvRd+YC+3wZnKpHYw5YwVxVJoCNkfgI=
Date: Tue, 12 Jul 2022 01:25:30 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] media: rkisp1: Support devices without self path
Message-ID: <YsyjWgE1qOJMTJpd@pendragon.ideasonboard.com>
References: <20220628054430.1349988-1-paul.elder@ideasonboard.com>
 <20220711040436.5plq5yqc57fhrdyr@guri>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220711040436.5plq5yqc57fhrdyr@guri>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_152601_856791_7A5D2143 
X-CRM114-Status: GOOD (  38.10  )
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

Hi Dafna,

On Mon, Jul 11, 2022 at 07:04:36AM +0300, Dafna Hirschfeld wrote:
> On 28.06.2022 14:44, Paul Elder wrote:
> > Some hardware supported by the rkisp1 driver, such as the ISP in the
> > i.MX8MP, don't have a self path. Add a feature flag for this, and
> > massage the rest of the driver to support the lack of a self path.
> > 
> > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > 
> > ---
> > Changes in v2:
> > - add rkisp1_path_count() helper to obtain the number of paths
> > - fix forcing config update when there's no self path
> > 
> > This patch depends on "media: rkisp1: Cleanups and add support for
> > i.MX8MP" [1], which in turn depends on v4 of "media: rkisp1: Misc bug
> > fixes and cleanups" [2].
> 
> The code in rkisp1_capture_devs_unregister refer to selfpath cap,
> the code there should probably change as well:
> 
> if (has_self_path)
> 	rkisp1_unregister_capture(sp);
> 
> and the same for rkisp1_resizer_devs_unregister

The rkisp1_unregister_capture() and rkisp1_rsz_unregister() functions
have been made safe to call on registered instances, and will be no-ops
in that case. Isn't that enough ?

> > [1] https://lore.kernel.org/linux-media/20220625070034.6odv6cyvqqigb2sa@guri/T/
> > [2] https://lore.kernel.org/linux-media/Ymbxs2p9Tuf331qM@pendragon.ideasonboard.com/T/
> > ---
> >  .../platform/rockchip/rkisp1/rkisp1-capture.c     |  9 ++++++---
> >  .../platform/rockchip/rkisp1/rkisp1-common.h      | 15 +++++++++++++++
> >  .../media/platform/rockchip/rkisp1/rkisp1-dev.c   |  9 ++++++---
> >  .../platform/rockchip/rkisp1/rkisp1-resizer.c     |  6 ++++--
> >  4 files changed, 31 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > index 234b1f8488cb..215be4034c52 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > @@ -709,6 +709,7 @@ irqreturn_t rkisp1_capture_isr(int irq, void *ctx)
> >  {
> >  	struct device *dev = ctx;
> >  	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
> > +	unsigned int dev_count = rkisp1_path_count(rkisp1);
> >  	unsigned int i;
> >  	u32 status;
> > 
> > @@ -718,7 +719,7 @@ irqreturn_t rkisp1_capture_isr(int irq, void *ctx)
> > 
> >  	rkisp1_write(rkisp1, RKISP1_CIF_MI_ICR, status);
> > 
> > -	for (i = 0; i < ARRAY_SIZE(rkisp1->capture_devs); ++i) {
> > +	for (i = 0; i < dev_count; ++i) {
> >  		struct rkisp1_capture *cap = &rkisp1->capture_devs[i];
> > 
> >  		if (!(status & RKISP1_CIF_MI_FRAME(cap)))
> > @@ -875,6 +876,7 @@ static void rkisp1_cap_stream_enable(struct rkisp1_capture *cap)
> >  {
> >  	struct rkisp1_device *rkisp1 = cap->rkisp1;
> >  	struct rkisp1_capture *other = &rkisp1->capture_devs[cap->id ^ 1];
> > +	bool has_self_path = rkisp1->info->features & RKISP1_FEATURE_SELF_PATH;
> > 
> >  	cap->ops->set_data_path(cap);
> >  	cap->ops->config(cap);
> > @@ -892,7 +894,7 @@ static void rkisp1_cap_stream_enable(struct rkisp1_capture *cap)
> >  	 * This's also required because the second FE maybe corrupt
> >  	 * especially when run at 120fps.
> >  	 */
> > -	if (!other->is_streaming) {
> > +	if (!has_self_path || !other->is_streaming) {
> >  		/* force cfg update */
> >  		rkisp1_write(rkisp1, RKISP1_CIF_MI_INIT,
> >  			     RKISP1_CIF_MI_INIT_SOFT_UPD);
> > @@ -1445,10 +1447,11 @@ rkisp1_capture_init(struct rkisp1_device *rkisp1, enum rkisp1_stream_id id)
> > 
> >  int rkisp1_capture_devs_register(struct rkisp1_device *rkisp1)
> >  {
> > +	unsigned int dev_count = rkisp1_path_count(rkisp1);
> >  	unsigned int i;
> >  	int ret;
> > 
> > -	for (i = 0; i < ARRAY_SIZE(rkisp1->capture_devs); i++) {
> > +	for (i = 0; i < dev_count; i++) {
> >  		struct rkisp1_capture *cap = &rkisp1->capture_devs[i];
> > 
> >  		rkisp1_capture_init(rkisp1, i);
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > index 0b834579d08c..f25d885c79ff 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > @@ -114,6 +114,7 @@ enum rkisp1_feature {
> >  	RKISP1_FEATURE_RSZ_CROP = BIT(2),
> >  	RKISP1_FEATURE_MAIN_STRIDE = BIT(3),
> >  	RKISP1_FEATURE_DMA_34BIT = BIT(4),
> > +	RKISP1_FEATURE_SELF_PATH = BIT(5),
> >  };
> > 
> >  /*
> > @@ -552,6 +553,20 @@ unsigned int rkisp1_mbus_info_length(void);
> >   */
> >  const struct rkisp1_mbus_info *rkisp1_mbus_info_get_by_index(unsigned int index);
> > 
> > +/*
> > + * rkisp1_path_count - Return the number of paths supported by the device
> > + *
> > + * Some devices only have a main path, while other device have both a main path
> > + * and a self path. This function returns the number of paths that this device
> > + * has, based on the feature flags. It should be used insted of checking
> > + * ARRAY_SIZE of capture_devs/resizer_devs.
> > + */
> > +static inline unsigned int rkisp1_path_count(struct rkisp1_device *rkisp1)
> > +{
> > +	bool has_self_path = rkisp1->info->features & RKISP1_FEATURE_SELF_PATH;
> > +	return has_self_path ? 2 : 1;
> > +}
> > +
> >  /*
> >   * rkisp1_sd_adjust_crop_rect - adjust a rectangle to fit into another rectangle.
> >   *
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > index 4c77aa2bc50a..8fd9f67836a5 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > @@ -326,6 +326,7 @@ static const struct dev_pm_ops rkisp1_pm_ops = {
> > 
> >  static int rkisp1_create_links(struct rkisp1_device *rkisp1)
> >  {
> > +	unsigned int dev_count = rkisp1_path_count(rkisp1);
> >  	unsigned int i;
> >  	int ret;
> > 
> > @@ -341,7 +342,7 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
> >  	}
> > 
> >  	/* create ISP->RSZ->CAP links */
> > -	for (i = 0; i < 2; i++) {
> > +	for (i = 0; i < dev_count; i++) {
> >  		struct media_entity *resizer =
> >  			&rkisp1->resizer_devs[i].sd.entity;
> >  		struct media_entity *capture =
> > @@ -466,7 +467,8 @@ static const struct rkisp1_info px30_isp_info = {
> >  	.isr_size = ARRAY_SIZE(px30_isp_isrs),
> >  	.isp_ver = RKISP1_V12,
> >  	.features = RKISP1_FEATURE_MIPI_CSI2
> > -		  | RKISP1_FEATURE_DUAL_CROP,
> > +		  | RKISP1_FEATURE_DUAL_CROP
> > +		  | RKISP1_FEATURE_SELF_PATH,
> >  };
> > 
> >  static const char * const rk3399_isp_clks[] = {
> > @@ -486,7 +488,8 @@ static const struct rkisp1_info rk3399_isp_info = {
> >  	.isr_size = ARRAY_SIZE(rk3399_isp_isrs),
> >  	.isp_ver = RKISP1_V10,
> >  	.features = RKISP1_FEATURE_MIPI_CSI2
> > -		  | RKISP1_FEATURE_DUAL_CROP,
> > +		  | RKISP1_FEATURE_DUAL_CROP
> > +		  | RKISP1_FEATURE_SELF_PATH,
> >  };
> > 
> >  static const char * const imx8mp_isp_clks[] = {
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > index 29a31b18a082..a18dacc84568 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> > @@ -673,6 +673,7 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
> >  	struct rkisp1_device *rkisp1 = rsz->rkisp1;
> >  	struct rkisp1_capture *other = &rkisp1->capture_devs[rsz->id ^ 1];
> >  	enum rkisp1_shadow_regs_when when = RKISP1_SHADOW_REGS_SYNC;
> > +	bool has_self_path = rkisp1->info->features & RKISP1_FEATURE_SELF_PATH;
> > 
> >  	if (!enable) {
> >  		if (rkisp1->info->features & RKISP1_FEATURE_DUAL_CROP)
> > @@ -681,7 +682,7 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
> >  		return 0;
> >  	}
> > 
> > -	if (other->is_streaming)
> > +	if (has_self_path && other->is_streaming)
> >  		when = RKISP1_SHADOW_REGS_ASYNC;
> > 
> >  	mutex_lock(&rsz->ops_lock);
> > @@ -769,10 +770,11 @@ static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
> > 
> >  int rkisp1_resizer_devs_register(struct rkisp1_device *rkisp1)
> >  {
> > +	unsigned int dev_count = rkisp1_path_count(rkisp1);
> >  	unsigned int i;
> >  	int ret;
> > 
> > -	for (i = 0; i < ARRAY_SIZE(rkisp1->resizer_devs); i++) {
> > +	for (i = 0; i < dev_count; i++) {
> >  		struct rkisp1_resizer *rsz = &rkisp1->resizer_devs[i];
> > 
> >  		rsz->rkisp1 = rkisp1;

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
