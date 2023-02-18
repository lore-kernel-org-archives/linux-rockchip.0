Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C007C636CC
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Feb 2023 13:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MBJu9d+W7NKqIhow+t+MRcNRUHx093q77VuoaU3SmDk=; b=HzM2q8Tw/8/fsk
	XZZPtB3r/eXedf2DQCfSRgKNB0EH5uj/d4tPqPLPK45UiX3Mh7ZJpwifw77ebPNCbIYS5rNoSv5qp
	r4NaKq0D6qLAkXB+TNqCm4Z79PB/8RvwgnprHCrgxYUugVn00klBogCltH76wdoCGzc9UbeUDyOLN
	2F0MiX7b9ItPlZcM3FLow1BMos6dgRSPm8oheOulsMd7dxLCjyOaTUoJTTNMG/zKYNqqt0OeiSONZ
	QvWGN/onGY+t1EChULmfngTkeBNnPO8DITHEj4l4JOA89sgZPs9UzlS8EQKe7WIitE0sWZG7+yo/h
	YfM9muS12lPkoAGXzewg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTN0d-00H3Co-L5; Sat, 18 Feb 2023 13:12:11 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTN0U-00H39j-Oj
	for linux-rockchip@lists.infradead.org; Sat, 18 Feb 2023 13:12:04 +0000
Received: by mail-lf1-x134.google.com with SMTP id v11so1200369lft.0
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Feb 2023 05:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sFZb+KyGAfqdWcVh2QTgnXaoGg7pVVta8DL5jcjkaHA=;
        b=CD+nZ/SzGoNOMg8Mk2mopOlJfDYIRF3XlRUaULLdQYrYb0b/mc9ZIUbVbcb4QCrILP
         Ji7C1kzakqozOxnD+TQo2pwU9X4rm/BOxVQzd7zhTKjTdPjMswvaEDCjTNOua2xxV/EZ
         usY0cN5OWy+Q0XdeVmpy7+K+L1rtwbeG6W/jzd1IcqCnbVjgtdgz6Ctj0D20Us3acuWS
         1IkuJskkTpghq7CVu83wKyHAw5zcmCxvRu/QNKVWxdZS7zj5rYXOURQcVB8zzlMAxW8I
         YLj2ZMnLSTh5jJZdLd85/H3weSF9OZ0Tr6SngDt4oarVlcd7W7U+kAuZER3VSfNF3yeH
         xYtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sFZb+KyGAfqdWcVh2QTgnXaoGg7pVVta8DL5jcjkaHA=;
        b=s7SOIHS3shO+hOU9Fv3w2TIJFDFx5tx73nNf+lLK3BULn9H+bZ30ktNAX9aVW/zW//
         ApBt3pL1b5Q60CzxbzT/owIN2AZOooUARr2ZPoYqWZyZkomuX5kzO4SEDHaRvdOBEydF
         /5s7LaPB0u3IEc6qh7ukHoQnMA4PTdw9cmULvwB04QmgmczeCal6tLdxg7zsDyLNq1/g
         7RGEOW/zE1qZE5a6EdsMpsXvjERh+EEZHYDfL7q5CL0uDPSJKsRbi7sV/XnisY1pNJAS
         e9fAynkc5UOUNsKcAjL3evhyLNSJ/+X6eVvH5X/tMK+48AoU7BZH5fTrfcRpaD18vcuU
         Bc6A==
X-Gm-Message-State: AO0yUKU9mjs7COBeemeeumfSR+GHGgWSiIGId/yRIVnWS0RK7C5ztpzb
	hay4cZJxgGsT7NbplvNVRAukYjk6mgE6RDWiOqf3lA==
X-Google-Smtp-Source: AK7set+eHOfizBIwI1T3DsyV1863LifcB+yOBYdN4HyMZXw04IZPDsu/+QgX/HoCnpfPWQYxjvnFFjkbay+ekbeNW8E=
X-Received: by 2002:ac2:4439:0:b0:4d5:ca43:703e with SMTP id
 w25-20020ac24439000000b004d5ca43703emr1311163lfl.1.1676725913903; Sat, 18 Feb
 2023 05:11:53 -0800 (PST)
MIME-Version: 1.0
References: <20230214140557.537984-1-benjamin.gaignard@collabora.com> <20230214140557.537984-7-benjamin.gaignard@collabora.com>
In-Reply-To: <20230214140557.537984-7-benjamin.gaignard@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Sat, 18 Feb 2023 10:11:41 -0300
Message-ID: <CAAEAJfDihZND+1FSzFxT86j9u6h-wH6uMMNh7BiaEWQWtSpk=Q@mail.gmail.com>
Subject: Re: [PATCH v4 06/12] media: verisilicon: Check AV1 bitstreams bit depth
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, hverkuil@xs4all.nl, 
	nicolas.dufresne@collabora.com, jernej.skrabec@gmail.com, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230218_051203_031735_0CA99F51 
