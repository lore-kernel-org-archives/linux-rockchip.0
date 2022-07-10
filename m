Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6031AC43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jul 2022 19:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GOQiJlNKoD21RJKBXbQZ3l8YW1sD6WXB3Hp22veHZ+E=; b=y6DS5SvPU7d7ddi8BvoVzQnCI0
	gpyOWtCRvYksMn5WgX+MNCHqALnMGAK6lbe0YJgyur4VPiJ000IxBrYOYDtHGfdh2uiW0ihvx3H6c
	yk3CmbGn/euU6PzrFyKAZkGCA5k8vruMw5Ck7+p93BoUAL6Pzs60vcEQjwKVHFBDjiH2v9MdzbE7K
	Mt5lBqfgRKTTHDvbwSIsGwOmioVNDq765+wjoVy+6yH6i4d+bTyJS19EqPPPhm8nG2GvGEyorldJQ
	k+X/HwqFneBgxthfFbckKt00o8tICNLVRom80GR6aqZ5zUwnBdhIzP4xDEctZbofpk1DG8jMcF3jg
	SxZQm9Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAcwG-00DUFv-06; Sun, 10 Jul 2022 19:49:56 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAcwC-00DU9y-Nd
	for linux-rockchip@lists.infradead.org; Sun, 10 Jul 2022 19:49:54 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id D7F6F5C0061;
	Sun, 10 Jul 2022 15:49:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Sun, 10 Jul 2022 15:49:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1657482591; x=1657568991; bh=V6JgLWdccE
	IMz+qv1sEblb9V6yseT1o4V/fe7MLIkq8=; b=G/K9Cw3DfpEp4F58KWEYMW6O6S
	PRjzZ4BlzsG0poDf+S2dPB0tBobYKR6KOr1cQlx/uPHIR0MG1SAbu4Cb1ER8XAku
	uu1F/myIoSThPUxJriJG8B0BGwyJvC5otCSTJnVYcC7ZjjF8dk9tmpY8nOtqarjl
	KTQSOp/WM0IZ7AM3qIMiLlnmgRNT9x8UCgTxKoerSMwmkucCeI5aKCA0bAbBkoCR
	nCNkcO1IKERZHyt71mUR7l1jPUSL/kqX4jn3AgtmhKB5JXkmX+a0EColKWYJmrLT
	IWP421BgNMwHakeW/0fhZeSJoU9PCW5BJhKiZlHfEEsxHOK8ZfCcCuGwTGlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657482591; x=1657568991; bh=V6JgLWdccEIMz+qv1sEblb9V6yse
	T1o4V/fe7MLIkq8=; b=mjxGXwK8i6EUa18MeIuvAd+2yLvI6dv73Y/mxJmb6Qm+
	L5kN3ymZ+WJ4IRYlsQQx99oOlfLlvYvvchxHMQl5eKLcgouKeRTB+ZPyclvDYGno
	v0KpXFj/hiu7dqmkYlXxTTRPgNBtY/bQyGWtZ0lAEWm8OJBwXVGoKdMWyNrsPOaH
	ZPl93fj96EKNWYlNfpnqsCgeRHn1dAuUy/gZIpe1vC+SWYgyj0dp+XAY9oXdkMkU
	S+RoqDuNPvzcAH7VkaKecUmFcs+X5A2RxPI+/DwPnO+h+1x3JtvMKiWk7+gGTZzO
	/NfX92dshxv+xl9/sh7Du5B4269ajI9y5pCfcG2Lgg==
X-ME-Sender: <xms:Xy3LYmsvXnZ-2PAF1ni0r3HbGzfxLCqV1YBtZgROk8GhG3yP0aDinA>
    <xme:Xy3LYrduTs3NTrLnu7vWFd6WYI-KBdSY43oIN0EYWwrwBfbxt7orV6zKakPKAi2VT
    g7HsKmC9PDqZ6VYens>
