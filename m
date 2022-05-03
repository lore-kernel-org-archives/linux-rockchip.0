Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 576FDC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 May 2022 14:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/geeHQW7bBlLLopfZkxSk9TArHzhMSji2VZAhc00lGI=; b=uQ34TyX7p2RXr5
	w/lTq6sFoPjscuUPEPTg7qdHsMuIJxutOwoWZhdcHQbkrVebIOUpXIu4GCBMZJxSJJCjXADXNJJN2
	fSOkEnyR3/6K47z1g9Kp+GupxTQOv2/qH2G9sLbEsbWlFjHLcjhfa7ci4LXjIMokY0FUXcF6vOF+0
	ZISVGt06G1jfcy7lznjINg2AbK6XvfAG+TwLjeuPJD4J1az1m3wvFvD7+nqA+wyv+Y8pttmVI0H22
	bxDJpImoE+8FkRlIK+w/GsCQuo7t5gA2KhmMznCCcltvee8Y2lMr0ARQylD776BI2J8F+VrP90vau
	uFBRwtya1lKGX0PgSHzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlthh-006J2l-4q; Tue, 03 May 2022 14:40:41 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlthX-006Iyp-RT
 for linux-rockchip@lists.infradead.org; Tue, 03 May 2022 14:40:33 +0000
Received: by mail-oi1-x235.google.com with SMTP id s131so18388869oie.1
 for <linux-rockchip@lists.infradead.org>; Tue, 03 May 2022 07:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=viN1JYge3+LHciwoVBbOpqiLqa/EK2bPoOneumYYZLg=;
 b=b50ZOtv06fY2ONdrxcFWf5Z0AFhe0E8sPjWlPc2xcHNe+ho1Wa8O8HfHI9hkthqr5s
 4qqs1/GvXQFR4ml032gxWR9Tkknovy0PW5jebzxJbNjpIHXhorpY3dEa86pD0bwGmXxd
 gQXPtCU2diExYL9iZgBEgC7vE0uBL3YqHSYA1f0uyRE2ADJZ4f6ZaClA5lQxToA7RZLO
 EfP+PFqTsWfY1D7v9R/5xQyZd2ENdUzzWIKYWlrAYMfWf3oqr6XdV1pPNrpxjJN5fpUR
 fTAl1C+sQsIkoKN++lVkAfccK0vcbmoIiqQgyC5vVDXkLl2f5QW/TTnehL2uQGZvpRHa
 t9OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=viN1JYge3+LHciwoVBbOpqiLqa/EK2bPoOneumYYZLg=;
 b=K3xWa9wbr9WFvUM0rMloplbWdXaBrwGs+pQ5actzzdAwkEeVnU6z9T6DmvT87obKAV
 X6pVZ/7CO2bjqYsMlDwPU3pE4CIQedUrA9DAx24felkxOmX/PZQ0F44DKkg1VXWK0FLU
 4Vn435spm3mYyYJQmc2CNxu4832Z+GMGYrKgKl1g3Dt84z3i9re9aVaEFnJqec+eLdvm
 Q9FrBelLXulpgehTrOMlYEVFCKwtcVtlOaA2Eyd7K+6FczxfAG3IJNXB78U4Dra8Qcsz
 yq50esRmqKLseFaBrcmBB0chU4sOGJEubrsj5hzdLlTM7GecAY+RuzhQsoELDC/sCF3v
 DaxQ==
X-Gm-Message-State: AOAM5307QDFro1w2i98fa5iAD8+30l4eSIiCZTu3UWtl7g8uLH0gZPlh
 CpBzRSFvk9r7l466Q6d9OFqdrA==
X-Google-Smtp-Source: ABdhPJxsY5i8IkdgwMEIWLtrRmICgIPPpYv3zOcomHxIHyRk5iJSqb0tgtnLbyk9Hfosv2RiIv0gkw==
X-Received: by 2002:a05:6808:1a22:b0:325:be76:f246 with SMTP id
 bk34-20020a0568081a2200b00325be76f246mr1904502oib.74.1651588828558; 
 Tue, 03 May 2022 07:40:28 -0700 (PDT)
Received: from eze-laptop ([2803:9800:98c2:8470:9f4:8e2a:88e5:ec01])
 by smtp.gmail.com with ESMTPSA id
 x6-20020a4ae786000000b0035eb4e5a6c1sm4980824oov.23.2022.05.03.07.40.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 May 2022 07:40:27 -0700 (PDT)
