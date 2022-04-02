Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDB8FC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 12:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8z4izvQAz7lGUs/WrhCmBGuUoBRDKncHgbw6bNPJSPE=; b=AzzoS8oeA4Z642
	k3GREPI24rMwTxU14UsgdjCJjHNQ6dd8QccjxhcDZFT6np+mmZB/rIKXkoUo4w4cC2NxU6nznboeD
	2Z4086/871YmBjO0KHgX/xos2xCLBTzvtCCieXYpywqKVLsdCeRPuyyrT3ZWejIej1eGjVAXpjXNx
	xTHiDywmj2a6gH5blNnY7dqa1uR+3SyLwB59SZ55G9HSwCwglxb7A9BzGyCHj/5cO+puUAg42EP6+
	W6ZPuw3S/Hcb0jIKHi4MqlAie6P3sQGwbanL7cuuRg/33zHfkNgAy6LgrVy6fvmiCYCtc7GrOtswY
	zTHsvJ5Ca49WWt9iCNNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nacTy-008fXb-EU; Sat, 02 Apr 2022 12:03:54 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nacTv-008fWw-IA
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 12:03:53 +0000
Received: by mail-oi1-x22f.google.com with SMTP id i7so5334445oie.7
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 05:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=MUMGXPrqhpvIg0z7EbjNFhlD2pXd3vJXCzo/3QPQm0U=;
 b=slPzghhizm6vOrspQTwF79a4wz9zjj1ZH4K8G7OATmi+KyjLTur1IHmXK8yG200QTg
 WcfNxzSC3ZpkCivqbqjidMFbuOwb7ZBuDDLS4BOJQPxDR9xdKgJDpS99cA4J0Awvfozw
 oec1zWyrL14gIOo6XcDUrNCZiApNVVixg9UCe5OzDIhl1Bca0hsZIreOZdDvYg/U6Oct
 Kcc/EE4S6pE9jPYz+64zk1AZyfJRrHJP4bW5zBffvnRJTiyF59xmwsMZVo35+brRfeJq
 jClmkNFUGKTL1wXGtcIkfwe71TI6OjJOFLCpMSaak87MFqpsLkFHYFd6Yk23S6L7T6lr
 oo0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MUMGXPrqhpvIg0z7EbjNFhlD2pXd3vJXCzo/3QPQm0U=;
 b=DH03bpfncwHoG2gj/JMlauOV9PrYf5UCsAtVZuf+4p5bqS0B3a7mOnBuAWAnNNvBNg
 c6uB8ol+ZranWTG/RbsyudVZjRVH7Bxubr4dyJ+D90pe7LamVG81MluaAEyx/21jXlUE
 AQix0kf3/Zfweir8zCjKq7+BQ6QtmjGK4AWIPxAIXJjFumOHGZY+K1jTvTWB4b0nZndX
 +apDmLGK1r5eeJGKrh4s2EVuLsRuwUIOb0bd7GMPMTH202mBF964/8Rs2Vv3MUdzqu4F
 uSRBM95nLzJCXm+OE45Sq+86r1EKXmy1GnJsm1v/pGs8mtjw2ywWX66Ao2abK/ifWR20
 UvCQ==
X-Gm-Message-State: AOAM530n8lAffHtMBoxdY/EieJpewuWZPEouNye0RdE4DijM9zarr5FG
 aSqhIgV2ZFl4JMYWCiX9BEF5ew==
X-Google-Smtp-Source: ABdhPJyVm3SEe6m69LmK1R0CuNduK1Owo1bZ9uOPeNTUVOBr/U7jLy0gVAnDVQbwrRzI5OjhF5gZqA==
X-Received: by 2002:a05:6808:1809:b0:2da:3311:3290 with SMTP id
 bh9-20020a056808180900b002da33113290mr6709699oib.295.1648901029264; 
 Sat, 02 Apr 2022 05:03:49 -0700 (PDT)
Received: from eze-laptop ([2803:9800:98c2:8470:9f4:8e2a:88e5:ec01])
 by smtp.gmail.com with ESMTPSA id
 q12-20020a4ad54c000000b003245ac0a745sm2082881oos.22.2022.04.02.05.03.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 05:03:48 -0700 (PDT)
Date: Sat, 2 Apr 2022 09:03:43 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@collabora.com,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH v2 06/23] media: h264: Increase reference lists size to 32
Message-ID: <Ykg7n2QM/TjH7Vro@eze-laptop>
References: <20220331193726.289559-1-nicolas.dufresne@collabora.com>
 <20220331193726.289559-7-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220331193726.289559-7-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_050351_845455_1605FB8F 
X-CRM114-Status: GOOD (  20.25  )
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

