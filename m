Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22D6BC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jun 2022 04:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0AE+f2VmkPpMSaWqfDL/roFZ65w6MwmDFdMDUvXgbUU=; b=cRg2RvljkRIcD3f8ZjDLfhaxgb
	ybAf8ZcQ8zKzWZcIgBTA/+R/ZY8yiHyT1u/pbRwYdM/LGue16992/ODjX2E4L/hDL8AIiY047BT7k
	4BmlgsO2Q48FTyyEdj7uqjzZl8RHtKr9Gjj8Fbj8/Iq/umiBu8tPCL/BnQ8oudE/eNEBAINwarNVt
	w7BTRocY9sdpbbQg4NCWWbj2+0GGtXF1jdKMq3F3uH7iHh2iAc2jFrf675IVc5q7t5m2ft0eJDAWN
	UBfja9cybG4GjE/sXGDDr9Uz6dclVx/aTORHzGAvm2ReXFhp2qsNb8cuo3y3QaSQx8tyh8VQ/Aptc
	29LpnMyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4xms-004deF-Ai; Sat, 25 Jun 2022 04:52:50 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4xmp-004ddm-8k
	for linux-rockchip@lists.infradead.org; Sat, 25 Jun 2022 04:52:48 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id B2F743200564;
	Sat, 25 Jun 2022 00:52:45 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Sat, 25 Jun 2022 00:52:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656132765; x=1656219165; bh=PbPOyBZKS1
	F+VnXPdp21jrrQGpCa0IwCP/iXi4gm478=; b=n/exbXmOO8gJNu7BFMqf24z+N7
	DEQoRWn0hxVDiiYwl0wtDrv9fLTwiUkx5uMAGxyWQLKVa8+hv/yDCSu/wjQ0cO1I
	ogQe7zeLZrS5+d5eKVYyYJ11pR5eLz9LRrG07oRzCXjuOMM65unvfXabitc5jUjh
	RcjmcTfi9CtOMZy0vDKQRXpV21NRUr+J81hGhSbZDri4hCwM65ocULAqIw6SO7M/
	Kj3IioOBu9Mm5EGJfwSPdgJfab0zCDgwzdoMuSUG4eGZB1TkJgmWMv9My1DQnLPn
	hT05wwciIpPiun4qh1wM4oLujSFxaCZOJD+AMig2ICidqTmRpBvDidgH9FBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656132765; x=1656219165; bh=PbPOyBZKS1F+VnXPdp21jrrQGpCa
	0IwCP/iXi4gm478=; b=yBqQ0aisiMpgsr7d5m4MMdCebOh1TPUXOGjZw068dbyV
	iXjgRquC5/CHrBfYcwoXupSfYq2PNRurNFyucvYSHg42G9SsTtFFIK+yrpfSTaFC
	xLbc5MJB2S9zwz8GK3fjiANttp9fsSRw/g0ZUqK/qGYp0lHSF7yQsO1cWfHgO/Zj
	F++AODM8Ov4w/zPfx+W/G+lK9CwSVFg+Ox7eq8/qX9Ikq44iIxf4+RzZ/rML/nMl
	3sNtf7Tpiga9RHx3JaHYb5IbyeFxMofopSF9RZnRgK0S0mKptJa3SwBdyqVZBGIt
	6uI8r95acXn9Y4IXvhdtqq0JsSQYMQkxXppBHYlWUg==
X-ME-Sender: <xms:nJS2Yv31wKEKYx96CKeSrO8a7hX0JzG8lH39QW8Xo6gBP8LBHWaP3w>
    <xme:nJS2YuEmXK93YtdN6muz1XIQE5P0Hzk-6JhXxBrLQv-lgYeXASkwMCDA9UbgL-s0P
    21s9Zi9dDaJUM4FD6k>
X-ME-Received: <xmr:nJS2Yv4L92F8lYK6VTBma3bO1f_A_FeCZ-QHIj9kiCp0Aw3yHkjz8Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudegtddgledtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:nJS2Yk27AULbC8KXXb3b326TQr9Qtmd9aVeum-VCadPvwmdD6zgGvQ>
    <xmx:nJS2YiGyQ1bjWHQjLMmAE-BAsYTuQfQSji7NzXYKG7toWJlsiBkrZQ>
    <xmx:nJS2Yl8aL-J9aRazz4tUEIEvjJ1aw2zWZx6znl7Si-vXu1HWa-L7Nw>
    <xmx:nZS2Yl0rES8PmJjrZVJQcz4d2D-Zvpif1YzYpGYJDbNiJOIox28Phw>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 25 Jun 2022 00:52:41 -0400 (EDT)
Date: Sat, 25 Jun 2022 07:52:39 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 30/55] media: rkisp1: isp: Pass rkisp1_isp pointer to
 internal ISP functions
Message-ID: <20220625045239.dr34rs6tmkmqoavc@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-31-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-31-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_215247_386759_27D167B4 
X-CRM114-Status: GOOD (  12.64  )
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

