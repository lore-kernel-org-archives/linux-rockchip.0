Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE5FEC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Jul 2022 06:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1BkndWjVp1j/Qo7+j0y/wGZI+sfrCXTVpBqn5uSaDqc=; b=NjVUzifHB2v+pkZtnLPWLmeePN
	6lWCVeWkkqnZ7CxuQ5Jf/eNIcTwh6a4LXHULgLw95cilPCXkfKjkjZUWXqCtytl87V8Y4fQDLg8Ro
	VZS2maWVN36maZAyfj7pqMVAPv3zDJB990nsdOFD4U2aLMHTtjPwvU4iC9ZVvbOZgNvs1OCaHYvEH
	C5h6/Sn+tK89ankWU/C13S9DKMyF9NXjK9keG1vVWXBFMsFasU3jthRz2U3oDQj0LOkJrTD1X6AL7
	jE8l3z7OEj/0uaWTMmr5HtJ7Lg2K/oC64Lcln0J8vdL4YEKxCRCEIuXoqJnbFRgCwynBCt6NXzY+A
	I7dPwXwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCb32-00E8Q5-1w; Sat, 16 Jul 2022 06:13:04 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCb2y-00E8MG-63
	for linux-rockchip@lists.infradead.org; Sat, 16 Jul 2022 06:13:01 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 2FB805C0049;
	Sat, 16 Jul 2022 02:12:52 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Sat, 16 Jul 2022 02:12:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1657951972; x=1658038372; bh=9aVaeCfojG
	QgOfJ0P0V135IK2SdR9Yxo1/vx8xaYZtk=; b=jWUsPgF56hEbNe6YIxGUNKDQh9
	uRuvESRIgHMAthUE+54piRjjOH1a3jfAHTnlsykKnFUbIzwdukX7QsuYBD0DHa9D
	y6o/r5PsPxEVOtzBOzcBQOH8cK+oD/Il4FSPz87Xiu32MhP8wPNFpsFhY0EebC2r
	p3bdpEFy2NiITKuzIOOWkaTje5cFALzXug8SKYh6P9fTTT4Qi03kQgEkh2SBXMRn
	OgCNfCrnT3LJsEwPiIIut0KUUCLTW3Dmv+G8icnuz4xrpeFJStNj1JodBzdxXoeL
	JsJkz1+GGOa+kJKpc2q1NpPZ+QmlspZ0LAPmLcwUZ7hCnuRHYEf9TB/b4VHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657951972; x=1658038372; bh=9aVaeCfojGQgOfJ0P0V135IK2SdR
	9Yxo1/vx8xaYZtk=; b=TvR5Pu6pYZv0LLssctvEo6GMeppScDwSbVXWqKeZc9iI
	tNW1s1bk7OzV+tTldoG2xGXUpkZHzzBF2TQvv+LnHYKyok4TPOY6RtWbqC7tAdP2
	pVRW3hX6LqDzIbai3q87EsTGbYL8CB1yRvbkvfpcm65iqo2iXQxvdZmKFOhc1Ifl
	K7+C4GWg2U4cUvX7vz+RtSB5+VVW0R+4ZOZ8RpyyK3unrjej77aJ4c7hymie5Gng
	O+vb6CKEVklHugziiRSRTicU612rrMKZp8xfdUmciiFvoy+D6N29FZZPmqaEyh7m
	ywX9SItjggXfIyDg+sUd8YJ4Ocen00RkK1FJSVIZag==
X-ME-Sender: <xms:41bSYmTYU1ovPbIwy_kEM6G6iiO57t3vFizN6nPNlhyWGyceORjyqw>
    <xme:41bSYrwWQ0ZRWZvyJwdpY7-EX7FdzJZLmNghKZ7Ks5zcPy9cEJlyaqKi_WYwTun2w
    zew2dun8HEijdNEylg>
X-ME-Received: <xmr:41bSYj3urSUH6eoyZQIPa5HfzMk4RRVC8KPHtF_KVAIVhuNLhbLRBw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudekvddguddthecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttdejnecuhfhrohhmpeffrghf
    nhgrucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqne
    cuggftrfgrthhtvghrnhepvdehtdeludekgeevleefuedvudejieetheekvdfhteekffdu
    jefhfedtudehvdeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepuggrfhhnrgesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:41bSYiCqOBraIZtSkqONZTIJyNDnFc78RHjwENAzpJi5HO8oozLtxg>
    <xmx:41bSYvjzvOTMCbcwXGqc4lpfMEONd6Xr69DA-QSsRPJoAYYPaT9h_Q>
    <xmx:41bSYupMK6F3gsekCE5XNDVu9UUx7G8YtBLHe_S-xrGr9wKJRz8ybA>
    <xmx:5FbSYsul1AQlFUVyux1dOCkbG2Hg3YLP1xjZqfTlzTl86JUAElJr4A>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 16 Jul 2022 02:12:50 -0400 (EDT)
