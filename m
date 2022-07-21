Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A367C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jul 2022 06:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TXVVp19G+Zt7IVBEu+T+jsFos+YmZna771XlTdRBQoo=; b=eKNKK7zc6vuCp7
	WdAMGCKOkMI5xD24B44OrCY4f+e6oNoMG4UIeArqdGdCSjn/omPyMV01A/N+bS8AuvnQ/cvf/VGwD
	NQjfy8BydvQAkFmPPhc1N3CXvNoJG+frnZ8YLJF87+ufE0pw3ca4YK/ctpNS24wCj0NosbvGms4E6
	U13QSCo1pocy1ba5c0SlOYnqbn3vR3xKgVib6SOI94ERGQerqYXpCNhK8x1SzAxaOXHwnk8lBuZVd
	USZci6173MJ5ML5Ck6LbcVCUutX2tXIFuyx6ZcgI8nndF2acUkPXvj7DB4rvdSrt459FK5AnqtEml
	A4U9p3cfnuQP23r6FUoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEPr1-0018hi-I3; Thu, 21 Jul 2022 06:40:11 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEPqq-0018aR-5m; Thu, 21 Jul 2022 06:40:01 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2F8CF496;
	Thu, 21 Jul 2022 08:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1658385595;
	bh=HLCcuuyn09GD67jWlHbPI3K4ebYuAGYQAmHxs8T3XHA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VIP/1SDkbOlYWuSVDO/jKpVK0/mOc5eAMkyQGCOnEdDAm4EJmMTmjwwlnJeEz6E8c
	 P5nfkDyKcTZjolO86ZUD9/OQpKXGlrOSUxNp5yLeVsfp4v5uFEOspqJdJefAWQFpHl
	 u8T1UqkO12fAvJKJWlSJQ9TfO69NDFpglgnOJozk=
Date: Thu, 21 Jul 2022 09:39:53 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: rkisp1: Implement ENUM_FRAMESIZES
Message-ID: <Ytj0uVpQJUaJuJvK@pendragon.ideasonboard.com>
References: <20220720172231.4019063-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220720172231.4019063-1-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_234000_414033_3A867F1A 
X-CRM114-Status: GOOD (  18.20  )
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

Hi Paul,

Thank you for the patch.

On Thu, Jul 21, 2022 at 02:22:31AM +0900, Paul Elder wrote:
> Implement VIDIOC_ENUM_FRAMESIZES for the rkisp1 capture devices.
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-capture.c | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index c494afbc21b4..74106a01ded7 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1245,6 +1245,31 @@ static int rkisp1_enum_fmt_vid_cap_mplane(struct file *file, void *priv,
>  	return -EINVAL;
>  }
>  
> +static int rkisp1_enum_framesizes(struct file *file, void *fh,
> +				  struct v4l2_frmsizeenum *fsize)
> +{
> +	struct rkisp1_capture *cap = video_drvdata(file);
> +	const unsigned int max_widths[] = { RKISP1_RSZ_MP_SRC_MAX_WIDTH,
> +					    RKISP1_RSZ_SP_SRC_MAX_WIDTH };
> +	const unsigned int max_heights[] = { RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
> +					     RKISP1_RSZ_SP_SRC_MAX_HEIGHT};

You can make these static const.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +
> +	if (fsize->index != 0)
> +		return -EINVAL;
> +
> +	fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;
> +
> +	fsize->stepwise.min_width = RKISP1_RSZ_SRC_MIN_WIDTH;
> +	fsize->stepwise.max_width = max_widths[cap->id];
> +	fsize->stepwise.step_width = 2;
> +
> +	fsize->stepwise.min_height = RKISP1_RSZ_SRC_MIN_HEIGHT;
> +	fsize->stepwise.max_height = max_heights[cap->id];
> +	fsize->stepwise.step_height = 2;
> +
> +	return 0;
> +}
> +
>  static int rkisp1_s_fmt_vid_cap_mplane(struct file *file,
>  				       void *priv, struct v4l2_format *f)
>  {
> @@ -1294,6 +1319,7 @@ static const struct v4l2_ioctl_ops rkisp1_v4l2_ioctl_ops = {
>  	.vidioc_s_fmt_vid_cap_mplane = rkisp1_s_fmt_vid_cap_mplane,
>  	.vidioc_g_fmt_vid_cap_mplane = rkisp1_g_fmt_vid_cap_mplane,
>  	.vidioc_enum_fmt_vid_cap = rkisp1_enum_fmt_vid_cap_mplane,
> +	.vidioc_enum_framesizes = rkisp1_enum_framesizes,
>  	.vidioc_querycap = rkisp1_querycap,
>  	.vidioc_subscribe_event = v4l2_ctrl_subscribe_event,
>  	.vidioc_unsubscribe_event = v4l2_event_unsubscribe,

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