X-ME-Received: <xmr:Xy3LYhzm8Zv8irxSZ7nC82aFXWDzwaEZkuHtScd9wy25aldsT3ttRA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudejuddgudeggecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttdejnecuhfhrohhmpeffrghf
    nhgrucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqne
    cuggftrfgrthhtvghrnhepheeivdejhedvffelkeffvdejvdeiheehtdethfdvtdeufeeu
    keelhfetuddugfejnecuffhomhgrihhnpehinhhfrhgruggvrggurdhorhhgnecuvehluh
    hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggrfhhnrgesfhgr
    shhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:Xy3LYhOOb2n2WBSScMhH8SqtZ24J_Bzg4AfL3W6ROqPZLQXO7TJePA>
    <xmx:Xy3LYm9U7M3CN_5RFyQkxl60iJsGTbSy6h7jwFz-XaXxLuxTX0a7xg>
    <xmx:Xy3LYpVJtpqvD9eQxsoQGqQTRPCe0iMmGJZMwD6i-GSrTrLWxVpBCg>
    <xmx:Xy3LYqY6ZrKCtrQPIXjVPeh3E2bCwoz3z_lzIwYKEjSM3X8a7okobg>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 10 Jul 2022 15:49:49 -0400 (EDT)
Date: Sun, 10 Jul 2022 22:49:46 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: paul.elder@ideasonboard.com
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 18/55] media: rkisp1: Fix sensor source pad retrieval
 at bound time
Message-ID: <20220710194946.5v2q5qmp2loje4vc@guri>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-19-laurent.pinchart@ideasonboard.com>
 <20220707140123.GM3886060@pyrite.rasen.tech>
 <YsbyFwtuhBChV+gn@pendragon.ideasonboard.com>
 <20220707145052.GP3886060@pyrite.rasen.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220707145052.GP3886060@pyrite.rasen.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220710_124952_877662_E44996F0 
