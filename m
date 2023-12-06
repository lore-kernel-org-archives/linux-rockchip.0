Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6930C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 22:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbASV4ZW2J9pVgVAyIT1kiH27RN+2N5E3inDnYOkR5E=; b=zyEjJZVrv1A8ht
	cyjqERMUh2l09GG+AyBTq/0q4BE7xWqnYv53d7HKhQITNb+xc4O63hqgNDCv+9E872YgBqZ04U2Cj
	Q23qExDSO5DbCvRN82N4s5oBsAufzrEUlxsjXbQTQYw8A1XNX1pW2GegLQApdhjhXvIJqwLVjpJQ9
	p4TQss8D4f1Nr6+LNdtIqCoWjG6JKh3JB7L3UFMN5+gt0O+uK+8mZtqhSAK0gS9R2Ngbm6jMa4ROv
	v4ZoCBL9kAJCFcbgtcqFLUNUXMaR+PgaB5bm1htZ5DSL4mB0yUZoOPebHYbvdD/y45xh0yZmlH7n1
	iTXdgWmnBJV4kXZDxugQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rB01k-00BNb9-1t;
	Wed, 06 Dec 2023 22:05:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rB01h-00BNa1-13;
	Wed, 06 Dec 2023 22:05:54 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D31F9556;
	Wed,  6 Dec 2023 23:05:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701900309;
	bh=keu6mZ1cZpht5aJTt3UURktqyYiTT3jXahRG3j0hD+g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KT5ng6A2iGFV5ef2agWZKkPeDA9NB7ofdMpJB2Iihwf+WTQ36ISkHAZTeYNxBL7s5
	 mTQFjlpxeyyv4YOCGBpTAD2TixR2lV0T9BLPMjAHAArucOCjBpmB82AZwTt/PIfCt0
	 hbOictZr2XBlzRqGwUlunC9QdnrLDJSgXR2ihWqk=
Date: Thu, 7 Dec 2023 00:05:56 +0200
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
Subject: Re: [PATCH v2 3/4] media: rkisp1: Store IRQ lines
Message-ID: <20231206220556.GC29417@pendragon.ideasonboard.com>
References: <20231206-rkisp-irq-fix-v2-0-6ba4185eeb1f@ideasonboard.com>
 <20231206-rkisp-irq-fix-v2-3-6ba4185eeb1f@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231206-rkisp-irq-fix-v2-3-6ba4185eeb1f@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_140553_506310_EB76D705 
X-CRM114-Status: GOOD (  27.29  )
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

On Wed, Dec 06, 2023 at 12:12:30PM +0200, Tomi Valkeinen wrote:
> Store the IRQ lines used by the driver for easy access. These are needed
> in future patches which fix IRQ race issues.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  .../media/platform/rockchip/rkisp1/rkisp1-common.h    | 11 ++++++++++-
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c   | 19 ++++++++++++++-----
>  2 files changed, 24 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index 960ab89c659b..ec28907d978e 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -62,6 +62,14 @@ struct regmap;
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
> @@ -437,7 +445,6 @@ struct rkisp1_debug {
>   * struct rkisp1_device - ISP platform device
>   *
>   * @base_addr:	   base register address
> - * @irq:	   the irq number
>   * @dev:	   a pointer to the struct device
>   * @clk_size:	   number of clocks
>   * @clks:	   array of clocks
> @@ -457,6 +464,7 @@ struct rkisp1_debug {
>   * @stream_lock:   serializes {start/stop}_streaming callbacks between the capture devices.
>   * @debug:	   debug params to be exposed on debugfs
>   * @info:	   version-specific ISP information
> + * @irqs:          IRQ line numbers
>   */
>  struct rkisp1_device {
>  	void __iomem *base_addr;
> @@ -479,6 +487,7 @@ struct rkisp1_device {
>  	struct mutex stream_lock; /* serialize {start/stop}_streaming cb between capture devices */
>  	struct rkisp1_debug debug;
>  	const struct rkisp1_info *info;
> +	int irqs[RKISP1_NUM_IRQS];
>  };
>  
>  /*
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 030eb8c79546..492ff5e6770d 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -115,6 +115,7 @@
>  struct rkisp1_isr_data {
>  	const char *name;
>  	irqreturn_t (*isr)(int irq, void *ctx);
> +	u32 line_mask;
>  };
>  
>  /* ----------------------------------------------------------------------------
> @@ -473,9 +474,9 @@ static const char * const px30_isp_clks[] = {
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
> @@ -496,7 +497,7 @@ static const char * const rk3399_isp_clks[] = {
>  };
>  
>  static const struct rkisp1_isr_data rk3399_isp_isrs[] = {
> -	{ NULL, rkisp1_isr },
> +	{ NULL, rkisp1_isr, BIT(RKISP1_IRQ_ISP) | BIT(RKISP1_IRQ_MI) | BIT(RKISP1_IRQ_MIPI) },
>  };
>  
>  static const struct rkisp1_info rk3399_isp_info = {
> @@ -517,7 +518,7 @@ static const char * const imx8mp_isp_clks[] = {
>  };
>  
>  static const struct rkisp1_isr_data imx8mp_isp_isrs[] = {
> -	{ NULL, rkisp1_isr },
> +	{ NULL, rkisp1_isr, BIT(RKISP1_IRQ_ISP) | BIT(RKISP1_IRQ_MI) | BIT(RKISP1_IRQ_MIPI) },

The i.MX8MP has no CSI-2 RX in the ISP, you can drop RKISP1_IRQ_MIPI.

I think we can merge this series before the i.MX8MP support, could you
base v3 on top of the master branch of the linux-media stage tree ?

>  };
>  
>  static const struct rkisp1_info imx8mp_isp_info = {
> @@ -574,6 +575,9 @@ static int rkisp1_probe(struct platform_device *pdev)
>  	if (IS_ERR(rkisp1->base_addr))
>  		return PTR_ERR(rkisp1->base_addr);
>  
> +	for (unsigned int il = 0; il < RKISP1_NUM_IRQS; ++il)

I would use ARRAY_SIZE(rkisp1->irqs) instead of RKISP1_NUM_IRQS here.

> +		rkisp1->irqs[il] = -1;
> +
>  	for (i = 0; i < info->isr_size; i++) {
>  		irq = info->isrs[i].name
>  		    ? platform_get_irq_byname(pdev, info->isrs[i].name)
> @@ -581,6 +585,11 @@ static int rkisp1_probe(struct platform_device *pdev)
>  		if (irq < 0)
>  			return irq;
>  
> +		for (unsigned int il = 0; il < RKISP1_NUM_IRQS; ++il) {

Same here.

> +			if (info->isrs[i].line_mask & BIT(il))
> +				rkisp1->irqs[il] = irq;
> +		}
> +
>  		ret = devm_request_irq(dev, irq, info->isrs[i].isr, 0,
>  				       dev_driver_string(dev), dev);
>  		if (ret) {

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
