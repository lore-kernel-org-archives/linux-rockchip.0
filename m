Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11B08C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 14:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPscUVJf1RwWBQkQhE4ppxyCjJ2YmF0uPDDOcZcqPv8=; b=QLCWzG0Gyowo8M
	vXQnqiRB7t2XbZjGJnVLEYj3IQKFeGopWjBzvJjdCaiw4BjLBNod3udroo0s8zHaJF3nHB0wLUmJo
	JEL02Bonu/2ZLw/HiL7Nl0mO9t06ZeZbgHCySAGnXXu2RjWTN7bJDOIY9xl6RDumCErjGGWG8ijO+
	6/A8+eDWyl3r7KZ6Y4HkjIqyQCiU0LeZNhf47oy2sSTBX/RKnofWp0ovnGMfsIHuggRk+QiZgsUwX
	G/X8ofEiGz4PKGj4HXMuK1V8hHEdDMwwNFgr6+u5tAQvfb5dA/Um5q6v0YsZKkaDuVAZsY/GTw8Ej
	+noM6ud9mg7HTDWFNE3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBFZp-00D36g-1F;
	Thu, 07 Dec 2023 14:42:09 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBFZl-00D35u-2i;
	Thu, 07 Dec 2023 14:42:07 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0E0DB669;
	Thu,  7 Dec 2023 15:41:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701960083;
	bh=oqYzC0d84cVaTRAlruVMVWSCZEKZ2kE5XcA+BUxZl7U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SwCJCfORVcentryBcSckPtg8b/RXbRVFLvkA2AlDqc504HhDgXnytdpNS6y2aPKGs
	 prQTHuebFcf4ErDU9P882Kk/rHHV5b9sfwCcP/A8SqKyJQ7s45x90xbImYCCpuyzMk
	 0yua0I3ffFDTSWPKEqEnty4316GOe/MFArXHNqRE=
Date: Thu, 7 Dec 2023 16:42:10 +0200
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
Subject: Re: [PATCH v3 3/4] media: rkisp1: Store IRQ lines
Message-ID: <20231207144210.GE15521@pendragon.ideasonboard.com>
References: <20231207-rkisp-irq-fix-v3-0-358a2c871a3c@ideasonboard.com>
 <20231207-rkisp-irq-fix-v3-3-358a2c871a3c@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231207-rkisp-irq-fix-v3-3-358a2c871a3c@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_064206_041631_8453E90D 
X-CRM114-Status: GOOD (  25.61  )
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

On Thu, Dec 07, 2023 at 09:57:47AM +0200, Tomi Valkeinen wrote:
> Store the IRQ lines used by the driver for easy access. These are needed
> in future patches which fix IRQ race issues.
> 
> Tested-by: Adam Ford <aford173@gmail.com>  #imx8mp-beacon
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-common.h | 11 ++++++++++-
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c    | 17 +++++++++++++----
>  2 files changed, 23 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index 1e7cea1bea5e..2d7f06281c39 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -61,6 +61,14 @@ struct dentry;
>  						 RKISP1_CIF_ISP_EXP_END |	\
>  						 RKISP1_CIF_ISP_HIST_MEASURE_RDY)
>  
> +/* IRQ lines */
> +enum rkisp1_irq_line {
> +	RKISP1_IRQ_ISP = 0,
> +	RKISP1_IRQ_MI,
> +	RKISP1_IRQ_MIPI,
> +	RKISP1_NUM_IRQS,
> +};
> +
>  /* enum for the resizer pads */
>  enum rkisp1_rsz_pad {
>  	RKISP1_RSZ_PAD_SINK,
> @@ -423,7 +431,6 @@ struct rkisp1_debug {
>   * struct rkisp1_device - ISP platform device
>   *
>   * @base_addr:	   base register address
> - * @irq:	   the irq number
>   * @dev:	   a pointer to the struct device
>   * @clk_size:	   number of clocks
>   * @clks:	   array of clocks
> @@ -441,6 +448,7 @@ struct rkisp1_debug {
>   * @stream_lock:   serializes {start/stop}_streaming callbacks between the capture devices.
>   * @debug:	   debug params to be exposed on debugfs
>   * @info:	   version-specific ISP information
> + * @irqs:          IRQ line numbers
>   */
>  struct rkisp1_device {
>  	void __iomem *base_addr;
> @@ -461,6 +469,7 @@ struct rkisp1_device {
>  	struct mutex stream_lock; /* serialize {start/stop}_streaming cb between capture devices */
>  	struct rkisp1_debug debug;
>  	const struct rkisp1_info *info;
> +	int irqs[RKISP1_NUM_IRQS];
>  };
>  
>  /*
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 22b2ae0e89c4..c3fa40976140 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -114,6 +114,7 @@
>  struct rkisp1_isr_data {
>  	const char *name;
>  	irqreturn_t (*isr)(int irq, void *ctx);
> +	u32 line_mask;
>  };
>  
>  /* ----------------------------------------------------------------------------
> @@ -471,9 +472,9 @@ static const char * const px30_isp_clks[] = {
>  };
>  
>  static const struct rkisp1_isr_data px30_isp_isrs[] = {
> -	{ "isp", rkisp1_isp_isr },
> -	{ "mi", rkisp1_capture_isr },
> -	{ "mipi", rkisp1_csi_isr },
> +	{ "isp", rkisp1_isp_isr, BIT(RKISP1_IRQ_ISP) },
> +	{ "mi", rkisp1_capture_isr, BIT(RKISP1_IRQ_MI) },
> +	{ "mipi", rkisp1_csi_isr, BIT(RKISP1_IRQ_MIPI) },
>  };
>  
>  static const struct rkisp1_info px30_isp_info = {
> @@ -492,7 +493,7 @@ static const char * const rk3399_isp_clks[] = {
>  };
>  
>  static const struct rkisp1_isr_data rk3399_isp_isrs[] = {
> -	{ NULL, rkisp1_isr },
> +	{ NULL, rkisp1_isr, BIT(RKISP1_IRQ_ISP) | BIT(RKISP1_IRQ_MI) | BIT(RKISP1_IRQ_MIPI) },
>  };
>  
>  static const struct rkisp1_info rk3399_isp_info = {
> @@ -543,6 +544,9 @@ static int rkisp1_probe(struct platform_device *pdev)
>  	if (IS_ERR(rkisp1->base_addr))
>  		return PTR_ERR(rkisp1->base_addr);
>  
> +	for (unsigned int il = 0; il < ARRAY_SIZE(rkisp1->irqs); ++il)
> +		rkisp1->irqs[il] = -1;
> +
>  	for (i = 0; i < info->isr_size; i++) {
>  		irq = info->isrs[i].name
>  		    ? platform_get_irq_byname(pdev, info->isrs[i].name)
> @@ -550,6 +554,11 @@ static int rkisp1_probe(struct platform_device *pdev)
>  		if (irq < 0)
>  			return irq;
>  
> +		for (unsigned int il = 0; il < ARRAY_SIZE(rkisp1->irqs); ++il) {
> +			if (info->isrs[i].line_mask & BIT(il))
> +				rkisp1->irqs[il] = irq;
> +		}
> +
>  		ret = devm_request_irq(dev, irq, info->isrs[i].isr, 0,
>  				       dev_driver_string(dev), dev);
>  		if (ret) {
> 

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
