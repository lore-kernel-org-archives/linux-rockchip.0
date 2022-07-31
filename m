Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F38C2C00140
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 20:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VPsFcRFSxG9QVs3hzqReViOcqN/Ogt4CQNU3fOMe7QA=; b=BykoB/AJqEN5Tg
	jxOy/jfUel+auzlZcbS6Q1S6seKSnvm8JGu4KymMSLcUuoD4lcg6S4vESWfcWmvTCaHe4pC25n3UJ
	PajehQ65if8t9itmcwiMsy7k3p6lH+5PA78jG8JbrOwpblBuGbb+qrc7LqaSJVRrsEst4FF5MzKRU
	jV2/AEvia8X1bLp1blGE4uwSU2uhtyeBWV7gCT1KRLbn5dohvAC2v1XEfh4qEbho4mz8x4MkUzsH1
	xqXj1r/q6xeecG1k5wovQhrUiJbJrzyfYCywHBD1Rsi0emlL/nM5giEnkJvLhfhRhIicCVs7RtQj5
	EXppPk97sFvd1X1M/tUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIFyj-00FxlI-Ci; Sun, 31 Jul 2022 20:56:01 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIFyX-00Fxdx-R9; Sun, 31 Jul 2022 20:55:51 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7C36B415;
	Sun, 31 Jul 2022 22:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1659300944;
	bh=z/icKT+ON5rGVjV3cQOF9rm7J26cV7YZ1upIXjkT4Is=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qRKDl5CWFyiu/lIHNsnj8p6f8yxrCWisd92TkIo90hhjXHZ9cgcD74QomFA1mqjby
	 QTdbqeR+0Fp2YQjuIfTWCH20A7n8rXjd5QqGrWcI5w89CC40djiJaNRUlaTPmtCXQo
	 GTfISRFqByInYlhivZpTeheWzV13RAX9PD1PzFWQ=
Date: Sun, 31 Jul 2022 23:55:40 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] media: rkisp1: Add UYVY as an output format
Message-ID: <YubsTAmY/B9F1Dhy@pendragon.ideasonboard.com>
References: <20220728130505.2077842-1-paul.elder@ideasonboard.com>
 <20220728130505.2077842-3-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220728130505.2077842-3-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_135550_080836_231FF470 
X-CRM114-Status: GOOD (  26.50  )
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

On Thu, Jul 28, 2022 at 10:05:05PM +0900, Paul Elder wrote:
> Add support for UYVY as an output format. The uv_swap bit in the
> MI_XTD_FORMAT_CTRL register that is used for the NV formats does not
> work for packed YUV formats. Thus, UYVY support is implemented via
> byte-swapping. This method clearly does not work for implementing
> support for YVYU and VYUY.
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> 
> ---
> Changes in v2:
> - s@uv@U/V@
> - SP has been kept (so, uh, *not* changed in v2)
> 
> UYVY for the self path has not been tested because no device supports
> it. The rk3399 has a self path, but does not have the
> MI_OUTPUT_ALIGN_FORMAT register and thus does not support UYVY. The
> i.MX8MP does support UYVY, but does not have a self path.
> ---
>  .../platform/rockchip/rkisp1/rkisp1-capture.c | 41 +++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index 9fb4879e65fa..0d5e3373e1f5 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -97,6 +97,12 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
>  		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
> +	}, {
> +		.fourcc = V4L2_PIX_FMT_UYVY,
> +		.uv_swap = 0,
> +		.yc_swap = 1,
> +		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YUV422P,
>  		.uv_swap = 0,
> @@ -231,6 +237,13 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>  		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
> +	}, {
> +		.fourcc = V4L2_PIX_FMT_UYVY,
> +		.uv_swap = 0,
> +		.yc_swap = 1,
> +		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
> +		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YUV422P,
>  		.uv_swap = 0,
> @@ -464,6 +477,20 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
>  		rkisp1_write(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL, reg);
>  	}
>  
> +	/*
> +	 * U/V swapping with the MI_XTD_FORMAT_CTRL register only works for
> +	 * NV12/NV21 and NV16/NV61, so instead use byte swap to support UYVY.
> +	 * YVYU and VYUY cannot be supported with this method.
> +	 */
> +	if (rkisp1->info->features & RKISP1_FEATURE_MI_OUTPUT_ALIGN) {
> +		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT);
> +		if (cap->pix.cfg->yc_swap)
> +			reg |= RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_BYTES;
> +		else
> +			reg &= ~RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_BYTES;
> +		rkisp1_write(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT, reg);
> +	}

I dislike read-modify-write sequences when the register isn't fully
initialized to a known value somewhere. This issue applies to other
registers too, so we could fix it globally on top.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +
>  	rkisp1_mi_config_ctrl(cap);
>  
>  	reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_CTRL);
> @@ -505,6 +532,20 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
>  		rkisp1_write(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL, reg);
>  	}
>  
> +	/*
> +	 * U/V swapping with the MI_XTD_FORMAT_CTRL register only works for
> +	 * NV12/NV21 and NV16/NV61, so instead use byte swap to support UYVY.
> +	 * YVYU and VYUY cannot be supported with this method.
> +	 */
> +	if (rkisp1->info->features & RKISP1_FEATURE_MI_OUTPUT_ALIGN) {
> +		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT);
> +		if (cap->pix.cfg->yc_swap)
> +			reg |= RKISP1_CIF_OUTPUT_ALIGN_FORMAT_SP_BYTE_SWAP_BYTES;
> +		else
> +			reg &= ~RKISP1_CIF_OUTPUT_ALIGN_FORMAT_SP_BYTE_SWAP_BYTES;
> +		rkisp1_write(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT, reg);
> +	}
> +
>  	rkisp1_mi_config_ctrl(cap);
>  
>  	mi_ctrl = rkisp1_read(rkisp1, RKISP1_CIF_MI_CTRL);

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
