Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B236C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 12:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JHTALwCeoijuLC2y3Y1WbIa4z93apNvONWBBD5ZXorc=; b=TmVpIrKpp+Oxde
	wVu2BpzvZs3hxhGp9hBw1SCr3Iq2tv6Fm/kkJqUOvfwlCVb10PXR3UAKhaxONUk4zCuoxOPpUtbiy
	V9KU+7atQP4NWl8Es2a5Ad+oron4a2LaOOsb8wc3sDEat0C+mWrOWzRtjjTS9sRBBqXy+bdF15L1A
	jdeFwhGAx7sGRpRKlLD70n10o7+LwLHzEP7TJ/6O+knUoG84bZSvxzqxbBkIvb6e83k2M1+VBOlM6
	xGY991KkrbKp/AGHlluRjTSq1/BWzD+Yqc2sPVVh1qOtKbbYcGGoxHaVk7LRt0oKN7rLcMQ+qKaAI
	yzgtdeW1Th9qGAKDgB5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAUAJ-007LMi-2u;
	Tue, 05 Dec 2023 12:04:39 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAUAG-007LL1-02;
	Tue, 05 Dec 2023 12:04:37 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id DDE96844;
	Tue,  5 Dec 2023 13:03:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701777834;
	bh=rxY8uJX52+CDwxpiKj8J/NBwZBTNLXNQ86G0OAH3DTQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JS1atgLuEi85qXwn7oAOOgu2q9O9ukqrUnmRGCbx8oav/6bJVIkhmdOa/YP6rtvvd
	 9eowlDRZhGm1zSzp9nM9Cp0O+qi8/sRP2Z2YYLejKlL+c2d+AHRcTv+T4aEfasAt8O
	 YLUb2HJWkmv7oEtavg2YBECM6wDa6cosGKH0eF+I=
Date: Tue, 5 Dec 2023 14:04:41 +0200
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
Subject: Re: [PATCH 2/4] media: rkisp1: Fix IRQ handler return values
Message-ID: <20231205120441.GD17394@pendragon.ideasonboard.com>
References: <20231205-rkisp-irq-fix-v1-0-f4045c74ba45@ideasonboard.com>
 <20231205-rkisp-irq-fix-v1-2-f4045c74ba45@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231205-rkisp-irq-fix-v1-2-f4045c74ba45@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_040436_193257_39E92ABE 
X-CRM114-Status: GOOD (  18.61  )
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

On Tue, Dec 05, 2023 at 10:09:33AM +0200, Tomi Valkeinen wrote:
> The IRQ handler rkisp1_isr() calls sub-handlers, all of which returns an
> irqreturn_t value, but rkisp1_isr() ignores those values and always
> returns IRQ_HANDLED.
> 
> Fix this by collecting the return values, and returning IRQ_HANDLED or
> IRQ_NONE as appropriate.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 76f93614b4cf..1d60f4b8bd09 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -445,17 +445,27 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
>  
>  static irqreturn_t rkisp1_isr(int irq, void *ctx)
>  {
> +	irqreturn_t ret;

	irqreturn_t ret = IRQ_NONE;

> +
>  	/*
>  	 * Call rkisp1_capture_isr() first to handle the frame that
>  	 * potentially completed using the current frame_sequence number before
>  	 * it is potentially incremented by rkisp1_isp_isr() in the vertical
>  	 * sync.
>  	 */
> -	rkisp1_capture_isr(irq, ctx);
> -	rkisp1_isp_isr(irq, ctx);
> -	rkisp1_csi_isr(irq, ctx);
>  
> -	return IRQ_HANDLED;
> +	ret = IRQ_NONE;

And drop this.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +
> +	if (rkisp1_capture_isr(irq, ctx) == IRQ_HANDLED)
> +		ret = IRQ_HANDLED;
> +
> +	if (rkisp1_isp_isr(irq, ctx) == IRQ_HANDLED)
> +		ret = IRQ_HANDLED;
> +
> +	if (rkisp1_csi_isr(irq, ctx) == IRQ_HANDLED)
> +		ret = IRQ_HANDLED;
> +
> +	return ret;
>  }
>  
>  static const char * const px30_isp_clks[] = {

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