X-CRM114-Status: GOOD (  26.80  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 07.07.2022 23:50, paul.elder@ideasonboard.com wrote:
>Hi Laurent,
>
>On Thu, Jul 07, 2022 at 05:47:51PM +0300, Laurent Pinchart wrote:
>> Hi Paul,
>>
>> On Thu, Jul 07, 2022 at 11:01:23PM +0900, paul.elder@ideasonboard.com wrote:
>> > On Fri, Jul 01, 2022 at 02:06:36AM +0300, Laurent Pinchart wrote:
>> > > When a sensor is bound, its source pad is retrieved in the .bound()
>> > > operation with a call to media_entity_get_fwnode_pad(). The function
>> > > should be called with the source endpoint fwnode of the sensor, but is
>> > > instead called with the sensor's device fwnode.
>> > >
>> > > Fix this, which involves storing a reference to the source endpoint
>> > > fwnode in the rkisp1_sensor_async structure, and thus implementing the
>> > > subdev notifier .destroy() operation to release the reference.
>> > >
>> > > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>> > > ---
>> > >  .../platform/rockchip/rkisp1/rkisp1-common.h  |  2 ++
>> > >  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 28 ++++++++++++++++---
>> > >  2 files changed, 26 insertions(+), 4 deletions(-)
>> > >
>> > > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>> > > index b0896b508db3..f08b3dec1465 100644
>> > > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>> > > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>> > > @@ -117,6 +117,7 @@ struct rkisp1_info {
>> > >   *
>> > >   * @asd:		async_subdev variable for the sensor
>> > >   * @index:		index of the sensor (counting sensor found in DT)
>> > > + * @source_ep:		fwnode for the sensor source endpoint
>> > >   * @lanes:		number of lanes
>> > >   * @mbus_type:		type of bus (currently only CSI2 is supported)
>> > >   * @mbus_flags:		media bus (V4L2_MBUS_*) flags
>> > > @@ -127,6 +128,7 @@ struct rkisp1_info {
>> > >  struct rkisp1_sensor_async {
>> > >  	struct v4l2_async_subdev asd;
>> > >  	unsigned int index;
>> > > +	struct fwnode_handle *source_ep;
>> > >  	unsigned int lanes;
>> > >  	enum v4l2_mbus_type mbus_type;
>> > >  	unsigned int mbus_flags;
>> > > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>> > > index 2e68f35e8ea5..813c013139ea 100644
>> > > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>> > > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>> > > @@ -138,7 +138,7 @@ static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
>> > >  	phy_init(s_asd->dphy);
>> > >
>> > >  	/* Create the link to the sensor. */
>> > > -	source_pad = media_entity_get_fwnode_pad(&sd->entity, sd->fwnode,
>> > > +	source_pad = media_entity_get_fwnode_pad(&sd->entity, s_asd->source_ep,
>> > >  						 MEDIA_PAD_FL_SOURCE);
>> > >  	if (source_pad < 0) {
>> > >  		dev_err(rkisp1->dev, "failed to find source pad for %s\n",
>> > > @@ -170,10 +170,19 @@ static int rkisp1_subdev_notifier_complete(struct v4l2_async_notifier *notifier)
>> > >  	return v4l2_device_register_subdev_nodes(&rkisp1->v4l2_dev);
>> > >  }
>> > >
>> > > +static void rkisp1_subdev_notifier_destroy(struct v4l2_async_subdev *asd)
>> > > +{
>> > > +	struct rkisp1_sensor_async *rk_asd =
>> > > +		container_of(asd, struct rkisp1_sensor_async, asd);
>> > > +
>> > > +	fwnode_handle_put(rk_asd->source_ep);
>> > > +}
>> > > +
>> > >  static const struct v4l2_async_notifier_operations rkisp1_subdev_notifier_ops = {
>> > >  	.bound = rkisp1_subdev_notifier_bound,
>> > >  	.unbind = rkisp1_subdev_notifier_unbind,
>> > >  	.complete = rkisp1_subdev_notifier_complete,
>> > > +	.destroy = rkisp1_subdev_notifier_destroy,
>> > >  };
>> > >
>> > >  static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
>> > > @@ -190,6 +199,7 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
>> > >  			.bus_type = V4L2_MBUS_CSI2_DPHY
>> > >  		};
>> > >  		struct rkisp1_sensor_async *rk_asd;
>> > > +		struct fwnode_handle *source = NULL;
>> > >  		struct fwnode_handle *ep;
>> > >
>> > >  		ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(rkisp1->dev),
>> > > @@ -202,15 +212,24 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
>> > >  		if (ret)
>> > >  			goto err_parse;
>> > >
>> > > -		rk_asd = v4l2_async_nf_add_fwnode_remote(ntf, ep,
>> > > -							 struct
>> > > -							 rkisp1_sensor_async);
>> > > +		source = fwnode_graph_get_remote_endpoint(ep);
>> > > +		if (!source) {
>> > > +			dev_err(rkisp1->dev,
>> > > +				"endpoint %pfw has no remote endpoint\n",
>> > > +				ep);
>> > > +			ret = -ENODEV;
>> > > +			goto err_parse;
>> >
>> > source is error here so you don't need to fwnode_handle_put() it later I
>> > think.
>>
>> That's right, but I still need the fwnode_handle_put(ep) and
>> v4l2_async_nf_cleanup(ntf). As fwnode_handle_put(NULL) is a no-op, I
>> didn't add a NULL check before calling it.
>
>Ah, I see. Understandable.
>
>Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>

Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

>
>>
>> > > +		}
>> > > +
>> > > +		rk_asd = v4l2_async_nf_add_fwnode(ntf, source,
>> > > +						  struct rkisp1_sensor_async);
>> > >  		if (IS_ERR(rk_asd)) {
>> > >  			ret = PTR_ERR(rk_asd);
>> > >  			goto err_parse;
>> > >  		}
>> > >
>> > >  		rk_asd->index = index++;
>> > > +		rk_asd->source_ep = source;
>> > >  		rk_asd->mbus_type = vep.bus_type;
>> > >  		rk_asd->mbus_flags = vep.bus.mipi_csi2.flags;
>> > >  		rk_asd->lanes = vep.bus.mipi_csi2.num_data_lanes;
>> > > @@ -225,6 +244,7 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
>> > >  		continue;
>> > >  err_parse:
>> > >  		fwnode_handle_put(ep);
>> > > +		fwnode_handle_put(source);
>> > >  		v4l2_async_nf_cleanup(ntf);
>> > >  		return ret;
>> > >  	}
>
>_______________________________________________
>Linux-rockchip mailing list
>Linux-rockchip@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
