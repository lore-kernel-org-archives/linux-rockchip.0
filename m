Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0603C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 17:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wgq+FC+X09wiPjGd3o6ChMus7p+JgmJnfUGVRPFucDg=; b=4c+bOCNQv5YwjU
	YUujEq+zE7CTqAFWab46MmBOARjAuZCAB7suLvEAkN51vLMIkMGTdsFk0FKxRtT6XgUErzSRrPLqP
	+oMz0wRllkX1xlsp7cPZ2BNS8l/2PS0CxbuDbDP00NINxOvaBRg/TKuCtnzgwe2Kf6a3siY8iy8RI
	6zN+1C8NMGJ5YIhUK516ODoukdfrB9lOL/WJdHa84QjahfNRkRXrxlrcEeldOOU4CTH1Q22YzjmWn
	paLytl9e651vC2EGd+u9eMKdAhXVeRjDDh03WbeTL26i2B4gVdCX/fJBUK45Px4yIPlrd+29mWgN3
	qnRmXyiq2/wK+h3EK0tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6yAN-000tKq-RD; Thu, 30 Jun 2022 17:41:23 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6y9z-000t9H-9E
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 17:41:00 +0000
Received: by mail-ot1-x330.google.com with SMTP id cb12-20020a056830618c00b00616b871cef3so12915940otb.5
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jun 2022 10:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=L5LM24Isd3avLAri00yP0uUJEwQfm2+0rT9x5MHEIdM=;
        b=CYPltZ+rQkyqU6YuIXsNiiWskIjHVxrB/8nXlilwqtOY2j444buUx9aqaDKXm/seRU
         Lbic5cyhoH2aORYYmQ2gZmLolgdIdEaxhuVAkwt4pUiyPHYFa1grN4ivgvQ51gbFE+cl
         K3xLj9DTg/GOvfhYfVbmCZ6GI2LZCKR2qm1YQKWpbkPgLiT20hi+22ftMucyg3cMND1U
         6Nqh8uB3nR8nMPdKOvTpXdABL2MnL/VqskpxgNbM83/dTVbfLoMXD53KXFsWn+tZSN9d
         jSfB2MTv4STv28slG+Eut8KsVG6q+0dRV+AxOCjVqKTlS9Y1qpz5VUHJiigVcxNwJbWH
         nuyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=L5LM24Isd3avLAri00yP0uUJEwQfm2+0rT9x5MHEIdM=;
        b=0dtGZtUoOVsudo6EUWNLLhx2JbxPyod7xzpT9RZcVGn181ZLIdFmXoLj582f+rVTAj
         4Kv3xo+I3BOChSpFT8xHXa+cgOPLmP+az4ZEcmQpT9d+FbMH7UA+UOuG+CnsMYlm6sz0
         vZpUHUh7+Q8y6fKXDCLPSb4PjdoTJpbIKQZUQaj68/2rJd1g87wlk8B9T93yObFcr7o5
         CBz8wIHTuVkSDyUr0Nsu2lBPsTm6hSsLFBSzHFUeH/Fr5FP3MqpJ1NXrj/2hjkjz/HKR
         41OUDyngwu0yvFwn8rtC90bXt2SIrcWZ+r5Zg8jRwReiXJTc5VprKvYG+TgQdCbRnFng
         z2Gg==
X-Gm-Message-State: AJIora8blVYKPw/O4liog9ulE/LPWG590P6VVmeYQPBmskU2GloOIqzN
	RhWjTwM7J/5mXltJ0s7M9f2hrQ==
X-Google-Smtp-Source: AGRyM1tFASk+uZEoikN/WRKV1KRqzG4udU6NKGy6hPh5tqzDkXxffJW3Qzy6XpqeMuezapvfPhGgZA==
X-Received: by 2002:a9d:3f1:0:b0:616:80b3:47e8 with SMTP id f104-20020a9d03f1000000b0061680b347e8mr4387751otf.213.1656610858062;
        Thu, 30 Jun 2022 10:40:58 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id c68-20020a4a4f47000000b0035f6cf71391sm11153701oob.43.2022.06.30.10.40.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 10:40:57 -0700 (PDT)
Date: Thu, 30 Jun 2022 14:40:51 -0300
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
Subject: Re: [PATCH 7/7] media: hantro: Allows luma and chroma depth to be
 different
Message-ID: <Yr3gI8L/o9DIYPWK@eze-laptop>
References: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
 <20220617115802.396442-8-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220617115802.396442-8-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_104059_333443_116F3595 
X-CRM114-Status: GOOD (  15.96  )
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

On Fri, Jun 17, 2022 at 01:58:02PM +0200, Benjamin Gaignard wrote:
> Luma and chroma depth are set on different hardware registers.
> Even if they aren't identical the bitstream can be compliant
> to HEVC specifications and decoded by the hardware.
> 
> With this patch TSUNEQBD_A_MAIN10_Technicolor_2 conformance test
> is successfully decoded.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks,
Ezequiel

> ---
>  drivers/staging/media/hantro/hantro_hevc.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_hevc.c b/drivers/staging/media/hantro/hantro_hevc.c
> index 85688a4df166..26b1329893f7 100644
> --- a/drivers/staging/media/hantro/hantro_hevc.c
> +++ b/drivers/staging/media/hantro/hantro_hevc.c
> @@ -156,9 +156,6 @@ static int tile_buffer_reallocate(struct hantro_ctx *ctx)
>  
>  int hantro_hevc_validate_sps(struct hantro_ctx *ctx, const struct v4l2_ctrl_hevc_sps *sps)
>  {
> -	if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
> -		/* Luma and chroma bit depth mismatch */
> -		return -EINVAL;
>  	if (sps->bit_depth_luma_minus8 != 0 && sps->bit_depth_luma_minus8 != 2)
>  		/* Only 8-bit and 10-bit is supported */
>  		return -EINVAL;
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
