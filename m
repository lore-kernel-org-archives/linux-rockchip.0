Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2E55C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 08:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ISbSto7/9mR2YQnzv3rK2/5mAwHsr1JFvcxPYsG7Iz8=; b=mbaz13Z0b01DFr
	6KXvL7HRRIJrgRiod27wInY9MIL7Ps6R2vMmdQdlEjMALQhr3BBwJAHqv4kvd1zPgMw0EgEbbjf55
	wvyPFvu5rCbhTLPYkleliIsDq3LidNfsMeVFO78tZkJ74l6Mk5KgPtAILWKJ4L+ADmNEMxd+Kf930
	RFSEADqPjjGHQzqLgpzHwsVPPxvLGBEPTxLFXrh67yRk+A4ZZurB6Cc3bBTW5ou7MVI0XzrogQL2k
	bwWEQ55tE2Anc6gOo9HNKHJbRF3wpiZrMMVgdzC0Ks9xB/M0f5h6Xd97pu9D/ucofAT4gkGwQGnYD
	EKJIl52pmH4/+wkhmf6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAofE-00HAV6-HW; Mon, 11 Jul 2022 08:21:08 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAofA-00HAQh-Uz
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 08:21:08 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3BB18326;
	Mon, 11 Jul 2022 10:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657527660;
	bh=qrXuRQPfNfuf9kF3ryytF8skRW3+YUk0aHcam+Ep8Yg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gxXkPeW+Sgl5VjsRT+YtJXwXKFk8rW472bxsUWh1Hwx3g1qeKkefDCSCmVMN8A5Tj
	 kegzEQuFIzWQa3jaXNumcgt27anynPMBMrPyZSQwe81+r46jbufYEbH3VVGYC70pMW
	 y3lK74dr0riin+MkVDiMmbGXF2p96OAosCfCvWTs=
Date: Mon, 11 Jul 2022 11:20:32 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: Re: [PATCH v2 39/55] media: rkisp1: csi: Implement a V4L2 subdev for
 the CSI receiver
Message-ID: <YsvdUDs/li/2/Agv@pendragon.ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-40-laurent.pinchart@ideasonboard.com>
 <20220711012212.kfppk5oundhrhou4@guri>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220711012212.kfppk5oundhrhou4@guri>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_012105_395737_C995F826 
X-CRM114-Status: GOOD (  38.04  )
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

