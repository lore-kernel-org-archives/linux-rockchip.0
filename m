Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60325C3601A
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Apr 2025 11:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RWzWCjeC4+ZMT8/PGdHWVl50GK/3RHVG6PhpDYu0Ws4=; b=1C8g1i1k0eiUJy
	N//nMiZnSjv87iT87fYfUwojYAIp9CXBytTX4gN6rh9ExowGRn4D8erV68eVhOh7+9hUu+du9Mi1D
	AC5vqVB8cQLePNoO852r2HMz7lj30DIYHXzuGQ/fbR65xcOQd85/kuYZLuyAk3SlM09pz5FKOzOQK
	Zr1TrxkissFYPZwvSkLb17/Bd+zl/XdbFoUca9BmeNL5ZtxevgvijZp5OpRcwKzTpMvTgkmOfZeK8
	HPTIxRYXS3yGIYh6UbPGKbCv/QzHbzlBmFNwvOEAnX2kssNB8EIhjpse4FqtvL8+4cKQWlzDKSyLd
	EpUeOJfgmvd9pj+H0J6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1kRj-0000000HXOv-02W5;
	Mon, 07 Apr 2025 11:15:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1kLv-0000000HVzH-0nFn
	for linux-rockchip@bombadil.infradead.org;
	Mon, 07 Apr 2025 11:09:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=FQPvzqjfL6hW3t6WLUKr2WLyTA5UOnNhUzDuppKydWo=; b=EbFrkLVZlopuXprFbRt8zOoOgB
	NCpNkRX3ZUyn6v3mSln8HcYHaREUk+JDm9PbNxCCKVHj2tMjOr7V8DtJwOEm84Rslb0t+jRRV2yoI
	yBnpihkSr8ApIm9rExFdN4fgQaQKtqqauYI/0jR2deSGCKgMjFS1DTk1zUOidks4qIoK4S7Q7qqw+
	1ce5erBoPoPHqf22jZA+HaVsG7wgeZfrACDbtArns6YNqtqUW9mwDalY3MerUE1jXA2hGTTRf+zn/
	lUS3uChd7AZqtS2G5LRIw3jx1DQsNLRTgz+xCdzTNGaGpcehYDZ3s8N5ZfGNp8/NDPR5X2hQz0HKH
	YJ45LNTg==;
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1kLr-00000007vl2-3EPW
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Apr 2025 11:09:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id F24F3A486E1;
	Mon,  7 Apr 2025 11:03:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFEA1C4CEDD;
	Mon,  7 Apr 2025 11:09:08 +0000 (UTC)
Message-ID: <e6b99109-bd35-46ff-a4e2-eb69b549dcbc@xs4all.nl>
Date: Mon, 7 Apr 2025 13:09:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 09/12] media: rkvdec: Add get_image_fmt ops
To: Sebastian Fricke <sebastian.fricke@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Boris Brezillon <boris.brezillon@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Alex Bee <knaerzche@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Dan Carpenter <dan.carpenter@linaro.org>, Jonas Karlman <jonas@kwiboo.se>,
 Christopher Obbard <christopher.obbard@linaro.org>
References: <20250225-rkvdec_h264_high10_and_422_support-v7-0-7992a68a4910@collabora.com>
 <20250225-rkvdec_h264_high10_and_422_support-v7-9-7992a68a4910@collabora.com>
Content-Language: en-US, nl
From: Hans Verkuil <hverkuil@xs4all.nl>
Autocrypt: addr=hverkuil@xs4all.nl; keydata=
 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
In-Reply-To: <20250225-rkvdec_h264_high10_and_422_support-v7-9-7992a68a4910@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_120916_271904_85A04E11 
X-CRM114-Status: GOOD (  23.83  )
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

On 25/02/2025 10:40, Sebastian Fricke wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
> 
> Add support for a get_image_fmt() ops that returns the required image
> format.
> 
> The CAPTURE format is reset when the required image format changes and
> the buffer queue is not busy.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Tested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Tested-by: Christopher Obbard <chris.obbard@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 49 +++++++++++++++++++++++++++++++++--
>  drivers/staging/media/rkvdec/rkvdec.h |  2 ++
>  2 files changed, 49 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index 70154948b4e32e2c439f259b0f1e1bbc8b52b063..5394079509305c619f1d0c1f542bfc409317c3b7 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -111,15 +111,60 @@ static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
>  {
>  	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
>  	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
> +	struct v4l2_pix_format_mplane *pix_mp = &ctx->decoded_fmt.fmt.pix_mp;
> +	enum rkvdec_image_fmt image_fmt;
> +	struct vb2_queue *vq;
> +	int ret;
> +
> +	if (desc->ops->try_ctrl) {
> +		ret = desc->ops->try_ctrl(ctx, ctrl);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	if (!desc->ops->get_image_fmt)
> +		return 0;
>  
> -	if (desc->ops->try_ctrl)
> -		return desc->ops->try_ctrl(ctx, ctrl);
> +	image_fmt = desc->ops->get_image_fmt(ctx, ctrl);
> +	if (ctx->image_fmt == image_fmt)
> +		return 0;
> +
> +	if (rkvdec_is_valid_fmt(ctx, pix_mp->pixelformat, image_fmt))
> +		return 0;
> +
> +	/* format change not allowed when queue is busy */
> +	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
> +			     V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
> +	if (vb2_is_busy(vq))
> +		return -EINVAL;

This makes no sense to me. This just tries a control, and that should just
work, regardless of vb2_is_busy(). It's a 'try', so you are not actually
changing anything.

> +
> +	return 0;
> +}
> +
> +static int rkvdec_s_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
> +	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
> +	struct v4l2_pix_format_mplane *pix_mp = &ctx->decoded_fmt.fmt.pix_mp;
> +	enum rkvdec_image_fmt image_fmt;
> +
> +	if (!desc->ops->get_image_fmt)
> +		return 0;
> +
> +	image_fmt = desc->ops->get_image_fmt(ctx, ctrl);
> +	if (ctx->image_fmt == image_fmt)
> +		return 0;

If you really can't set a control when the queue is busy, then that should
be tested here, not in try_ctrl. And then you return -EBUSY.

Am I missing something here?

Regards,

	Hans

> +
> +	ctx->image_fmt = image_fmt;
> +	if (!rkvdec_is_valid_fmt(ctx, pix_mp->pixelformat, ctx->image_fmt))
> +		rkvdec_reset_decoded_fmt(ctx);
>  
>  	return 0;
>  }
>  
>  static const struct v4l2_ctrl_ops rkvdec_ctrl_ops = {
>  	.try_ctrl = rkvdec_try_ctrl,
> +	.s_ctrl = rkvdec_s_ctrl,
>  };
>  
>  static const struct rkvdec_ctrl_desc rkvdec_h264_ctrl_descs[] = {
> diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
> index 6f8cf50c5d99aad2f52e321f54f3ca17166ddf98..e466a2753ccfc13738e0a672bc578e521af2c3f2 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.h
> +++ b/drivers/staging/media/rkvdec/rkvdec.h
> @@ -73,6 +73,8 @@ struct rkvdec_coded_fmt_ops {
>  		     struct vb2_v4l2_buffer *dst_buf,
>  		     enum vb2_buffer_state result);
>  	int (*try_ctrl)(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl);
> +	enum rkvdec_image_fmt (*get_image_fmt)(struct rkvdec_ctx *ctx,
> +					       struct v4l2_ctrl *ctrl);
>  };
>  
>  enum rkvdec_image_fmt {
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
