Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06C3AC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jun 2022 05:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dOI8e24Nkf+4a/o6/UHv4KZRIffunElWEz/juMBc61w=; b=0TnjyELrYs7XYO247iCAqU4guO
	R+0iyftZSdRV1MASvc/DJLd1p3zm0JbrNdpC9CaimgipkGv4vGMakEt4tQbN2yceQqUOEqbVfGsmg
	LdAfbuH/vJdWZDiq98RGOQfaXJ175++b2eTjCWap4YHvXI9PZ6+FC6vGY/pH/mm308xvOkqoMcBy6
	D9D22qNxeNxE1Ker4jruoz7YSzActT2BTx9Geg9w/HTDL0H58BriuAEb9s/Ivr1zbXNVqbYkEooaW
	JQpyBmrm97SbKP+byFuO2M2KHBIabhIF3OUAcLROILUMj2P1y7Nc5Bz3h8Y+yuenCJshoplc37zCj
	ZEybDRhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4xuX-004ebL-Ln; Sat, 25 Jun 2022 05:00:45 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4xuV-004eZp-4h
	for linux-rockchip@lists.infradead.org; Sat, 25 Jun 2022 05:00:44 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 9A391320091A;
	Sat, 25 Jun 2022 01:00:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Sat, 25 Jun 2022 01:00:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656133241; x=1656219641; bh=AnTPx0gu2C
	hBovxokVP16sFq69bSvRJMW8gLVV2n6ww=; b=dsepBG/mxr3sSVtywstESXsm3V
	PssR9BM9YWN9racPeGv9pkShWBqjpH/BcW7thvehhit05DcuoWWOPBnflqmZQqgL
	6+CZOUdi3VRX+sRonvxqFcssJGT+hOpXPTkkON+D/Y42oZK9QCuvQgWq9/ItGPZ2
	7wPobHsA5788Pz0Ye9Ih+hUNIFG7mJ03lnvPA3eQmTrbSzPbeJZyLoMdNcI5nGSj
	f6uw7+Iz3tdaHU8XfixuNoXb/yTFVFLQzEL02pI4q5xO9BPvlOTWkvatg/dbCM0D
	PGDGCXGeD+A8KpgTN1F/fMB8iMDW1OmscrRJT42ElSalQDB6FaaUkaeEhOWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656133241; x=1656219641; bh=AnTPx0gu2ChBovxokVP16sFq69bS
	vRJMW8gLVV2n6ww=; b=Kcjh2+GKHAB8hih9TafWihUmNMaPLVMlakZvsd4pYUWt
	D4oHhncMkSQ2LYMv4fSw6HOzsMxsgbSAOyjd5TtmmO9CMj8xvbSMrQJxBhGd9QtL
	QtDrlwTnZm/DwgwDxKLUR+8j6W0El8eXlbZWh+7AAfFkwr43P9SO8R44Xh+mPJOT
	LyzvEc8BWpho4MHytzW9hTpM0KeOIiwmsuy3BQEb/uUwjLQSsZHejho0kU/ToLgy
	8fxuB/iO9SgWo3WBePJ/D8+ZFpHKhKIxd/er0HQErkocxZQ37XdnsnGDRuDWZveJ
	zeevBvtGYztAdccD6Pc0piDvqN+IcoWTHFwULS2JVw==
X-ME-Sender: <xms:eJa2YqbzhqEyT7RR1ZRnOfq5TnGWzD77i7eNqz5dQmlf_e4kgerqpQ>
    <xme:eJa2Ytb9Wt7Jsx45qzCjSYciN7FB0apPWseL65fHNMCZWwm7_3_tlm2xxNPHr0qCZ
    Lb-2CaIbDJtDNRu2Qk>
X-ME-Received: <xmr:eJa2Yk-wdPlXPGDzeGUnSCavlDUNCU9EUXuxyi-G5ITTvL-G8jNIXQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudegtddgledvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:eJa2Ysp3zVwdIg--TLUgLd8iiMWE-2sZl1-vTrTe_u9gokddgjMCGw>
    <xmx:eJa2YlpBl_NHBtAYqoIT5qzHIjlGt4sYTlC45KyvG-ZnxYjMY1PNRw>
    <xmx:eJa2YqRL_GfIvjRedzLsfTcUD1o8_kXAWKqWjh6dLlUEfVg_6rLVCg>
    <xmx:eZa2YpKpd2KK-qw_wFainhZaMDfzswnK8wiqPKwQHnXMEyzXJbvcOA>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 25 Jun 2022 01:00:37 -0400 (EDT)
Date: Sat, 25 Jun 2022 08:00:34 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 31/55] media: rkisp1: isp: Move input configuration to
 rkisp1_config_isp()
