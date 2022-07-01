Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F10D6C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 04:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hbv4M+38OsWecP/5QPUQ8NzJC7pxjAmDnQYs1kHrMAI=; b=NDtpQxZoN3lMLlYDI0igTN7BFA
	p7V/SOHGKd+7qzWD4/az7qAWFpzY5a86OiGrmGkcRd1TdswrsB+i3t/mdXXiowDPprjLUtWSlMIR8
	/C9KSLw34myylBLZ3tlBckrOQsaouUv2kBVSI2yrTUr5Bk4GDEIFzYeQN90r5J6xDVWY7Fpr6RlI/
	0gWfY22evUOi7rDsAH0rkP8ja84Nf1FUBT9Ib0x21A4hYxiS+/uA3IcWxEr/h+GO1JTZtwYl2RFEy
	4oer/ecZKoozD+Dg3ghEVYIFwbmnFUSTqdcxa7tGRj9uxUMFFa0BTiouyb/DsAU5zpK4b+jCGFfQ1
	vZPMQkiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o78Oo-002qrP-Gw; Fri, 01 Jul 2022 04:36:58 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o78Ol-002qpW-2a
	for linux-rockchip@lists.infradead.org; Fri, 01 Jul 2022 04:36:57 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 22E895C00C9;
	Fri,  1 Jul 2022 00:36:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Fri, 01 Jul 2022 00:36:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656650208; x=1656736608; bh=WnBgrnf9TK
	KXhLuH5ml1t97t1F6KrIgS/NWBIjpmGrw=; b=mt7BQ7p/Yn45SJJvb2SxEq0MW6
	Dy2wutm1MepAOzQnk1OqeLzf33+CRooci02YDGtPJMBF7TaX/FuU/w15t7pUhDrC
	7734wpPFCxzzi+t5+8yC9mjqhbreN9iXei1ZEeOAd7c3cy4KTX6H04nvm6PnxsfO
	s3tiB8pbIuOZ2+g0QQi8RhSA1HSdS0z/dPfgHxj85bCyiNc5Az1aQ7fgZ2qDJzJo
	EIr35Ths2E5/9ZJNdti1NXy6R7/Gl07ezPDTUIMEjBdqVByfxFpJl6Td607uGdqb
	gYWOfjgYLLOBID4pJKAFbR6ZbuiTwibW099ajGlobm/na9FWeDWXbls389Bw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656650208; x=1656736608; bh=WnBgrnf9TKKXhLuH5ml1t97t1F6K
	rIgS/NWBIjpmGrw=; b=Ko7YQZ1DfxK4jL8PT1C65YBzXbAg4D1wlbdoZkMM8lfK
	G5TnyNQ5thfE4kKDMsXQ4450g4ex2eOknpl0vdSdPWYh5OdBMGanPNuEpxYUHi+q
	HXmpZOCm/LQiNUIHNAVXYHJkp9ELhDuW88n5TKMk4K+rwobz0wfsFZMlTD5MoypS
	rq16XoNwUfB8MaRbPw/h7Ra3xJoDejHUgDrQqkRBqOk1xSQSU2BlXwfaJJdRnX3j
	DqWgFETx5v/yLcSgPq12BcwAGZ+E3eBFGn3qjHPiHoTn4Kn+WYc/bmpY86DbfkbU
	pxAJ0aaGc/G51vtATOS3J8/aF9pRdwW8cvz9czVWww==
X-ME-Sender: <xms:33m-YrCdztfziJVydebwDz6dJNN5lMn8MQ05PwEHmFJL86p8kYs9iA>
    <xme:33m-Yhhg28peYplEvlgscz-OkKeu_TjjzHzZT0IcGutXvWvCi4k7nGV1vHhV8Wlun
    a_bl7knIl7mSTbYjxY>
X-ME-Received: <xmr:33m-YmnSPdW7aQeG7Q5WiW3LyV-zx1JPPPl5aygOhCX3Z7-lq3TXFw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudehvddgkeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:33m-YtxYDKITD5yYQ_7z-MUtHmAjrmlAnveaMIVov_WsfuXPnFQS5g>
    <xmx:33m-YgRCKwaoohh27ifsch6edDKFN7wQN1ZckdAchmYJRV64a77jLw>
    <xmx:33m-YgZQUVLDfs546-i072SausQ7axykd2chTwa8_kTrTIL5sOcD5g>
    <xmx:4Hm-YlQgvbVnaCutoT2gH5KX6TW98B6jirkw1mnwbJJdDiji2rmxvg>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 1 Jul 2022 00:36:44 -0400 (EDT)
Date: Fri, 1 Jul 2022 07:36:41 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 17/55] media: rkisp1: Fix sensor source pad retrieval at
 bound time
Message-ID: <20220701043641.bo3sgetazko3fwoi@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-18-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-18-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_213655_683381_247922C5 
X-CRM114-Status: GOOD (  13.46  )
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

