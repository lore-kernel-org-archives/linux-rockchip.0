Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9DF8C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jun 2022 19:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wcX/ov5teORGDAyePB40ZDNFY+cUyZ9f/MLwU0fL3pY=; b=RgO+lUyZ3lkITG
	tcOMTvokrAvNQsde8X7H1avdCkXtFnntRL4668LEFj3QEnAMlgaI+y9LqpfmBAGpTnicMofTYKIxM
	HSqXIEdQTx0EB5XaQAmmVXix7vEVmq4p2oIKqwylMR+jJhdyvUpL8ay9ZXdzYR9oZE+OyaSZtk8BT
	1FQOhg0Ra4R7RZ7+I/zVLSBE08tgM0OBX3rIPsp9USE1WMIIrVFYIprNbeZGeXJ0/fuJu9dM1umIg
	F7GumHKoMs/f/7w+XGReoLrQKlIX2+2trhdLa9kJx1sdwurh0PMCpGFFyMMFhN7nUmNjjQFhF0TEL
	YYnapH2KhnvdG/fxKjkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6d9J-00Dieu-2r; Wed, 29 Jun 2022 19:14:53 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6d9F-00Dib0-6E
	for linux-rockchip@lists.infradead.org; Wed, 29 Jun 2022 19:14:51 +0000
Received: by mail-ot1-x335.google.com with SMTP id m24-20020a0568301e7800b00616b5c114d4so11067446otr.11
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jun 2022 12:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=eRvm4rDKmcEwBbyuwqdiLOYlQxia+jN6V897QRefdLU=;
        b=L4InWoTsn6Ktys0sawYAPemhPMW/VXMH5wMvdPN/pkmSDn9hNd7667tes6wDEswIyP
         APqL7zS9gB4bGUDGZJ4BTHZjwb24nmkF77U9ur/1eAmk3ka4AV6Akj8p7P8nayFiIQNj
         +fYNFjAl6TgVnSN0TFfMd6aNcukgKZHrtFZylwK9uTS+Swc1wkr56lRppUhpgv9yBlzz
         A03B+r2BtlQEzo9LQ3T/Gq9YDZvxTQ5+yGJkL9lmgueicuJvP2HO9PODecXYsmbsM63l
         GFfuHqyNm/3kmoJiyjrgupP6mhAWMJ760UTt0uVgaPcJSEPqbSTnn+4jk6hQcL74A1HM
         qVlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=eRvm4rDKmcEwBbyuwqdiLOYlQxia+jN6V897QRefdLU=;
        b=H1kQCUkmfTd/tayOZFBv3XeGHxtxt6kwNTPUB3unAaZbmMQjlcMiqz2F4Z4Sk7myss
         h+3QXzCe0RqOrwTA/BMAyA9YTzshyMQaWhWHkwimPVsGkrlqsHHIayZDTUJMga2OCi8j
         D3S4RujUy/zZyMDpyG5cVYapttFSz5evGV9axKlieU/JDNBpeD+XsecArSW+EGL2uYL9
         6O0WwFN3Clg6z0AqTG4+v2+BIOBnWGn3ZFEUtMJC0X7JxcBcez7pmNelwDci3UWtNLUS
         CFIdw2tlaI3ou0X3k8IxEEQdTX806Ib65d7oqRKo6X0Hrm4OaejFa8LKEEQKR1JpMNdv
         Dgnw==
X-Gm-Message-State: AJIora+fqqn1WDqXvYsKp2k9obk1hxGnL0hL4YCxXDE7yX86LwEFCdt6
	eGkasvWIQiGupfZrBKXI9UOwSTb+MktvL27Y
X-Google-Smtp-Source: AGRyM1szpNbg71NbMlEOjlyo2a2vZG7dvYgtoZ+JqfGK1PvPW4R6BGZcZ87hUHjQLSpaX5EOLTHiCg==
X-Received: by 2002:a9d:bf6:0:b0:616:d0fe:8b7b with SMTP id 109-20020a9d0bf6000000b00616d0fe8b7bmr2248941oth.19.1656530086223;
        Wed, 29 Jun 2022 12:14:46 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id z23-20020a544597000000b003342a70fd59sm8874989oib.10.2022.06.29.12.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 12:14:45 -0700 (PDT)
Date: Wed, 29 Jun 2022 16:14:40 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
	benjamin.gaignard@collabora.com, nicolas.dufresne@collabora.com,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 5/7] media: hantro: postproc: Properly calculate
 chroma offset
Message-ID: <YrykoFpa5RvZV60V@eze-laptop>
References: <20220616202513.351039-1-jernej.skrabec@gmail.com>
 <20220616202513.351039-6-jernej.skrabec@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220616202513.351039-6-jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_121449_304830_C5A41A13 
X-CRM114-Status: GOOD (  16.33  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jernej,

On Thu, Jun 16, 2022 at 10:25:11PM +0200, Jernej Skrabec wrote:
> Currently chroma offset calculation assumes only 1 byte per luma, with
> no consideration for stride.
> 
> Take necessary information from destination pixel format which makes
> calculation completely universal.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks,
Ezequiel

> ---
>  drivers/staging/media/hantro/hantro_postproc.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
> index 8933b4af73ed..a0928c508434 100644
> --- a/drivers/staging/media/hantro/hantro_postproc.c
> +++ b/drivers/staging/media/hantro/hantro_postproc.c
> @@ -113,12 +113,14 @@ static void hantro_postproc_g2_enable(struct hantro_ctx *ctx)
>  {
>  	struct hantro_dev *vpu = ctx->dev;
>  	struct vb2_v4l2_buffer *dst_buf;
> -	size_t chroma_offset = ctx->dst_fmt.width * ctx->dst_fmt.height;
>  	int down_scale = down_scale_factor(ctx);
> +	size_t chroma_offset;
>  	dma_addr_t dst_dma;
>  
>  	dst_buf = hantro_get_dst_buf(ctx);
>  	dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
> +	chroma_offset = ctx->dst_fmt.plane_fmt[0].bytesperline *
> +			ctx->dst_fmt.height;
>  
>  	if (down_scale) {
>  		hantro_reg_write(vpu, &g2_down_scale_e, 1);
> -- 
> 2.36.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
