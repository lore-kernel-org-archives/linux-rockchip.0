Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE387C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 17:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P+ENneN2w+q7jdaRnHWbepp3EGFBToFwyC9+q1nt778=; b=GO37l61jwh/XxF
	/7AXwOFy5De80cDKNLHJv6r8BasZ9d+GP9W3c9QWltqvDm4eXs0jnH0rrholjA0+bCWecLODUlNXl
	Ug2vuNlGBEXYv512NldmDhEN0TbD94mx3sI7/JRoP27rrn1+P9u6olwXErgSxFI0eSGgR9DJF4OWP
	CbSz9m+Ek5TpHnZhejL7rXCQwAai73XGC+iybaZxm87oLnLfxEeOKiujv9C81vh/HH+kIdeTxR9MJ
	+5Mrt8MxeOcVsFF5KvkEXeTgaEzPLD7X0ZHQj+n+z9okii7QYc8mC1XkVFs2oE06Awcotq0tiRtWO
	W12I8M6UO9eErnQ8vzZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6xzm-000pWs-Fk; Thu, 30 Jun 2022 17:30:26 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6xzk-000pVz-Bk
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 17:30:25 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-fe023ab520so121997fac.10
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jun 2022 10:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=eJY5MsxNfTnDTBWpRfYuGIpnJMS3h7qwIGokJXZf/SU=;
        b=4qpE9Xqlh8LCVZjAhVL6VmJW8gFDr5tVr6AffUScIOD0NsVctK6XwJvGUEQbj1bggv
         Zi0cl94d3kOceYChCHUi9cy7jPTzSvkjIuyReTX5OOfsDLigMNzFrWVth51sbRrvG8SV
         8C0OlVewUuJSoOvXCplJX6YbhSnE9L6+rzL2q3xwpEAOA3L1cCy+RW4vruhvVxUSKEsZ
         LlUg7Xn+IVTwD5Mageii8ELu3At8wUEi36cZ+YxZG/krL/dS65fGTsaZhMqvMI8ExxTV
         QcPxhJebo5cepb+WQclHIKyfnLNpfbHDHoN23kwA9dQnpMqDWxhZw7MmjHFTN2OOMaUp
         qdGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=eJY5MsxNfTnDTBWpRfYuGIpnJMS3h7qwIGokJXZf/SU=;
        b=n3r/jILOaU5eGlsL0cb5vPdmtaEzWMNloEt/BmV5NsqbgX8bBgWWOXjCOjxLn6HtzV
         g+aGXDXoDkOdEnML82B3rtsi5Oy0ViOsiMFscsj4kBGqm2oFqYiC6LDVdvgUFyoWIZUQ
         FN/NhsgzuVwACZYIwSVsRtyd4LxyRb7YcuKmy5QcAry80XAdFWQ0LN7IOy+T5/Vx4QJe
         T44HQivge1k26jjWB1MSTQqNE+nTGHP1l2MhbprJFSVj+IeD1LHaML47qh+SUp9VsYHz
         XAWGilxmAIlkyzWq/JtFQj3zR+a1VOlAma6sqL3vXZZG7+1FMJmWOCJJc7llJRbw5EaR
         5ziQ==
X-Gm-Message-State: AJIora82xfRfuncMUA7hLiyi/dFE2HVSBfSUS6l4KLmS4qB+yoTNYCgf
	6TYA9Yv6wzOBLbT61D+d1iGx3A==
X-Google-Smtp-Source: AGRyM1t4nWwAndTq5PNsUK2pyU0AyCgAgapJSJwk+PMvmJlVrviN4+sLMJ1Qy/YsZCdRe9kj2u2IwQ==
X-Received: by 2002:a05:6870:e2ce:b0:101:a7c3:49cb with SMTP id w14-20020a056870e2ce00b00101a7c349cbmr7105251oad.197.1656610221161;
        Thu, 30 Jun 2022 10:30:21 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id r10-20020a056808210a00b00325cda1ff8esm10445255oiw.13.2022.06.30.10.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 10:30:20 -0700 (PDT)
Date: Thu, 30 Jun 2022 14:30:13 -0300
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
Subject: Re: [PATCH 1/7] media: hantro: Store HEVC bit depth in context
Message-ID: <Yr3dpT/hQHM56c8o@eze-laptop>
References: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
 <20220617115802.396442-2-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220617115802.396442-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_103024_628972_AD184D44 
X-CRM114-Status: GOOD (  14.47  )
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

Thanks for the patch.

On Fri, Jun 17, 2022 at 01:57:56PM +0200, Benjamin Gaignard wrote:
> Store HEVC bit depth in context.
> Bit depth is equal to hevc sps bit_depth_luma_minus8 + 8.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/staging/media/hantro/hantro_hevc.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/staging/media/hantro/hantro_hevc.c b/drivers/staging/media/hantro/hantro_hevc.c
> index 5984c5fa6f83..dcb5c8703b6e 100644
> --- a/drivers/staging/media/hantro/hantro_hevc.c
> +++ b/drivers/staging/media/hantro/hantro_hevc.c
> @@ -163,6 +163,8 @@ int hantro_hevc_validate_sps(struct hantro_ctx *ctx, const struct v4l2_ctrl_hevc
>  		/* Only 8-bit is supported */
>  		return -EINVAL;
>  
> +	ctx->bit_depth = sps->bit_depth_luma_minus8 + 8;
> +

This should set in hantro_hevc_s_ctrl.

Thanks!
Ezequiel

>  	/*
>  	 * for tile pixel format check if the width and height match
>  	 * hardware constraints
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