On Thu, Mar 31, 2022 at 03:37:08PM -0400, Nicolas Dufresne wrote:
> This is to accommodate support for field decoding, which splits the top
> and the bottom references into the reference list.
> 
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  drivers/media/v4l2-core/v4l2-h264.c        | 6 +++---
>  drivers/staging/media/hantro/hantro_hw.h   | 6 +++---
>  drivers/staging/media/rkvdec/rkvdec-h264.c | 6 +++---
>  include/media/v4l2-h264.h                  | 8 ++++----
>  4 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/media/v4l2-core/v4l2-h264.c b/drivers/media/v4l2-core/v4l2-h264.c
> index afbfcf78efe4..4b46b36526c0 100644
> --- a/drivers/media/v4l2-core/v4l2-h264.c
> +++ b/drivers/media/v4l2-core/v4l2-h264.c
> @@ -212,7 +212,7 @@ static int v4l2_h264_b1_ref_list_cmp(const void *ptra, const void *ptrb,
>   * v4l2_h264_build_p_ref_list() - Build the P reference list
>   *
>   * @builder: reference list builder context
> - * @reflist: 16 sized array used to store the P reference list. Each entry
> + * @reflist: 32 sized array used to store the P reference list. Each entry
>   *	     is a v4l2_h264_reference structure
>   *
>   * This functions builds the P reference lists. This procedure is describe in
> @@ -235,9 +235,9 @@ EXPORT_SYMBOL_GPL(v4l2_h264_build_p_ref_list);
>   * v4l2_h264_build_b_ref_lists() - Build the B0/B1 reference lists
>   *
>   * @builder: reference list builder context
> - * @b0_reflist: 16 sized array used to store the B0 reference list. Each entry
> + * @b0_reflist: 32 sized array used to store the B0 reference list. Each entry
>   *		is a v4l2_h264_reference structure
> - * @b1_reflist: 16 sized array used to store the B1 reference list. Each entry
> + * @b1_reflist: 32 sized array used to store the B1 reference list. Each entry
>   *		is a v4l2_h264_reference structure
>   *
>   * This functions builds the B0/B1 reference lists. This procedure is described
> diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> index 2bc6b8f088f5..292aaaabaf24 100644
> --- a/drivers/staging/media/hantro/hantro_hw.h
> +++ b/drivers/staging/media/hantro/hantro_hw.h
> @@ -69,9 +69,9 @@ struct hantro_h264_dec_ctrls {
>   * @b1:		B1 reflist
>   */
>  struct hantro_h264_dec_reflists {
> -	struct v4l2_h264_reference p[HANTRO_H264_DPB_SIZE];
> -	struct v4l2_h264_reference b0[HANTRO_H264_DPB_SIZE];
> -	struct v4l2_h264_reference b1[HANTRO_H264_DPB_SIZE];
> +	struct v4l2_h264_reference p[V4L2_H264_REF_LIST_LEN];
> +	struct v4l2_h264_reference b0[V4L2_H264_REF_LIST_LEN];
> +	struct v4l2_h264_reference b1[V4L2_H264_REF_LIST_LEN];
>  };
>  
>  /**
> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
> index 3c7f3d87fab4..dff89732ddd0 100644
> --- a/drivers/staging/media/rkvdec/rkvdec-h264.c
> +++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
> @@ -100,9 +100,9 @@ struct rkvdec_h264_priv_tbl {
>  #define RKVDEC_H264_DPB_SIZE 16
>  
>  struct rkvdec_h264_reflists {
> -	struct v4l2_h264_reference p[RKVDEC_H264_DPB_SIZE];
> -	struct v4l2_h264_reference b0[RKVDEC_H264_DPB_SIZE];
> -	struct v4l2_h264_reference b1[RKVDEC_H264_DPB_SIZE];
> +	struct v4l2_h264_reference p[V4L2_H264_REF_LIST_LEN];
> +	struct v4l2_h264_reference b0[V4L2_H264_REF_LIST_LEN];
> +	struct v4l2_h264_reference b1[V4L2_H264_REF_LIST_LEN];
>  	u8 num_valid;
>  };
>  
> diff --git a/include/media/v4l2-h264.h b/include/media/v4l2-h264.h
> index ef9a894e3c32..e282fb16ac58 100644
> --- a/include/media/v4l2-h264.h
> +++ b/include/media/v4l2-h264.h
> @@ -37,7 +37,7 @@ struct v4l2_h264_reflist_builder {
>  		u16 longterm : 1;
>  	} refs[V4L2_H264_NUM_DPB_ENTRIES];
>  	s32 cur_pic_order_count;
> -	struct v4l2_h264_reference unordered_reflist[V4L2_H264_NUM_DPB_ENTRIES];
> +	struct v4l2_h264_reference unordered_reflist[V4L2_H264_REF_LIST_LEN];
>  	u8 num_valid;
>  };
>  
> @@ -51,9 +51,9 @@ v4l2_h264_init_reflist_builder(struct v4l2_h264_reflist_builder *b,
>   * v4l2_h264_build_b_ref_lists() - Build the B0/B1 reference lists
>   *
>   * @builder: reference list builder context
> - * @b0_reflist: 16 sized array used to store the B0 reference list. Each entry
> + * @b0_reflist: 32 sized array used to store the B0 reference list. Each entry
>   *		is a v4l2_h264_reference structure
> - * @b1_reflist: 16 sized array used to store the B1 reference list. Each entry
> + * @b1_reflist: 32 sized array used to store the B1 reference list. Each entry
>   *		is a v4l2_h264_reference structure
>   *
>   * This functions builds the B0/B1 reference lists. This procedure is described
> @@ -70,7 +70,7 @@ v4l2_h264_build_b_ref_lists(const struct v4l2_h264_reflist_builder *builder,
>   * v4l2_h264_build_p_ref_list() - Build the P reference list
>   *
>   * @builder: reference list builder context
> - * @reflist: 16 sized array used to store the P reference list. Each entry
> + * @reflist: 32 sized array used to store the P reference list. Each entry
>   *	     is a v4l2_h264_reference structure
>   *
>   * This functions builds the P reference lists. This procedure is describe in
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
