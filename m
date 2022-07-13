Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CA13C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jul 2022 20:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UjDO7xWcMLEvrr417AJoTrWzeZLNYNcSSI89IuzU8O4=; b=Xfdy0PiWVql9oF
	FDUyLNDshMkQ4IK3njLcxEWVFDpFSlo34KbTkLDlEHbq3wTM82wsIDzTUb09TiZwcyJ0OVSfk0VJ7
	p1PwYaAbVI9S9W3xL/CkAgVa9l6R/6MpcnGqLNWhI2CjAeJlI7H8yPr55rean/kPr/wUwI95+QynO
	5zDFXb8TZ8bbqYOVf7v73BlCOG3PbSedt8vj8EJAMups8QBaBzE5vEH9/U+75VHgadL1ewdaHX5tl
	YSJRt6W0Ucr8vWuUMiECHUJtB/2EXqjKkggks59vQT6mdHYBKGZHrA7JttXWhzhRacKkLarHbILu5
	AjaWjvKiV+9KfatJypFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBj3s-007iEk-Ee; Wed, 13 Jul 2022 20:34:20 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBj3g-007i9i-E7; Wed, 13 Jul 2022 20:34:09 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C0EA3305;
	Wed, 13 Jul 2022 22:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657744441;
	bh=FFwKvZARwFweAz3vNc8sElgRVMXjGCwOCjO0OsDEu50=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kPDYTDWX5yiehF1r+ifUzzeNpGgCbE5IoIwK2MyTFRPultI/FEKG4ScMh0FwRqMG6
	 DFqQBsuKJFObmWuYQtM0cgSu/p3tg4nN5W6uqqDwSlueENAcJzOOJvpktU1naYtH3i
	 C42+v1Ty0UynNgSREV9kEJC5gvtqeJXaYdJMHrLs=
Date: Wed, 13 Jul 2022 23:33:32 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: rkisp1: Add NV16M and NV61M to output formats
Message-ID: <Ys8sHPPeZ8oQutJC@pendragon.ideasonboard.com>
References: <20220713072458.3425576-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220713072458.3425576-1-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_133408_675186_C738A1D9 
X-CRM114-Status: GOOD (  16.96  )
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

On Wed, Jul 13, 2022 at 04:24:58PM +0900, Paul Elder wrote:
> Add support for NV16M and NV61M as output formats. As NV16, NV61, NV12M
> and NV21M are already supported, the infrastructure is already in place
> to support NV16M and NV61M, so it is sufficient to simply add relevant
> entries to the list of output formats.
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  .../platform/rockchip/rkisp1/rkisp1-capture.c | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index fee2aaacb26b..43547ab55fab 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -110,6 +110,16 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
>  		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
> +	}, {
> +		.fourcc = V4L2_PIX_FMT_NV16M,
> +		.uv_swap = 0,
> +		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
> +	}, {
> +		.fourcc = V4L2_PIX_FMT_NV61M,
> +		.uv_swap = 1,
> +		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YVU422M,
>  		.uv_swap = 1,
> @@ -237,6 +247,18 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>  		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
> +	}, {
> +		.fourcc = V4L2_PIX_FMT_NV16M,
> +		.uv_swap = 0,
> +		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
> +		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
> +	}, {
> +		.fourcc = V4L2_PIX_FMT_NV61M,
> +		.uv_swap = 1,
> +		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
> +		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YVU422M,
>  		.uv_swap = 1,

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
