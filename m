Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E675C28B2B
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tFj5q72juyZkI85ORyISNTsJ3SQ9oM17g0lfp8Ge7AA=; b=RkzQ9OiDCvURMnFHg3vO/p1FRx
	dRJLJEMLBlEhHxJ3pOdrOWc45KzY24ghVTB+lXOcVRva3CFNkWD3w2p9x1GZQM7uVnW/X2rF+MX2F
	QE4hkHs+BwE5ur8vs0Zg/1wDAiCUpNAJ5MwwhaKDOh6h1aGPr5Jq4j/VivWuidLWGD7JeX4yXuT1L
	MuYDi07rAYsA2GxJvt36EeI1YtcIrMJ4onTiKMPI1enntBe8RNdPoyqhfNcBZCliP4DaKHKVgCBR/
	pljrf3HzBQDqy2rYWT0M++uUvPnmsmNKkx5q1ZfVD0CnAJu1+BRLFQ1xcWKOK/ydw/FbfjcA4R2M0
	oxRcLQWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOVcE-00C2Gx-CB; Thu, 18 Aug 2022 02:50:38 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOVcB-00C290-Qp
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 02:50:37 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id F29675C010C;
	Wed, 17 Aug 2022 22:50:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 17 Aug 2022 22:50:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1660791034; x=1660877434; bh=/6flpciKcY
	SqqeQDhNMEtTLnYUX4ftbazQHJXEDblLI=; b=L8JK8cg6BXI5u04t6ZEVPWfkMs
	TZr/Nl+XE43eTaaudBQmPEDnbt2VvJY9qxaCysJQmqJ7kys2UP/K1hWeOHA6BnSm
	fIYWpyuMfElVL8+lCfNTSaBPJX3XEq432A28nOC+PQKzVKOMtVEymb/HPPVRp6k1
	XYM+nJuKiGTJkTI4Sa3zfFTvHg7aMRq+wT4Bs0mjEItKaDm/woumyDIAyrkXZ2SV
	sidzY+04wl/mzX6u/lEgvO96nan09sj6AOe4LStDj0dtOVmzzlj9Gm4xkjt/VTuL
	labyPm2i6nD99a0bzQtB3m53cn3F8nUwEUlDUOHIgznV6ot6Ji4RcMz3aHvg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1660791034; x=1660877434; bh=/6flpciKcYSqqeQDhNMEtTLnYUX4
	ftbazQHJXEDblLI=; b=D7yEo39f1WV8wYCDyuELGrgF4w7WdMeS3KfeABNGSJ+V
	kmngybrgLDTs30zK/84GnDyntYku4JEHEmHEyIFkf3BD7ocqmtJJ1hSbQyjxAVNY
	R1vEKvl/JhVMVb7HFUzr21N9JgEmN4VWSCa/iJE5Ld0+bc6O+B9IXE6VriPzsJUN
	lb/16OwGe1sMbnQviGubW7S6qg2IWnRX9x4S2cmFqEmMYJh7t/OSPS0mK3NvCXkr
	dWnAjWlEdmyOg9aLYKOHiNzMeHdG67TFCucgVAhpqMxjaGm+Vr+vW77h1jfbx4jn
	W2djjfn5qiIZEAHyMpujiP+eeAPV7wdTjpaAIUHgOA==
X-ME-Sender: <xms:-qj9YswbglXeEGw6Xs9W3KjidRakpdI8BurWlRZaJuRGCLFXin3t-g>
    <xme:-qj9YgQ6ZR1-nRGBwq_i5YcjM2XqfT3BfZZb9IftBRNjV_lVpPZudlJa2tJoxa89w
    Sy0KIOrViHVwb-nRA0>
X-ME-Received: <xmr:-qj9YuWjSWF6TLy9P1iw7VyjmIGuW2otEqaH8b_PmgoTiAE-nipyqw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdehjedgieehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:-qj9YqjymYedpB-cOjdhHY_EE4cbI5mCi0lRNca8ZPcVF7VRA_Jf1g>
    <xmx:-qj9YuAFs6sfDOAJHgts1tHJtqx_dgKyogBuvepIFPckRIEOgTnbzw>
    <xmx:-qj9YrJc5x2Qzf8CuiSdyA4f0PX56zvmE8eNcaSG-fvFz5tJGL4C8Q>
    <xmx:-qj9Yh_eXD6xqkx3LKac65tia9fVIiKSi_o_DwiGcXqcHiKEO75BxQ>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Aug 2022 22:50:32 -0400 (EDT)
Date: Thu, 18 Aug 2022 05:50:29 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: Re: [PATCH 4/5] media: rkisp1: Use RKISP1_CIF_ISP_LSC_GRAD_SIZE()
 for gradient registers
Message-ID: <20220818025029.y4jbmpzgnebla4t2@guri>
References: <20220817021850.20460-1-laurent.pinchart@ideasonboard.com>
 <20220817021850.20460-5-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220817021850.20460-5-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_195035_981310_6C8E39BD 
X-CRM114-Status: UNSURE (   8.59  )
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

On 17.08.2022 05:18, Laurent Pinchart wrote:
>The rkisp1_lsc_config() function incorrectly uses the
>RKISP1_CIF_ISP_LSC_SECT_SIZE() macro for the gradient registers. Replace
>it with the correct RKISP1_CIF_ISP_LSC_GRAD_SIZE() macro. This doesn't
>cause any functional change as the two macros are defined identically
>(the size and gradient registers store fields in the same number of bits
>at the same positions).
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>---
> drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>index aa6efa4c6e9e..421ade177b2d 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>@@ -334,7 +334,7 @@ static void rkisp1_lsc_config(struct rkisp1_params *params,
> 		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_XSIZE(i), data);
>
> 		/* program x grad tables */
>-		data = RKISP1_CIF_ISP_LSC_SECT_SIZE(arg->x_grad_tbl[i * 2],
>+		data = RKISP1_CIF_ISP_LSC_GRAD_SIZE(arg->x_grad_tbl[i * 2],
> 						    arg->x_grad_tbl[i * 2 + 1]);

maybe the GRAD macro should change to:

RKISP1_CIF_ISP_LSC_SECT_GRAD

?

thanks,
Dafna

> 		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_XGRAD(i), data);
>
>@@ -344,7 +344,7 @@ static void rkisp1_lsc_config(struct rkisp1_params *params,
> 		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_YSIZE(i), data);
>
> 		/* program y grad tables */
>-		data = RKISP1_CIF_ISP_LSC_SECT_SIZE(arg->y_grad_tbl[i * 2],
>+		data = RKISP1_CIF_ISP_LSC_GRAD_SIZE(arg->y_grad_tbl[i * 2],
> 						    arg->y_grad_tbl[i * 2 + 1]);
> 		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_YGRAD(i), data);
> 	}
>-- 
>Regards,
>
>Laurent Pinchart
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
