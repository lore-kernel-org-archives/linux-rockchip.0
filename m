Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45700C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 21:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bFBjnQPw9ucHBUS55ImefWIwc//HBqZrAMXRP8iAimI=; b=pGmTtGWwXUv6lKnDV0/xefqWnL
	kP+Cvvc6PhL7BzjrSHhIxPbZlXRuT3aWc9aF/uzCs3oF54QsoDaHsGZe/GcHqcL6CwxBnU5eEMoby
	vfOxvSUo8/fvcUDGIOmLi8PnX6HyzCPSeY60cfVoBqaidZpxnsH96MMJb3b8sjNkRQXGLv1zkoHtv
	7lEKp8BhulUXoIVmvpf2KyJoZf8ACakADG91f94dxI6/lQOiwg3tX+PcCC8DySjdWPL64McZcHMBg
	r1biCFvb8zqBqGZvSMhIU+2F+wKV+lzOaKln1k6xPegaNp1aKLvRycXjzrYWWa7ykyir50zozZxQw
	A2RaqkVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o72AA-001iGM-Rf; Thu, 30 Jun 2022 21:57:26 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o72A7-001iFU-My
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 21:57:25 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 0D0423200A1D;
	Thu, 30 Jun 2022 17:57:21 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Thu, 30 Jun 2022 17:57:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656626241; x=1656712641; bh=gYS3J5Ca4h
	8qz/MDexEyw7DF4q+FKi51Y6TnlVjbSf8=; b=EgH5lLyOfUZF1ZVFmf6copmhyo
	afVkhqq/9TBNkdhr/nwW/jXOxEDQ9CZEBtMnNfYrHXk/1jXliBb349Ty+Lw3Z4nD
	ZH102bveQUBnzy/e9+h447ZB4i3/4uiFoWiKk00mZNeDxiz69Ej8Jbdya5pYw60L
	J2HMQ03XjmZmkaaBvUddGq7nUJI8lIq9Hm9GLY9HLcIjFlAA1k280Y2YZfJ67Gk4
	Xpulb8DYODFeL7qBJ/gb/P1UEgzzWGp03aLAW8ecMG0JIXFZI2hcWtFlW9jtmjP8
	U4R98mABAt0IyUotYV+wltUHehbRcxhhJfqwn6r+udWinDakRKZubKxOI7aA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656626241; x=1656712641; bh=gYS3J5Ca4h8qz/MDexEyw7DF4q+F
	Ki51Y6TnlVjbSf8=; b=BfeC/JdgCM0lP4Uh4Jj8+hVylbWmMsgo5LuMr970NWu8
	P54nzE32fMbnKPIceNZ3hXvDa4SqBqc5kn8fUomB0dD3GKxuf2IIOk9hTZzL3iWd
	VLaRqnPjk22GX+FigWqLXO4rMqrDBejMdX0v4BW8g0fSOWYSOpe/Wxf7bDQ88/lc
	xvc5y15TwOCuMgJsheVaDMdrN27ANZ1GJpG1xkJUTEMQnG1lT9bs6nKYRWbdAF2V
	gbGPpvGWNAHXSp929Ono+Qy3kcDLtO6yshIwujmIc4+Ka4kGrgoR5gH/VboUZNbY
	k5DKPoU5yHc4MgRhH08loSah+UUpKqXwYPJmFH034Q==
X-ME-Sender: <xms:QRy-YrqfNldGTXLFHrEKaFnR7rKe5h7CgnzfL5f1auJG5ImOhmLtaw>
    <xme:QRy-Ylo6MQkUNbIQFHus0n8WTERFqZhPJcv2Y5Dd_Ixss2uZM6gcs4YDE_GJWflQo
    4kIaXd3NBzabW6o-34>
X-ME-Received: <xmr:QRy-YoMMu_KHVJ7hjQIbn3tANK_grAKGNQ0IMIzHF0CrqNlmxrhnzw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudehvddgtdehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:QRy-Yu5xic5P0tyiMMtZmaMTEqxhcKJIng8TJW3AbfT54rlUL52vbQ>
    <xmx:QRy-Yq4ajRQy49AItxohWF5RXm7EYAjRs62YAGKOP6xKytndsv45SA>
    <xmx:QRy-YmhMW4P6eX7p4DsxQPZ5d4PnYcSmBiRYRKLYi9KKj0IweuHf8w>
    <xmx:QRy-YhYPJts8fjMh5EE4KQ1hRCHCi74sPqBjyTZ_DqCsMiaCXmvUjw>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 30 Jun 2022 17:57:18 -0400 (EDT)
Date: Fri, 1 Jul 2022 00:57:15 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 27/55] media: rkisp1: isp: Rename
 rkisp1_device.active_sensor to source
