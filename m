Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E88DC43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 18:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZA/XavdwSqg7g8ah9NHie0iUy0LvZLKN/bytUXnaiAk=; b=n3DBaMG5SgZ1CbaX0m77MQfxRH
	3GFN6IpvA7wM5VZUKaFJ4zbw+un/2E5sifnfuyAX6EIDHjf8+WsDGuSKg8cikWnjsNSbh74R2O+j0
	fEpG5rLqX4vMIcOUiUFFTB9wVLWeyTPI/HZNIUyhfCmGcm96SlA4oGzhvppMD4vKjABZzi6qdJ6sQ
	5nA6f7HdruBSBynpjqwTK1HwiVPS/0HEUuBFpycj6csSLWWx2Bsx5vkFllzFDY6q2D/On4NeGVABb
	vGDayZunEM2hbRK+1n1fKIRlRXrmxvuHA7Ev8U8VINzLkqpTdzSmkQ8Oq1HiWhXnzuX/vM82/XINN
	g8Ff0BsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4oHP-003VZ0-72; Fri, 24 Jun 2022 18:43:43 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4oHN-003VYB-1z
	for linux-rockchip@lists.infradead.org; Fri, 24 Jun 2022 18:43:42 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 1EB215C01D5;
	Fri, 24 Jun 2022 14:43:40 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Fri, 24 Jun 2022 14:43:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656096220; x=1656182620; bh=/4h61kVDfN
	jVyPQF/xQAyWCcFWmlO5sv/VgdDmfATag=; b=i18EgZ57AwmxBJLlXRC/hjJdKw
	bICOy528JtwJuZL01Nl+BcZNrJG0lDY3PYTdrCYc4FXzEak48GVkBta5U1qVNKlf
	kgRsGDB6dLLYdaDbLz7lC7UBjPu0O3ZJJ5KKabh7hLsNc3oZDkweAoZG61X8+dFE
	3gholXq8BxV6wtlADQme6YEyxCqHr/2by/Yhr4p2Kv9D50vBJCQ5X9joGIIOpxKC
	ZlothHsHzB86V33iSEYcOWFf+SAfACzYj5uTYBX8tPmNBmPebPpf0HUGPv6c3+Pk
	FHY+Qd8y5WL9i7581lX1/iDed8FRwb6nGSUduriXMDs/vJSY2V8joI92bAvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656096220; x=1656182620; bh=/4h61kVDfNjVyPQF/xQAyWCcFWml
	O5sv/VgdDmfATag=; b=uieWWA/kTTWUyJYaOn0H506qAC+SKS+TNGV8YvisjQaq
	5PiPZhg6iut2cLvolFZzPN1UtOkbMBLyPUVKKB0/4hDm+1anhNHmWT5A7qX/sorH
	otCGdowXNDEE5QpYfNqeJ7IAC9ow38ausOUeHVDz7QH5P3UoMH2OBET1apP0qQ3r
	1WN+6kxQvhhIxgPRlTJbk24QmYPrjHfarA/imfwGXZc0mwYUREdKV8ZsBUeMCrVE
	sVzz1FoGXBnPnp9DQzfgvSgd5J8WdZ2R/9LuWCMEBD1mCxYyMchNNKQWaFEGQrJ/
	gfQSLa/aU1zQlomuJXhUjgVrj6of+x5LWln+4sDFEw==
X-ME-Sender: <xms:2wW2Yhd56LDoisGvPnZJZdqRZGDxCs8U1J0FwbzeKY0tP7H1tt59tQ>
    <xme:2wW2YvNU8ApdXI4bj_yrObIMvcbubQ0haRN7dkWhUXnfghE8yyaKwXeefVrJoe2i_
    IWXTQ-scyruEgZFR80>
X-ME-Received: <xmr:2wW2YqjVCpYcuiS5cZo73FLS92py8RBwFtexc2rjSPOmNY8hqiy4jw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudefledguddvhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttdejnecuhfhrohhmpeffrghf
    nhgrucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqne
    cuggftrfgrthhtvghrnhepvdehtdeludekgeevleefuedvudejieetheekvdfhteekffdu
    jefhfedtudehvdeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepuggrfhhnrgesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:2wW2Yq9UVYp2SruEiIpJby7dKEsLjy3Wr_UbYtz28aEfZTEUcKcnDg>
    <xmx:2wW2YtsMAqCeq-tbVbVXoeXRO0AA_Ve1Q5--rim8B7Fyh0rs3Umeow>
    <xmx:2wW2YpHXNj13ZBQlq6hKKTPDxbF54Mj8BvZTzVlIJpkzFBpSv8HgIA>
    <xmx:3AW2Yu8BNTjI8mH-bdREkhbW8EghpcVa6D21kue7BI5JCfXB1gaZhA>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 24 Jun 2022 14:43:36 -0400 (EDT)
Date: Fri, 24 Jun 2022 21:43:34 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 14/55] media: rkisp1: Create internal links at probe time
Message-ID: <20220624184334.gpupbgyjyotpbe4i@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-15-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-15-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_114341_210686_8156F6EF 
X-CRM114-Status: GOOD (  10.18  )
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
>There's no need to wait until all async subdevs are bound before
>creating internal links. Create them at probe time.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by Dafna Hirschfeld <dafna@fastmail.com>

