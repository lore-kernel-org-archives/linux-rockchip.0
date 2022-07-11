Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A59A1C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 03:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4qR1QWTOsoph64aHUwcbjgvm+ChD0hxdmCbYY3XJSAg=; b=nkZOn78BtciuZMBcHrQyrQeHLp
	Nr3poeciSfq32ALeMaL/QmFbCY6Hm41S1YLlZxQFBM3RAl+a+Sq6bClOEX/9d/YKxdPCVx0zqCqBb
	fjmCbS3my1dFUOHb2riQnBNOe6NmCAnCvYxllXv+Tz8NMcKoxe3dlBTD5rsWShHt1W1X6DMfoIJgq
	khdxGK6rCZ3MJnZcOaMuWhMzzKKT4Mm9x1oxD5QBrMAYJDCVrt7q4VVONojiZs2YcYUv4xl2w42F5
	IhcSJTJcGlmbyuxG/NLsEbkhFmxke1ukAaSw/XWGA0Z70bh0gM0oCZCbsPB/Bjm8/w6oaVHNDZRUC
	jKoY89+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAjeJ-00FQW0-Pc; Mon, 11 Jul 2022 02:59:51 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAjeG-00FQUL-Jo
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 02:59:50 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 8C17B3200657;
	Sun, 10 Jul 2022 22:59:47 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Sun, 10 Jul 2022 22:59:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1657508387; x=1657594787; bh=Vjo7xIJE87
	/J7RzJzICzwGe1nCM99XNZiWqI3BgiIgo=; b=cjajEGWWBjdpN/lFfGnkUNvHhG
	QxGuX+ltFItF6hjsftHGbsRRB7risFNyn7if/ETyD2/nPxx+fw3XxEoRy4RxkXVC
	Yqm2q0hBdY9hvSim9LDdt2vUZDYeOphwfRHgG8Azxiy79TPM/K8+LQdDcqDsY5dZ
	m/P+PNJ4DEqA2J/BjygF8QnvugpK1XAz53DFShnjMBPYPFS2xPOOgHUEg1E1DlnW
	nY2/ZWEgnuo1LnKIDq9g7gDY1SOffpRG/ZGyiJiMqWj3U7VV/HPneZ3k73qVO/4C
	vnloimcWkC+EPBkxT2DDSa7KmDO7R2wgP02+XsmR+FT+dHExEyklZ0AUuTFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657508387; x=1657594787; bh=Vjo7xIJE87/J7RzJzICzwGe1nCM9
	9XNZiWqI3BgiIgo=; b=v5MyBJr5NbcE9Gvz9mJj/cBh7Ez0UENYDK+q4UPNDzo4
	a/U1uL9G7URl1UMg8sQB6HeoqKd08z9KV3EDJ+vbOcFNjFoQpRIemdTItmoIjJzA
	4pR5jkD+Tccn7+/byFSXDWeOcoYeRPkV2N3egiqDhUFY/KnGiTJWyX1Uw+s4GT2O
	U/rdBIbEm9ByEkhe24lSqNjG2yqpF97x+8nl3KAv4WlLkSDkoyW02q6gEFQcd6Di
	5F9gbe1sxLegjH3dxvmwceYpj58U+DThof5S9HkhMz0X6do3aVnQJbscnNT5Y9xS
	/hX6wNrHdEEo1eUr9l5SPt20lsc4/i3OwhlBc7jefA==
X-ME-Sender: <xms:IpLLYtNWmt-qSz8einWmJd7FOBFynL3kzdSv-lrp8_eGWJIaEHMfvQ>
    <xme:IpLLYv-lMivmrMzbHWYZI0Tm_azMwiRqQKWTE2xmg7lGJ5oNObwQNq88jkqpUKiWb
    -hCBgL-prCMwHofBeU>
X-ME-Received: <xmr:IpLLYsQfKAYQ77rpQoeC745O7XxLb9PpaMEtxfgG29b8mdWHLG51Bg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudejvddgieeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpeehiedvjeehvdffleekffdvjedvieehhedttefhvddtueefueek
    lefhteduudfgjeenucffohhmrghinhepihhnfhhrrgguvggrugdrohhrghenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegurghfnhgrsehfrghs
    thhmrghilhdrtghomh
X-ME-Proxy: <xmx:IpLLYpsKMzGet-Ba5iUGTUqxjHncF52cG3LeHQTZcTXwz4Wf8qZseA>
    <xmx:IpLLYleKajsIh6H32pnmewASdRX9CHiepp9WI8c6LDOcIjzJR_ph9w>
    <xmx:IpLLYl2twX9G6BR3hN8WojrOn1j0kcYbN1njOw77skhdsL3Isadt5A>
    <xmx:I5LLYs7DX3IzMD0f1CNT-2ziZpVBQS6c030_Y2QDYDZhqZWVSl2f6w>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 10 Jul 2022 22:59:44 -0400 (EDT)