Message-ID: <20220625050034.wh4c54se2jbvelcv@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-32-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-32-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_220043_256664_E5CDA45E 
X-CRM114-Status: GOOD (  11.85  )
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
>The ISP_ACQ_PROP register is set twice, once in rkisp1_config_isp() for
>most of its fields, and once in rkisp1_config_dvp() (called from
>rkisp1_config_path()) to configure the input selection field. Move the
>latter to rkisp1_config_isp() to write the register once only, and drop
>the now empty rkisp1_config_dvp() function.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>---
> .../platform/rockchip/rkisp1/rkisp1-isp.c     | 62 +++++++------------
> 1 file changed, 22 insertions(+), 40 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>index e27137b5c33e..f5b8a2e31936 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>@@ -141,7 +141,7 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
> 			     enum v4l2_mbus_type mbus_type, u32 mbus_flags)
> {
> 	struct rkisp1_device *rkisp1 = isp->rkisp1;
>-	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, signal = 0;
>+	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, signal = 0, input_sel = 0;
> 	const struct rkisp1_mbus_info *src_fmt, *sink_fmt;
> 	struct v4l2_mbus_framefmt *sink_frm;
> 	struct v4l2_rect *sink_crop;
>@@ -189,6 +189,21 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
> 	if (mbus_type == V4L2_MBUS_BT656 || mbus_type == V4L2_MBUS_PARALLEL) {
> 		if (mbus_flags & V4L2_MBUS_PCLK_SAMPLE_RISING)
> 			signal = RKISP1_CIF_ISP_ACQ_PROP_POS_EDGE;
>+
>+		switch (sink_fmt->bus_width) {
>+		case 8:
>+			input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_8B_ZERO;
>+			break;
>+		case 10:
>+			input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_10B_ZERO;
>+			break;
>+		case 12:
>+			input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_12B;
>+			break;
>+		default:
>+			dev_err(rkisp1->dev, "Invalid bus width\n");

maybe also print the bus width here

>+			return -EINVAL;
>+		}
> 	}
>
> 	if (mbus_type == V4L2_MBUS_PARALLEL) {
>@@ -201,7 +216,7 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
>
> 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_CTRL, isp_ctrl);
> 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ACQ_PROP,
>-		     signal | sink_fmt->yuv_seq |
>+		     signal | sink_fmt->yuv_seq | input_sel |
> 		     RKISP1_CIF_ISP_ACQ_PROP_BAYER_PAT(sink_fmt->bayer_pat) |
> 		     RKISP1_CIF_ISP_ACQ_PROP_FIELD_SEL_ALL);
> 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ACQ_NR_FRAMES, 0);
>@@ -238,52 +253,20 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
> 	return 0;
> }
>
>-static int rkisp1_config_dvp(struct rkisp1_isp *isp)
>-{
>-	struct rkisp1_device *rkisp1 = isp->rkisp1;
>-	const struct rkisp1_mbus_info *sink_fmt = isp->sink_fmt;
>-	u32 val, input_sel;
>-
>-	switch (sink_fmt->bus_width) {
>-	case 8:
>-		input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_8B_ZERO;
>-		break;
>-	case 10:
>-		input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_10B_ZERO;
>-		break;
>-	case 12:
>-		input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_12B;
>-		break;
>-	default:
>-		dev_err(rkisp1->dev, "Invalid bus width\n");
>-		return -EINVAL;
>-	}
>-
>-	val = rkisp1_read(rkisp1, RKISP1_CIF_ISP_ACQ_PROP);
>-	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ACQ_PROP, val | input_sel);
>-
>-	return 0;
>-}
>-
> /* Configure MUX */
>-static int rkisp1_config_path(struct rkisp1_isp *isp,
>-			      enum v4l2_mbus_type mbus_type)
>+static void rkisp1_config_path(struct rkisp1_isp *isp,
>+			       enum v4l2_mbus_type mbus_type)
> {
> 	struct rkisp1_device *rkisp1 = isp->rkisp1;
> 	u32 dpcl = rkisp1_read(rkisp1, RKISP1_CIF_VI_DPCL);
>-	int ret = 0;
>
>-	if (mbus_type == V4L2_MBUS_BT656 ||
>-	    mbus_type == V4L2_MBUS_PARALLEL) {
>-		ret = rkisp1_config_dvp(isp);
>+	if (mbus_type == V4L2_MBUS_BT656 || mbus_type == V4L2_MBUS_PARALLEL) {
> 		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_PARALLEL;
> 	} else if (mbus_type == V4L2_MBUS_CSI2_DPHY) {
> 		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_MIPI;
> 	}

can remove the curly braces

thanks,
Dafna

>
> 	rkisp1_write(rkisp1, RKISP1_CIF_VI_DPCL, dpcl);
>-
>-	return ret;
> }
>
> /* Hardware configure Entry */
>@@ -295,9 +278,8 @@ static int rkisp1_config_cif(struct rkisp1_isp *isp,
> 	ret = rkisp1_config_isp(isp, mbus_type, mbus_flags);
> 	if (ret)
> 		return ret;
>-	ret = rkisp1_config_path(isp, mbus_type);
>-	if (ret)
>-		return ret;
>+
>+	rkisp1_config_path(isp, mbus_type);
> 	rkisp1_config_ism(isp);
>
> 	return 0;
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
