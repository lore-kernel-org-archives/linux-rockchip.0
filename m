Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E4E9C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jun 2022 19:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHrjCcheOO0VHYykgIKb1tYokEZM9MrZmSZRp3ABFSs=; b=i+VgAiCSqgZRoi
	/eWTV2lpsJlZSUQmCgWh+Jv5c9DEZJQPmB7+k6ms/wNQU7qOdwQuydMBCQpX27ctpbojh2zRr3HpQ
	4jxVcdCNSIXVk3nO15XXwx9Fd1TyGF/h9eMIo90Be3ZkmIPsJwes9ifqrShyPjnQwE1IXk1Nvwelz
	yUE2Kn4rs4/v8z5bDK/DsEMsbTk3uEOvuFlw+lylVi66t6KE54tdViRROu3Pshpmi8VHMSWezx9/2
	ZNoKuMDU9Ecl0KqLygBGirhIAjTWUDs1z4R066Ja4eh4PajLJ65VvFAOUOLgAhYPTBaAJyvap2DmN
	VcepX1ZOkn1lycb3GxQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6dC7-00DjxS-HC; Wed, 29 Jun 2022 19:17:47 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6dC4-00Dju8-7d
	for linux-rockchip@lists.infradead.org; Wed, 29 Jun 2022 19:17:45 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-101d2e81bceso22830430fac.0
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jun 2022 12:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=o/jwDiSinXrZOl+AEZjENE1aXxHwuHlOc6Yz74KbYe0=;
        b=JhdB2BWMAi71kcD+c+7SIRFoBiHS6KZWlMNs8nE2JqKY9mTy+LMUKNGK6hA37tCcur
         3ihy3S0zD4ttDFVRVGcRYlgpAQxEJacZYkJ/wx6wXApOJgnEySeGr+h4cHZq1fHfTvwn
         oQ15u7ydaB0/VrxUkP7JIrv4B6SQCIfxCOiySaf5MFNFaRUFUX2GWn5vcLfYfeCrJBG3
         cOcN2K6do9JMJkXPyGf5BCKo2Tdhhn6aTazrQ+981pV/Z1n8WKzmiw6Z2M9jtW06chIe
         Xo85QNzBDp4TE82AvhjeJAgjK0ukkf9kKJjpf/wQhLhRiOxOdIdoGie5zYZEDxV8OEzp
         LAuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=o/jwDiSinXrZOl+AEZjENE1aXxHwuHlOc6Yz74KbYe0=;
        b=TaCPWULUS49nxsMXCGO83Li/mqe6oaxg35dwDkHk5mJpSAG5yeJMy83llmaQICMNv0
         mwPrngfmLNgcWOF3YZTt5Rmd+LsvqNeTyo9eLVoFJFz2N21ooLyj2X5qukB+IpDO1sr6
         PVWVV7R81ykzbqnorEofD6/WJbkwBXXxRhWVyqkZ+LY7oL/xDGhEryq6rQARfuo7BS2Z
         44dgRUmbHfcm+zDRD300kn6Gytx2P20rVYJBIT25mjcybSx8yzuhpWAJZdcGjcDf5tHr
         S06kgu6qxuPa/GAFo3w18e2byKJdGxNdLa87v1d3a1oiQhC/Cs550BSfGocXqVi86+BU
         s/tg==
X-Gm-Message-State: AJIora9Xd26OO989m5YXkdSvE3miR2NgUE47ymIQr44/6S3kNh2FwP9F
	GHp1fMI0JzF1y9zC9MKOVkLv2g==
X-Google-Smtp-Source: AGRyM1ud70v6ZQx2pnfpvswry6jTmrDjH3dXCQpTFuuOtuEaCYXzyLQ8lVwOmnjRqh/VOA9wD9nKyg==
X-Received: by 2002:a05:6870:c1c1:b0:ee:5c83:7be7 with SMTP id i1-20020a056870c1c100b000ee5c837be7mr2968439oad.53.1656530258908;
        Wed, 29 Jun 2022 12:17:38 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id r10-20020a056808210a00b00325cda1ff8esm9021967oiw.13.2022.06.29.12.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 12:17:38 -0700 (PDT)
Date: Wed, 29 Jun 2022 16:17:32 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
	benjamin.gaignard@collabora.com, nicolas.dufresne@collabora.com,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 6/7] media: hantro: Store VP9 bit depth in context
Message-ID: <YrylTP7c8q7vZGam@eze-laptop>
References: <20220616202513.351039-1-jernej.skrabec@gmail.com>
 <20220616202513.351039-7-jernej.skrabec@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220616202513.351039-7-jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_121744_296226_DA0C0D00 
X-CRM114-Status: GOOD (  18.95  )
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

On Thu, Jun 16, 2022 at 10:25:12PM +0200, Jernej Skrabec wrote:
> Now that we have proper infrastructure for postprocessing 10-bit
> formats, store VP9 bit depth in context.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks,
Ezequiel

> ---
>  drivers/staging/media/hantro/hantro_drv.c | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index 01d33dcb0467..afddf7ac0731 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -324,6 +324,24 @@ static int hantro_hevc_s_ctrl(struct v4l2_ctrl *ctrl)
>  	return 0;
>  }
>  
> +static int hantro_vp9_s_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +	struct hantro_ctx *ctx;
> +
> +	ctx = container_of(ctrl->handler,
> +			   struct hantro_ctx, ctrl_handler);
> +
> +	switch (ctrl->id) {
> +	case V4L2_CID_STATELESS_VP9_FRAME:
> +		ctx->bit_depth = ctrl->p_new.p_vp9_frame->bit_depth;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  static const struct v4l2_ctrl_ops hantro_ctrl_ops = {
>  	.try_ctrl = hantro_try_ctrl,
>  };
> @@ -336,6 +354,10 @@ static const struct v4l2_ctrl_ops hantro_hevc_ctrl_ops = {
>  	.s_ctrl = hantro_hevc_s_ctrl,
>  };
>  
> +static const struct v4l2_ctrl_ops hantro_vp9_ctrl_ops = {
> +	.s_ctrl = hantro_vp9_s_ctrl,
> +};
> +
>  #define HANTRO_JPEG_ACTIVE_MARKERS	(V4L2_JPEG_ACTIVE_MARKER_APP0 | \
>  					 V4L2_JPEG_ACTIVE_MARKER_COM | \
>  					 V4L2_JPEG_ACTIVE_MARKER_DQT | \
> @@ -503,6 +525,7 @@ static const struct hantro_ctrl controls[] = {
>  		.codec = HANTRO_VP9_DECODER,
>  		.cfg = {
>  			.id = V4L2_CID_STATELESS_VP9_FRAME,
> +			.ops = &hantro_vp9_ctrl_ops,
>  		},
>  	}, {
>  		.codec = HANTRO_VP9_DECODER,
> -- 
> 2.36.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
