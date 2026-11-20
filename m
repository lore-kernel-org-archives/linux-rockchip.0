Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A94B3606A335
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 15:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=C4Je5rid;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=efuPj1Ja
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7E+5cKU9MmdxERVIUXRiRTA+y6H+Igv8/t7FFxsRaCk=; b=C4Je5ridKdfsnT+BW3W3K+vFSi
	26tg3rivEF+nnVvR5QAnnTjHQbrWxL0cj6bqTnfWZoqUV2Z3oPj6+hxtR9CuDzlJtzqTtb4SUB0x/
	BiPgVurzoVNqUCX62RvF1W58pDXWIudmXP8kBF9nxfz9LJhR0xF5WkSgXK7FglNSX1eic28boRya8
	MoMvxNFQTazbygAKgMUFINevAjHP8GpHcwkmahXMpxtBYdPTnAIagzFgMnZBpwp+4kext4Idmw/oc
	XTeBiDJJWMQ46e54Tx3PZDexBgaQCqvHX8mIFChanYsWLmcfJ8JowK16T4sTCJ3WYr50pMVG29q8E
	MPwgYF/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQyj-0000000FU8z-2D4U;
	Fri, 20 Nov 2026 15:56:45 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQye-0000000FU8N-1XI5
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 15:56:42 +0000
Received: from [IPv6:2a0a:edc0:0:900:1d::4e] (lupine.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::4e])
	(Authenticated sender: pza@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 44E4B200467;
	Fri, 20 Nov 2026 16:56:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795190198;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=13HW4zm8NwsNgl3wxtGEDqYYSojdZV0q/tC3icDpDsQ=;
	b=efuPj1JaYz/jfypVgUsBs+gkDBU6dzfHG+/VGgVqwPYciJYKGCPkC7HhAeGOKUL6zszO1m
	p6m6NOO6kDeTvTJ3OGj2jN5JTl7OluLObzh2VC2+9dm9i8J7DLiEpWSuXAlMOFUbj8A2yF
	oTVzwj5J5uJXIvckLwHNkVaZ4ACBSQd1dpa8wttEIw3QOhCdGmASRk7tQ/XBX8xDklB8+K
	6LHL1b14DuK9iCp2yji5F7K8mwiyi0p28RLlLx0PG02de+laid72ZsbkqfDBcxCyxulKkI
	P4iRjDAO9a1du48kWvmTsmNhmKYh6Zf6xYHb7HCjt4BaA8yZOCFZGcs2fLHrXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795190198;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=13HW4zm8NwsNgl3wxtGEDqYYSojdZV0q/tC3icDpDsQ=;
	b=FOU6WgBpFLeNjq+OH2wODnHcYJUTMj7dIYJngiIQGW2exAjZmHbtv//jo64LJVqNNghmKb
	HOESv6ddxOCWyul8W8txbSmyDY1i9T/T/siMyD4SJU7kOgOjrCcnpOVq6FgojHwsd5o2nu
	i5FoJIsAnnpZ/ka2rnl9GgHZj0tcx1HnSiF8wgzxHRLw3/sJ2hsO1dthzBCA88ema/ZyTS
	c+vJ2YmBNVP7gYQgfe7DWuyjhsSFzizRlFkU77mbDzE97/GfAQ6vEoOsdbQSHPWZLu+W21
	xVe7SJomIp4a3hOZadkx1pUH+I4xtgtgaIIBoh109ga97iwD8xzHNdIp6lV2LA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795190198; a=rsa-sha256;
	cv=none;
	b=OTRMvaH9H936y7zdB3qnIK3TT0uUmtTjjITsUi5Usnihll672NEi1ruAAQZandla7b6eeO
	hGpZaDxWTdFfr3iWZQinx4+3eTYKJdkVPfhzu88yYqVlak1H98g11ioMzZgxelAHLhtWtg
	TAvd1kUtxSvRP6YwFDRAYqDK9AR0nEeJe7cND7O2J0VzzS3TPzxf5XVG3dOnUIKntQxttK
	6OObb+r0p47Bye1/EDwk3JL7yjaUWJZkQXzZImNV98uQVYykdOzqexfnMIKalOIeCjHgrx
	w7bfc1+ItwHzTiglWUmALAX5Sai90r0lwlzAa3TS0IHVUA/7GEApCujemARCww==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=pza@pengutronix.de smtp.mailfrom=p.zabel@pengutronix.de
Message-ID: <dca17004d6cd81f66ebadc0a227548a4e558f2df.camel@pengutronix.de>
Subject: Re: [PATCH v2 2/7] media: verisilicon: AV1: Use alloc/free helpers
 for auxiliary buffers
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	nicolas.dufresne@collabora.com, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Fri, 20 Nov 2026 16:56:38 +0100
In-Reply-To: <20261120151345.88802-3-benjamin.gaignard@collabora.com>
References: <20261120151345.88802-1-benjamin.gaignard@collabora.com>
	 <20261120151345.88802-3-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.56.2-0+deb13u1 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_075640_960017_04D8B36D 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fr, 2026-11-20 at 16:13 +0100, Benjamin Gaignard wrote:
> Simplify and clean up the code by using the helpers.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> ---
>  .../media/platform/verisilicon/hantro_av1.c   | 177 ++++--------------
>  1 file changed, 39 insertions(+), 138 deletions(-)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_av1.c b/drivers/media/platform/verisilicon/hantro_av1.c
> index 2cde32f0e935..e05816c7dfa3 100644
> --- a/drivers/media/platform/verisilicon/hantro_av1.c
> +++ b/drivers/media/platform/verisilicon/hantro_av1.c
> @@ -235,40 +235,17 @@ size_t hantro_av1_chroma_size(struct hantro_ctx *ctx)
>  
>  static void hantro_av1_tiles_free(struct hantro_ctx *ctx)
>  {
> -	struct hantro_dev *vpu = ctx->dev;
>  	struct hantro_av1_dec_hw_ctx *av1_dec = &ctx->av1_dec;
>  
> -	if (av1_dec->db_data_col.cpu)
> -		dma_free_coherent(vpu->dev, av1_dec->db_data_col.size,
> -				  av1_dec->db_data_col.cpu,
> -				  av1_dec->db_data_col.dma);
> -	av1_dec->db_data_col.cpu = NULL;
> -
> -	if (av1_dec->db_ctrl_col.cpu)
> -		dma_free_coherent(vpu->dev, av1_dec->db_ctrl_col.size,
> -				  av1_dec->db_ctrl_col.cpu,
> -				  av1_dec->db_ctrl_col.dma);
> -	av1_dec->db_ctrl_col.cpu = NULL;
> -
> -	if (av1_dec->cdef_col.cpu)
> -		dma_free_coherent(vpu->dev, av1_dec->cdef_col.size,
> -				  av1_dec->cdef_col.cpu, av1_dec->cdef_col.dma);
> -	av1_dec->cdef_col.cpu = NULL;
> -
> -	if (av1_dec->sr_col.cpu)
> -		dma_free_coherent(vpu->dev, av1_dec->sr_col.size,
> -				  av1_dec->sr_col.cpu, av1_dec->sr_col.dma);
> -	av1_dec->sr_col.cpu = NULL;
> -
> -	if (av1_dec->lr_col.cpu)
> -		dma_free_coherent(vpu->dev, av1_dec->lr_col.size,
> -				  av1_dec->lr_col.cpu, av1_dec->lr_col.dma);
> -	av1_dec->lr_col.cpu = NULL;
> +	hantro_free_aux_buf(ctx, &av1_dec->db_data_col);
> +	hantro_free_aux_buf(ctx, &av1_dec->db_ctrl_col);
> +	hantro_free_aux_buf(ctx, &av1_dec->cdef_col);
> +	hantro_free_aux_buf(ctx, &av1_dec->sr_col);
> +	hantro_free_aux_buf(ctx, &av1_dec->lr_col);
>  }
>  
>  static int hantro_av1_tiles_reallocate(struct hantro_ctx *ctx)
>  {
> -	struct hantro_dev *vpu = ctx->dev;
>  	struct hantro_av1_dec_hw_ctx *av1_dec = &ctx->av1_dec;
>  	struct hantro_av1_dec_ctrls *ctrls = &av1_dec->ctrls;
>  	const struct v4l2_av1_tile_info *tile_info = &ctrls->frame->tile_info;
> @@ -277,6 +254,7 @@ static int hantro_av1_tiles_reallocate(struct hantro_ctx *ctx)
>  	unsigned int height_in_sb = height / 64;
>  	unsigned int stripe_num = ((height + 8) + 63) / 64;
>  	size_t size;
> +	int ret;
>  
>  	if (av1_dec->db_data_col.size >=
>  	    ALIGN(height * 12 * ctx->bit_depth / 8, 128) * num_tile_cols)
> @@ -285,44 +263,22 @@ static int hantro_av1_tiles_reallocate(struct hantro_ctx *ctx)
>  	hantro_av1_tiles_free(ctx);
>  
>  	size = ALIGN(height * 12 * ctx->bit_depth / 8, 128) * num_tile_cols;
> -	av1_dec->db_data_col.cpu = dma_alloc_coherent(vpu->dev, size,
> -						      &av1_dec->db_data_col.dma,
> -						      GFP_KERNEL);
> -	if (!av1_dec->db_data_col.cpu)
> -		goto buffer_allocation_error;
> -	av1_dec->db_data_col.size = size;
> +	ret = hantro_allocate_aux_buf(ctx, &av1_dec->db_data_col, size);
>  
>  	size = ALIGN(height * 2 * 16 / 4, 128) * num_tile_cols;
> -	av1_dec->db_ctrl_col.cpu = dma_alloc_coherent(vpu->dev, size,
> -						      &av1_dec->db_ctrl_col.dma,
> -						      GFP_KERNEL);
> -	if (!av1_dec->db_ctrl_col.cpu)
> -		goto buffer_allocation_error;
> -	av1_dec->db_ctrl_col.size = size;
> +	ret |= hantro_allocate_aux_buf(ctx, &av1_dec->db_ctrl_col, size);

Please don't |= error return values. Even if it happens to work here
because hantro_allocate_aux_buf() is guaranteed to return the same
error, it may inspire others to copy this in places where it's invalid.

Further, hantro_allocate_aux_buf() looks like it can return -EINVAL and
-ENOMEM, not sure if that can happen inside reallocate. That would
combine into -ENOENT, which makes no sense to return.

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