On Mon, Jul 11, 2022 at 04:22:12AM +0300, Dafna Hirschfeld wrote:
> On 01.07.2022 02:06, Laurent Pinchart wrote:
> > From: Paul Elder <paul.elder@ideasonboard.com>
> > 
> > The CSI receiver is a component separate from the ISP or the resizers.
> > It is actually optional, not all device model include a CSI receiver. On
> > some SoCs CSI-2 support can be provided through an external CSI-2
> > receiver, connected to the ISP's parallel input.
> > 
> > To support those use cases, create a V4L2 subdev to model the CSI
> > receiver. It will allow the driver to handle both internal and external
> > CSI receivers the same way.
> > 
> > The next commit will plumb the CSI subdev to the rest of the driver,
> > replacing direct function calls.
> > 
> > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> > Changes since v1:
> > 
> > - Rename RKISP1_CSI_PAD_MAX to RKISP1_CSI_PAD_NUM
> > - Simplify format propagation
> > - Fix usage of uninitialized variables
> > - White space fixes
> > ---
> >  .../platform/rockchip/rkisp1/rkisp1-common.h  |  17 ++
> >  .../platform/rockchip/rkisp1/rkisp1-csi.c     | 288 ++++++++++++++++++
> >  .../platform/rockchip/rkisp1/rkisp1-csi.h     |   4 +
> >  .../platform/rockchip/rkisp1/rkisp1-dev.c     |   5 +
> >  4 files changed, 314 insertions(+)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > index 5301461d3ea3..84832e1367ff 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > @@ -68,6 +68,13 @@ enum rkisp1_rsz_pad {
> >  	RKISP1_RSZ_PAD_MAX
> >  };
> > 
> > +/* enum for the csi receiver pads */
> > +enum rkisp1_csi_pad {
> > +	RKISP1_CSI_PAD_SINK,
> > +	RKISP1_CSI_PAD_SRC,
> > +	RKISP1_CSI_PAD_NUM
> > +};
> > +
> >  /* enum for the capture id */
> >  enum rkisp1_stream_id {
> >  	RKISP1_MAINPATH,
> > @@ -141,11 +148,21 @@ struct rkisp1_sensor_async {
> >   * @rkisp1: pointer to the rkisp1 device
> >   * @dphy: a pointer to the phy
> >   * @is_dphy_errctrl_disabled: if dphy errctrl is disabled (avoid endless interrupt)
> > + * @sd: v4l2_subdev variable
> > + * @pads: media pads
> > + * @pad_cfg: configurations for the pads
> > + * @ops_lock: a lock for the subdev ops
> > + * @source: source in-use, set when starting streaming
> >   */
> >  struct rkisp1_csi {
> >  	struct rkisp1_device *rkisp1;
> >  	struct phy *dphy;
> >  	bool is_dphy_errctrl_disabled;
> > +	struct v4l2_subdev sd;
> > +	struct media_pad pads[RKISP1_CSI_PAD_NUM];
> > +	struct v4l2_subdev_pad_config pad_cfg[RKISP1_CSI_PAD_NUM];
> > +	struct mutex ops_lock; /* serialize the subdevice ops */
> > +	struct rkisp1_sensor_async *source;
> >  };
> > 
> >  /*
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
> > index 81849c8e9c73..173a0550af5c 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
> > @@ -15,10 +15,35 @@
> >  #include <linux/phy/phy-mipi-dphy.h>
> > 
> >  #include <media/v4l2-ctrls.h>
> > +#include <media/v4l2-fwnode.h>
> > 
> >  #include "rkisp1-common.h"
> >  #include "rkisp1-csi.h"
> > 
> > +#define RKISP1_CSI_DEV_NAME	RKISP1_DRIVER_NAME "_csi"
> > +
> > +#define RKISP1_CSI_DEF_FMT	MEDIA_BUS_FMT_SRGGB10_1X10
> > +
> > +static inline struct rkisp1_csi *to_rkisp1_csi(struct v4l2_subdev *sd)
> > +{
> > +	return container_of(sd, struct rkisp1_csi, sd);
> > +}
> > +
> > +static struct v4l2_mbus_framefmt *
> > +rkisp1_csi_get_pad_fmt(struct rkisp1_csi *csi,
> > +		       struct v4l2_subdev_state *sd_state,
> > +		       unsigned int pad, u32 which)
> > +{
> > +	struct v4l2_subdev_state state = {
> > +		.pads = csi->pad_cfg
> > +	};
> > +
> > +	if (which == V4L2_SUBDEV_FORMAT_TRY)
> > +		return v4l2_subdev_get_try_format(&csi->sd, sd_state, pad);
> > +	else
> > +		return v4l2_subdev_get_try_format(&csi->sd, &state, pad);
> > +}
> > +
> >  static int rkisp1_csi_config(struct rkisp1_csi *csi,
> >  			     const struct rkisp1_sensor_async *sensor)
> >  {
> > @@ -186,6 +211,269 @@ irqreturn_t rkisp1_csi_isr(int irq, void *ctx)
> >  	return IRQ_HANDLED;
> >  }
> > 
> > +/* ----------------------------------------------------------------------------
> > + * Subdev pad operations
> > + */
> > +
> > +static void rkisp1_csi_set_src_fmt(struct rkisp1_csi *csi,
> > +				   struct v4l2_subdev_state *sd_state,
> > +				   struct v4l2_mbus_framefmt *format,
> > +				   unsigned int which)
> > +{
> > +	struct v4l2_mbus_framefmt *sink_fmt;
> > +
> > +	/* We don't set the src format directly; take it from the sink format */
> > +	sink_fmt = rkisp1_csi_get_pad_fmt(csi, sd_state, RKISP1_CSI_PAD_SINK,
> > +					  which);
> > +
> > +	*format = *sink_fmt;
> > +}
> > +
> > +static void rkisp1_csi_set_sink_fmt(struct rkisp1_csi *csi,
> > +				    struct v4l2_subdev_state *sd_state,
> > +				    struct v4l2_mbus_framefmt *format,
> > +				    unsigned int which)
> > +{
> > +	const struct rkisp1_mbus_info *mbus_info;
> > +	struct v4l2_mbus_framefmt *sink_fmt, *src_fmt;
> > +
> > +	sink_fmt = rkisp1_csi_get_pad_fmt(csi, sd_state, RKISP1_CSI_PAD_SINK,
> > +					  which);
> > +	src_fmt = rkisp1_csi_get_pad_fmt(csi, sd_state, RKISP1_CSI_PAD_SRC,
> > +					 which);
> > +
> > +	sink_fmt->code = format->code;
> > +
> > +	mbus_info = rkisp1_mbus_info_get_by_code(sink_fmt->code);
> > +	if (!mbus_info || !(mbus_info->direction & RKISP1_ISP_SD_SINK)) {
> > +		sink_fmt->code = RKISP1_CSI_DEF_FMT;
> > +		mbus_info = rkisp1_mbus_info_get_by_code(sink_fmt->code);
> > +	}
> > +
> > +	sink_fmt->width = clamp_t(u32, format->width,
> > +				  RKISP1_ISP_MIN_WIDTH,
> > +				  RKISP1_ISP_MAX_WIDTH);
> > +	sink_fmt->height = clamp_t(u32, format->height,
> > +				   RKISP1_ISP_MIN_HEIGHT,
> > +				   RKISP1_ISP_MAX_HEIGHT);
> > +
> > +	/* Propagate to source pad */
> > +	*src_fmt = *sink_fmt;
> > +
> > +	*format = *sink_fmt;
> > +}
> > +
> > +static int rkisp1_csi_enum_mbus_code(struct v4l2_subdev *sd,
> > +				     struct v4l2_subdev_state *sd_state,
> > +				     struct v4l2_subdev_mbus_code_enum *code)
> > +{
> > +	unsigned int i;
> > +	int pos = 0;
> > +
> > +	for (i = 0; ; i++) {
> > +		const struct rkisp1_mbus_info *fmt =
> > +			rkisp1_mbus_info_get_by_index(i);
> > +
> > +		if (!fmt)
> > +			return -EINVAL;
> > +
> > +		if (fmt->direction & RKISP1_ISP_SD_SINK)
> > +			pos++;
> > +
> > +		if (code->index == pos - 1) {
> > +			code->code = fmt->mbus_code;
> > +			return 0;
> > +		}
> > +	}
> > +
> > +	return -EINVAL;
> > +}
> > +
> > +static int rkisp1_csi_init_config(struct v4l2_subdev *sd,
> > +				  struct v4l2_subdev_state *sd_state)
> > +{
> > +	struct v4l2_mbus_framefmt *sink_fmt, *src_fmt;
> > +
> > +	sink_fmt = v4l2_subdev_get_try_format(sd, sd_state,
> > +					      RKISP1_CSI_PAD_SINK);
> > +	src_fmt = v4l2_subdev_get_try_format(sd, sd_state,
> > +					     RKISP1_CSI_PAD_SRC);
> > +
> > +	sink_fmt->width = RKISP1_DEFAULT_WIDTH;
> > +	sink_fmt->height = RKISP1_DEFAULT_HEIGHT;
> > +	sink_fmt->field = V4L2_FIELD_NONE;
> > +	sink_fmt->code = RKISP1_CSI_DEF_FMT;
> > +
> > +	*src_fmt = *sink_fmt;
> > +
> > +	return 0;
> > +}
> > +
> > +static int rkisp1_csi_get_fmt(struct v4l2_subdev *sd,
> > +			      struct v4l2_subdev_state *sd_state,
> > +			      struct v4l2_subdev_format *fmt)
> > +{
> > +	struct rkisp1_csi *csi = to_rkisp1_csi(sd);
> > +
> > +	mutex_lock(&csi->ops_lock);
> > +	fmt->format = *rkisp1_csi_get_pad_fmt(csi, sd_state, fmt->pad,
> > +					      fmt->which);
> > +	mutex_unlock(&csi->ops_lock);
> > +	return 0;
> > +}
> > +
> > +static int rkisp1_csi_set_fmt(struct v4l2_subdev *sd,
> > +			      struct v4l2_subdev_state *sd_state,
> > +			      struct v4l2_subdev_format *fmt)
> > +{
> > +	struct rkisp1_csi *csi = to_rkisp1_csi(sd);
> > +
> > +	mutex_lock(&csi->ops_lock);
> > +	if (fmt->pad == RKISP1_CSI_PAD_SINK)
> > +		rkisp1_csi_set_sink_fmt(csi, sd_state, &fmt->format,
> > +					fmt->which);
> > +	else
> > +		rkisp1_csi_set_src_fmt(csi, sd_state, &fmt->format,
> > +				       fmt->which);
> > +
> > +	mutex_unlock(&csi->ops_lock);
> > +	return 0;
> > +}
> > +
> > +/* ----------------------------------------------------------------------------
> > + * Subdev video operations
> > + */
> > +
> > +static int rkisp1_csi_s_stream(struct v4l2_subdev *sd, int enable)
> > +{
> > +	struct rkisp1_csi *csi = to_rkisp1_csi(sd);
> > +	struct rkisp1_device *rkisp1 = csi->rkisp1;
> > +	struct media_pad *source_pad;
> > +	struct v4l2_subdev *source;
> > +	int ret;
> > +
> > +	if (!enable) {
> > +		v4l2_subdev_call(csi->source->sd, video, s_stream,
> > +				 false);
> > +
> > +		rkisp1_csi_stop(csi);
> > +
> > +		return 0;
> > +	}
> > +
> > +	source_pad = media_entity_remote_source_pad_unique(&sd->entity);
> > +	if (IS_ERR(source_pad)) {
> > +		dev_dbg(rkisp1->dev, "Failed to get source for CSI: %d\n",
> > +			IS_ERR(source_pad));
> 
> s/IS_ERR/PTR_ERR/

Oops. Fixed.

> > +		return -EPIPE;
> > +	}
> > +
> > +	source = media_entity_to_v4l2_subdev(source_pad->entity);
> > +	if (!source) {
> > +		/* This should really not happen, so is not worth a message. */
> > +		return -EPIPE;
> > +	}
> > +
> > +	csi->source = container_of(source->asd, struct rkisp1_sensor_async,
> > +				   asd);
> > +
> > +	if (csi->source->mbus_type != V4L2_MBUS_CSI2_DPHY)
> > +		return -EINVAL;
> 
> I would set here csi->source to NULL,

OK.

> and shouldn't setting it be inside the lock?

csi->source is only accessed by this function, so I don't think that's
needed.

> > +	mutex_lock(&csi->ops_lock);
> > +	ret = rkisp1_csi_start(csi, csi->source);
> > +	mutex_unlock(&csi->ops_lock);
> > +	if (ret)
> > +		return ret;
> > +
> > +	v4l2_subdev_call(csi->source->sd, video, s_stream, true);
> > +
> > +	return 0;
> > +}
> > +
> > +/* ----------------------------------------------------------------------------
> > + * Registration
> > + */
> > +
> > +static const struct media_entity_operations rkisp1_csi_media_ops = {
> > +	.link_validate = v4l2_subdev_link_validate,
> > +};
> > +
> > +static const struct v4l2_subdev_video_ops rkisp1_csi_video_ops = {
> > +	.s_stream = rkisp1_csi_s_stream,
> > +};
> > +
> > +static const struct v4l2_subdev_pad_ops rkisp1_csi_pad_ops = {
> > +	.enum_mbus_code = rkisp1_csi_enum_mbus_code,
> > +	.init_cfg = rkisp1_csi_init_config,
> > +	.get_fmt = rkisp1_csi_get_fmt,
> > +	.set_fmt = rkisp1_csi_set_fmt,
> > +};
> > +
> > +static const struct v4l2_subdev_ops rkisp1_csi_ops = {
> > +	.video = &rkisp1_csi_video_ops,
> > +	.pad = &rkisp1_csi_pad_ops,
> > +};
> > +
> > +int rkisp1_csi_register(struct rkisp1_device *rkisp1)
> > +{
> > +	struct rkisp1_csi *csi = &rkisp1->csi;
> > +	struct v4l2_subdev_state state = {};
> > +	struct media_pad *pads;
> > +	struct v4l2_subdev *sd;
> > +	int ret;
> > +
> > +	csi->rkisp1 = rkisp1;
> > +	mutex_init(&csi->ops_lock);
> > +
> > +	sd = &csi->sd;
> > +	v4l2_subdev_init(sd, &rkisp1_csi_ops);
> > +	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
> > +	sd->entity.ops = &rkisp1_csi_media_ops;
> > +	sd->entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
> > +	sd->owner = THIS_MODULE;
> > +	strscpy(sd->name, RKISP1_CSI_DEV_NAME, sizeof(sd->name));
> > +
> > +	pads = csi->pads;
> > +	pads[RKISP1_CSI_PAD_SINK].flags = MEDIA_PAD_FL_SINK |
> > +					  MEDIA_PAD_FL_MUST_CONNECT;
> > +	pads[RKISP1_CSI_PAD_SRC].flags = MEDIA_PAD_FL_SOURCE |
> > +					 MEDIA_PAD_FL_MUST_CONNECT;
> > +
> > +	ret = media_entity_pads_init(&sd->entity, RKISP1_CSI_PAD_NUM, pads);
> > +	if (ret)
> > +		goto error;
> > +
> > +	state.pads = csi->pad_cfg;
> > +	rkisp1_csi_init_config(sd, &state);
> > +
> > +	ret = v4l2_device_register_subdev(&csi->rkisp1->v4l2_dev, sd);
> > +	if (ret) {
> > +		dev_err(sd->dev, "Failed to register csi receiver subdev\n");
> > +		goto error;
> > +	}
> > +
> > +	return 0;
> > +
> > +error:
> > +	media_entity_cleanup(&sd->entity);
> > +	mutex_destroy(&csi->ops_lock);
> > +	csi->rkisp1 = NULL;
> > +	return ret;
> > +}
> > +
> > +void rkisp1_csi_unregister(struct rkisp1_device *rkisp1)
> > +{
> > +	struct rkisp1_csi *csi = &rkisp1->csi;
> > +
> > +	if (!csi->rkisp1)
> > +		return;
> > +
> > +	v4l2_device_unregister_subdev(&csi->sd);
> > +	media_entity_cleanup(&csi->sd.entity);
> > +	mutex_destroy(&csi->ops_lock);
> > +}
> > +
> >  int rkisp1_csi_init(struct rkisp1_device *rkisp1)
> >  {
> >  	struct rkisp1_csi *csi = &rkisp1->csi;
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
> > index 97ce7e7959ab..ddf8e5e08f55 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
> > @@ -13,10 +13,14 @@
> > 
> >  struct rkisp1_device;
> >  struct rkisp1_sensor_async;
> > +struct v4l2_subdev;
> > 
> >  int rkisp1_csi_init(struct rkisp1_device *rkisp1);
> >  void rkisp1_csi_cleanup(struct rkisp1_device *rkisp1);
> > 
> > +int rkisp1_csi_register(struct rkisp1_device *rkisp1);
> > +void rkisp1_csi_unregister(struct rkisp1_device *rkisp1);
> > +
> >  int rkisp1_csi_start(struct rkisp1_csi *csi,
> >  		     const struct rkisp1_sensor_async *sensor);
> >  void rkisp1_csi_stop(struct rkisp1_csi *csi);
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > index 2c441665c017..5428e19e818f 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > @@ -324,6 +324,7 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
> > 
> >  static void rkisp1_entities_unregister(struct rkisp1_device *rkisp1)
> >  {
> > +	rkisp1_csi_unregister(rkisp1);
> >  	rkisp1_params_unregister(rkisp1);
> >  	rkisp1_stats_unregister(rkisp1);
> >  	rkisp1_capture_devs_unregister(rkisp1);
> > @@ -355,6 +356,10 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
> >  	if (ret)
> >  		goto error;
> > 
> > +	ret = rkisp1_csi_register(rkisp1);
> > +	if (ret)
> > +		goto error;
> > +
> >  	ret = rkisp1_create_links(rkisp1);
> >  	if (ret)
> >  		goto error;

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
