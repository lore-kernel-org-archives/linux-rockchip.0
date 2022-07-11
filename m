Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C39AFC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 03:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+fpAji9gLViU7+34z1Yt2mcwPyf8ILIjuxSvIYgSQfg=; b=RqM27ves4im3u89/aQwFuQnBkx
	iu9UiWlUSEU4D2+tH4dQy7qhwTwpPiqeRXJtuaHfbS6QQGX0W4hdsuoH8SXdom+H0+H+JA5/Eu0oz
	mFfe1iOpX57rJLgCF36HcOSTE4W/58VdgNc4b+J0J4duildOsQ1x+uga4gTThRLp+EKDJ84ju36s2
	OYv+v6REbk0uVHYNUp4GzADeB6cmkjnhzxQtxgfvcSAR2eNPqvcjA/6+PVCNhvB3QGaOt/CzH5uyY
	pV7q+f5euoOWhfN8i6MlwlEdtUKcFnz0PLaF1edDu604yyp2BLKLDPo4mwYTl/8e7/oQgGzMQq1ty
	2C0nXmSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAjhI-00FRu4-Gs; Mon, 11 Jul 2022 03:02:56 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAjhG-00FRtU-Gr
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 03:02:56 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 260ED320085B;
	Sun, 10 Jul 2022 23:02:53 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Sun, 10 Jul 2022 23:02:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1657508572; x=1657594972; bh=LpXRutFVA5
	wZCYNXG+zU/75GmjifqfN47iqoqg8E0pY=; b=nz0FYSNkSg0JYR+PgW61aeGKUM
	8Orr64zKSevQ6t/BVht+x9qqKGO/dDXACh6gj5J3spPQOwh2a/Ni/8FSi64sD38c
	F0sHqdLNNEgiuy54Eqgfkyq0DcoDUGTO876OSR1QTyIyRRbuH/q6oRHpPN6+RLVX
	+jimMqyPkZ+9RjJOuFSER8J+kp1Ld6A9J+smI2V+tDuAJ8LqTrIUuJ5IQI/bwkoP
	4y3txCDPPF9aPk2v6HYluz2k3cvwmSa31jEm/PndA2M/ag9N6gOGobJfYf+C6Fm6
	ssd6QHM07Q7RK5yfETfaCIvV22aAnNMXTovWc03CBVvf41e5OhnyIgA4aIWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657508572; x=1657594972; bh=LpXRutFVA5wZCYNXG+zU/75Gmjif
	qfN47iqoqg8E0pY=; b=3NtmYMCwMLiof4MfamoGX9q9LS2FvqWzUlNox66ZFby8
	PiRO+Boub2irvmlTQR2ISlv8WTfAeYucj0ZiOWzjN2/PZT5ZPzGL8hdzxKScKQuq
	r6rdDRDY9lDUp4og0LymhaAQF5PwTzX8XV75cUkn3xDQtlmOrR/Suw9Wz6ekVMZy
	XskIvCkgxpH4cKTTEjbYAyjmVYcaFc5CnkCF2ONoE8VptzO/dx9mDHpEhuGgzi9I
	Ebzp6MRFZfBbGQtBGKECvvQDgVzYUPvGkTM6qCPBquhxyPJk6SHL9Z7yZcE9Sb94
	RkC8wYZ9R9ZIQVoBRQBtA9m7ZyMjO2vacg3pHf9hgQ==
X-ME-Sender: <xms:3JLLYgEz4qlI15VDosfWkSjol-qyNLBejf0PSxBZ-ZS_YFMkyg76Xw>
    <xme:3JLLYpW5BLr_DWboMXmjgGnaOyjVZNnAE1xyPm0PJMkK66cATUNXKJ7hGv6O_Kmsx
    fMBeXRr5RbhCP-XjE4>
X-ME-Received: <xmr:3JLLYqI6e7V6oFirY22taRVQRbZubAQ8xQsPQnNBjDRgGVg6RMRr5Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudejvddgieejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpeehiedvjeehvdffleekffdvjedvieehhedttefhvddtueefueek
    lefhteduudfgjeenucffohhmrghinhepihhnfhhrrgguvggrugdrohhrghenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegurghfnhgrsehfrghs
    thhmrghilhdrtghomh
X-ME-Proxy: <xmx:3JLLYiHvYMpdgz4g3rj-kq5AtrGIWrPfhx0zuorN7Evln_1hnO3usw>
    <xmx:3JLLYmU7zY7AJK6FZ3Xl7BtAvHZxD-kDgxiYDKw-LWT_fxdzY-UhLA>
    <xmx:3JLLYlOkwQg9ISeqhYaQhbqxxNjiX2yH9JDJtJ8LlwCQFpBG66YCYg>
    <xmx:3JLLYkxIrPdtEWwxzCPCLTRzrjET4rhBVQlFYfy_dgP3juaRZHRlHA>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 10 Jul 2022 23:02:50 -0400 (EDT)