On 15.06.2022 04:11, Paul Elder wrote:
>From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
>Replace the rkisp1_device pointer argument to the internal functions of
>the ISP implementation with a rkisp1_isp object. This makes the code
>flow more logical, as the functions operate on the ISP object.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by Dafna Hirschfeld <dafna@fastmail.com>

>---
> .../platform/rockchip/rkisp1/rkisp1-isp.c     | 60 +++++++++++--------
> 1 file changed, 34 insertions(+), 26 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>index f8ab1d9cc8cd..e27137b5c33e 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>@@ -109,12 +109,13 @@ rkisp1_isp_get_pad_crop(struct rkisp1_isp *isp,
>  * This should only be called when configuring CIF
>  * or at the frame end interrupt
>  */
>-static void rkisp1_config_ism(struct rkisp1_device *rkisp1)
>+static void rkisp1_config_ism(struct rkisp1_isp *isp)
> {
> 	struct v4l2_rect *src_crop =
>-		rkisp1_isp_get_pad_crop(&rkisp1->isp, NULL,
>+		rkisp1_isp_get_pad_crop(isp, NULL,
> 					RKISP1_ISP_PAD_SOURCE_VIDEO,
> 					V4L2_SUBDEV_FORMAT_ACTIVE);
>+	struct rkisp1_device *rkisp1 = isp->rkisp1;
> 	u32 val;
>
> 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_RECENTER, 0);
>@@ -136,20 +137,21 @@ static void rkisp1_config_ism(struct rkisp1_device *rkisp1)
> /*
>  * configure ISP blocks with input format, size......
>  */
>-static int rkisp1_config_isp(struct rkisp1_device *rkisp1,
>+static int rkisp1_config_isp(struct rkisp1_isp *isp,
> 			     enum v4l2_mbus_type mbus_type, u32 mbus_flags)
> {
>+	struct rkisp1_device *rkisp1 = isp->rkisp1;
> 	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, signal = 0;
> 	const struct rkisp1_mbus_info *src_fmt, *sink_fmt;
> 	struct v4l2_mbus_framefmt *sink_frm;
> 	struct v4l2_rect *sink_crop;
>
>-	sink_fmt = rkisp1->isp.sink_fmt;
>-	src_fmt = rkisp1->isp.src_fmt;
>-	sink_frm = rkisp1_isp_get_pad_fmt(&rkisp1->isp, NULL,
>+	sink_fmt = isp->sink_fmt;
>+	src_fmt = isp->src_fmt;
>+	sink_frm = rkisp1_isp_get_pad_fmt(isp, NULL,
> 					  RKISP1_ISP_PAD_SINK_VIDEO,
> 					  V4L2_SUBDEV_FORMAT_ACTIVE);
>-	sink_crop = rkisp1_isp_get_pad_crop(&rkisp1->isp, NULL,
>+	sink_crop = rkisp1_isp_get_pad_crop(isp, NULL,
> 					    RKISP1_ISP_PAD_SINK_VIDEO,
> 					    V4L2_SUBDEV_FORMAT_ACTIVE);
>
>@@ -226,7 +228,7 @@ static int rkisp1_config_isp(struct rkisp1_device *rkisp1,
> 	} else {
> 		struct v4l2_mbus_framefmt *src_frm;
>
>-		src_frm = rkisp1_isp_get_pad_fmt(&rkisp1->isp, NULL,
>+		src_frm = rkisp1_isp_get_pad_fmt(isp, NULL,
> 						 RKISP1_ISP_PAD_SINK_VIDEO,
> 						 V4L2_SUBDEV_FORMAT_ACTIVE);
> 		rkisp1_params_configure(&rkisp1->params, sink_fmt->bayer_pat,
>@@ -236,9 +238,10 @@ static int rkisp1_config_isp(struct rkisp1_device *rkisp1,
> 	return 0;
> }
>
>-static int rkisp1_config_dvp(struct rkisp1_device *rkisp1)
>+static int rkisp1_config_dvp(struct rkisp1_isp *isp)
> {
>-	const struct rkisp1_mbus_info *sink_fmt = rkisp1->isp.sink_fmt;
>+	struct rkisp1_device *rkisp1 = isp->rkisp1;
>+	const struct rkisp1_mbus_info *sink_fmt = isp->sink_fmt;
> 	u32 val, input_sel;
>
> 	switch (sink_fmt->bus_width) {
>@@ -263,15 +266,16 @@ static int rkisp1_config_dvp(struct rkisp1_device *rkisp1)
> }
>
> /* Configure MUX */
>-static int rkisp1_config_path(struct rkisp1_device *rkisp1,
>+static int rkisp1_config_path(struct rkisp1_isp *isp,
> 			      enum v4l2_mbus_type mbus_type)
> {
>+	struct rkisp1_device *rkisp1 = isp->rkisp1;
> 	u32 dpcl = rkisp1_read(rkisp1, RKISP1_CIF_VI_DPCL);
> 	int ret = 0;
>
> 	if (mbus_type == V4L2_MBUS_BT656 ||
> 	    mbus_type == V4L2_MBUS_PARALLEL) {
>-		ret = rkisp1_config_dvp(rkisp1);
>+		ret = rkisp1_config_dvp(isp);
> 		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_PARALLEL;
> 	} else if (mbus_type == V4L2_MBUS_CSI2_DPHY) {
> 		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_MIPI;
>@@ -283,24 +287,25 @@ static int rkisp1_config_path(struct rkisp1_device *rkisp1,
> }
>
> /* Hardware configure Entry */
>-static int rkisp1_config_cif(struct rkisp1_device *rkisp1,
>+static int rkisp1_config_cif(struct rkisp1_isp *isp,
> 			     enum v4l2_mbus_type mbus_type, u32 mbus_flags)
> {
> 	int ret;
>
>-	ret = rkisp1_config_isp(rkisp1, mbus_type, mbus_flags);
>+	ret = rkisp1_config_isp(isp, mbus_type, mbus_flags);
> 	if (ret)
> 		return ret;
>-	ret = rkisp1_config_path(rkisp1, mbus_type);
>+	ret = rkisp1_config_path(isp, mbus_type);
> 	if (ret)
> 		return ret;
>-	rkisp1_config_ism(rkisp1);
>+	rkisp1_config_ism(isp);
>
> 	return 0;
> }
>
>-static void rkisp1_isp_stop(struct rkisp1_device *rkisp1)
>+static void rkisp1_isp_stop(struct rkisp1_isp *isp)
> {
>+	struct rkisp1_device *rkisp1 = isp->rkisp1;
> 	u32 val;
>
> 	/*
>@@ -332,8 +337,10 @@ static void rkisp1_isp_stop(struct rkisp1_device *rkisp1)
> 	rkisp1_write(rkisp1, RKISP1_CIF_VI_IRCL, 0x0);
> }
>
>-static void rkisp1_config_clk(struct rkisp1_device *rkisp1)
>+static void rkisp1_config_clk(struct rkisp1_isp *isp)
> {
>+	struct rkisp1_device *rkisp1 = isp->rkisp1;
>+
> 	u32 val = RKISP1_CIF_VI_ICCL_ISP_CLK | RKISP1_CIF_VI_ICCL_CP_CLK |
> 		  RKISP1_CIF_VI_ICCL_MRSZ_CLK | RKISP1_CIF_VI_ICCL_SRSZ_CLK |
> 		  RKISP1_CIF_VI_ICCL_JPEG_CLK | RKISP1_CIF_VI_ICCL_MI_CLK |
>@@ -352,11 +359,12 @@ static void rkisp1_config_clk(struct rkisp1_device *rkisp1)
> 	}
> }
>
>-static void rkisp1_isp_start(struct rkisp1_device *rkisp1)
>+static void rkisp1_isp_start(struct rkisp1_isp *isp)
> {
>+	struct rkisp1_device *rkisp1 = isp->rkisp1;
> 	u32 val;
>
>-	rkisp1_config_clk(rkisp1);
>+	rkisp1_config_clk(isp);
>
> 	/* Activate ISP */
> 	val = rkisp1_read(rkisp1, RKISP1_CIF_ISP_CTRL);
>@@ -758,7 +766,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
> 		v4l2_subdev_call(rkisp1->source, video, s_stream, false);
>
> 		rkisp1_csi_stop(&rkisp1->csi);
>-		rkisp1_isp_stop(rkisp1);
>+		rkisp1_isp_stop(isp);
>
> 		return 0;
> 	}
>@@ -775,23 +783,23 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
> 	if (asd->mbus_type != V4L2_MBUS_CSI2_DPHY)
> 		return -EINVAL;
>
>-	rkisp1->isp.frame_sequence = -1;
>+	isp->frame_sequence = -1;
> 	mutex_lock(&isp->ops_lock);
>-	ret = rkisp1_config_cif(rkisp1, asd->mbus_type, asd->mbus_flags);
>+	ret = rkisp1_config_cif(isp, asd->mbus_type, asd->mbus_flags);
> 	if (ret)
> 		goto mutex_unlock;
>
>-	rkisp1_isp_start(rkisp1);
>+	rkisp1_isp_start(isp);
>
> 	ret = rkisp1_csi_start(&rkisp1->csi, asd);
> 	if (ret) {
>-		rkisp1_isp_stop(rkisp1);
>+		rkisp1_isp_stop(isp);
> 		goto mutex_unlock;
> 	}
>
> 	ret = v4l2_subdev_call(rkisp1->source, video, s_stream, true);
> 	if (ret) {
>-		rkisp1_isp_stop(rkisp1);
>+		rkisp1_isp_stop(isp);
> 		rkisp1_csi_stop(&rkisp1->csi);
> 		goto mutex_unlock;
> 	}
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