Date: Tue, 3 May 2022 11:40:22 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, gregkh@linuxfoundation.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 jon@nanocrew.net, aford173@gmail.com, kernel@collabora.com
Subject: Re: [PATCH v2] media: hantro: HEVC: Fix reference frames management
Message-ID: <YnE+1mgOnWxaVpfg@eze-laptop>
References: <20220503135138.678677-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220503135138.678677-1-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220503_074032_151147_815A65D7 
X-CRM114-Status: GOOD (  24.22  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, May 03, 2022 at 03:51:38PM +0200, Benjamin Gaignard wrote:
> PoC shall be int the range of -2^31 to 2^31 -1
> (HEVC spec section 8.3.1 Decoding process for picture order count).
> The current way to know if an entry in reference picture array is free
> is to test if PoC = UNUSED_REF. Since UNUSED_REF is defined as '-1' that
> could lead to decode issue if one PoC also equal '-1'.
> PoC with value = '-1' exists in conformance test SLIST_B_Sony_9.
> 
> Change the way unused entries are managed in reference pictures array to
> avoid using PoC to detect then.
> 
> This patch doesn't change fluster HEVC score.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Good catch!

Thanks,

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  .../staging/media/hantro/hantro_g2_hevc_dec.c |  6 ++---
>  drivers/staging/media/hantro/hantro_hevc.c    | 27 +++----------------
>  drivers/staging/media/hantro/hantro_hw.h      |  2 +-
>  3 files changed, 6 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> index 0a8c01ff2fa7..b7835bbf5e98 100644
> --- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> @@ -473,8 +473,8 @@ static int set_ref(struct hantro_ctx *ctx)
>  
>  	set_ref_pic_list(ctx);
>  
> -	/* We will only keep the references picture that are still used */
> -	ctx->hevc_dec.ref_bufs_used = 0;
> +	/* We will only keep the references pictures that are still used */
> +	hantro_hevc_ref_init(ctx);
>  
>  	/* Set up addresses of DPB buffers */
>  	dpb_longterm_e = 0;
> @@ -515,8 +515,6 @@ static int set_ref(struct hantro_ctx *ctx)
>  	hantro_write_addr(vpu, G2_OUT_CHROMA_ADDR, chroma_addr);
>  	hantro_write_addr(vpu, G2_OUT_MV_ADDR, mv_addr);
>  
> -	hantro_hevc_ref_remove_unused(ctx);
> -
>  	for (; i < V4L2_HEVC_DPB_ENTRIES_NUM_MAX; i++) {
>  		hantro_write_addr(vpu, G2_REF_LUMA_ADDR(i), 0);
>  		hantro_write_addr(vpu, G2_REF_CHROMA_ADDR(i), 0);
> diff --git a/drivers/staging/media/hantro/hantro_hevc.c b/drivers/staging/media/hantro/hantro_hevc.c
> index 7d4b1d72255c..7fdec50dc853 100644
> --- a/drivers/staging/media/hantro/hantro_hevc.c
> +++ b/drivers/staging/media/hantro/hantro_hevc.c
> @@ -25,15 +25,11 @@
>  #define MAX_TILE_COLS 20
>  #define MAX_TILE_ROWS 22
>  
> -#define UNUSED_REF	-1
> -
> -static void hantro_hevc_ref_init(struct hantro_ctx *ctx)
> +void hantro_hevc_ref_init(struct hantro_ctx *ctx)
>  {
>  	struct hantro_hevc_dec_hw_ctx *hevc_dec = &ctx->hevc_dec;
> -	int i;
>  
> -	for (i = 0;  i < NUM_REF_PICTURES; i++)
> -		hevc_dec->ref_bufs_poc[i] = UNUSED_REF;
> +	hevc_dec->ref_bufs_used = 0;
>  }
>  
>  dma_addr_t hantro_hevc_get_ref_buf(struct hantro_ctx *ctx,
> @@ -60,7 +56,7 @@ int hantro_hevc_add_ref_buf(struct hantro_ctx *ctx, int poc, dma_addr_t addr)
>  
>  	/* Add a new reference buffer */
>  	for (i = 0; i < NUM_REF_PICTURES; i++) {
> -		if (hevc_dec->ref_bufs_poc[i] == UNUSED_REF) {
> +		if (!(hevc_dec->ref_bufs_used & 1 << i)) {
>  			hevc_dec->ref_bufs_used |= 1 << i;
>  			hevc_dec->ref_bufs_poc[i] = poc;
>  			hevc_dec->ref_bufs[i].dma = addr;
> @@ -71,23 +67,6 @@ int hantro_hevc_add_ref_buf(struct hantro_ctx *ctx, int poc, dma_addr_t addr)
>  	return -EINVAL;
>  }
>  
> -void hantro_hevc_ref_remove_unused(struct hantro_ctx *ctx)
> -{
> -	struct hantro_hevc_dec_hw_ctx *hevc_dec = &ctx->hevc_dec;
> -	int i;
> -
> -	/* Just tag buffer as unused, do not free them */
> -	for (i = 0;  i < NUM_REF_PICTURES; i++) {
> -		if (hevc_dec->ref_bufs_poc[i] == UNUSED_REF)
> -			continue;
> -
> -		if (hevc_dec->ref_bufs_used & (1 << i))
> -			continue;
> -
> -		hevc_dec->ref_bufs_poc[i] = UNUSED_REF;
> -	}
> -}
> -
>  static int tile_buffer_reallocate(struct hantro_ctx *ctx)
>  {
>  	struct hantro_dev *vpu = ctx->dev;
> diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> index 9f31cce609d6..5de558386179 100644
> --- a/drivers/staging/media/hantro/hantro_hw.h
> +++ b/drivers/staging/media/hantro/hantro_hw.h
> @@ -337,9 +337,9 @@ int hantro_hevc_dec_init(struct hantro_ctx *ctx);
>  void hantro_hevc_dec_exit(struct hantro_ctx *ctx);
>  int hantro_g2_hevc_dec_run(struct hantro_ctx *ctx);
>  int hantro_hevc_dec_prepare_run(struct hantro_ctx *ctx);
> +void hantro_hevc_ref_init(struct hantro_ctx *ctx);
>  dma_addr_t hantro_hevc_get_ref_buf(struct hantro_ctx *ctx, s32 poc);
>  int hantro_hevc_add_ref_buf(struct hantro_ctx *ctx, int poc, dma_addr_t addr);
> -void hantro_hevc_ref_remove_unused(struct hantro_ctx *ctx);
>  
>  static inline unsigned short hantro_vp9_num_sbs(unsigned short dimension)
>  {
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