Date: Mon, 11 Jul 2022 05:59:42 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: Re: [PATCH v2 51/55] media: rkisp1: Add and set registers for output
 size config on i.MX8MP
Message-ID: <20220711025942.tbwprd4oebuvvdro@guri>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-52-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630230713.10580-52-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220710_195948_705296_82B6C01E 
X-CRM114-Status: GOOD (  13.40  )
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
>The ISP version in the i.MX8MP has a set of registers currently not
>handled by the driver for output size configuration. Add a feature flag
>to determine if the ISP requires this, and set the registers based on
>that.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
>Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>---
> drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 8 ++++++++
> drivers/media/platform/rockchip/rkisp1/rkisp1-common.h  | 1 +
> drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c     | 3 ++-
> drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h    | 9 +++++++++
> 4 files changed, 20 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>index d5904c96ff3f..3c1ade601bf4 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>@@ -420,6 +420,14 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
> 	rkisp1_write(rkisp1, cap->config->mi.cr_size_init,
> 		     rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CR));
>
>+	if (rkisp1->info->features & RKISP1_FEATURE_MAIN_STRIDE) {
>+		rkisp1_write(rkisp1, RKISP1_CIF_MI_MP_Y_LLENGTH, pixm->width);
>+		rkisp1_write(rkisp1, RKISP1_CIF_MI_MP_Y_PIC_WIDTH, pixm->width);
>+		rkisp1_write(rkisp1, RKISP1_CIF_MI_MP_Y_PIC_HEIGHT, pixm->height);
>+		rkisp1_write(rkisp1, RKISP1_CIF_MI_MP_Y_PIC_SIZE,
>+			     pixm->width * pixm->height);
>+	}
>+
> 	rkisp1_irq_frame_end_enable(cap);
>
> 	/* set uv swapping for semiplanar formats */
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>index 18a48ecda173..6ce92b5fd465 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
>@@ -112,6 +112,7 @@ enum rkisp1_feature {
> 	RKISP1_FEATURE_MIPI_CSI2 = BIT(0),
> 	RKISP1_FEATURE_DUAL_CROP = BIT(1),
> 	RKISP1_FEATURE_RSZ_CROP = BIT(2),
>+	RKISP1_FEATURE_MAIN_STRIDE = BIT(3),

missing doc

thanks,
Dafna

> };
>
> /*
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>index 003bd7db54b9..a9c93191020f 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
>@@ -515,7 +515,8 @@ static const struct rkisp1_info imx8mp_isp_info = {
> 	.isrs = imx8mp_isp_isrs,
> 	.isr_size = ARRAY_SIZE(imx8mp_isp_isrs),
> 	.isp_ver = IMX8MP_V10,
>-	.features = RKISP1_FEATURE_RSZ_CROP,
>+	.features = RKISP1_FEATURE_RSZ_CROP
>+		  | RKISP1_FEATURE_MAIN_STRIDE,
> };
>
> static const struct of_device_id rkisp1_of_match[] = {
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
>index 1fc54ab22b6d..5c2195019723 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
>@@ -1013,6 +1013,15 @@
> #define RKISP1_CIF_MI_SP_CB_BASE_AD_INIT2	(RKISP1_CIF_MI_BASE + 0x00000140)
> #define RKISP1_CIF_MI_SP_CR_BASE_AD_INIT2	(RKISP1_CIF_MI_BASE + 0x00000144)
> #define RKISP1_CIF_MI_XTD_FORMAT_CTRL		(RKISP1_CIF_MI_BASE + 0x00000148)
>+#define RKISP1_CIF_MI_MP_HANDSHAKE_0		(RKISP1_CIF_MI_BASE + 0x0000014C)
>+#define RKISP1_CIF_MI_MP_Y_LLENGTH		(RKISP1_CIF_MI_BASE + 0x00000150)
>+#define RKISP1_CIF_MI_MP_Y_SLICE_OFFSET		(RKISP1_CIF_MI_BASE + 0x00000154)
>+#define RKISP1_CIF_MI_MP_C_SLICE_OFFSET		(RKISP1_CIF_MI_BASE + 0x00000158)
>+#define RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT	(RKISP1_CIF_MI_BASE + 0x0000015C)
>+#define RKISP1_CIF_MI_MP_OUTPUT_FIFO_SIZE	(RKISP1_CIF_MI_BASE + 0x00000160)
>+#define RKISP1_CIF_MI_MP_Y_PIC_WIDTH		(RKISP1_CIF_MI_BASE + 0x00000164)
>+#define RKISP1_CIF_MI_MP_Y_PIC_HEIGHT		(RKISP1_CIF_MI_BASE + 0x00000168)
>+#define RKISP1_CIF_MI_MP_Y_PIC_SIZE		(RKISP1_CIF_MI_BASE + 0x0000016C)
>
> #define RKISP1_CIF_SMIA_BASE			0x00001A00
> #define RKISP1_CIF_SMIA_CTRL			(RKISP1_CIF_SMIA_BASE + 0x00000000)
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
