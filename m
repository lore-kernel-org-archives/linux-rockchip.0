Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3B64C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 05:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DPojYiJuiDNj6RD0pKTyxZIr18VKdCs4Fam+7ezAro=; b=bNMsMXfcDZLrBa
	Vl5une1YrCXymeEl0R6kVNTL/BTGBrx+xTQviiruDBQRahgDL0Cuf1bHwvtwnHYTyfayveYbzoKD1
	o3EVOv0uyxS2eNF7NJjvd2LSC7E3lnxey/2f68h5t1x+ejmJkrDN7ylWuGDwg+GKb25Pv8ygSDl9f
	0hheL0LqJJU4OjbCsU53GV4J6xeQLWsMBHXmRVUO3gjrAhEhqGyS8YhLiM1ldvrHsoQO1PWMYVSV6
	F8qVyK9tZ09CysAhRt4ILfWtZ7KoLDTKSUJlatAlw+5ljFCjyqPsqeHtUpO/y4sYny6mmsmrYBWJe
	OX60jkiZP/X+c5IupcJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nby3L-003nze-Dw; Wed, 06 Apr 2022 05:17:59 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nby3J-003nyd-1S
 for linux-rockchip@lists.infradead.org; Wed, 06 Apr 2022 05:17:58 +0000
Received: by mail-oi1-x22a.google.com with SMTP id i7so1337042oie.7
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Apr 2022 22:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=EaYNgx8KbJOaAquzTTA9wZHzyzdVTdSankAvb1CZzyQ=;
 b=x5n6cdCJEE/VCj3mLhng1qEaAEHHuW6CnLjYyMKJ8C5R5ZP0Q7JKSOAngNXZvEssT6
 qYwF0nXkMrFHlG642wUJQ96R8zpKlbaA/iAu1W8vgASVZWN7754Y3hfqO2OLH7MlHlKO
 ME6PI4A7vIvIay1Q1f8uJsQT4BK9tIPX8xmd/ugQJKSMeeEZPAKla6chmuZzSlbn/t7P
 mGKdo/EHI/X1JEU3CvMq6WouABaUMJBGUExshvChDadmSyo+WH+DcM5YIqYJa+roV5UP
 F0HGy42FpfZK4jAnq9YXXQQ5XGQc9/lIKTTMJwH4O9fdpI4TOuVX59WoOrmEpLxIWeL0
 B4Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EaYNgx8KbJOaAquzTTA9wZHzyzdVTdSankAvb1CZzyQ=;
 b=V+M0rdt8A7DPXHhEndlALDZ1dQADQU72qOyKXduB6HnS8KUw6401UcksSSKEKJl1Cx
 4R/ZWjyaI1U+oBliCOsEEDFCjE4hRRdvDJKjl4rZND0XwInGJkwNB6CfvLPrkidWv554
 gdCwXH6SYuByzbhXdOwQk/M8BJwVgD0xHjSWyTy+n89Ai2wInw/VH6YvG10DAPJpLFEP
 DvCxcmI38l1xLKEHMolIdUnct8eyqCyALeHmNgfNjzY/0DPHE71PWC90sSqbY+be3M/7
 A8Q9rqn8IizwwrkcnOZPck2aKSrVeZydXr3Xgj1VDG9QV4OJMgbVM+bi7NsEOnc8659p
 FUFw==
X-Gm-Message-State: AOAM530Tl/wpQpHT4cZYwtHkNuElZYGX7C0BFi+eC9xBruP9j0Z0uMWF
 cNzgZxE2XUWKDXY9El6rEeZXIw==
X-Google-Smtp-Source: ABdhPJznshMWCCRKhfXQIHf+0aM9ZllfI4xIqhhI3AR7UIbt17C0rKLn8MOFpYfzpZrwKU3Nu8zULQ==
X-Received: by 2002:aca:f286:0:b0:2da:58ba:c578 with SMTP id
 q128-20020acaf286000000b002da58bac578mr2846902oih.127.1649222274622; 
 Tue, 05 Apr 2022 22:17:54 -0700 (PDT)
Received: from eze-laptop ([2803:9800:98c2:8470:9f4:8e2a:88e5:ec01])
 by smtp.gmail.com with ESMTPSA id
 gk6-20020a0568703c0600b000de4880b357sm6038605oab.50.2022.04.05.22.17.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Apr 2022 22:17:53 -0700 (PDT)
