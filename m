Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D0A8C369C9
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Apr 2025 06:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2TQqU4EMGF5+CyZb3147OnlguhbfwYUhxvLTd0F8uEQ=; b=yRr/yXJ85JBPEK
	qmV28HD3ShX6jIWOuCpozasmuzPSms/lQ1Jllv6w6j4oSRZdmWNQFxXJfxt8A+LFQ9C1lDoKbJrqj
	eQerJhoZZ2SZu3jmpdV07pvCYJ2MUF8B956xzRWdfkxqVxHp4Zp2/Lsee0iBZbthvJoeEsTGI1T2x
	9xNzBzqO7amo2J1ih34vuLm6g/lJibaMXz1fyNHSf/MLkUNxDL+EYvha0n04gEJ0l0zhCsXHkYtJK
	YSPgtrZuZm5OIjU6Iax4IEVyl/wv+RgiXB/ayRdafPvYG0k1ioeW+HjWA+8Vx0GumGFAm6jPK1Cyl
	m6xITpCpvakpATvtkWOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5fJb-0000000FHch-0emK;
	Fri, 18 Apr 2025 06:35:07 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5f7u-0000000FFbQ-0pvk
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Apr 2025 06:23:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1744957378;
 bh=LWB/lzW41QdtP1PkM2f6gfH2fV5BGNGd/A9YQFiDNfw=;
 b=Q1AMNvmyqNv98mOwpckKw9Osucl1MjULiImc79kfitepm++/5RJ6XOIbFO9pwO/O+cqgHK+8f
 ueMIrYMHVeJwWFn1O1v2NnHFd9Sxahgb9hPLJw0TD7vPUSP5pb6oMZ/MVTW7ujde0nAv/PeEvPl
 gXu/LhyZ/KeVcwoZZET1U1VddTRgwzFHsq81o3UK87y5SdUApPyoKnSLoenBpSbvq88t0SO8CbH
 1NxMaPb7Gl9wLONOUCRxBzBhQcjF1vNm7H+w6QHKVVQdO4wozYoxXtHrGLBkNOjVwQNNeMKwm5l
 SrDnwC0pGkJpw3C1QBDpAmJ6ydwi7nG6cYsjW4xVvWrQ==
X-Forward-Email-ID: 6801efb8c6b251c2d5bebe82
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.0.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <8d1c3c82-dbdc-4064-8188-bab586996302@kwiboo.se>
Date: Fri, 18 Apr 2025 08:22:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/4] media: rkvdec: Add get_image_fmt ops
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20250417-b4-rkvdec_h264_high10_and_422_support-v9-0-0e8738ccb46b@collabora.com>
 <20250417-b4-rkvdec_h264_high10_and_422_support-v9-3-0e8738ccb46b@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250417-b4-rkvdec_h264_high10_and_422_support-v9-3-0e8738ccb46b@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_232302_270545_7897487C 
X-CRM114-Status: GOOD (  18.84  )
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

Hi Nicolas,

On 2025-04-17 23:58, Nicolas Dufresne wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
> 
> Add support for a get_image_fmt() ops that returns the required image
> format.
> 
> The CAPTURE format is reset when the required image format changes and
> the buffer queue is not busy.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Tested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Co-developed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 35 +++++++++++++++++++++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec.h |  2 ++
>  2 files changed, 37 insertions(+)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index 7b780392bb6a63cc954655ef940e87146d2b852f..6c6fe411f48772419e1810d869ab40d168848e65 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -72,6 +72,15 @@ static bool rkvdec_is_valid_fmt(struct rkvdec_ctx *ctx, u32 fourcc,
>  	return false;
>  }
>  
> +static bool rkvdec_fmt_changed(struct rkvdec_ctx *ctx,
> +			       enum rkvdec_image_fmt image_fmt)

Just a small nitpick:

Maybe this function should be called rkvdec_image_fmt_changed() and
could be moved closer to rkvdec_image_fmt_match() as those two are
related to image_fmt and not the pixfmt/fourcc.

Regards,
Jonas

> +{
> +	if (image_fmt == RKVDEC_IMG_FMT_ANY)
> +		return false;
> +
> +	return ctx->image_fmt != image_fmt;
> +}
> +
>  static void rkvdec_fill_decoded_pixfmt(struct rkvdec_ctx *ctx,
>  				       struct v4l2_pix_format_mplane *pix_mp)
>  {
> @@ -118,8 +127,34 @@ static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
>  	return 0;
>  }
>  
> +static int rkvdec_s_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
> +	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
> +	enum rkvdec_image_fmt image_fmt;
> +	struct vb2_queue *vq;
> +
> +	/* Check if this change requires a capture format reset */
> +	if (!desc->ops->get_image_fmt)
> +		return 0;
> +
> +	image_fmt = desc->ops->get_image_fmt(ctx, ctrl);
> +	if (rkvdec_fmt_changed(ctx, image_fmt)) {
> +		vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
> +				     V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
> +		if (vb2_is_busy(vq))
> +			return -EBUSY;
> +
> +		ctx->image_fmt = image_fmt;
> +		rkvdec_reset_decoded_fmt(ctx);
> +	}
> +
> +	return 0;
> +}
> +
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
