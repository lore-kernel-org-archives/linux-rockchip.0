Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBA20C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 11:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bpTbaWmG9IDSk4wFua1Cjb6KFVVNcCpITMR2TpVVY+k=; b=HfxMcHHqVKFhAw
	SAgQN5NcZYe72J3OF+0RYWeZdHEt1Pz8QHf1tFc53lXHh7ksgSbHNF9eW/Hz8vfGkwpvyOfEhvekY
	jbtbI1Jhazqybcg9zzN5RledEbLu9qE+kiphpeVaOx/jhPUP1t+OWIAALDTff7k10zeNo05PSb97E
	OFiSz2oqVuKb9Xp85kopCL3ZjVh0cNyHf55nBwYdu+I74bpjZ6ChDKYpKc8IYjsDKmBXXRj2Ps+NM
	KPpYQ24QgVOx04UkhtpZFRbLXaIzv8+nXpOvlShnRtJ8hY2F0fuew5/E1n+d8J7irCkM47BcMcm7k
	hK6cl6J2pxCCd4GKgT8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nabkW-008aXd-L8; Sat, 02 Apr 2022 11:16:56 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nabkR-008aWX-Ed
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 11:16:55 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 12so5238905oix.12
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 04:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=WjzH3Bp/QUa2TjJHjxkVQdmU8VTnKhEV9IV9oEFA8ak=;
 b=CEdR9sisN7IB5r5tB2HaKFQKMuuVaopkESp5PcnA5otm521+G6ap3QLvZOf64W+uDM
 4z/o9qUzrs6hJxDfNHi+i8kZh8VKUG8L2U5ZhpEhg2r/fhmpvYuxP+Kb5r5w4iWhH//L
 /wRhOSNcUnSYFHBFRT01NOBqLfxeHeRLSyZAaDLzakXgR1k+7GL4zcobbIZ4du3YHQjT
 BA2zG3n3Jn1/q7rUzwWWYeDZ3D/VSpcb7TZHR1ottkM2XhvwEpZMlq6R+AeEIlGCPDHv
 hUHa7xVJ7/CFr2u2SBGrz1A/NSTaB4gRI7shibJASst6BRstnVDp2eKzGAPm1iiXo7Ir
 nUuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WjzH3Bp/QUa2TjJHjxkVQdmU8VTnKhEV9IV9oEFA8ak=;
 b=fEGVEmqbE9v94NYfRqnIgs41zJzsUQ2freHGuGbv4k7o3140CdvStTQhfsBHi3IELa
 JGXV9y6C0OKY9BRTTGgPgIamaT+v0S44Eoco0jdbMsMdYHf4Xl4fWd8uYpRNY2v9zQyW
 uhbZLMLMjZR++nFojdr6AvjqKyYE4Bb6yQyzJyFjDCWHmYOh/QEl8TJoCWTPv67R5woY
 TE2isHMPlWkqRrAi5SS6sqmMv/WLmpPSE6c7jKnQu3wIYN8MyRRRl/F52XFfyaQVkkPu
 zeZp8PeAB7g91Bt3cejs8cXsfNe8oZv/S8rfICiXvE047U19jKqKSIqks0vn4QfeJAoG
 F6Zw==
X-Gm-Message-State: AOAM5326HaVB2khb7FA+Y2OKQ/MLBOslWZjLx5nNusckVC4vdZoDhvSC
 Ee3jZBt/pZSRoTuHxZFZDQx/vw==
X-Google-Smtp-Source: ABdhPJwt+k9ISqksCBiUGrS67w5cQJUESwaCZG9FKIOUke5sO/15am/gUUnCSnZtlVN7b/1Iyfy3TQ==
X-Received: by 2002:a05:6808:1247:b0:2d3:5181:449a with SMTP id
 o7-20020a056808124700b002d35181449amr6301215oiv.83.1648898208790; 
 Sat, 02 Apr 2022 04:16:48 -0700 (PDT)
Received: from eze-laptop ([2803:9800:98c2:8470:9f4:8e2a:88e5:ec01])
 by smtp.gmail.com with ESMTPSA id
 bm51-20020a0568081ab300b002da5c44e0bdsm1954097oib.28.2022.04.02.04.16.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 04:16:48 -0700 (PDT)
Date: Sat, 2 Apr 2022 08:16:43 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@collabora.com,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 13/23] media: rkvdec: h264: Fix dpb_valid implementation
Message-ID: <YkgwmwTMa83RysKB@eze-laptop>
References: <20220331193726.289559-1-nicolas.dufresne@collabora.com>
 <20220331193726.289559-14-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220331193726.289559-14-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_041653_722785_8FD4937F 
