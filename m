Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5B37C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 17:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x22igHqzgcApqIdlEs3w01dmWLFEzbj2n+JRvKkHZD4=; b=FvmubD4CBxHn8p
	IOohB2q5zmcY5l5k1s3ekJvkFdFRzgTmVExeARCnQNdYKyvwhX86pdys0EioVZ5gkDkrC/gQKx0xg
	jelDzXLRC3OYVz/LSF/F/MXmJBZDu91dPrhQGnrz3RWzPREKUdSr43R0Kwg8GE2RYY/jY0s7h2ZEu
	SH1ULB99fEpiq0DMSbQLuxbsq4AMjMYnYeBhNc7BQkipXXo3qT+cpV6fe9KOVWGh30HbM+lfr1YW9
	u5E+oAU1pZYIadHnGLTU3Ny8NHOBM9W0o41F2dv2mmkhwaeLTSNU/y250arHr3AjMqwlmLvt3dowP
	xFrB/xbOeJ6oOpac2yiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6y2Z-000qQ8-Re; Thu, 30 Jun 2022 17:33:19 +0000
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6y2X-000qNk-3u
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 17:33:18 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id i19-20020a4ad093000000b004256ad0893fso3883433oor.3
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jun 2022 10:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=GV7rma6+T6KQeNRvTDv+srtDNdvqlj7JPB6xqwy+fxk=;
        b=ckqrfpEM/4gKBJjhBatJ51K90/WUgBhZtqvKDzA88Flf40NTPMPJ3eZDAlYNVMscNR
         Z04iE7NbvH+6wmJDcGoO0YcWZSxZ5v4kO4QOu/HcG9Y2XfVgQCyfsYK385Gcry0OEqk8
         ZtoAWYW+qF/6z3/W+NP1hXY9zVBQOgHhNxaNxkQ2ardLLkmiymDOST7wRfi6+XiPFHAW
         Y0e3rnUyJG2xSx2ya0qjfSS71MBMskruUftE+5LWofxOYujh+WBbydgzqeOtIXXL2pxo
         B8Td0OnpEnoLQd4+stuufZP1dCAIEox1NYiPQK8Y8dsDRVwiuC60fECu6q+awcJxHQvh
         Fo0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=GV7rma6+T6KQeNRvTDv+srtDNdvqlj7JPB6xqwy+fxk=;
        b=zo0PPl05nkHPKFe/BDZEKiKN6qq9Pebmf//RQFKNjGcDyyfSS7qKn+Cs1l4tu/TtlF
         0qpiTMtjt4TXoZ1Eoh1N0d7jfrFYu8ACU82liS360TwTgS6AV915UsFTIiaKEgFf4MCA
         pMabAscM78/mrZUJtUgQ3pm+7TucPFVIYo+jK5/eamxGwdOq5BbtQg2hU5w6ronjl1BJ
         oU/Fqw5xVIGFc5oCiGWbxgWq8kD7NhEFtsxIr1U1zyjSUg7v5zV7JiGK56O3n0dLNx2J
         qTt36Yl5NBOjRXnNdG8oADbmfu283J4kWYP+v/qy46Wu0uNo3VmwbXP9rjJcyAKzgo8o
         tTHQ==
X-Gm-Message-State: AJIora9gv3KEkulFl9suvfFZ/d+cg3G2NpwkMdSockH1pHqmtsRo1Ojp
	WObhYNKCNZcUvPdZvphamUorsA==
X-Google-Smtp-Source: AGRyM1uHmEh/OuQKMNNKJwNpcvuxZiUW4pitk9X+/dijUMypH48J/IY4d7OKUiVi0cZ1jQhEP0B37w==
X-Received: by 2002:a4a:49d0:0:b0:425:708a:224 with SMTP id z199-20020a4a49d0000000b00425708a0224mr4367978ooa.18.1656610395166;
        Thu, 30 Jun 2022 10:33:15 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id z18-20020a056808065200b0032ba1b363d2sm10323115oih.55.2022.06.30.10.33.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 10:33:14 -0700 (PDT)
Date: Thu, 30 Jun 2022 14:33:08 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org, mripard@kernel.org,
	paul.kocialkowski@bootlin.com, wens@csie.org,
	jernej.skrabec@gmail.com, samuel@sholland.org,
	nicolas.dufresne@collabora.com, andrzej.p@collabora.com,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	kernel@collabora.com
Subject: Re: [PATCH 2/7] media: hantro: HEVC: Fix auxilary buffer size
 calculation
Message-ID: <Yr3eVDFjPBrvi5Td@eze-laptop>
References: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
 <20220617115802.396442-3-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220617115802.396442-3-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_103317_184081_21AB1125 
X-CRM114-Status: GOOD (  14.12  )
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

Hi Benjamin,

On Fri, Jun 17, 2022 at 01:57:57PM +0200, Benjamin Gaignard wrote:
> SAO and FILTER buffers size depend of the bit depth.
> Make sure we have enough space for 10bit bitstreams.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks,
Ezequiel

> ---
>  drivers/staging/media/hantro/hantro_hevc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_hevc.c b/drivers/staging/media/hantro/hantro_hevc.c
> index dcb5c8703b6e..e06837108a09 100644
> --- a/drivers/staging/media/hantro/hantro_hevc.c
> +++ b/drivers/staging/media/hantro/hantro_hevc.c
> @@ -104,7 +104,7 @@ static int tile_buffer_reallocate(struct hantro_ctx *ctx)
>  		hevc_dec->tile_bsd.cpu = NULL;
>  	}
>  
> -	size = VERT_FILTER_RAM_SIZE * height64 * (num_tile_cols - 1);
> +	size = (VERT_FILTER_RAM_SIZE * height64 * (num_tile_cols - 1) * ctx->bit_depth) / 8;
>  	hevc_dec->tile_filter.cpu = dma_alloc_coherent(vpu->dev, size,
>  						       &hevc_dec->tile_filter.dma,
>  						       GFP_KERNEL);
> @@ -112,7 +112,7 @@ static int tile_buffer_reallocate(struct hantro_ctx *ctx)
>  		goto err_free_tile_buffers;
>  	hevc_dec->tile_filter.size = size;
>  
> -	size = VERT_SAO_RAM_SIZE * height64 * (num_tile_cols - 1);
> +	size = (VERT_SAO_RAM_SIZE * height64 * (num_tile_cols - 1) * ctx->bit_depth) / 8;
>  	hevc_dec->tile_sao.cpu = dma_alloc_coherent(vpu->dev, size,
>  						    &hevc_dec->tile_sao.dma,
>  						    GFP_KERNEL);
> -- 
> 2.32.0

> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