Message-ID: <20220630215715.fc7fynqpd36d55hf@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-28-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-28-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_145723_821869_4CA1B858 
X-CRM114-Status: GOOD (  13.08  )
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
>The active_sensor field of the rkisp1_device structure points to the ASD
>data for the active source. The source may however not be a sensor, so
>the naming is a bit confusing. Furthermore, the driver doesn't need to
>access the full ASD from the active_sensor field, only the subdev
>pointer is needed, when stopping streaming.
>
>Rename the field to source, and turn it into a v4l2_subdev pointer.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

>---
> .../platform/rockchip/rkisp1/rkisp1-common.h  |  4 +--
> .../platform/rockchip/rkisp1/rkisp1-isp.c     | 27 +++++++++----------
> 2 files changed, 14 insertions(+), 17 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>index dbf1baca623a..7a6f55a31bb0 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>@@ -419,7 +419,7 @@ struct rkisp1_debug {
>  * @v4l2_dev:	   v4l2_device variable
>  * @media_dev:	   media_device variable
>  * @notifier:	   a notifier to register on the v4l2-async API to be notified on the sensor
>- * @active_sensor: sensor in-use, set when streaming on
>+ * @source:        source subdev in-use, set when starting streaming
>  * @csi:	   internal CSI-2 receiver
>  * @isp:	   ISP sub-device
>  * @resizer_devs:  resizer sub-devices
>@@ -439,7 +439,7 @@ struct rkisp1_device {
> 	struct v4l2_device v4l2_dev;
> 	struct media_device media_dev;
> 	struct v4l2_async_notifier notifier;
>-	struct rkisp1_sensor_async *active_sensor;
>+	struct v4l2_subdev *source;
> 	struct rkisp1_csi csi;
> 	struct rkisp1_isp isp;
> 	struct rkisp1_resizer resizer_devs[2];
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>index f6d1c93dd99d..4f12fc0b7694 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>@@ -58,7 +58,7 @@
>  * Helpers
>  */
>
>-static struct v4l2_subdev *rkisp1_get_remote_sensor(struct v4l2_subdev *sd)
>+static struct v4l2_subdev *rkisp1_get_remote_source(struct v4l2_subdev *sd)
> {
> 	struct media_pad *local, *remote;
> 	struct media_entity *sensor_me;
>@@ -749,12 +749,11 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
> 	struct rkisp1_device *rkisp1 =
> 		container_of(sd->v4l2_dev, struct rkisp1_device, v4l2_dev);
> 	struct rkisp1_isp *isp = &rkisp1->isp;
>-	struct v4l2_subdev *sensor_sd;
>+	struct rkisp1_sensor_async *asd;
> 	int ret;
>
> 	if (!enable) {
>-		v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
>-				 false);
>+		v4l2_subdev_call(rkisp1->source, video, s_stream, false);
>
> 		rkisp1_csi_stop(&rkisp1->csi);
> 		rkisp1_isp_stop(rkisp1);
>@@ -762,35 +761,33 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
> 		return 0;
> 	}
>
>-	sensor_sd = rkisp1_get_remote_sensor(sd);
>-	if (!sensor_sd) {
>-		dev_warn(rkisp1->dev, "No link between isp and sensor\n");
>+	rkisp1->source = rkisp1_get_remote_source(sd);
>+	if (!rkisp1->source) {
>+		dev_warn(rkisp1->dev, "No link between isp and source\n");
> 		return -ENODEV;
> 	}
>
>-	rkisp1->active_sensor = container_of(sensor_sd->asd,
>-					     struct rkisp1_sensor_async, asd);
>+	asd = container_of(rkisp1->source->asd, struct rkisp1_sensor_async,
>+			   asd);
>
>-	if (rkisp1->active_sensor->mbus_type != V4L2_MBUS_CSI2_DPHY)
>+	if (asd->mbus_type != V4L2_MBUS_CSI2_DPHY)
> 		return -EINVAL;
>
> 	rkisp1->isp.frame_sequence = -1;
> 	mutex_lock(&isp->ops_lock);
>-	ret = rkisp1_config_cif(rkisp1, rkisp1->active_sensor->mbus_type,
>-				rkisp1->active_sensor->mbus_flags);
>+	ret = rkisp1_config_cif(rkisp1, asd->mbus_type, asd->mbus_flags);
> 	if (ret)
> 		goto mutex_unlock;
>
> 	rkisp1_isp_start(rkisp1);
>
>-	ret = rkisp1_csi_start(&rkisp1->csi, rkisp1->active_sensor);
>+	ret = rkisp1_csi_start(&rkisp1->csi, asd);
> 	if (ret) {
> 		rkisp1_isp_stop(rkisp1);
> 		goto mutex_unlock;
> 	}
>
>-	ret = v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
>-			       true);
>+	ret = v4l2_subdev_call(rkisp1->source, video, s_stream, true);
> 	if (ret) {
> 		rkisp1_isp_stop(rkisp1);
> 		rkisp1_csi_stop(&rkisp1->csi);
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