On 15.06.2022 04:10, Paul Elder wrote:
>From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
>When a sensor is bound, its source pad is retrieved in the .bound()
>operation with a call to media_entity_get_fwnode_pad(). The function
>should be called with the source endpoint fwnode of the sensor, but is
>instead called with the sensor's device fwnode.
>
>Fix this, which involves storing a reference to the source endpoint
>fwnode in the rkisp1_sensor_async structure, and thus implementing the
>subdev notifier .destroy() operation to release the reference.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>---
> .../platform/rockchip/rkisp1/rkisp1-common.h  |  2 ++
> .../platform/rockchip/rkisp1/rkisp1-dev.c     | 28 ++++++++++++++++---
> 2 files changed, 26 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>index ba11baf75fa9..60c5462e1746 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>@@ -117,6 +117,7 @@ struct rkisp1_info {
>  *
>  * @asd:		async_subdev variable for the sensor
>  * @index:		index of the sensor (counting sensor found in DT)
>+ * @source_ep:		fwnode for the sensor source endpoint
>  * @lanes:		number of lanes
>  * @mbus_type:		type of bus (currently only CSI2 is supported)
>  * @mbus_flags:		media bus (V4L2_MBUS_*) flags
>@@ -127,6 +128,7 @@ struct rkisp1_info {
> struct rkisp1_sensor_async {
> 	struct v4l2_async_subdev asd;
> 	unsigned int index;
>+	struct fwnode_handle *source_ep;
> 	unsigned int lanes;
> 	enum v4l2_mbus_type mbus_type;
> 	unsigned int mbus_flags;
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>index 386c1c17aec2..0f3e45cdbf2a 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>@@ -138,7 +138,7 @@ static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
> 	phy_init(s_asd->dphy);
>
> 	/* Create the link to the sensor. */
>-	source_pad = media_entity_get_fwnode_pad(&sd->entity, sd->fwnode,
>+	source_pad = media_entity_get_fwnode_pad(&sd->entity, s_asd->source_ep,
> 						 MEDIA_PAD_FL_SOURCE);
> 	if (source_pad < 0) {
> 		dev_err(rkisp1->dev, "failed to find source pad for %s\n",
>@@ -170,10 +170,19 @@ static int rkisp1_subdev_notifier_complete(struct v4l2_async_notifier *notifier)
> 	return v4l2_device_register_subdev_nodes(&rkisp1->v4l2_dev);
> }
>
>+static void rkisp1_subdev_notifier_destroy(struct v4l2_async_subdev *asd)
>+{
>+	struct rkisp1_sensor_async *rk_asd =
>+		container_of(asd, struct rkisp1_sensor_async, asd);
>+
>+	fwnode_handle_put(rk_asd->source_ep);
>+}
>+
> static const struct v4l2_async_notifier_operations rkisp1_subdev_notifier_ops = {
> 	.bound = rkisp1_subdev_notifier_bound,
> 	.unbind = rkisp1_subdev_notifier_unbind,
> 	.complete = rkisp1_subdev_notifier_complete,
>+	.destroy = rkisp1_subdev_notifier_destroy,
> };
>
> static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
>@@ -190,6 +199,7 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
> 			.bus_type = V4L2_MBUS_CSI2_DPHY
> 		};
> 		struct rkisp1_sensor_async *rk_asd;
>+		struct fwnode_handle *source = NULL;
> 		struct fwnode_handle *ep;
>
> 		ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(rkisp1->dev),
>@@ -202,15 +212,24 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
> 		if (ret)
> 			goto err_parse;
>
>-		rk_asd = v4l2_async_nf_add_fwnode_remote(ntf, ep,
>-							 struct
>-							 rkisp1_sensor_async);
>+		source = fwnode_graph_get_remote_endpoint(ep);
>+		if (!source) {
>+			dev_err(rkisp1->dev,
>+				"endpoint %pfw has no remote endpoint\n",
>+				ep);
>+			ret = -ENODEV;
>+			goto err_parse;
>+		}
>+
>+		rk_asd = v4l2_async_nf_add_fwnode(ntf, source,
>+						  struct rkisp1_sensor_async);
> 		if (IS_ERR(rk_asd)) {
> 			ret = PTR_ERR(rk_asd);
> 			goto err_parse;
> 		}
>
> 		rk_asd->index = index++;
>+		rk_asd->source_ep = source;

here do 'source = NULL', see reason below

> 		rk_asd->mbus_type = vep.bus_type;
> 		rk_asd->mbus_flags = vep.bus.mipi_csi2.flags;
> 		rk_asd->lanes = vep.bus.mipi_csi2.num_data_lanes;
>@@ -225,6 +244,7 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
> 		continue;
> err_parse:
> 		fwnode_handle_put(ep);
>+		fwnode_handle_put(source);

if v4l2_fwnode_endpoint_parse fails then here you put the source of previous iteration

thanks,
Dafna

> 		v4l2_async_nf_cleanup(ntf);
> 		return ret;
> 	}
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
