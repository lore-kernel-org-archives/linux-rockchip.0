Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFC57C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jun 2022 05:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cRU0HzRm8wyodL7g9dylnWnM5ZnAXAu5jiJ460hAqsc=; b=103Q3Qrs/PSJbx/Bo/2rkzOVYx
	0hkG6SosFkRSZ60Qzd6WZXPnMtcfWhYRZacW9cW1frDtE2tos1O4ijMQ+hk9eNr5YtHr5zbxyC5Yc
	S6T0knn4geih6uKUXLziWC0KKh5iGcXP3bxBeN7dvnZYohs/eEaGXDVKp38P6k1ETUsgWEE6l6uVj
	4996xlqi4VZJTpW1Nrtt1Cs7T3MJsYrqnWH8++AYkYeNno40+LQFcyPSb8pXxPDDwiQMSndPe/UOQ
	UBey56uCKnv0xqiRptmGhYeLGo4vMxzAwjHaBqTht8sIXXyXZtUksWPfq4AwQ8WYI/NBGW1xB9UVX
	+WcRVG0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4y2s-004fr6-T6; Sat, 25 Jun 2022 05:09:22 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4y2q-004fqb-62
	for linux-rockchip@lists.infradead.org; Sat, 25 Jun 2022 05:09:21 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id D73CA320091A;
	Sat, 25 Jun 2022 01:09:18 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Sat, 25 Jun 2022 01:09:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656133758; x=1656220158; bh=/WOAJNusev
	QhRPdGep7xbeatIe44IvjPx/CwGHOWbHQ=; b=nG4zpBqXXKi6M++uh0RVtD9qcQ
	ApoGFPXmY28OI5x50MNddzy4wYUhzdUUAENOgKRpMkCWIp45d5cCvFWkI/vpHK+c
	AZgEMJr7FQiDylkzk7MurqcGkg0vFdbpRNlPPtEsGqj5g6d4FVgRgpr4IWWBbiI1
	BMSHNYdrEHZYYUd9tpsf+XbsSXN4MVWvwlN0Ojtn98ZGapiYg1CWZX6m2HZOEO9a
	GUcfydxdUNerrvMRkGDWl5R7rR6Jp2emlHJhGRSNBiKcFFftIswhvQTPKM3KsSYq
	XY7Bw2cAiKey0rxKo5ifZEmNAff4pigQewyGMznuUtblh9jDTm9tkWRWFmzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656133758; x=1656220158; bh=/WOAJNusevQhRPdGep7xbeatIe44
	IvjPx/CwGHOWbHQ=; b=p3+0ZHWw0LqmUnLgcizmG8fW3pijAOQz22bCds43ZpRA
	ymcwYV6hB/r7PAYVJ67UlwRb3j/UN/tfhiPOPtUZC+ztU78kUG+ZS+W9np7L4MDD
	UUNGRIZI+oO82jxtT5OMu0p9R0P+PV8myWPignE9VUczCzloOhb9ZIkLQN839NFF
	gPUnNS3bDqosHtDWhno/Pzk7TDaJaIwnlUmlPzEwnTpx19lNAKepqGZ0SppI9Jpx
	diYj+a1S5Bs51NM86PBzdGEjoZtsX1je3shfwwhYOFEzjCioXxHfvo6H60eoXRxb
	zJWwXGsIVA1i9k4Xy+5o1JtPpRCBFkleQHBID98yHQ==
X-ME-Sender: <xms:fpi2Yn_cICz-inzAto2himJQGQGinPOuLOHYz9XLbviHxlII0jupbA>
    <xme:fpi2YjsYIv-AilmDGI9FNq3hZwevJorxi0zgeiqjZH1bpgkKMV9oWY5OtOs9h2xcS
    23tPrVtHY-mQ2KlN-k>
X-ME-Received: <xmr:fpi2YlCrDbsBspXsJ7TRb_u8iKIeRMEg6rNC7WdvPKJgLEInWufKPg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudegtddgleefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:fpi2Yjc9X39ztRIjkLI4V5gN6pkeEHP3i9bSbS9rHntmkBqDMsBvkw>
    <xmx:fpi2YsM-hCktdnshLr0Lx1XABTLZp1Bk-cgo_GWy1yT3d6scb3jDXA>
    <xmx:fpi2YlmHXPSORMOIm32CW_dguP02yodix1IvueyO5QFD7fHmuZjHYA>
    <xmx:fpi2Yjcn_hgTRylK9av3SMnV-i9lXcZlJC03X2dUDFzuWC3RVCS38w>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 25 Jun 2022 01:09:14 -0400 (EDT)
Date: Sat, 25 Jun 2022 08:09:12 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 36/55] media: rkisp1: isp: Rename
 rkisp1_get_remote_source()
Message-ID: <20220625050912.p2zpukc3flloi5vp@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-37-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-37-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_220920_296798_F403C2A8 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
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
>Rename the rkisp1_get_remote_source() function to
>rkisp1_isp_get_source() to use a consistent rkisp1_isp_* prefix for all
>ISP functions, and drop the "remote" as the source can't be local.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by Dafna Hirschfeld <dafna@fastmail.com>

>---
> drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>index 91b37f2dca91..627b1ad3bf26 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>@@ -58,7 +58,7 @@
>  * Helpers
>  */
>
>-static struct v4l2_subdev *rkisp1_get_remote_source(struct v4l2_subdev *sd)
>+static struct v4l2_subdev *rkisp1_isp_get_source(struct v4l2_subdev *sd)
> {
> 	struct media_pad *local, *remote;
> 	struct media_entity *sensor_me;
>@@ -754,7 +754,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
> 		return 0;
> 	}
>
>-	rkisp1->source = rkisp1_get_remote_source(sd);
>+	rkisp1->source = rkisp1_isp_get_source(sd);
> 	if (!rkisp1->source) {
> 		dev_warn(rkisp1->dev, "No link between isp and source\n");
> 		return -ENODEV;
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
