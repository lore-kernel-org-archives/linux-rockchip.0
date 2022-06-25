Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB6DAC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jun 2022 04:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iNa+P6kJNNLpGceZyiNySjVkSIneyXKMk2/DKIiw2R8=; b=HI9jyMJ6BaGeHpmrWK+cyHEyD8
	ngNDBLyTjsrncrA7wOCPhqEm0QfPKZ2c6IfJPypm2HEqqxq7HhzSh8W6aKac1ruXTaNYl6DwjZ1vo
	HszzagKwKPfJc0uPZArrfaJfNq2VN/HQjypvwOdKFBYKU7sMa+upJYZTtH4TJp4WZwoQzLHrX3aHK
	+hhoclm/DSAtMId7FGYalPDW4aqRqYoShxcHnasnnD6RC1fm1UCYDB/tfXwfiNnCISi0UFF7/kXa2
	/uTwe9MrnuzbRE6AQysmHykuOfNuRgyqhbNue5C5dbqVv250Dozx/X/J6X7kRQ+O2cec5EX6aZxwD
	uXUjM98Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4xQ9-004bFS-U2; Sat, 25 Jun 2022 04:29:21 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4xQ7-004bEv-7g
	for linux-rockchip@lists.infradead.org; Sat, 25 Jun 2022 04:29:20 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id E14E8320091C;
	Sat, 25 Jun 2022 00:29:17 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Sat, 25 Jun 2022 00:29:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656131357; x=1656217757; bh=BnmtY0nXyS
	KeNKYb4tE2O8x1rRaPgomnT6pdZYl/GVU=; b=gNTxptsGeVUy/PExplzCkLRQGt
	+Vqq9UUybKIw8XejKCGkp+U6EsGU6IBwSW9WEqKLksds0lPDkhvll1X0kpZ3c3oF
	iZKQz/sK0FcY6hnMm1RUS3LbPo9uEFFPmhEWfzECgILI/Y6pAwuQO6UHkP8i3fy8
	mzCltCek3Zd/LfLoU0Zj5rJ9IbF3qx3pBBGAWQ+/YLVNFLO++t4HK2YB4iNytE7K
	ZgMEaEb/MoiHNfGl3b45dOWOABJlFF3s+FxBhTts5BijlHRwcobXfh6i6+dMMpRc
	erjESn39OIztnj9+4capXpYcBmLODg+l5hXjY45hppwFyXTt+R6Ciix7Xoaw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656131357; x=1656217757; bh=BnmtY0nXySKeNKYb4tE2O8x1rRaP
	gomnT6pdZYl/GVU=; b=SrhtA2cvs9qPKeSwuTQUO20PsjfRjrxUMln1iWfckU/Q
	jV0ClhcYLB9PwZ3y3ZYh8qLmWH641JGUfVrvs5YSy+w2EslU5wHkDBwWPjXmLZvH
	xrGAV4p8qrevP9TwDqjA0x0RQ2mQBQqfDWBxMwG6xg191pJoYopddhiZo4AXbhp5
	f7QsNL+tf+X1faEhvEpgIeb+kI9axPDVuNgcQc/yp4oOyYQdYPAsC3jFpjyfmhyw
	y8FwZY+ovy73D99cX/zDZXtS2yBsk7x4O5WLg0F3GoN+TidZA5nYGJZAZPqZtntM
	AtSTCO4zvWiAgknaQtANRmqVgujTXsOvRMdJU+9DjQ==
X-ME-Sender: <xms:HY-2Yk_t7P5bi39JL3S90JkksvKbYg5s09Jrv1lxb-D6TksmEHWlwQ>
    <xme:HY-2Yssg4Pb9Y2plt9a3sVV5c0vgyPz8vRF8CLFOEAcFylfZlJwZlRyHpwe6JXMws
    pfWizHaOb0g1YWX9rE>
X-ME-Received: <xmr:HY-2YqCwaLexy6Z-P68uQZ0Rg59LAe6BrZgMNeYBM-J3Vxg0y7p3gg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudegtddgkeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:HY-2Ykdgpv4ichJl6cfIVu5fhf8f7BN5zoXYCQ-BfuPij2OZ0Bdaxg>
    <xmx:HY-2YpOMDnfzdata-r9VQCC5CeyH58cSgEmKPx3fQ2c_NMJBV3FOvA>
    <xmx:HY-2YumI6FUykYYv7LmaogxAd_AnNBEQ9s9lWkZnCiiFl4SETtnpHA>
    <xmx:HY-2Ysdzj138Piwru1auM6pCpwE5iZmzwVR5clUM6LicRihSR4FKCA>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 25 Jun 2022 00:29:13 -0400 (EDT)
Date: Sat, 25 Jun 2022 07:29:10 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 24/55] media: rkisp1: csi: Constify argument to
 rkisp1_csi_start()
Message-ID: <20220625042910.54hgmk6izei2zcge@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-25-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-25-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_212919_349114_31BAB0C4 
X-CRM114-Status: UNSURE (   9.21  )
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
>The sensor argument to rkisp1_csi_start() isn't meant to be modified by
>the function. Make it const.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by Dafna Hirschfeld <dafna@fastmail.com>

>---
> drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c | 4 ++--
> drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h | 2 +-
> 2 files changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
>index 925274b9a3c4..425a3b014089 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
>@@ -20,7 +20,7 @@
> #include "rkisp1-csi.h"
>
> static int rkisp1_csi_config(struct rkisp1_csi *csi,
>-			     struct rkisp1_sensor_async *sensor)
>+			     const struct rkisp1_sensor_async *sensor)
> {
> 	struct rkisp1_device *rkisp1 = csi->rkisp1;
> 	const struct rkisp1_mbus_info *sink_fmt = rkisp1->isp.sink_fmt;
>@@ -95,7 +95,7 @@ static void rkisp1_csi_disable(struct rkisp1_csi *csi)
> }
>
> int rkisp1_csi_start(struct rkisp1_csi *csi,
>-		     struct rkisp1_sensor_async *sensor)
>+		     const struct rkisp1_sensor_async *sensor)
> {
> 	struct rkisp1_device *rkisp1 = csi->rkisp1;
> 	union phy_configure_opts opts;
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
>index 7d3f01cfb49f..97ce7e7959ab 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
>@@ -18,7 +18,7 @@ int rkisp1_csi_init(struct rkisp1_device *rkisp1);
> void rkisp1_csi_cleanup(struct rkisp1_device *rkisp1);
>
> int rkisp1_csi_start(struct rkisp1_csi *csi,
>-		     struct rkisp1_sensor_async *sensor);
>+		     const struct rkisp1_sensor_async *sensor);
> void rkisp1_csi_stop(struct rkisp1_csi *csi);
>
> #endif /* _RKISP1_CSI_H */
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