X-CRM114-Status: GOOD (  27.24  )
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

On Thu, Mar 31, 2022 at 03:37:15PM -0400, Nicolas Dufresne wrote:
> The ref builder only provided references that are marked as valid in the
> dpb. Thus the current implementation of dpb_valid would always set the
> flag to 1. This is not representing missing frames (this is called
> 'non-existing' pictures in the spec). In some context, these non-existing
> pictures still need to occupy a slot in the reference list according to
> the spec.
> 

Good catch! OOC, did you find this because it was failing a test vector?

> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>

Fixes: cd33c830448ba ("media: rkvdec: Add the rkvdec driver")
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks,
Ezequiel

> ---
>  drivers/staging/media/rkvdec/rkvdec-h264.c | 33 ++++++++++++++++------
>  1 file changed, 24 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
> index dff89732ddd0..bcde37d72244 100644
> --- a/drivers/staging/media/rkvdec/rkvdec-h264.c
> +++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
> @@ -112,6 +112,7 @@ struct rkvdec_h264_run {
>  	const struct v4l2_ctrl_h264_sps *sps;
>  	const struct v4l2_ctrl_h264_pps *pps;
>  	const struct v4l2_ctrl_h264_scaling_matrix *scaling_matrix;
> +	int ref_buf_idx[V4L2_H264_NUM_DPB_ENTRIES];
>  };
>  
>  struct rkvdec_h264_ctx {
> @@ -725,6 +726,26 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
>  	}
>  }
>  
> +static void lookup_ref_buf_idx(struct rkvdec_ctx *ctx,
> +			       struct rkvdec_h264_run *run)
> +{
> +	const struct v4l2_ctrl_h264_decode_params *dec_params = run->decode_params;
> +	u32 i;
> +
> +	for (i = 0; i < ARRAY_SIZE(dec_params->dpb); i++) {
> +		struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
> +		const struct v4l2_h264_dpb_entry *dpb = run->decode_params->dpb;
> +		struct vb2_queue *cap_q = &m2m_ctx->cap_q_ctx.q;
> +		int buf_idx = -1;
> +
> +		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE)
> +			buf_idx = vb2_find_timestamp(cap_q,
> +						     dpb[i].reference_ts, 0);
> +
> +		run->ref_buf_idx[i] = buf_idx;
> +	}
> +}
> +
>  static void assemble_hw_rps(struct rkvdec_ctx *ctx,
>  			    struct rkvdec_h264_run *run)
>  {
> @@ -762,7 +783,7 @@ static void assemble_hw_rps(struct rkvdec_ctx *ctx,
>  
>  	for (j = 0; j < RKVDEC_NUM_REFLIST; j++) {
>  		for (i = 0; i < h264_ctx->reflists.num_valid; i++) {
> -			u8 dpb_valid = 0;
> +			bool dpb_valid = run->ref_buf_idx[i] >= 0;
>  			u8 idx = 0;
>  
>  			switch (j) {
> @@ -779,8 +800,6 @@ static void assemble_hw_rps(struct rkvdec_ctx *ctx,
>  
>  			if (idx >= ARRAY_SIZE(dec_params->dpb))
>  				continue;
> -			dpb_valid = !!(dpb[idx].flags &
> -				       V4L2_H264_DPB_ENTRY_FLAG_ACTIVE);
>  
>  			set_ps_field(hw_rps, DPB_INFO(i, j),
>  				     idx | dpb_valid << 4);
> @@ -859,13 +878,8 @@ get_ref_buf(struct rkvdec_ctx *ctx, struct rkvdec_h264_run *run,
>  	    unsigned int dpb_idx)
>  {
>  	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
> -	const struct v4l2_h264_dpb_entry *dpb = run->decode_params->dpb;
>  	struct vb2_queue *cap_q = &m2m_ctx->cap_q_ctx.q;
> -	int buf_idx = -1;
> -
> -	if (dpb[dpb_idx].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE)
> -		buf_idx = vb2_find_timestamp(cap_q,
> -					     dpb[dpb_idx].reference_ts, 0);
> +	int buf_idx = run->ref_buf_idx[dpb_idx];
>  
>  	/*
>  	 * If a DPB entry is unused or invalid, address of current destination
> @@ -1102,6 +1116,7 @@ static int rkvdec_h264_run(struct rkvdec_ctx *ctx)
>  
>  	assemble_hw_scaling_list(ctx, &run);
>  	assemble_hw_pps(ctx, &run);
> +	lookup_ref_buf_idx(ctx, &run);
>  	assemble_hw_rps(ctx, &run);
>  	config_registers(ctx, &run);
>  
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
