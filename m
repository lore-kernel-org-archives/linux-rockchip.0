Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DFE1C6FA8E
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Feb 2023 12:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+6X0K99jqDyPR1mxmri1AU3TFvhS6vEwNK9/WMd+wFU=; b=zR+ESYDog2EPEeTVXH5St1BMPq
	QbZl09/TbN3cDRG0L13AjRFuF8a/amz+PzJ07PKr+uO6dexclKw9hkz/XTcTvjvYNvU9yuZxyR5lV
	3q95SZmJDxG7IV2QZBlaZlXgRF3JL85H8l7K0kGHf4aU7dtYV7HFSiYZf8tJYxd5WYsO/v9dJnK8s
	TCmkoKdskCjP4+fM9tT46R3eAg643KbysqF/4lV3Xw2Nv6Dq6woL/YAEm8/MjLSSmIfgVq0rIMAUe
	+9E7clvX1/G/nR3GMe1ZQio+h4PfI4nm1Sdx4UgkMte+CJOwslYut9FW6X/b0jv/DGO7Y4ChzYnK6
	vEDaF/jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWGbh-007FRB-8M; Sun, 26 Feb 2023 12:58:25 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWGbc-007FQ5-Ov
	for linux-rockchip@lists.infradead.org; Sun, 26 Feb 2023 12:58:22 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-17227cba608so4903503fac.3
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Feb 2023 04:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=ffpsrszCFOl/BRtjybTqoxE9P3nhS9dZXtxaImYO5vg=;
        b=dqWOW2St4aVLEJLqa5JmQOlmCybBIZA05/zyaD7QHodPgszD+bv2NM1b4x9e+N8BeW
         yiz/6m9ss3+lutNumjFDpzCsJrBMJbfDeUEqmLd4lyQI13q9rw4fysXxvL8IoFFeffs/
         MmR6s0s3q1ZLy9uIzUzH8Pt4m+vJ2fcxKi5o4ZJBUqBFpiyfdWRKiBJ37SM05VJ/yIew
         GRznlkLZRHufEUixSffqcSTqC2DsceBnBPjIuFErxHQf3+zPdjZvqFZo95fvXbVcd0Jj
         NQteUnsiwDLA526NHKeMWupv3qTJRCKJf5f4rw1UYJUWfyQCUs61fJAjUJxOqGE0HL3z
         dg6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ffpsrszCFOl/BRtjybTqoxE9P3nhS9dZXtxaImYO5vg=;
        b=wuzsWNg46CmodS+JRBIgVSAs14t9yaan243KFixhDIVPDGFnKdwAhasNaq6MTKJfGf
         SwBf4qV3hexUPYVDcowNEvsY9uxYej2ifMrChLMCpM58E95qC9Sr0xfAne6lZbvlSZaM
         Bmj/vxadM9BYLp+v26aIPpTz1H/Za8cZ/BYNzf2BmAc+89t2cdQJU2NlvYG9/6S8eKvi
         ZmKMzhdA1k5d7EoXA5q3aV2sRTu2cEYeCN5bOKGe7DweGIGawxc634Utb6Pm+7n9o9wa
         OoKV992VTBEbnQl9iTlKyCSMuqTPrTAfnN8C+bE2k8gBgnUOh7fj77o3G+lQWfrkIq9X
         rilQ==
X-Gm-Message-State: AO0yUKXIFzGWt8IbfdGQ9nZ/KnPU/Me7nPOQE+Svu2vhF0TKlntCxKl/
	SxC5efwAJP/CWB7SKcA6YUth+g==
X-Google-Smtp-Source: AK7set+3UDCiggks2X3Rf7tQ3w77M+xHmsbg68aKU3wQvTH0XSCtd2I15hi7ZekOgbUm1XvQ3siNyg==
X-Received: by 2002:a05:6870:b627:b0:171:e1c8:41e with SMTP id cm39-20020a056870b62700b00171e1c8041emr11742580oab.5.1677416295033;
        Sun, 26 Feb 2023 04:58:15 -0800 (PST)
Received: from [192.168.10.175] ([190.106.125.26])
        by smtp.gmail.com with ESMTPSA id a16-20020a9d6e90000000b0068bdfa56717sm1556902otr.36.2023.02.26.04.58.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Feb 2023 04:58:13 -0800 (PST)
Date: Sun, 26 Feb 2023 09:58:01 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [PATCH v9 1/6] media: verisilicon: Do not set context src/dst
 formats in reset functions
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-imx@nxp.com, hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.co.uk,
	robert.mader@collabora.com, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Message-Id: <POUOQR.U8N7XH00WJ8U3@vanguardiasur.com.ar>
In-Reply-To: <20230220104849.398203-2-benjamin.gaignard@collabora.com>
References: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
	<20230220104849.398203-2-benjamin.gaignard@collabora.com>
X-Mailer: geary/43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230226_045821_115476_5CFD6126 
X-CRM114-Status: GOOD (  14.80  )
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



On Mon, Feb 20 2023 at 11:48:44 AM +0100, Benjamin Gaignard 
<benjamin.gaignard@collabora.com> wrote:
> Setting context source and destination formats should only be done
> in hantro_set_fmt_out() and hantro_set_fmt_cap() after check that
> the targeted queue is not busy.
> Remove these calls from hantro_reset_encoded_fmt() and
> hantro_reset_raw_fmt() to clean the driver.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  drivers/media/platform/verisilicon/hantro_v4l2.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c 
> b/drivers/media/platform/verisilicon/hantro_v4l2.c
> index c0d427956210..d8aa42bd4cd4 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -382,13 +382,10 @@ hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
> 
>  	vpu_fmt = hantro_get_default_fmt(ctx, true);
> 
> -	if (ctx->is_encoder) {
> -		ctx->vpu_dst_fmt = vpu_fmt;
> +	if (ctx->is_encoder)
>  		fmt = &ctx->dst_fmt;
> -	} else {
> -		ctx->vpu_src_fmt = vpu_fmt;
> +	else
>  		fmt = &ctx->src_fmt;
> -	}
> 
>  	hantro_reset_fmt(fmt, vpu_fmt);
>  	fmt->width = vpu_fmt->frmsize.min_width;
> @@ -408,11 +405,9 @@ hantro_reset_raw_fmt(struct hantro_ctx *ctx)
>  	raw_vpu_fmt = hantro_get_default_fmt(ctx, false);
> 
>  	if (ctx->is_encoder) {
> -		ctx->vpu_src_fmt = raw_vpu_fmt;
>  		raw_fmt = &ctx->src_fmt;
>  		encoded_fmt = &ctx->dst_fmt;
>  	} else {
> -		ctx->vpu_dst_fmt = raw_vpu_fmt;
>  		raw_fmt = &ctx->dst_fmt;
>  		encoded_fmt = &ctx->src_fmt;
>  	}
> --
> 2.34.1
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
