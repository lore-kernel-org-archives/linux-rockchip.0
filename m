Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16059C43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 14:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mL4ZqDgy5Uh6SpJOB848KGBuCri5HP5fuNx90XDA3Q8=; b=KGV2bM2WeHM1EX
	LH4vtwfFXocui3n0h3JfO8B71jY1OptQty/NjB9QaGFFYnItmowf1ZOBwY/pYztZ2bhlqaiQEKDVg
	5MXME/EcbeIIEbvNajWQ5RnR8uP5SEfDrmpMTudO+v5Zmkj8bUcdmBzgVKV0EycFe3HVP5fH0jxLL
	e1uob8nVCkrgNHI//Y/LAf0M5A3MNSI66R+0SycUGnKZrsundU9MncnSqK4KzZZR4hQ6/bkPAmz08
	qJft8+bme+HRLVpCO6EHIl6f8Wn2TkPY/eK5HdSuzLJ1DokoBtVOkRoSIFie+GbykPPWhh8jp85Mb
	k+mS9dDVpjcriGX1sdjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9SqU-00GcQY-VC; Thu, 07 Jul 2022 14:51:10 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9SqO-00GcNW-My
	for linux-rockchip@lists.infradead.org; Thu, 07 Jul 2022 14:51:09 +0000
Received: from pyrite.rasen.tech (softbank036240121080.bbtec.net [36.240.121.80])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4EDD6326;
	Thu,  7 Jul 2022 16:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657205462;
	bh=1FMM9lyOL9bqaepNMdMa8h7pr7/6KwIZW3RNznvcj8Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hXO4MKJmGPOLNud35PmrobKlZfzFgt5Ot9dIjCRM5S3SV89aBs0M1428iYTnxNcCG
	 YKXJYj6jnIxQo2h0G0znD7iSVzYOT5Q2IPAyrg4sXksM+Zy6p3iDfvmHROpoENvgBN
	 o6ONdCi2hDcQRAQpfqyWAjknzXCCvtXaVGxubpvQ=
Date: Thu, 7 Jul 2022 23:50:52 +0900
From: paul.elder@ideasonboard.com
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 18/55] media: rkisp1: Fix sensor source pad retrieval
 at bound time
Message-ID: <20220707145052.GP3886060@pyrite.rasen.tech>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-19-laurent.pinchart@ideasonboard.com>
 <20220707140123.GM3886060@pyrite.rasen.tech>
 <YsbyFwtuhBChV+gn@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YsbyFwtuhBChV+gn@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_075104_966187_077D01CB 
X-CRM114-Status: GOOD (  29.18  )
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

Hi Laurent,

