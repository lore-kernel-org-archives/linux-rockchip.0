Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD624C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jun 2022 05:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DtAL1tryOcf04ChxTCYE5TFqrpq1kt9j5xWC3NAzSoc=; b=PCIhKi/GA15b1KKsGlBydiST2I
	khr6RJxBOdRXKHe3JS0bQDngu1f0FZq69zJLajt/3kJoe91plIeGTfWLoRnAbiuvtsuStTfXjp/wW
	BMVsgXI/LSBunWs7+LK/+2UpkpZvZjbHbhc1W8DilGX2H3dGVnYOGkGq2V5GVEj8SjOrwsbLECa2x
	PlSR9dTaT1cge12SfVp6ahKXZgdqqteA6zyjScnDFHH5sQNBFYQ0Eu7bH45sQaMvcvytfwDVLKke1
	WNXfhStTIaAWF+J4I81OPEsxVOPzxDEwJ53guPP8trKnLxiZAzJvH+23rxiSMQpIyLA36/9WDKi/q
	rU4KncIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4xyp-004fGL-Ql; Sat, 25 Jun 2022 05:05:11 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4xyn-004fFF-3h
	for linux-rockchip@lists.infradead.org; Sat, 25 Jun 2022 05:05:10 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id C37E83200901;
	Sat, 25 Jun 2022 01:05:07 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Sat, 25 Jun 2022 01:05:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656133507; x=1656219907; bh=Gv7D2SRG9y
	KuAB2N1Eso0pAhevzF/nzQN+ib0KFHt0c=; b=JfnyHZzSrB0XBul0fe8cVyy+/I
	sHqvvSBB9fCHB+cxovA2WBZNzotze1XbFTiDknyUKZrBJ1+ioOo5cA0l76i5qWBS
	bAUrS7/inSd7EfHYzjwZIQX+owkcCx3KIMSPpFiWnrYUWq08WFWLgNnDXp9h+fJ7
	EHpNHwNBaNz9YGFp2nsR2v08xr7CmAoLHN0E0lpByqp48cvMR1ntR5QUcgrDAWIs
	mtAhbCFLr2SMoOAwPZB0DHUwo7RotrBJdT3zztdW0mjh+Ivk7ieGOFeLBOwqPXSz
	CDvfsJBbktZC96rS5XQ3Dsprryo/fQ+mPGMpdGZY1Sj/cOnx/T3JcRV60ipQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656133507; x=1656219907; bh=Gv7D2SRG9yKuAB2N1Eso0pAhevzF
	/nzQN+ib0KFHt0c=; b=pkpeUgvt7cxlv/zKW0Xf9ziCFYMVLa98bjRvJXeVCx7e
	cYJwN0T8F19wYd8h1XZJWuHWevG+0UcymscusgYdEan7dMHrMcqC6Kjb0Dmq9mzK
	1ZJtlMKBHm1oDhkDw2/GC/kC5fQ32nmcl+RH397ujzUh+FOCocUwvLSysXjk241h
	0ZLq8JIIvLlaKavCYh+lojXRSefRdIFdyB6zdfltY2OKkcxit5xT7u82iKuZace7
	GmMGQLWFQ67IM55Y8nLzfh9pCCUXzHm02HCliFEHGgJ10SXUjVZMYQAMFD9QtUeh
	9rmknqfUjcwE7C72o3qPkbosq3xjF3qS6aHjoxlvSA==
X-ME-Sender: <xms:g5e2Yonxfxd-ZJS5xlQvt0nq7FEFxNXYcUqkXdcQ6lt8tUoW7iVspg>
    <xme:g5e2Yn0JvbSY-6qXG_zaRYTMJMO1vY5_Ap0UPLzQ_beeKAwyluaRErXy9gat53CdO
    5LQnnzVcZhisDiE3s4>
X-ME-Received: <xmr:g5e2Ymqwn-ebqjKalxxk6Z53oiH49wGXVW6w5UxPcOCgDdva-pA_Zg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudegtddgleefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:g5e2YknFGOoIx94vNFS7jtlENc2my9UmLJkRrlYAlAH9-smNPb01Rw>
    <xmx:g5e2Ym1aW1cj_2IGg4rUUBNypprMdhan_SEzWOCq--KK-DdHke4IJQ>
    <xmx:g5e2YrsKhqiFI4WHuYjx47obQMp0kUrbn57GAQdfBlQz5YWQPH0Mew>
    <xmx:g5e2YvnsH33AO_5esKRA6zJOodyMVKQcEaM0Ik3Qs9TJxzzYJeb7kw>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 25 Jun 2022 01:05:04 -0400 (EDT)
Date: Sat, 25 Jun 2022 08:05:01 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 34/55] media: rkisp1: isp: Fix whitespace issues
Message-ID: <20220625050501.zpyhh6gtk7ezaee5@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-35-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-35-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_220509_222347_C48294DE 
X-CRM114-Status: UNSURE (   7.55  )
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
>Add missing blank lines after variable declaration blocks, and fix
>indentation issues.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by Dafna Hirschfeld <dafna@fastmail.com>

>---
> drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 8 +++++---
> 1 file changed, 5 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>index bf44f10200f5..86d496855374 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>@@ -79,7 +79,8 @@ rkisp1_isp_get_pad_fmt(struct rkisp1_isp *isp,
> {
> 	struct v4l2_subdev_state state = {
> 		.pads = isp->pad_cfg
>-		};
>+	};
>+
> 	if (which == V4L2_SUBDEV_FORMAT_TRY)
> 		return v4l2_subdev_get_try_format(&isp->sd, sd_state, pad);
> 	else
>@@ -93,7 +94,8 @@ rkisp1_isp_get_pad_crop(struct rkisp1_isp *isp,
> {
> 	struct v4l2_subdev_state state = {
> 		.pads = isp->pad_cfg
>-		};
>+	};
>+
> 	if (which == V4L2_SUBDEV_FORMAT_TRY)
> 		return v4l2_subdev_get_try_crop(&isp->sd, sd_state, pad);
> 	else
>@@ -893,8 +895,8 @@ static void rkisp1_isp_queue_event_sof(struct rkisp1_isp *isp)
> 	struct v4l2_event event = {
> 		.type = V4L2_EVENT_FRAME_SYNC,
> 	};
>-	event.u.frame_sync.frame_sequence = isp->frame_sequence;
>
>+	event.u.frame_sync.frame_sequence = isp->frame_sequence;
> 	v4l2_event_queue(isp->sd.devnode, &event);
> }
>
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