X-CRM114-Status: GOOD (  24.43  )
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

On Tue, Feb 14, 2023 at 11:06 AM Benjamin Gaignard
<benjamin.gaignard@collabora.com> wrote:
>
> The driver supports 8 and 10 bits bitstreams, make sure to discard
> other cases.
> It could happens that userland test if V4L2_CID_STATELESS_AV1_SEQUENCE
> exists without setting bit_depth field in this case use
> HANTRO_DEFAULT_BIT_DEPTH value.
>

This shouldn't happen.

If the bit_depth argument in hantro_check_depth_match()
can be set unchecked by userspace, we have done something wrong!!

Are you sure that userspace can do a S_CTRL with an invalid bit-depth?
The try_or_set_cluster() function seems to always call try_ctrl before s_ctrl.

Thanks,
Ezequiel

> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 4:
> - This patch is the result of squashing "Save bit depth for AV1 decoder"
>   and "Check AV1 bitstreams bit depth" of version 3 + adapation to
>   "[PATCH v8 0/6] media: verisilicon: HEVC: fix 10bits handling" series.
>
>  .../media/platform/verisilicon/hantro_drv.c   | 36 +++++++++++++++++++
>  .../media/platform/verisilicon/hantro_v4l2.c  |  4 +++
>  2 files changed, 40 insertions(+)
>
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
> index bc1a85456142..666cd46902da 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -275,7 +275,13 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
>                 /* We only support profile 0 */
>                 if (dec_params->profile != 0)
>                         return -EINVAL;
> +       } else if (ctrl->id == V4L2_CID_STATELESS_AV1_SEQUENCE) {
> +               const struct v4l2_ctrl_av1_sequence *sequence = ctrl->p_new.p_av1_sequence;
> +
> +               if (sequence->bit_depth != 8 && sequence->bit_depth != 10)
> +                       return -EINVAL;
>         }
> +
>         return 0;
>  }
>
> @@ -348,6 +354,30 @@ static int hantro_hevc_s_ctrl(struct v4l2_ctrl *ctrl)
>         return 0;
>  }
>
> +static int hantro_av1_s_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +       struct hantro_ctx *ctx;
> +
> +       ctx = container_of(ctrl->handler,
> +                          struct hantro_ctx, ctrl_handler);
> +
> +       switch (ctrl->id) {
> +       case V4L2_CID_STATELESS_AV1_SEQUENCE:
> +       {
> +               int bit_depth = ctrl->p_new.p_av1_sequence->bit_depth;
> +
> +               if (ctx->bit_depth == bit_depth)
> +                       return 0;
> +
> +               return hantro_reset_raw_fmt(ctx, bit_depth);
> +       }
> +       default:
> +               return -EINVAL;
> +       }
> +
> +       return 0;
> +}
> +
>  static const struct v4l2_ctrl_ops hantro_ctrl_ops = {
>         .try_ctrl = hantro_try_ctrl,
>  };
> @@ -365,6 +395,11 @@ static const struct v4l2_ctrl_ops hantro_hevc_ctrl_ops = {
>         .s_ctrl = hantro_hevc_s_ctrl,
>  };
>
> +static const struct v4l2_ctrl_ops hantro_av1_ctrl_ops = {
> +       .try_ctrl = hantro_try_ctrl,
> +       .s_ctrl = hantro_av1_s_ctrl,
> +};
> +
>  #define HANTRO_JPEG_ACTIVE_MARKERS     (V4L2_JPEG_ACTIVE_MARKER_APP0 | \
>                                          V4L2_JPEG_ACTIVE_MARKER_COM | \
>                                          V4L2_JPEG_ACTIVE_MARKER_DQT | \
> @@ -542,6 +577,7 @@ static const struct hantro_ctrl controls[] = {
>                 .codec = HANTRO_AV1_DECODER,
>                 .cfg = {
>                         .id = V4L2_CID_STATELESS_AV1_SEQUENCE,
> +                       .ops = &hantro_av1_ctrl_ops,
>                 },
>         }, {
>                 .codec = HANTRO_AV1_DECODER,
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
> index 992c5baa929f..7e74e47c9a89 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -86,6 +86,10 @@ hantro_check_depth_match(const struct hantro_fmt *fmt, int bit_depth)
>         if (!fmt->match_depth && !fmt->postprocessed)
>                 return true;
>
> +       /* 0 means default depth, which is 8 */
> +       if (!bit_depth)
> +               bit_depth = HANTRO_DEFAULT_BIT_DEPTH;
> +
>         fmt_depth = hantro_get_format_depth(fmt->fourcc);
>
>         /*
> --
> 2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