Date: Wed, 6 Apr 2022 02:17:48 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: Re: [PATCH v3 15/24] media: rkvdec: Move H264 SPS validation in
 rkvdec-h264
Message-ID: <Yk0ifIfQmk9n5vyu@eze-laptop>
References: <20220405204426.259074-1-nicolas.dufresne@collabora.com>
 <20220405204426.259074-16-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220405204426.259074-16-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_221757_481032_AE1E6B24 
X-CRM114-Status: GOOD (  24.38  )
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

On Tue, Apr 05, 2022 at 04:44:16PM -0400, Nicolas Dufresne wrote:
> No function change, this moves H264 specific validation into the H264
> specific code. This is in preparation of improving this validation and
> reusing at streamone.
> 
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  drivers/staging/media/rkvdec/rkvdec-h264.c | 23 ++++++++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec.c      | 23 ++++++----------------
>  drivers/staging/media/rkvdec/rkvdec.h      |  1 +
>  3 files changed, 30 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
> index 8d44a884a52e..0dcbcb1bac80 100644
> --- a/drivers/staging/media/rkvdec/rkvdec-h264.c
> +++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
> @@ -1137,9 +1137,32 @@ static int rkvdec_h264_run(struct rkvdec_ctx *ctx)
>  	return 0;
>  }
>  
> +static int rkvdec_h264_try_ctrl(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl)
> +{
> +	if (ctrl->id == V4L2_CID_STATELESS_H264_SPS) {
> +		const struct v4l2_ctrl_h264_sps *sps = ctrl->p_new.p_h264_sps;
> +		/*
> +		 * TODO: The hardware supports 10-bit and 4:2:2 profiles,
> +		 * but it's currently broken in the driver.
> +		 * Reject them for now, until it's fixed.
> +		 */
> +		if (sps->chroma_format_idc > 1)
> +			/* Only 4:0:0 and 4:2:0 are supported */
> +			return -EINVAL;
> +		if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
> +			/* Luma and chroma bit depth mismatch */
> +			return -EINVAL;
> +		if (sps->bit_depth_luma_minus8 != 0)
> +			/* Only 8-bit is supported */
> +			return -EINVAL;
> +	}
> +	return 0;
> +}
> +
>  const struct rkvdec_coded_fmt_ops rkvdec_h264_fmt_ops = {
>  	.adjust_fmt = rkvdec_h264_adjust_fmt,
>  	.start = rkvdec_h264_start,
>  	.stop = rkvdec_h264_stop,
>  	.run = rkvdec_h264_run,
> +	.try_ctrl = rkvdec_h264_try_ctrl,
>  };
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index 2df8cf4883e2..e3d44d5b35f3 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -29,23 +29,12 @@
>  
>  static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
>  {
> -	if (ctrl->id == V4L2_CID_STATELESS_H264_SPS) {
> -		const struct v4l2_ctrl_h264_sps *sps = ctrl->p_new.p_h264_sps;
> -		/*
> -		 * TODO: The hardware supports 10-bit and 4:2:2 profiles,
> -		 * but it's currently broken in the driver.
> -		 * Reject them for now, until it's fixed.
> -		 */
> -		if (sps->chroma_format_idc > 1)
> -			/* Only 4:0:0 and 4:2:0 are supported */
> -			return -EINVAL;
> -		if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
> -			/* Luma and chroma bit depth mismatch */
> -			return -EINVAL;
> -		if (sps->bit_depth_luma_minus8 != 0)
> -			/* Only 8-bit is supported */
> -			return -EINVAL;
> -	}
> +	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
> +	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
> +
> +	if (desc->ops->try_ctrl)
> +		return desc->ops->try_ctrl(ctx, ctrl);
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
> index 2f4ea1786b93..9df0fba799a4 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.h
> +++ b/drivers/staging/media/rkvdec/rkvdec.h
> @@ -72,6 +72,7 @@ struct rkvdec_coded_fmt_ops {
>  	void (*done)(struct rkvdec_ctx *ctx, struct vb2_v4l2_buffer *src_buf,
>  		     struct vb2_v4l2_buffer *dst_buf,
>  		     enum vb2_buffer_state result);
> +	int (*try_ctrl)(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl);
>  };
>  
>  struct rkvdec_coded_fmt_desc {
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
