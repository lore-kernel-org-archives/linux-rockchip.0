Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B74DC43334
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 05:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N+D//RvyLK6es9njGxuI6wkCIkqIsDX8bFVrFtsQYtw=; b=aygy2yXoIJtPN3bI5IAIAG2uW2
	cvg793PnZpI0uCPAHNTDzrzOByooTCOlpNoa14iCugmB8/0ir04kgAb6zwHRhkI1PrF9CmE2LPXtT
	GplCq76cPBwX6nL382HiFCd0SD7/yIGOHOC485pPoZBmprRgq/CbyOOUjHHNyTchPADggk9/JyxA3
	FJxhxvwgRJPQySK4dg/glQ2QaA6fK6nVsHwTaYhzGL8yXdgPQ1H7Boqws7tEh9TcAC2dXm6onZM0E
	CmIGBwt5R39bzIh2OWmist8531H5K6CM82QuR3WBujT7tZcUdY1RqVws/hJBuIAQl6GoKSj2KEXox
	P/DJfCVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o79Te-0031Wh-3X; Fri, 01 Jul 2022 05:46:02 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o79Ta-0031Vb-SP
	for linux-rockchip@lists.infradead.org; Fri, 01 Jul 2022 05:46:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 08AA55C00B9;
	Fri,  1 Jul 2022 01:45:58 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Fri, 01 Jul 2022 01:45:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656654358; x=1656740758; bh=SKxF6l6ZhL
	u6yW8NJHyOs8aakzl/4ogKz/o5bFAxTzQ=; b=FBWMYcZisvoMG9BZKpBYJA/PBQ
	DctbNHEz4k/e7uTxsxmCTopmwWqy3ojxYy9EXcAQTkyXVo/0ByOOfRvjLf1VOp2+
	bLfQ2DeiX9Zp4iIzuGLjy7H+s0hGdtgiLJtdQExbmh+jOM4W+WzASlLqRg1AEq7b
	n/0170FW5ZEGrnwTGazCkdyX0AjYLQcKPLn8w3kuqaUNJnzA9nRSlvbBYz0c12ng
	mcQ3BX8Fbj0IQh5qc69sJOUXFHcTm+/htYDPus4/ofKWKhpKmrx+TmBaSRmNqI4N
	IC1lwSeK+8MCG+CYj+ZbPiD3E16aH2yWcA+G7pWBjcS6ffHHBFZ6q7w3ofLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656654358; x=1656740758; bh=SKxF6l6ZhLu6yW8NJHyOs8aakzl/
	4ogKz/o5bFAxTzQ=; b=gBEViozZPjnVzNQBeDZgcmMPzvbMQZpWu8GUkAMZr2nU
	yw0GtfcQMD4icf+klL2FCo1ylWjAKiiIZAGJIHybvU5edZYQlCKKPcH8N2QmDAnn
	SbpBbzrzYPwx5jN56VhZCyn7XKRGpHiNOuLIYjTcOZRCx+9aHvdyErpC2hmTFO1S
	lBHIiLQ2T3IooI/PgDIQAMz2AXmoHzSa/MNr3IEo1IfBIOHW7sNRCB2aaG+tcuWm
	ylwX/C6WVrpfGsMYwK0jYfCjSvm9U+kZ8E40LYJEPY5nol+AXi+k+QFJzPRxZGym
	p1ToW0wqGAeSvEJb9RmlyvYhqftI31ngqZQWkGzYbQ==
X-ME-Sender: <xms:FYq-YhqcDcJ03PXBPT9cQ2BHfGfnuWMy1KsrfTHCZ9t7tKmFDhaYxA>
    <xme:FYq-Yjrv-JWFGM12vsrpABj6KH4m30YH4GmdCUoIiphesYExTZoMCD8I_Ch5jA9tI
    Qkm_cC55q5Xt_5SxB4>
X-ME-Received: <xmr:FYq-YuNPxE5H8yXCbEyPKS355YAeDBClfBC4L3LZS1-dHAE0JoOqDw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudehvddguddtudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttdejnecuhfhrohhmpeffrghf
    nhgrucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqne
    cuggftrfgrthhtvghrnhepvdehtdeludekgeevleefuedvudejieetheekvdfhteekffdu
    jefhfedtudehvdeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepuggrfhhnrgesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:FYq-Ys5hg620X8V8ks_tlUnb6lMUUGlckwVmVbE7hNuMNsBFsDX9Xw>
    <xmx:FYq-Yg59-_SeXR5CswSqjy8zEe1KaEBJDOFc5M7AEEmfx5MpjLdIGw>
    <xmx:FYq-YkhvPS81bM-RRYAYzhcXjQTH1HnmbLV8Vgvbgo8fzbLMDNQ83Q>
    <xmx:Foq-Yva7xB5-DiYmQ1DgDkYXDbNlVjpOmOqqTuDcFwS7yI7JiC6ODQ>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 1 Jul 2022 01:45:54 -0400 (EDT)
Date: Fri, 1 Jul 2022 08:45:52 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, heiko@sntech.de,
	laurent.pinchart@ideasonboard.com,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 52/55] media: rkisp1: Add i.MX8MP-specific registers for
 MI and resizer
Message-ID: <20220701054552.lgjtnp2anwrtumox@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-53-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-53-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_224559_033466_D3DDDB26 
X-CRM114-Status: UNSURE (   7.06  )
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

and here,

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
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
