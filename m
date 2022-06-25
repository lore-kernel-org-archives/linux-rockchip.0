Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BE26C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jun 2022 05:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bavA+XRpgOz8EQ0LWg9orp+5BfEqYWscQ7FyLJjdh/0=; b=4wkQBJxqlcjaQNycjVFBD6SHpY
	w31Sw0gJCAazxHCh/QHLk/NcWFK+geh83pgROb1jzb4pUnjKf5ZsTtb1o8jfNwms/2m3ZbiYqQFSh
	laMOq2p+js1izuXwwIBVA25CV2T1ed6ah0xeSSUNe15w0t2AQY+3vplzi232zOeIQxaMI49orS5jj
	f45gSNKVo6D2tFaWjRSVci0u424Cfp5MUD4Y9IgxPCPaudUOKfFmDN738fknhqlwUDoIcx1oaX2eh
	IUflSEqQLx+pAu26a5iT+A0kn3sjTgFN3jq1FBWSpABrpVp44xEHFlr14ULdaV1FxRUgIE5QWuk6T
	BZ6pGpaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4xyC-004f9f-CL; Sat, 25 Jun 2022 05:04:32 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4xy9-004f9A-PU
	for linux-rockchip@lists.infradead.org; Sat, 25 Jun 2022 05:04:31 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 732D33200910;
	Sat, 25 Jun 2022 01:04:28 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Sat, 25 Jun 2022 01:04:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656133467; x=1656219867; bh=lm8eqV5bh7
	EwZAwY0dYNZBn1aIogTtEkXnKnj3irYZQ=; b=fSb3pvoeJNIp46y+5zu9AS3QBN
	3WxbM1NUeD5+T+UzAim3SQacK3cUvYOuChqX2dN+owob4IfUA8wKcZmswLTW462F
	1OKlsiQiPMYrExiJe35sATRiDWbwanEggtuG79a2v5/3WRGMkwmwnYD8iS8Y1O/q
	qKBCD/fUfyhU8SQnU2LJnRQXxaf96kP41fLjrMD6y1aTP0Lw5Y/40d5C676Yo50h
	wTblU7/o08BNpMC61U0PAu3d582D+fQW2t/5rphg3oawcgYPmNYOencCBhY+7j4T
	cYhUSzdwscWNl3nkxmfrb/x84vfWRLClvF5XHmIHvajvuJkJ1e7q1bEGqPWA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656133467; x=1656219867; bh=lm8eqV5bh7EwZAwY0dYNZBn1aIog
	TtEkXnKnj3irYZQ=; b=oWqItmX4DpOXrMbYrCIZ95lWiwZ0PjcF2/q7TFUCtwmv
	ZEEu4BvSon6+EdtiIHs8eIJ0e5l4OETIl+c+BxSZIRH7H6I+/cwP54vaTuJzB3VK
	Dh1ei2kBxi2hNtKCr3/Hh0ixpoAqcspoOHJE3pIOb+fvjEhVSmqkKH/kpaE/q+qI
	Shvg1Bf1DHj24gaIz264SnG3r8LsFKcuCzzfcxfTdRJPoOVcg1DIJLIL81eZCsWy
	iwR+IXcpJMQhSWXR0ZpuhX99/uulBJu+Z/IdsQ2ZtXMMhWqhGtcZLNk+FBhgGF8k
	vae0FHPgXBSHBhOdRzb7GNmHEwgk4JP/bm/ZnkqneQ==
X-ME-Sender: <xms:W5e2YhZKK-D4d_vAL4rkO5FXFc3kQ1v814cETrk3y9dbWRKSOy78_Q>
    <xme:W5e2YoZrPP_SFgOr5qNdbov_StiZQvwAYsTNn-ysd_ZahZPenmntAtxpNUhjtiL52
    28C-dCCrBv26_gUj-c>
X-ME-Received: <xmr:W5e2Yj-EPEC54zVXuOKdIdmWXURdImitFBmq6x6Wc8knAWA7eT8i8A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudegtddgleefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:W5e2YvpUjIn7Ef5vfjiH13Lc_Hny_F-S9X7kgjeBbY_rPb_kCwiAOw>
    <xmx:W5e2YsqO1ANMxQkxAX0GkpdCWPBt9l8wEfhJ1pg5uROyzfW4hdwiHQ>
    <xmx:W5e2YlTk6OgueoPsdd5ZAsWaVbE9l1WpqlMUrF0-J-XE254TD7Cf1g>
    <xmx:W5e2YkLjTzIlTymNW6kHAkqDCsqZp5Qota_PCuEakPyP6piF7uDWsw>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 25 Jun 2022 01:04:24 -0400 (EDT)
Date: Sat, 25 Jun 2022 08:04:21 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 33/55] media: rkisp1: isp: Initialize some variables at
 declaration time
Message-ID: <20220625050421.f4rgnckrebmsmvlz@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-34-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-34-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_220429_900150_40F37CD4 
X-CRM114-Status: UNSURE (   7.45  )
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
>Intialize the src_fmt and sink_fmt variable when declaring them in
>rkisp1_config_isp().
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by Dafna Hirschfeld <dafna@fastmail.com>

>---
> drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 5 ++---
> 1 file changed, 2 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>index 4496af991c82..bf44f10200f5 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>@@ -142,12 +142,11 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
> {
> 	struct rkisp1_device *rkisp1 = isp->rkisp1;
> 	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, acq_prop = 0;
>-	const struct rkisp1_mbus_info *src_fmt, *sink_fmt;
>+	const struct rkisp1_mbus_info *sink_fmt = isp->sink_fmt;
>+	const struct rkisp1_mbus_info *src_fmt = isp->src_fmt;
> 	struct v4l2_mbus_framefmt *sink_frm;
> 	struct v4l2_rect *sink_crop;
>
>-	sink_fmt = isp->sink_fmt;
>-	src_fmt = isp->src_fmt;
> 	sink_frm = rkisp1_isp_get_pad_fmt(isp, NULL,
> 					  RKISP1_ISP_PAD_SINK_VIDEO,
> 					  V4L2_SUBDEV_FORMAT_ACTIVE);
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