Date: Mon, 11 Jul 2022 06:02:46 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: Re: [PATCH v2 52/55] media: rkisp1: Add i.MX8MP-specific registers
 for MI and resizer
Message-ID: <20220711030246.6kxh6bw47feaubra@guri>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-53-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630230713.10580-53-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220710_200254_610853_20C758FB 
X-CRM114-Status: UNSURE (   8.30  )
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

On 01.07.2022 02:07, Laurent Pinchart wrote:
>From: Paul Elder <paul.elder@ideasonboard.com>
>
>Add register definitions for resizer format conversion control and for
>the memory interface output that are specific to the ISP version in the
>i.MX8MP.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
>---
> .../platform/rockchip/rkisp1/rkisp1-regs.h    | 33 +++++++++++++++++++
> 1 file changed, 33 insertions(+)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
>index 5c2195019723..dd63ae13e603 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
>@@ -171,6 +171,23 @@
> /* RSZ_CROP_[XY]_DIR */
> #define RKISP1_CIF_RSZ_CROP_XY_DIR(start, end)		((end) << 16 | (start) << 0)
>
>+/* RSZ_FORMAT_CONV_CTRL */
>+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_INPUT_FORMAT_YCBCR_400	(0 << 0)
>+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_INPUT_FORMAT_YCBCR_420	(1 << 0)
>+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_INPUT_FORMAT_YCBCR_422	(2 << 0)
>+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_INPUT_FORMAT_YCBCR_444	(3 << 0)
>+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_OUTPUT_FORMAT_YCBCR_400	(0 << 2)
>+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_OUTPUT_FORMAT_YCBCR_420	(1 << 2)
>+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_OUTPUT_FORMAT_YCBCR_422	(2 << 2)
>+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_OUTPUT_FORMAT_YCBCR_444	(3 << 2)
>+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_CFG_Y_FULL			BIT(5)
>+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_CFG_CBCR_FULL			BIT(6)
>+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_CFG_422NOCOSITED		BIT(7)
>+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_DATA_WIDTH_10_BIT_ENABLE	BIT(8)
>+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_DATA_WIDTH_10_BIT_METHOD	BIT(9)
>+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_PACK_FORMAT_PLANAR		(0 << 10)
>+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_PACK_FORMAT_SEMI_PLANAR	(1 << 10)
>+
> /* MI_IMSC - MI_MIS - MI_RIS - MI_ICR - MI_ISR */
> #define RKISP1_CIF_MI_FRAME(stream)			BIT((stream)->id)
> #define RKISP1_CIF_MI_MBLK_LINE				BIT(2)
>@@ -212,6 +229,22 @@
> #define RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP	BIT(0)
> #define RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP	BIT(1)
> #define RKISP1_CIF_MI_XTD_FMT_CTRL_DMA_CB_CR_SWAP	BIT(2)

newline here

>+/* MI_OUTPUT_ALIGN_FORMAT */
>+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_LSB_ALIGNMENT			BIT(0)
>+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_BYTES		BIT(1)
>+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_WORDS		BIT(2)
>+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_DWORDS		BIT(3)
>+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_SP_BYTE_SWAP_BYTES		BIT(4)
>+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_SP_BYTE_SWAP_WORDS		BIT(5)
>+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_SP_BYTE_SWAP_DWORDS		BIT(6)
>+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_DMA_BYTE_SWAP_BYTES		BIT(7)
>+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_DMA_BYTE_SWAP_WORDS		BIT(8)
>+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_DMA_BYTE_SWAP_DWORDS		BIT(9)

and here

thanks,
Dafna

>+/* MI_MP_OUTPUT_FIFO_SIZE */
>+#define RKISP1_CIF_MI_MP_OUTPUT_FIFO_SIZE_OUTPUT_FIFO_DEPTH_FULL	(0 << 0)
>+#define RKISP1_CIF_MI_MP_OUTPUT_FIFO_SIZE_OUTPUT_FIFO_DEPTH_HALF	(1 << 0)
>+#define RKISP1_CIF_MI_MP_OUTPUT_FIFO_SIZE_OUTPUT_FIFO_DEPTH_QUARTER	(2 << 0)
>+#define RKISP1_CIF_MI_MP_OUTPUT_FIFO_SIZE_OUTPUT_FIFO_DEPTH_EIGHT	(3 << 0)
>
> /* VI_CCL */
> #define RKISP1_CIF_CCL_CIF_CLK_DIS			BIT(2)
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