On Thu, Jul 07, 2022 at 05:47:51PM +0300, Laurent Pinchart wrote:
> Hi Paul,
> 
> On Thu, Jul 07, 2022 at 11:01:23PM +0900, paul.elder@ideasonboard.com wrote:
> > On Fri, Jul 01, 2022 at 02:06:36AM +0300, Laurent Pinchart wrote:
> > > When a sensor is bound, its source pad is retrieved in the .bound()
> > > operation with a call to media_entity_get_fwnode_pad(). The function
> > > should be called with the source endpoint fwnode of the sensor, but is
> > > instead called with the sensor's device fwnode.
> > > 
> > > Fix this, which involves storing a reference to the source endpoint
> > > fwnode in the rkisp1_sensor_async structure, and thus implementing the
> > > subdev notifier .destroy() operation to release the reference.
> > > 
> > > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > ---
> > >  .../platform/rockchip/rkisp1/rkisp1-common.h  |  2 ++
> > >  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 28 ++++++++++++++++---
> > >  2 files changed, 26 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > > index b0896b508db3..f08b3dec1465 100644
> > > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > > @@ -117,6 +117,7 @@ struct rkisp1_info {
> > >   *
> > >   * @asd:		async_subdev variable for the sensor
> > >   * @index:		index of the sensor (counting sensor found in DT)
> > > + * @source_ep:		fwnode for the sensor source endpoint
> > >   * @lanes:		number of lanes
> > >   * @mbus_type:		type of bus (currently only CSI2 is supported)
> > >   * @mbus_flags:		media bus (V4L2_MBUS_*) flags
> > > @@ -127,6 +128,7 @@ struct rkisp1_info {
> > >  struct rkisp1_sensor_async {
> > >  	struct v4l2_async_subdev asd;
> > >  	unsigned int index;
> > > +	struct fwnode_handle *source_ep;
> > >  	unsigned int lanes;
> > >  	enum v4l2_mbus_type mbus_type;
> > >  	unsigned int mbus_flags;
> > > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > > index 2e68f35e8ea5..813c013139ea 100644
> > > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > > @@ -138,7 +138,7 @@ static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
> > >  	phy_init(s_asd->dphy);
> > >  
> > >  	/* Create the link to the sensor. */
> > > -	source_pad = media_entity_get_fwnode_pad(&sd->entity, sd->fwnode,
> > > +	source_pad = media_entity_get_fwnode_pad(&sd->entity, s_asd->source_ep,
> > >  						 MEDIA_PAD_FL_SOURCE);
> > >  	if (source_pad < 0) {
> > >  		dev_err(rkisp1->dev, "failed to find source pad for %s\n",
> > > @@ -170,10 +170,19 @@ static int rkisp1_subdev_notifier_complete(struct v4l2_async_notifier *notifier)
> > >  	return v4l2_device_register_subdev_nodes(&rkisp1->v4l2_dev);
> > >  }
> > >  
> > > +static void rkisp1_subdev_notifier_destroy(struct v4l2_async_subdev *asd)
> > > +{
> > > +	struct rkisp1_sensor_async *rk_asd =
> > > +		container_of(asd, struct rkisp1_sensor_async, asd);
> > > +
> > > +	fwnode_handle_put(rk_asd->source_ep);
> > > +}
> > > +
> > >  static const struct v4l2_async_notifier_operations rkisp1_subdev_notifier_ops = {
> > >  	.bound = rkisp1_subdev_notifier_bound,
> > >  	.unbind = rkisp1_subdev_notifier_unbind,
> > >  	.complete = rkisp1_subdev_notifier_complete,
> > > +	.destroy = rkisp1_subdev_notifier_destroy,
> > >  };
> > >  
> > >  static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
> > > @@ -190,6 +199,7 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
> > >  			.bus_type = V4L2_MBUS_CSI2_DPHY
> > >  		};
> > >  		struct rkisp1_sensor_async *rk_asd;
> > > +		struct fwnode_handle *source = NULL;
> > >  		struct fwnode_handle *ep;
> > >  
> > >  		ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(rkisp1->dev),
> > > @@ -202,15 +212,24 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
> > >  		if (ret)
> > >  			goto err_parse;
> > >  
> > > -		rk_asd = v4l2_async_nf_add_fwnode_remote(ntf, ep,
> > > -							 struct
> > > -							 rkisp1_sensor_async);
> > > +		source = fwnode_graph_get_remote_endpoint(ep);
> > > +		if (!source) {
> > > +			dev_err(rkisp1->dev,
> > > +				"endpoint %pfw has no remote endpoint\n",
> > > +				ep);
> > > +			ret = -ENODEV;
> > > +			goto err_parse;
> > 
> > source is error here so you don't need to fwnode_handle_put() it later I
> > think.
> 
> That's right, but I still need the fwnode_handle_put(ep) and
> v4l2_async_nf_cleanup(ntf). As fwnode_handle_put(NULL) is a no-op, I
> didn't add a NULL check before calling it.

Ah, I see. Understandable.

Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>

> 
> > > +		}
> > > +
> > > +		rk_asd = v4l2_async_nf_add_fwnode(ntf, source,
> > > +						  struct rkisp1_sensor_async);
> > >  		if (IS_ERR(rk_asd)) {
> > >  			ret = PTR_ERR(rk_asd);
> > >  			goto err_parse;
> > >  		}
> > >  
> > >  		rk_asd->index = index++;
> > > +		rk_asd->source_ep = source;
> > >  		rk_asd->mbus_type = vep.bus_type;
> > >  		rk_asd->mbus_flags = vep.bus.mipi_csi2.flags;
> > >  		rk_asd->lanes = vep.bus.mipi_csi2.num_data_lanes;
> > > @@ -225,6 +244,7 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
> > >  		continue;
> > >  err_parse:
> > >  		fwnode_handle_put(ep);
> > > +		fwnode_handle_put(source);
> > >  		v4l2_async_nf_cleanup(ntf);
> > >  		return ret;
> > >  	}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
