Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA09AC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 15:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9PI2MrR5ILqGUshQTSReX7mdsvl3lgCSypLY2IO+IM0=; b=DhNaTJeCAS/zCttqeKfa+dtMdp
	zzTpRe2L7IRUPkp5Pd/yVf3oXkRPTWkKhmcqZNVe0cBXloDjYk6OkAU8eZe4bekxGjabgQs8zwZBr
	vWS+LYWSAbmqm/3jiPnKZKYnmnXTVftq5HwoA0PwQZduZSkPGMzGTWbW/vo4+ygirbJLEtoP1lblk
	1/yIz1JKH/J0IBu1ULwnwQJiFgDv+9sDZcUusSj2vwVXFuwiYQ5wJRWfc9Cj0SEJD8yeQ1LaMbTSs
	wGAFcVgpt/Kxn07xz4dHD6ejxsM/LKnkSQHkEPBTTsCHyQeQhxgl+vOTBP1ET7Jxh7MwM6gVHvfS7
	xQODaV/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4l6w-002ohL-WD; Fri, 24 Jun 2022 15:20:43 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4l1W-002mCq-Tz
	for linux-rockchip@lists.infradead.org; Fri, 24 Jun 2022 15:15:12 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id C5FEC320005D;
	Fri, 24 Jun 2022 11:15:03 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Fri, 24 Jun 2022 11:15:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656083703; x=1656170103; bh=41Pl7WOyu6
	7ZVsZhHvoND4+PBCnTLy87nxdHDfIcexI=; b=Nrc0TW/xPQFglbgNSddBHTQfsd
	EwJteQv8ioakJsj3jKtJIXnN1n33LUHjP0EUwHuG5OSISNJSpvNye0F7Agvutbg/
	coQ0K17buJNRGDbb/5tR7wdqKfiw8E0pDhMcpDTbDIM3kVeLtwDlb4+rt11vz0JJ
	UnWU2BI1sQcfwMsfu6JrRBubuFUAprbphizhTB+l1fnT3oS5Ybh9fECv7UgU/42s
	+vB53cxDshUKjsCTISlJGFpf9nU65dyZe6QVrogeF0lu/iirwDHDR8BnlYORZcgo
	hp8ngHnuf9sggGVesA3jQk9Gq5BIUZWCcUi5nxTS+jhBQ2JMnVSevxVEc1ng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656083703; x=1656170103; bh=41Pl7WOyu67ZVsZhHvoND4+PBCnT
	Ly87nxdHDfIcexI=; b=phzLwGFiCptoPUVtR5+plR1Bo0fX5lQVo7ALyDLdHw6h
	ByKqrnvZOuoiePIQu2i9zDmw/bzNcx17ykvyvLgoyy4LAdJBbfnO8T31QiihU6lX
	/ChigqOMQyuMdrqXg/8n1KJTuCUnMF08gtzMweURUeGRm2eosdPvtWjWDMNOAQ6h
	lHxKMYzf3aZlT98RSfyfYiT3nBzJac4nhtAMdKkJ9zvrgROOI+mcVjNuK94ob00e
	y5ZDCO+cq3Kg8M89a/fRu9mzM8ubzeENJ0EnIWORAx+nqs7bqc+UYvB1uXZ807Nw
	z3vaxys2w/xcz3O3ttfsEKrdbm5t9rEcStW1Tvwa3Q==
X-ME-Sender: <xms:9tS1YuDV_VvpVSwiN02Hdh4U7q38aqaW9EmB9cWxHj8Ufl_ZyvePSA>
    <xme:9tS1YohsseuvO4gyvHOUPQncJ97iIqJVEd7joER4Y2Ush6VyOkoWEqwyh2crb29Be
    k5Nf2YNWkAZzyuI-vU>
X-ME-Received: <xmr:9tS1Yhm-zbY8n-DJxmSGjE0Yz1AOHYND6HrfccAWfrwtKaOORktSEg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudefledgkeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:9tS1YszSU-AdhBj7wpQi0kDPuBF09NFwdFiJpqQhL536aAzAGW49OA>
    <xmx:9tS1YjTNZ0sxdjK2SJ4EQn2OgNfKRlt4VmcirX1YR1JWisf7wAbKew>
    <xmx:9tS1YnazZSJlCh_KdyuN1u55LZbEU4APf_o0CEKsDq_EIXIidIVnHA>
    <xmx:99S1YsQo71qotzmOhhdGtp8HmHT2y03QrlxD4-tAx0BNCQQAdO1oTg>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 24 Jun 2022 11:14:59 -0400 (EDT)
Date: Fri, 24 Jun 2022 18:14:56 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 11/55] media: rkisp1: Move sensor .s_stream() call to ISP
Message-ID: <20220624151456.lioxhvyito3dt62k@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-12-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-12-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_081507_042757_576A27EF 
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

On 15.06.2022 04:10, Paul Elder wrote:
>From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
>Move the calls to the active sensor's .s_stream() operation to the ISP
>subdev's .s_stream(). This groups all handling of the active sensor in
>one place, preparing for a rework of that code.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by Dafna Hirschfeld <dafna@fastmail.com>

>---
> .../media/platform/rockchip/rkisp1/rkisp1-capture.c  | 12 +-----------
> drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c  | 11 +++++++++++
> 2 files changed, 12 insertions(+), 11 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>index 94a0d787a312..9edaa95fa44c 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>@@ -926,11 +926,8 @@ static void rkisp1_pipeline_stream_disable(struct rkisp1_capture *cap)
> 	 * If the other capture is streaming, isp and sensor nodes shouldn't
> 	 * be disabled, skip them.
> 	 */
>-	if (rkisp1->pipe.streaming_count < 2) {
>-		v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
>-				 false);
>+	if (rkisp1->pipe.streaming_count < 2)
> 		v4l2_subdev_call(&rkisp1->isp.sd, video, s_stream, false);
>-	}
>
> 	v4l2_subdev_call(&rkisp1->resizer_devs[cap->id].sd, video, s_stream,
> 			 false);
>@@ -966,15 +963,8 @@ static int rkisp1_pipeline_stream_enable(struct rkisp1_capture *cap)
> 	if (ret)
> 		goto err_disable_rsz;
>
>-	ret = v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
>-			       true);
>-	if (ret)
>-		goto err_disable_isp;
>-
> 	return 0;
>
>-err_disable_isp:
>-	v4l2_subdev_call(&rkisp1->isp.sd, video, s_stream, false);
> err_disable_rsz:
> 	v4l2_subdev_call(&rkisp1->resizer_devs[cap->id].sd, video, s_stream,
> 			 false);
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>index 89577119b571..58cf6d21f1eb 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>@@ -857,6 +857,9 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
> 	int ret = 0;
>
> 	if (!enable) {
>+		v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
>+				 false);
>+
> 		rkisp1_isp_stop(rkisp1);
> 		rkisp1_mipi_csi2_stop(rkisp1->active_sensor);
> 		return 0;
>@@ -886,6 +889,14 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
>
> 	rkisp1_isp_start(rkisp1);
>
>+	ret = v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
>+			       true);
>+	if (ret) {
>+		rkisp1_isp_stop(rkisp1);
>+		rkisp1_mipi_csi2_stop(rkisp1->active_sensor);
>+		goto mutex_unlock;
>+	}
>+
> mutex_unlock:
> 	mutex_unlock(&isp->ops_lock);
> 	return ret;
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
