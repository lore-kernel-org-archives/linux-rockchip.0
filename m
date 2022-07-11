Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE218C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 02:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AMdotErA8bYPQH546GCQzn0LMnc9Mo5r8pA5ZeEskHw=; b=1l/fWXHyiUy/ONp0dCAEJ6ztv0
	cCnhNoWOz5On6TgF1TmC3US7pqnl/7y3aawA5cujuk8TUHTSKGR3hpdVQ5uj7G0jbiEHw0yq5P5ng
	jKaGbYmUVaZw3TFVkpNFmc9MF6xFFB5GXAWI5EEAzjBh26DxTR8q6SjO7OjStJG1VjYkLWMlR2xBm
	0yUhigO8nD7sEjREMGtuV/wB3GpGAnz1b9HsqO1VfFMvknT2wKDb1W9Y4mFfobtIx2NfH88dXoX1Q
	s3v5XP1RGUTJpxUVJO/hTgAUrE1ypNSd7WR5He3cHrOvoEJ1psmuUGz2ntCsBrlNn8TbaY1MoLXiK
	7VORYzlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAjKh-00FIj7-Kn; Mon, 11 Jul 2022 02:39:35 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAjKf-00FIhl-Au
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 02:39:34 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 1499632002B6;
	Sun, 10 Jul 2022 22:39:31 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Sun, 10 Jul 2022 22:39:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1657507171; x=1657593571; bh=KLIhSz+wR2
	VqtiP+szDKIFQ0eWo0giVSSA30hYeleH8=; b=KAYoAI7xIW7BX6aEGKh2rexWbr
	KB2X8wxJABdFm10D8smqJcY2Ap2PVT0gC2tzZTZLFgha5FOiFD+8KUujCQdFw/G6
	XSRkW/hG46hV+Ex30AFPzvWp7TCfPRdPE7U+3bwvMy1MfORzRCBbb4RZbHkvUZRS
	U4yoQDEyPzMDmPWxHGBDbIJyW3csN5oFyGsoykTb5NxJbFitxV1WgjeswwUlhMYv
	n5Xt4D1WPFbu6C/2CscCPiNav4w6+hWJeAB5kJWpwDjtwSgqVkshAaKvS7GmJUPZ
	QAe6pFmFWj6E+OuGSoY5Q7LbMApSyjoepuXHQTNvZG/FKeaUjejl079n25eg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657507171; x=1657593571; bh=KLIhSz+wR2VqtiP+szDKIFQ0eWo0
	giVSSA30hYeleH8=; b=klWWuQMwU2VNa1QTr7aWr34J8tS5wAy8QcgTQQdOMEcw
	sgVekxaC7DSkC2r1bIRqINXgBsPH/fldEYxsNDsW+iosmhhHuG88lNMgsAN5we+R
	LNd+PtZjDeSDbu0iMN0W9qOSxV6F9fFWp32lJ+C4BynbRGc1ms55sefksWTH53VX
	0HlPBZrW4L/v+zXWDxfeTMvNSX7a5UzS2bFxLYkZG9AtveU/VnPx3zWaZCNjuCwD
	42ruSd0IEN5hpKytK02+IhYMtbC39FycT3ge/txMTkzQZkMWaKFBP3ruXO90HmBZ
	5xT4F+BO/aj7lnwmtExlWUbmm8LvHEjsBHgQjhkBuA==
X-ME-Sender: <xms:Y43LYhWukn7SVvPw0oEXq2ZwTSuwloh85F97XguF09MpQhdsXgiREw>
    <xme:Y43LYhkZLaZ7D0C3bB7uFpQPSTk5_zH7pIRI8FT9VkQdfyWenUgMhFlGVa4xEcmyh
    BJ-RYIfCmbzcgENGR4>
X-ME-Received: <xmr:Y43LYtZ9LA76Iv8yiJgxZnmjTApRMGQ6ij78vqqirfzgDSrn9ILp4g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudejvddgieefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpeehiedvjeehvdffleekffdvjedvieehhedttefhvddtueefueek
    lefhteduudfgjeenucffohhmrghinhepihhnfhhrrgguvggrugdrohhrghenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegurghfnhgrsehfrghs
    thhmrghilhdrtghomh
X-ME-Proxy: <xmx:Y43LYkVEK9wDAaAcZ5ITRSmGDUiNLWOrZ66DtiFs5CHW9NGbSuVjYg>
    <xmx:Y43LYrnToZ_UX86qAD3etYlnCgyHf76ceFbTIiuJigszxtbHchIy9w>
    <xmx:Y43LYhf4kXmY9BI7E7lfiJrafMPipzOeiLwEu1_tKcCH5p0D92jFOw>
    <xmx:Y43LYkBllAuIi4qy2nWdk3rHYTKMNJwRJ7T_ENsvP1Y8NIHQbBMjhw>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 10 Jul 2022 22:39:29 -0400 (EDT)
