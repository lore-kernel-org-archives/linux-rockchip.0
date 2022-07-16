Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B4F0C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Jul 2022 05:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2Ln663GYM31n16kqJr2o1VbS0SpKVGM90iyG2yzND7w=; b=H+EmE8nONycIjgxELvmvPdxn7M
	RKqO6TINdYA4L6tY+2rLAkjCDZnzIf/TVtgRYo73OwJkzdZX68g7PGqp/iI9A05YUR3NWl8n2ERqY
	wp4mvsTuwjdBYkvAIIBF8UMRAGhS4M131aDawym5oD5RBIh4YzMtjN7ivMGHzn8w2MUBkU/ylcvMf
	VbQ0TTHOTLLbyABTQMvOLWbx8YtxCSHMaptHyN5NpojcXmdE6B82LTvXgge/unuRU/XgAj6Y4utIg
	y3CK8jGXzwjBclXEDbN714qr2YwySd4pL5enaFnhmMGyX57HkzGdU+qQDMwx4veujZnCTfnl65QNh
	Bg0o4blA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCanR-00E5Fo-Nc; Sat, 16 Jul 2022 05:56:57 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCanO-00E5F9-Ma
	for linux-rockchip@lists.infradead.org; Sat, 16 Jul 2022 05:56:56 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 99E255C0097;
	Sat, 16 Jul 2022 01:56:53 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Sat, 16 Jul 2022 01:56:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1657951013; x=1658037413; bh=PW3mJzmicw
	8UB2/rc8VrHQMws6ZIHtm00kQkfxdM83s=; b=o35o5HEJXvPFydQEOL0aXXJbt3
	GSF7fTWckdhU9EZh8k2/5F94J6NfOBrThQ+kBAYNc58Iwn3N50iNlF5DsIpLH+Ug
	qHrwp+1QdvKGnQWeG4Wb5Xp7bHx4wXGhJQ7TXEH60kOuL8whaFHi9OeuhG4DQvNW
	zEJWYrfIluRfJiFYyGrSWw5WpglxQl5BJ4Je3rdIAgjd5bj0Ejo0n1lguULlJQu9
	szpDyYt4NKZJr+czCR+AVXgpDtZEKFSR+OuTPjheOFwIYdHapngaKQ9KxdMTT3xz
	yL3wrrHvLOZtqUb7TCjNFIT01iHthBPC5qpPbVa4bv9KIBY1ZGf/iMvzQAWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657951013; x=1658037413; bh=PW3mJzmicw8UB2/rc8VrHQMws6ZI
	Htm00kQkfxdM83s=; b=NmsbD88DQ5/6OSg8WzP7JGOUxVDtFyybM3qG7xiY7lii
	jR3qJKCaEOP+g3Z8Uk37FTyrKu0AbuKI+OAKVFi8qEQky8Le1WILetNpR0FWAfPB
	2yD9GDFCZvI3ymoXqe83//V8i8USjbU5tsBAZ5W77KeaOGWqDSqdBscUB1CLqEIB
	UxtZ17t8RkXMtCypQPLKiFme55KbBUe1/w60iNfoe/DobSPUsJHMnGMNVYYlzqZc
	3SYSDF6zh+HDOxufSGcBph3dm+gd8nO3pa589GUiK3qRkM/eGnx7QnHKr2/EknKK
	9Y8G/iruyTiin7TMflsn8Xo3wQUEOx7U0yYPd67vrw==
X-ME-Sender: <xms:JVPSYuJvm1Mm3x3ELmIt3tl4xgqEyew07qBYFmchvZ1Jf1TB-wNGpw>
    <xme:JVPSYmLLAahy9S88P2erkHv2wCyns2dHpZdrTFU8RpJCee-n7D3z8hqG7y98vA9YE
    D9k7WG08AYYaTonXa8>
X-ME-Received: <xmr:JVPSYuv8NZfZJ-PGkVOLF2jPPoT0sLOsi-LsP76OViyOeM-KuKj9Iw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudekvddguddtvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttdejnecuhfhrohhmpeffrghf
    nhgrucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqne
    cuggftrfgrthhtvghrnhepvdehtdeludekgeevleefuedvudejieetheekvdfhteekffdu
    jefhfedtudehvdeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepuggrfhhnrgesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:JVPSYjY-vxraZ1QZUz5Q1Lu7ZbG9AB4BmlZ7b4I0W8PcwKop14PZgg>
    <xmx:JVPSYlbFXZ-tmVU3PpyKZYw0q5xI_hV1PLX5oyu2F4gpNGSvQZIttA>
    <xmx:JVPSYvDlZho0nnZ5BsUc2dE0-QL04zi-nE4E6geGwepW-HLZm7WFIQ>
    <xmx:JVPSYpEZbIE1I3dduHJ6MvPxfd8m5Sgs2o_w8UQ9KO7nogD1vNWT9A>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 16 Jul 2022 01:56:51 -0400 (EDT)
Date: Sat, 16 Jul 2022 08:56:48 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: Re: [PATCH 2/3] media: rockchip: rkisp1: Mask invalid bits in DPCC
 parameters
Message-ID: <20220716055648.unpih6bsy6cpj5ld@guri>
References: <20220616160456.21549-1-laurent.pinchart@ideasonboard.com>
 <20220616160456.21549-3-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220616160456.21549-3-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_225654_835687_3099FAB1 
X-CRM114-Status: GOOD (  10.63  )
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

Why are these two masks use GENMASK and other don't?


Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

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
