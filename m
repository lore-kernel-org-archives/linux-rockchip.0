Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 179B4C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 08:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6AZoIHHrxkSSKBNSOiy+Hgmh1f4PlJFLPJq+jpYpp4=; b=Pj3dQ68lDOq9ii
	m0P/lx+rap+JJImnO1MOfBxnxkJDCljnO7Z2BZCIS/2NeTyVihll8KzKqif2ubdsw+CCyn58R0Bx+
	QK+509B0CyP13BguLh8pXIKUTFJfPRBYi8HVq1BQ61laoLPVQjMpvA5btkI/HYGAFDEMztZBKqcJz
	AUK5VDmkIfjYYtmncjpqjKDhn9wWJxFbm6PNkm0ARTVgzSZM/pWSy/Wz/O3TBHxmxIaLfc6NtaF5z
	2J85SNjZrsxSd+m8zXWz+XH3mgegUnJ5toraS6/coXcTTmr+x6AcgZIuE18Ao5rGLaLCL85/NzDMB
	ojlocZnAnXvzy4Smsorg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQf9-006dBM-35;
	Tue, 05 Dec 2023 08:20:15 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQf5-006d9A-2t;
	Tue, 05 Dec 2023 08:20:13 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0071D4DB;
	Tue,  5 Dec 2023 09:19:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701764369;
	bh=as9eWJPgC11SsS4l6Lvvaa+kNs5Pv8jA5yRszHq/yuw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NG5AsM1WDj/dpFyJXpfYG2U5Wk/Q8d2hWl9HP/Fi8TetGLkByR35i57owTTYVsXyF
	 /Cjng5whpC2Ol5A6X4s58FNdlkLFMBUrWBwElrEja5csvQigusRNURPuNXtYd0zVV4
	 +2EHuUz31Bv8ROLQhwOtdRTqg3lF3O4FVjhJgoDs=
Date: Tue, 5 Dec 2023 10:20:16 +0200
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
Subject: Re: [PATCH 3/4] media: rkisp1: Fix IRQ handling due to shared
 interrupts
Message-ID: <20231205082016.GA17394@pendragon.ideasonboard.com>
References: <20231205-rkisp-irq-fix-v1-0-f4045c74ba45@ideasonboard.com>
 <20231205-rkisp-irq-fix-v1-3-f4045c74ba45@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231205-rkisp-irq-fix-v1-3-f4045c74ba45@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_002012_099151_FB0545AD 
X-CRM114-Status: GOOD (  27.93  )
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

On Tue, Dec 05, 2023 at 10:09:34AM +0200, Tomi Valkeinen wrote:
> The driver requests the interrupts as IRQF_SHARED, so the interrupt
> handlers can be called at any time. If such a call happens while the ISP
> is powered down, the SoC will hang as the driver tries to access the
> ISP registers.

Is IRQF_SHARED actually needed ?

> Fix this by adding a new field, 'irqs_enabled', which is used to bail
> out from the interrupt handler when the ISP is not operational.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  .../media/platform/rockchip/rkisp1/rkisp1-capture.c |  3 +++
>  .../media/platform/rockchip/rkisp1/rkisp1-common.h  |  2 ++
>  drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c |  3 +++
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 21 +++++++++++++++++++++
>  drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c |  3 +++
>  5 files changed, 32 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index b50b044d22af..e92067897f28 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -779,6 +779,9 @@ irqreturn_t rkisp1_capture_isr(int irq, void *ctx)
>  	unsigned int i;
>  	u32 status;
>  
> +	if (!rkisp1->irqs_enabled)
> +		return IRQ_NONE;
> +
>  	status = rkisp1_read(rkisp1, RKISP1_CIF_MI_MIS);
>  	if (!status)
>  		return IRQ_NONE;
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index ec28907d978e..7f97fdf6e24c 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -465,6 +465,7 @@ struct rkisp1_debug {
>   * @debug:	   debug params to be exposed on debugfs
>   * @info:	   version-specific ISP information
>   * @irqs:          IRQ line numbers
> + * @irqs_enabled:  the hardware is enabled and can cause interrupts
>   */
>  struct rkisp1_device {
>  	void __iomem *base_addr;
> @@ -488,6 +489,7 @@ struct rkisp1_device {
>  	struct rkisp1_debug debug;
>  	const struct rkisp1_info *info;
>  	int irqs[RKISP1_NUM_IRQS];
> +	bool irqs_enabled;
>  };
>  
>  /*
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
> index 47f4353a1784..f6b54654b435 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
> @@ -184,6 +184,9 @@ irqreturn_t rkisp1_csi_isr(int irq, void *ctx)
>  	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
>  	u32 val, status;
>  
> +	if (!rkisp1->irqs_enabled)
> +		return IRQ_NONE;
> +
>  	status = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_MIS);
>  	if (!status)
>  		return IRQ_NONE;
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 1d60f4b8bd09..fbe03f7864e3 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -306,6 +306,23 @@ static int __maybe_unused rkisp1_runtime_suspend(struct device *dev)
>  {
>  	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
>  
> +	rkisp1->irqs_enabled = false;
> +	/* Make sure the IRQ handler will see the above */
> +	mb();
> +
> +	/*
> +	 * Wait until any running IRQ handler has returned. The IRQ handler
> +	 * may get called even after this (as it's a shared interrupt line)
> +	 * but the 'irqs_enabled' flag will make the handler return immediately.
> +	 */
> +	for (unsigned int i = 0; i < RKISP1_NUM_IRQS; ++i) {
> +		if (rkisp1->irqs[i] == -1)
> +			continue;
> +
> +		if (i == 0 || rkisp1->irqs[i - 1] != rkisp1->irqs[i])
> +			synchronize_irq(rkisp1->irqs[i]);
> +	}
> +
>  	clk_bulk_disable_unprepare(rkisp1->clk_size, rkisp1->clks);
>  	return pinctrl_pm_select_sleep_state(dev);
>  }
> @@ -322,6 +339,10 @@ static int __maybe_unused rkisp1_runtime_resume(struct device *dev)
>  	if (ret)
>  		return ret;
>  
> +	rkisp1->irqs_enabled = true;
> +	/* Make sure the IRQ handler will see the above */
> +	mb();
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index dafbfd230542..d6b8786661ad 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -1082,6 +1082,9 @@ irqreturn_t rkisp1_isp_isr(int irq, void *ctx)
>  	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
>  	u32 status, isp_err;
>  
> +	if (!rkisp1->irqs_enabled)
> +		return IRQ_NONE;
> +
>  	status = rkisp1_read(rkisp1, RKISP1_CIF_ISP_MIS);
>  	if (!status)
>  		return IRQ_NONE;

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
