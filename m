Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D630BC43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 14:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zGt2si20tVyFSzs6GR7Hze1mMrC7cXY4GdzuQbhd78E=; b=zOVNQSrMX94TLy
	QEJZnUOF6TkkviaZpAYzY8HG3PhLn4o60F64XMzBVuw0FR0iK2abdEF4/BxSGmqGtd6etImzytPBN
	aoB4EDWlu9o6MZzsIFBQMN1k96rF6lnej52XgZ6UqsedZo8B0Osgrr3jwZ0jAtqpF6nPGLo5yC4uz
	bUUNYaL24O7DGZx1t9VDX5x7X+euMGlePNKLThtJ07823RMrbk1xs/hylqQO9X9BOtwV+g39EZcNi
	2FSOy9xO+HQbn0J7O51Czq4JxnY/g2q43TQlv6hDFKbq2o8YK54nbqoY5nKUilkCDXWet5K4mioKC
	BlbgSSmEWT+pFDmff3nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Su6-00Ge73-Em; Thu, 07 Jul 2022 14:54:54 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Su3-00Ge4X-DZ
	for linux-rockchip@lists.infradead.org; Thu, 07 Jul 2022 14:54:52 +0000
Received: from pyrite.rasen.tech (softbank036240121080.bbtec.net [36.240.121.80])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7A04B326;
	Thu,  7 Jul 2022 16:54:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657205690;
	bh=tnm247nhSqZsDLLKpK3xMsn+1NnqphDazCIWy6lOt1o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hv2DRJfeREikt67Q39dn7JA0Qcf7j4pQ+7M/Wqdq3um2x+sv/XsyRJZhcdgQpuMIY
	 gmcsTjO0tect08/loiEsDglRCXeMBoPLDDTbkCVuhJi1xmtkO64fIt2J/JVezGU4yn
	 qMog2jCXJGKiVKVUPkP3Gha7jinAXa9UlYbGo3TA=
Date: Thu, 7 Jul 2022 23:54:41 +0900
From: paul.elder@ideasonboard.com
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 34/55] media: rkisp1: isp: Initialize some variables
 at declaration time
Message-ID: <20220707145441.GR3886060@pyrite.rasen.tech>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-35-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630230713.10580-35-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_075451_656318_4673FF21 
X-CRM114-Status: GOOD (  13.87  )
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

Hi Laurent,

On Fri, Jul 01, 2022 at 02:06:52AM +0300, Laurent Pinchart wrote:
> Initialize the src_fmt and sink_fmt variable when declaring them in
> rkisp1_config_isp().
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>

> ---
> Changes since v1:
> 
> - Fix typo in commit message
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index 938541ce52ce..53f0516594ef 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -142,12 +142,11 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
>  {
>  	struct rkisp1_device *rkisp1 = isp->rkisp1;
>  	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, acq_prop = 0;
> -	const struct rkisp1_mbus_info *src_fmt, *sink_fmt;
> +	const struct rkisp1_mbus_info *sink_fmt = isp->sink_fmt;
> +	const struct rkisp1_mbus_info *src_fmt = isp->src_fmt;
>  	struct v4l2_mbus_framefmt *sink_frm;
>  	struct v4l2_rect *sink_crop;
>  
> -	sink_fmt = isp->sink_fmt;
> -	src_fmt = isp->src_fmt;
>  	sink_frm = rkisp1_isp_get_pad_fmt(isp, NULL,
>  					  RKISP1_ISP_PAD_SINK_VIDEO,
>  					  V4L2_SUBDEV_FORMAT_ACTIVE);

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
