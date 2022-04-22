Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E788C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 07:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6aBtB5vlK+Tyr1wjQklJ6eQUlmb32ndU/AOHYtRizes=; b=C1RXC0mJoQWcnO
	ED6kK5fgbDw1W9ypYjfmDMdjtc6FEmtcMXAP1hEEzX5dan4k+uIMlWfQ0g00mj6suzUsrUcmoRpgY
	hE+ufSrnzgf2hJVUjZg7U4j9nwIM0jrIHV+AnVFWAgNS0LN0KOoXckTEvX1fr3havQGLUCZX5TGML
	cQSVMXNkiYPKZw2ENHPj4wiwFjr+Qh2yTO09P3JK9PN/RQRsZQjHjOTf0Vy5Xm9Cxx6HnJKVWwrcL
	7KsnbetmHOh9dnOIZPUJTI/TO/VoLF3/mWACc7RuG7xjXwMgekkoDiTTL1cTgacIlpeKWs6cjpdFQ
	0xzjdKdzF9Wlj9M4076g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhnyY-00GweS-K2; Fri, 22 Apr 2022 07:45:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhnqi-00GspX-3P
 for linux-rockchip@lists.infradead.org; Fri, 22 Apr 2022 07:37:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6CD3261F36;
 Fri, 22 Apr 2022 07:37:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 292EDC385A4;
 Fri, 22 Apr 2022 07:37:01 +0000 (UTC)
Message-ID: <db5b60ef-2c1b-2004-69a0-ecdb2909734f@xs4all.nl>
Date: Fri, 22 Apr 2022 09:36:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 15/24] media: rkvdec: Move H264 SPS validation in
 rkvdec-h264
Content-Language: en-US
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
References: <20220405204426.259074-1-nicolas.dufresne@collabora.com>
 <20220405204426.259074-16-nicolas.dufresne@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20220405204426.259074-16-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_003704_286877_2451C674 
X-CRM114-Status: GOOD (  25.05  )
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

On 05/04/2022 22:44, Nicolas Dufresne wrote:
> No function change, this moves H264 specific validation into the H264

function -> functional

> specific code. This is in preparation of improving this validation and
> reusing at streamone.

streamone? I guess you mean "stream on"? Or perhaps "streaming"?

> 
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
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

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
