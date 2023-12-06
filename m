Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05077C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 22:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9EsRsTJOwNgqdv0G/zjyU2QpM6e7o21OD1uIBc1hkM=; b=wRXbh64bx0yQzD
	62qgtckag0jCTjk03CPLo2S4f5b5EgHi/iTNjt0KW2btu6oZzimSnsnKxK9wJ4H8URv4hZPnO/zaZ
	l7gZd66wRmmfVjjp3JRLzc7zorkC2Bfjqi3hBQO7/nEPyE6ee8dzdpNM50cGy/gfroGdi4S0QyF90
	CJjHi3eNedfIUyCsFLOcVxqShsAqfmtWVT571pex+O40CV5ZT1Qum371hp6YgQNqGWzgT4biPHKlV
	8skhS50RYl7OYrPG0p2/CiG+4dRV2GeGwMrKipBfxcpcUAo23b87XgLjA3bpDYKl65ymSK0maS6IW
	1gQm2sv4JUMSNeqwdUWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rB08i-00BO2F-2c;
	Wed, 06 Dec 2023 22:13:08 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rB08e-00BO1o-1r;
	Wed, 06 Dec 2023 22:13:06 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id F1441556;
	Wed,  6 Dec 2023 23:12:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701900742;
	bh=MyiZ0c9R7mhTEt9Q8JKoeIvrzUNTttSdhrpWfhqCogE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mMp2vAP7F/Z8TOEz4aQAFWxGxRVpyCWPin+FZNaj8aiBvsICy14SbeuqEFb3c2LrR
	 aZettZBcgw6+h7/serhV0khPIeOsV21Xg0EICis0YA7YuKnsvNHW5ZgH1UhQ3q71h5
	 gK9A8sBWNSjy5ZXtE833/BI3GLT+3AiwdOhSSc6w=
Date: Thu, 7 Dec 2023 00:13:09 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	kieran.bingham@ideasonboard.com, umang.jain@ideasonboard.com,
	aford173@gmail.com, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/4] media: rkisp1: Fix IRQ disable race issue
Message-ID: <20231206221309.GD29417@pendragon.ideasonboard.com>
References: <20231206-rkisp-irq-fix-v2-0-6ba4185eeb1f@ideasonboard.com>
 <20231206-rkisp-irq-fix-v2-4-6ba4185eeb1f@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231206-rkisp-irq-fix-v2-4-6ba4185eeb1f@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_141304_775486_39C53035 
X-CRM114-Status: GOOD (  24.20  )
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

Hi Tomi,

Thank you for the patch.

On Wed, Dec 06, 2023 at 12:12:31PM +0200, Tomi Valkeinen wrote:
> In rkisp1_isp_stop() and rkisp1_csi_disable() the driver masks the
> interrupts and then apparently assumes that the interrupt handler won't
> be running, and proceeds in the stop procedure. This is not the case, as
> the interrupt handler can already be running, which would lead to the
> ISP being disabled while the interrupt handler handling a captured
> frame.
> 
> This brings up two issues: 1) the ISP could be powered off while the
> interrupt handler is still running and accessing registers, leading to
> board lockup, and 2) the interrupt handler code and the code that
> disables the streaming might do things that conflict.
> 
> It is not clear to me if 2) causes a real issue, but 1) can be seen with
> a suitable delay (or printk in my case) in the interrupt handler,
> leading to board lockup.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c | 14 +++++++++++++-
>  drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 20 +++++++++++++++++---
>  2 files changed, 30 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
> index 47f4353a1784..0bab3303f2e4 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
> @@ -125,8 +125,20 @@ static void rkisp1_csi_disable(struct rkisp1_csi *csi)
>  	struct rkisp1_device *rkisp1 = csi->rkisp1;
>  	u32 val;
>  
> -	/* Mask and clear interrupts. */
> +	/* Mask MIPI interrupts. */
>  	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_IMSC, 0);
> +
> +	/* Flush posted writes */
> +	rkisp1_read(rkisp1, RKISP1_CIF_MIPI_IMSC);
> +
> +	/*
> +	 * Wait until the IRQ handler has ended. The IRQ handler may get called
> +	 * even after this, but it will return immediately as the MIPI
> +	 * interrupts have been masked.
> +	 */
> +	synchronize_irq(rkisp1->irqs[RKISP1_IRQ_MIPI]);
> +
> +	/* Clear MIPI interrupt status */
>  	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_ICR, ~0);
>  
>  	val = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_CTRL);
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index dafbfd230542..33b5a714d117 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -364,11 +364,25 @@ static void rkisp1_isp_stop(struct rkisp1_isp *isp)
>  	 * ISP(mi) stop in mi frame end -> Stop ISP(mipi) ->
>  	 * Stop ISP(isp) ->wait for ISP isp off
>  	 */
> -	/* stop and clear MI and ISP interrupts */
> -	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IMSC, 0);
> -	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ICR, ~0);
>  
> +	/* Mask MI and ISP interrupts */
> +	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IMSC, 0);
>  	rkisp1_write(rkisp1, RKISP1_CIF_MI_IMSC, 0);
> +
> +	/* Flush posted writes */
> +	rkisp1_read(rkisp1, RKISP1_CIF_MI_IMSC);
> +
> +	/*
> +	 * Wait until the IRQ handler has ended. The IRQ handler may get called
> +	 * even after this, but it will return immediately as the MI and ISP
> +	 * interrupts have been masked.
> +	 */
> +	synchronize_irq(rkisp1->irqs[RKISP1_IRQ_ISP]);
> +	if (rkisp1->irqs[RKISP1_IRQ_ISP] != rkisp1->irqs[RKISP1_IRQ_MI])
> +		synchronize_irq(rkisp1->irqs[RKISP1_IRQ_MI]);
> +
> +	/* Clear MI and ISP interrupt status */
> +	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ICR, ~0);
>  	rkisp1_write(rkisp1, RKISP1_CIF_MI_ICR, ~0);
>  
>  	/* stop ISP */

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