Date: Mon, 11 Jul 2022 05:39:26 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: Re: [PATCH v2 45/55] media: rkisp1: Make the internal CSI-2 receiver
 optional
Message-ID: <20220711023926.zg45nxcj3el5l2z2@guri>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-46-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630230713.10580-46-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220710_193933_430893_88D92CC8 
X-CRM114-Status: GOOD (  11.08  )
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

On 01.07.2022 02:07, Laurent Pinchart wrote:
>Not all ISP versions integrate a MIPI CSI-2 receiver.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

>---
> .../platform/rockchip/rkisp1/rkisp1-dev.c     | 50 +++++++++++++------
> 1 file changed, 34 insertions(+), 16 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>index bc278b49fefc..f2475c6235ea 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>@@ -205,6 +205,14 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
>
> 		switch (reg) {
> 		case 0:
>+			/* MIPI CSI-2 port */
>+			if (!(rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)) {
>+				dev_err(rkisp1->dev,
>+					"internal CSI must be available for port 0\n");
>+				ret = -EINVAL;
>+				break;
>+			}
>+
> 			vep.bus_type = V4L2_MBUS_CSI2_DPHY;
> 			break;
>
>@@ -330,13 +338,16 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
> 	unsigned int i;
> 	int ret;
>
>-	/* Link the CSI receiver to the ISP. */
>-	ret = media_create_pad_link(&rkisp1->csi.sd.entity, RKISP1_CSI_PAD_SRC,
>-				    &rkisp1->isp.sd.entity,
>-				    RKISP1_ISP_PAD_SINK_VIDEO,
>-				    MEDIA_LNK_FL_ENABLED);
>-	if (ret)
>-		return ret;
>+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
>+		/* Link the CSI receiver to the ISP. */
>+		ret = media_create_pad_link(&rkisp1->csi.sd.entity,
>+					    RKISP1_CSI_PAD_SRC,
>+					    &rkisp1->isp.sd.entity,
>+					    RKISP1_ISP_PAD_SINK_VIDEO,
>+					    MEDIA_LNK_FL_ENABLED);
>+		if (ret)
>+			return ret;
>+	}
>
> 	/* create ISP->RSZ->CAP links */
> 	for (i = 0; i < 2; i++) {
>@@ -379,7 +390,8 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
>
> static void rkisp1_entities_unregister(struct rkisp1_device *rkisp1)
> {
>-	rkisp1_csi_unregister(rkisp1);
>+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
>+		rkisp1_csi_unregister(rkisp1);
> 	rkisp1_params_unregister(rkisp1);
> 	rkisp1_stats_unregister(rkisp1);
> 	rkisp1_capture_devs_unregister(rkisp1);
>@@ -411,9 +423,11 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
> 	if (ret)
> 		goto error;
>
>-	ret = rkisp1_csi_register(rkisp1);
>-	if (ret)
>-		goto error;
>+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
>+		ret = rkisp1_csi_register(rkisp1);
>+		if (ret)
>+			goto error;
>+	}
>
> 	ret = rkisp1_create_links(rkisp1);
> 	if (ret)
>@@ -576,9 +590,11 @@ static int rkisp1_probe(struct platform_device *pdev)
> 		goto err_unreg_v4l2_dev;
> 	}
>
>-	ret = rkisp1_csi_init(rkisp1);
>-	if (ret)
>-		goto err_unreg_media_dev;
>+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
>+		ret = rkisp1_csi_init(rkisp1);
>+		if (ret)
>+			goto err_unreg_media_dev;
>+	}
>
> 	ret = rkisp1_entities_register(rkisp1);
> 	if (ret)
>@@ -595,7 +611,8 @@ static int rkisp1_probe(struct platform_device *pdev)
> err_unreg_entities:
> 	rkisp1_entities_unregister(rkisp1);
> err_cleanup_csi:
>-	rkisp1_csi_cleanup(rkisp1);
>+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
>+		rkisp1_csi_cleanup(rkisp1);
> err_unreg_media_dev:
> 	media_device_unregister(&rkisp1->media_dev);
> err_unreg_v4l2_dev:
>@@ -613,7 +630,8 @@ static int rkisp1_remove(struct platform_device *pdev)
> 	v4l2_async_nf_cleanup(&rkisp1->notifier);
>
> 	rkisp1_entities_unregister(rkisp1);
>-	rkisp1_csi_cleanup(rkisp1);
>+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
>+		rkisp1_csi_cleanup(rkisp1);
> 	rkisp1_debug_cleanup(rkisp1);
>
> 	media_device_unregister(&rkisp1->media_dev);
>-- 
>Regards,
>
>Laurent Pinchart
>
>
>_______________________________________________
>Linux-rockchip mailing list
>Linux-rockchip@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