Date: Sat, 16 Jul 2022 09:12:47 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: Re: [PATCH 2/3] media: rockchip: rkisp1: Mask invalid bits in DPCC
 parameters
Message-ID: <20220716061247.dil4rt6zac2jzu6y@guri>
References: <20220616160456.21549-1-laurent.pinchart@ideasonboard.com>
 <20220616160456.21549-3-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220616160456.21549-3-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_231300_326318_5BF18604 
X-CRM114-Status: GOOD (  11.74  )
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

On 16.06.2022 19:04, Laurent Pinchart wrote:
>Restrict the DPCC configuration that can be set by userspace to valid
>register bits. To do so, reorganize the related register macros to
>define valid bitmasks, as well as bits of the DPCC mode register.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>---
> .../platform/rockchip/rkisp1/rkisp1-params.c  | 44 ++++++++++++-------
> .../platform/rockchip/rkisp1/rkisp1-regs.h    | 26 +++++------
> 2 files changed, 41 insertions(+), 29 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>index 140012fa18f0..94e834cd2a21 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>@@ -58,35 +58,47 @@ static void rkisp1_dpcc_config(struct rkisp1_params *params,
> 	unsigned int i;
> 	u32 mode;
>
>-	/* avoid to override the old enable value */
>+	/*
>+	 * The enable bit is controlled in rkisp1_isp_isr_other_config() and
>+	 * must be preserved. The grayscale mode should be configured
>+	 * automatically based on the media bus code on the ISP sink pad, so

I see you add RKISP1_CIF_ISP_DPCC_MODE_GRAYSCALE_MODE in this patch.
Shouldn't you add a patch that set/unset it according to the isp sink pad
as this doc says?

Thanks,
Dafna

>+	 * only the STAGE1_ENABLE bit can be set by userspace.
>+	 */
> 	mode = rkisp1_read(params->rkisp1, RKISP1_CIF_ISP_DPCC_MODE);
>-	mode &= RKISP1_CIF_ISP_DPCC_ENA;
>-	mode |= arg->mode & ~RKISP1_CIF_ISP_DPCC_ENA;
>+	mode &= RKISP1_CIF_ISP_DPCC_MODE_DPCC_ENABLE;
>+	mode |= arg->mode & RKISP1_CIF_ISP_DPCC_MODE_STAGE1_ENABLE;
> 	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_MODE, mode);
>+
> 	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_OUTPUT_MODE,
>-		     arg->output_mode);
>+		     arg->output_mode & RKISP1_CIF_ISP_DPCC_OUTPUT_MODE_MASK);
> 	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_SET_USE,
>-		     arg->set_use);
>+		     arg->set_use & RKISP1_CIF_ISP_DPCC_SET_USE_MASK);
>
> 	for (i = 0; i < RKISP1_CIF_ISP_DPCC_METHODS_MAX; i++) {
> 		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_METHODS_SET(i),
>-			     arg->methods[i].method);
>+			     arg->methods[i].method &
>+			     RKISP1_CIF_ISP_DPCC_METHODS_SET_MASK);
> 		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_LINE_THRESH(i),
>-			     arg->methods[i].line_thresh);
>+			     arg->methods[i].line_thresh &
>+			     RKISP1_CIF_ISP_DPCC_LINE_THRESH_MASK);
> 		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_LINE_MAD_FAC(i),
>-			     arg->methods[i].line_mad_fac);
>+			     arg->methods[i].line_mad_fac &
>+			     RKISP1_CIF_ISP_DPCC_LINE_MAD_FAC_MASK);
> 		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_PG_FAC(i),
>-			     arg->methods[i].pg_fac);
>+			     arg->methods[i].pg_fac &
>+			     RKISP1_CIF_ISP_DPCC_PG_FAC_MASK);
> 		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_RND_THRESH(i),
>-			     arg->methods[i].rnd_thresh);
>+			     arg->methods[i].rnd_thresh &
>+			     RKISP1_CIF_ISP_DPCC_RND_THRESH_MASK);
> 		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_RG_FAC(i),
>-			     arg->methods[i].rg_fac);
>+			     arg->methods[i].rg_fac &
>+			     RKISP1_CIF_ISP_DPCC_RG_FAC_MASK);
> 	}
>
> 	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_RND_OFFS,
>-		     arg->rnd_offs);
>+		     arg->rnd_offs & RKISP1_CIF_ISP_DPCC_RND_OFFS_MASK);
> 	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_RO_LIMITS,
>-		     arg->ro_limits);
>+		     arg->ro_limits & RKISP1_CIF_ISP_DPCC_RO_LIMIT_MASK);
> }
>
> /* ISP black level subtraction interface function */
>@@ -1214,11 +1226,11 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
> 		if (module_ens & RKISP1_CIF_ISP_MODULE_DPCC)
> 			rkisp1_param_set_bits(params,
> 					      RKISP1_CIF_ISP_DPCC_MODE,
>-					      RKISP1_CIF_ISP_DPCC_ENA);
>+					      RKISP1_CIF_ISP_DPCC_MODE_DPCC_ENABLE);
> 		else
> 			rkisp1_param_clear_bits(params,
> 						RKISP1_CIF_ISP_DPCC_MODE,
>-						RKISP1_CIF_ISP_DPCC_ENA);
>+						RKISP1_CIF_ISP_DPCC_MODE_DPCC_ENABLE);
> 	}
>
> 	/* update bls config */
>@@ -1580,7 +1592,7 @@ void rkisp1_params_configure(struct rkisp1_params *params,
> void rkisp1_params_disable(struct rkisp1_params *params)
> {
> 	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_DPCC_MODE,
>-				RKISP1_CIF_ISP_DPCC_ENA);
>+				RKISP1_CIF_ISP_DPCC_MODE_DPCC_ENABLE);
> 	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_LSC_CTRL,
> 				RKISP1_CIF_ISP_LSC_CTRL_ENA);
> 	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_BLS_CTRL,
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
>index dd3e6c38be67..dc01f968c19d 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
>@@ -618,19 +618,19 @@
> #define RKISP1_CIF_ISP_CTRL_ISP_GAMMA_OUT_ENA_READ(x)	(((x) >> 11) & 1)
>
> /* DPCC */
>-/* ISP_DPCC_MODE */
>-#define RKISP1_CIF_ISP_DPCC_ENA				BIT(0)
>-#define RKISP1_CIF_ISP_DPCC_MODE_MAX			0x07
>-#define RKISP1_CIF_ISP_DPCC_OUTPUTMODE_MAX		0x0F
>-#define RKISP1_CIF_ISP_DPCC_SETUSE_MAX			0x0F
>-#define RKISP1_CIF_ISP_DPCC_METHODS_SET_RESERVED	0xFFFFE000
>-#define RKISP1_CIF_ISP_DPCC_LINE_THRESH_RESERVED	0xFFFF0000
>-#define RKISP1_CIF_ISP_DPCC_LINE_MAD_FAC_RESERVED	0xFFFFC0C0
>-#define RKISP1_CIF_ISP_DPCC_PG_FAC_RESERVED		0xFFFFC0C0
>-#define RKISP1_CIF_ISP_DPCC_RND_THRESH_RESERVED		0xFFFF0000
>-#define RKISP1_CIF_ISP_DPCC_RG_FAC_RESERVED		0xFFFFC0C0
>-#define RKISP1_CIF_ISP_DPCC_RO_LIMIT_RESERVED		0xFFFFF000
>-#define RKISP1_CIF_ISP_DPCC_RND_OFFS_RESERVED		0xFFFFF000
>+#define RKISP1_CIF_ISP_DPCC_MODE_DPCC_ENABLE		BIT(0)
>+#define RKISP1_CIF_ISP_DPCC_MODE_GRAYSCALE_MODE		BIT(1)
>+#define RKISP1_CIF_ISP_DPCC_MODE_STAGE1_ENABLE		BIT(2)
>+#define RKISP1_CIF_ISP_DPCC_OUTPUT_MODE_MASK		GENMASK(3, 0)
>+#define RKISP1_CIF_ISP_DPCC_SET_USE_MASK		GENMASK(3, 0)
>+#define RKISP1_CIF_ISP_DPCC_METHODS_SET_MASK		0x00001f1f
>+#define RKISP1_CIF_ISP_DPCC_LINE_THRESH_MASK		0x0000ffff
>+#define RKISP1_CIF_ISP_DPCC_LINE_MAD_FAC_MASK		0x00003f3f
>+#define RKISP1_CIF_ISP_DPCC_PG_FAC_MASK			0x00003f3f
>+#define RKISP1_CIF_ISP_DPCC_RND_THRESH_MASK		0x0000ffff
>+#define RKISP1_CIF_ISP_DPCC_RG_FAC_MASK			0x00003f3f
>+#define RKISP1_CIF_ISP_DPCC_RO_LIMIT_MASK		0x00000fff
>+#define RKISP1_CIF_ISP_DPCC_RND_OFFS_MASK		0x00000fff
>
> /* BLS */
> /* ISP_BLS_CTRL */
>-- 
>Regards,
>
>Laurent Pinchart
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