>---
> .../platform/rockchip/rkisp1/rkisp1-dev.c     | 105 ++++++++----------
> 1 file changed, 49 insertions(+), 56 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>index 4501aea265cb..7bb1235cddea 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>@@ -109,50 +109,6 @@ struct rkisp1_isr_data {
>  * Sensor DT bindings
>  */
>
>-static int rkisp1_create_links(struct rkisp1_device *rkisp1)
>-{
>-	unsigned int i;
>-	int ret;
>-
>-	/* create ISP->RSZ->CAP links */
>-	for (i = 0; i < 2; i++) {
>-		struct media_entity *resizer =
>-			&rkisp1->resizer_devs[i].sd.entity;
>-		struct media_entity *capture =
>-			&rkisp1->capture_devs[i].vnode.vdev.entity;;
>-
>-		ret = media_create_pad_link(&rkisp1->isp.sd.entity,
>-					    RKISP1_ISP_PAD_SOURCE_VIDEO,
>-					    resizer, RKISP1_RSZ_PAD_SINK,
>-					    MEDIA_LNK_FL_ENABLED);
>-		if (ret)
>-			return ret;
>-
>-		ret = media_create_pad_link(resizer, RKISP1_RSZ_PAD_SRC,
>-					    capture, 0,
>-					    MEDIA_LNK_FL_ENABLED |
>-					    MEDIA_LNK_FL_IMMUTABLE);
>-		if (ret)
>-			return ret;
>-	}
>-
>-	/* params links */
>-	ret = media_create_pad_link(&rkisp1->params.vnode.vdev.entity, 0,
>-				    &rkisp1->isp.sd.entity,
>-				    RKISP1_ISP_PAD_SINK_PARAMS,
>-				    MEDIA_LNK_FL_ENABLED |
>-				    MEDIA_LNK_FL_IMMUTABLE);
>-	if (ret)
>-		return ret;
>-
>-	/* 3A stats links */
>-	return media_create_pad_link(&rkisp1->isp.sd.entity,
>-				     RKISP1_ISP_PAD_SOURCE_STATS,
>-				     &rkisp1->stats.vnode.vdev.entity, 0,
>-				     MEDIA_LNK_FL_ENABLED |
>-				     MEDIA_LNK_FL_IMMUTABLE);
>-}
>-
> static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
> 					struct v4l2_subdev *sd,
> 					struct v4l2_async_subdev *asd)
>@@ -210,19 +166,8 @@ static int rkisp1_subdev_notifier_complete(struct v4l2_async_notifier *notifier)
> {
> 	struct rkisp1_device *rkisp1 =
> 		container_of(notifier, struct rkisp1_device, notifier);
>-	int ret;
>-
>-	ret = rkisp1_create_links(rkisp1);
>-	if (ret)
>-		return ret;
>-
>-	ret = v4l2_device_register_subdev_nodes(&rkisp1->v4l2_dev);
>-	if (ret)
>-		return ret;
>-
>-	dev_dbg(rkisp1->dev, "Async subdev notifier completed\n");
>
>-	return 0;
>+	return v4l2_device_register_subdev_nodes(&rkisp1->v4l2_dev);
> }
>
> static const struct v4l2_async_notifier_operations rkisp1_subdev_notifier_ops = {
>@@ -332,6 +277,50 @@ static const struct dev_pm_ops rkisp1_pm_ops = {
>  * Core
>  */
>
>+static int rkisp1_create_links(struct rkisp1_device *rkisp1)
>+{
>+	unsigned int i;
>+	int ret;
>+
>+	/* create ISP->RSZ->CAP links */
>+	for (i = 0; i < 2; i++) {
>+		struct media_entity *resizer =
>+			&rkisp1->resizer_devs[i].sd.entity;
>+		struct media_entity *capture =
>+			&rkisp1->capture_devs[i].vnode.vdev.entity;;
>+
>+		ret = media_create_pad_link(&rkisp1->isp.sd.entity,
>+					    RKISP1_ISP_PAD_SOURCE_VIDEO,
>+					    resizer, RKISP1_RSZ_PAD_SINK,
>+					    MEDIA_LNK_FL_ENABLED);
>+		if (ret)
>+			return ret;
>+
>+		ret = media_create_pad_link(resizer, RKISP1_RSZ_PAD_SRC,
>+					    capture, 0,
>+					    MEDIA_LNK_FL_ENABLED |
>+					    MEDIA_LNK_FL_IMMUTABLE);
>+		if (ret)
>+			return ret;
>+	}
>+
>+	/* params links */
>+	ret = media_create_pad_link(&rkisp1->params.vnode.vdev.entity, 0,
>+				    &rkisp1->isp.sd.entity,
>+				    RKISP1_ISP_PAD_SINK_PARAMS,
>+				    MEDIA_LNK_FL_ENABLED |
>+				    MEDIA_LNK_FL_IMMUTABLE);
>+	if (ret)
>+		return ret;
>+
>+	/* 3A stats links */
>+	return media_create_pad_link(&rkisp1->isp.sd.entity,
>+				     RKISP1_ISP_PAD_SOURCE_STATS,
>+				     &rkisp1->stats.vnode.vdev.entity, 0,
>+				     MEDIA_LNK_FL_ENABLED |
>+				     MEDIA_LNK_FL_IMMUTABLE);
>+}
>+
> static void rkisp1_entities_unregister(struct rkisp1_device *rkisp1)
> {
> 	rkisp1_params_unregister(rkisp1);
>@@ -365,6 +354,10 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
> 	if (ret)
> 		goto error;
>
>+	ret = rkisp1_create_links(rkisp1);
>+	if (ret)
>+		goto error;
>+
> 	ret = rkisp1_subdev_notifier(rkisp1);
> 	if (ret) {
> 		dev_err(rkisp1->dev,
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
