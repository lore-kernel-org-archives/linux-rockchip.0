Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5305AC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 12:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+0rP3ns1fRIs4CnQwfVUYfU2bxiIxgZIbKCVFJHiEQ=; b=ZkHj1lJJOvKXhb
	NfypfAwtUu6eV8FBjOvGpHZWu8RtlvOC9O9Qa66L4gH2y0CsKuvgukuCVG9Bhbngrg4oVWAqcEmze
	cn63e+J9usf9R3UAoC0kMqusoyw1j1hISjX71hLARXDr7lOCYnBxlqXXtZ1Pe6TBp0Sk71DATvgyQ
	sv6KPpOyLOzwgWZlX0/5sobhF9vg8rYpeCD+nWISJZKY7YHKKXuIW3bs2h77e72kH2kgnyNKAAzq8
	tuu+JuFnamWpY8YFNp/eChPS9Sm2gZdB9v28/g+cLve3sDUBkGP+kT36M7at1S8/CF1Bou6sveqhM
	X4EKeYZ7fmFCzNZA+6ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAUJF-007M1X-1X;
	Tue, 05 Dec 2023 12:13:53 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAUJB-007M04-2f;
	Tue, 05 Dec 2023 12:13:51 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 619B6844;
	Tue,  5 Dec 2023 13:13:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701778388;
	bh=0ZLr3kFQ/SRckdRD/WtVOMYCg8x0SdcGPUxWJlxbTSQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q6OEmb5m+LGJD4zSLWKgY92Ie7m6mdi0BK0wkagE6rqjc15tEFpTp2Alyi8NZdMc/
	 IVN84yY+f6rc2thMg75CK6Mh5IXgqRxFn6emZA2ubX4vWZgu70mWDQw38aBHKcntxp
	 mgTMuGzaeP9wD78HMIR1Zzmf8dhnZ2LhI6sYITNI=
Date: Tue, 5 Dec 2023 14:13:55 +0200
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
Subject: Re: [PATCH 4/4] media: rkisp1: Fix IRQ disable race issue
Message-ID: <20231205121355.GE17394@pendragon.ideasonboard.com>
References: <20231205-rkisp-irq-fix-v1-0-f4045c74ba45@ideasonboard.com>
 <20231205-rkisp-irq-fix-v1-4-f4045c74ba45@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231205-rkisp-irq-fix-v1-4-f4045c74ba45@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_041350_005970_509A7401 
X-CRM114-Status: GOOD (  25.51  )
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

On Tue, Dec 05, 2023 at 10:09:35AM +0200, Tomi Valkeinen wrote:
> In rkisp1_isp_stop() and rkisp1_csi_disable() the driver masks the
> interrupts and then apparently assumes that the interrupt handler won't
> be running, and proceeds in the stop procedure. This is not the case, as
> the interrupt handler can already be running, which would lead to the
> ISP being disabled while the interrupt handler handling a captured
> frame.
> 
> It is not clear to me if this problem causes a real issue, but shutting
> down the ISP while an interrupt handler is running sounds rather bad.

Agreed.

> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c | 14 +++++++++++++-
>  drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 20 +++++++++++++++++---
>  2 files changed, 30 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
> index f6b54654b435..f0cef766fc0c 100644
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

This comment will need to be updated if patch 3/4 gets replaced by a
patch that drops IRQF_SHARED.

> +	synchronize_irq(rkisp1->irqs[RKISP1_IRQ_MIPI]);
> +
> +	/* Clear MIPI interrupt status */
>  	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_ICR, ~0);
>  
>  	val = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_CTRL);
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index d6b8786661ad..a6dd497c884c 100644
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

Same here.

> +	synchronize_irq(rkisp1->irqs[RKISP1_IRQ_ISP]);
> +	if (rkisp1->irqs[RKISP1_IRQ_ISP] != rkisp1->irqs[RKISP1_IRQ_MI])
> +		synchronize_irq(rkisp1->irqs[RKISP1_IRQ_MI]);

It would be nice if we could avoid the double synchronize_irq() for
platforms where RKISP1_IRQ_MIPI and RKISP1_IRQ_ISP are identical, but I
understand that would be difficult.

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
