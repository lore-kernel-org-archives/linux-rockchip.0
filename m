Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C65B9E81E1F
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Oct 2023 18:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXj2TF+d37MsHQva+cNyF4UJZnIFTsqS+UmqLMlSF/Q=; b=SzBm+0fE24Y9sS
	RhNdDfD0Gyja0BCHKcxv02hbSYx80qjyLtOHgIVkyMJU+p21pavsVfbgEmTjAT7Pevonylk+361U/
	HFsdISfJDYiBMVdQkhPKRDcyL4QJK9jAriSda6KoWKm6bhlH+NzIn5StdCpNey+uyt5GYK5k9WXZk
	Ujyjwd2dyrwRzttqzNgxt5ae4Os3k8DbdP+zWre0N+YjM6LUU5dMsQJECXkQH3mm4M53mv05XjJRm
	hXBHog2224D+AHYEVrNJe39sW+s3+386WHDip9/6eqgLUogeyxA23hGGTNPVPNvTS3luYuFVv3LT0
	pPqgDM9QK5+aqcwea+ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qopq0-006KlD-22;
	Fri, 06 Oct 2023 18:46:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoppx-006Kki-04;
	Fri, 06 Oct 2023 18:46:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5E0086124A;
	Fri,  6 Oct 2023 18:46:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BF1AC433C7;
	Fri,  6 Oct 2023 18:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696617968;
	bh=1mB/Avf3nx1RjkbQ/+Rwpkz9H+Ygulu55oGnBl9fNp4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mi1TNv4jY/b+f1ZiqtNMVCIfdOoCwo83sYPSCi3loiUAQE8Vjm6jZg8/1P73NgX+F
	 em0cjSo0TyG8Y7/Uq2U2JtLQBYcNAJLtv7RzOOMYT6cLQDNSWkIxpcFwXpUJyOPpv6
	 kYDKh7cDjc48C3uy4v32h72S3+4fPskwyWDGG37iipAbFHF0yDA8ME4VO+T5L89Lxd
	 3mQPfTu5TiZ2LyITkf0Vj0W44J4AFjlVajpQpWGtyuW9qE9Ubo3pN9tIsx/bhsNTt1
	 7XaA3ZRzI2gXq78eGJpWp3znDr9CoWA5k26Fc0JHUJkF1wcxW/E2vgpxxaGQjrwEbZ
	 2PXcMa3Mt8X5A==
Message-ID: <6eea0725-ac0b-0b45-4f6d-13799bc4bfb3@kernel.org>
Date: Sat, 7 Oct 2023 03:46:02 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 14/26] PM / devfreq: rockchip-dfi: Prepare for multiple
 users
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-15-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-15-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_114609_166544_567DD5D7 
X-CRM114-Status: GOOD (  25.67  )
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

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> When adding perf support later the DFI must be enabled when
> either of devfreq-event or perf is active. Prepare for that
> by adding a usage counter for the DFI. Also move enabling
> and disabling of the clock away from the devfreq-event specific
> functions to which the perf specific part won't have access.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 57 +++++++++++++++++++---------
>  1 file changed, 40 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index d39db5de7f19c..8a7af7c32ae0d 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -68,13 +68,28 @@ struct rockchip_dfi {
>  	void __iomem *regs;
>  	struct regmap *regmap_pmu;
>  	struct clk *clk;
> +	int usecount;
> +	struct mutex mutex;
>  	u32 ddr_type;
>  	unsigned int channel_mask;
>  };
>  
> -static void rockchip_dfi_start_hardware_counter(struct rockchip_dfi *dfi)
> +static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
>  {
>  	void __iomem *dfi_regs = dfi->regs;
> +	int ret = 0;
> +
> +	mutex_lock(&dfi->mutex);
> +
> +	dfi->usecount++;
> +	if (dfi->usecount > 1)
> +		goto out;
> +
> +	ret = clk_prepare_enable(dfi->clk);
> +	if (ret) {
> +		dev_err(&dfi->edev->dev, "failed to enable dfi clk: %d\n", ret);
> +		goto out;
> +	}
>  
>  	/* clear DDRMON_CTRL setting */
>  	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_TIMER_CNT_EN | DDRMON_CTRL_SOFTWARE_EN |
> @@ -99,14 +114,30 @@ static void rockchip_dfi_start_hardware_counter(struct rockchip_dfi *dfi)
>  	/* enable count, use software mode */
>  	writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN, DDRMON_CTRL_SOFTWARE_EN),
>  		       dfi_regs + DDRMON_CTRL);
> +out:
> +	mutex_unlock(&dfi->mutex);
> +
> +	return ret;
>  }
>  
> -static void rockchip_dfi_stop_hardware_counter(struct rockchip_dfi *dfi)
> +static void rockchip_dfi_disable(struct rockchip_dfi *dfi)
>  {
>  	void __iomem *dfi_regs = dfi->regs;
>  
> +	mutex_lock(&dfi->mutex);
> +
> +	dfi->usecount--;
> +
> +	WARN_ON_ONCE(dfi->usecount < 0);
> +
> +	if (dfi->usecount > 0)
> +		goto out;
> +
>  	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_SOFTWARE_EN),
>  		       dfi_regs + DDRMON_CTRL);
> +	clk_disable_unprepare(dfi->clk);
> +out:
> +	mutex_unlock(&dfi->mutex);
>  }
>  
>  static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_count *count)
> @@ -124,29 +155,20 @@ static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_coun
>  	}
>  }
>  
> -static int rockchip_dfi_disable(struct devfreq_event_dev *edev)
> +static int rockchip_dfi_event_disable(struct devfreq_event_dev *edev)
>  {
>  	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
>  
> -	rockchip_dfi_stop_hardware_counter(dfi);
> -	clk_disable_unprepare(dfi->clk);
> +	rockchip_dfi_disable(dfi);
>  
>  	return 0;
>  }
>  
> -static int rockchip_dfi_enable(struct devfreq_event_dev *edev)
> +static int rockchip_dfi_event_enable(struct devfreq_event_dev *edev)
>  {
>  	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
> -	int ret;
> -
> -	ret = clk_prepare_enable(dfi->clk);
> -	if (ret) {
> -		dev_err(&edev->dev, "failed to enable dfi clk: %d\n", ret);
> -		return ret;
> -	}
>  
> -	rockchip_dfi_start_hardware_counter(dfi);
> -	return 0;
> +	return rockchip_dfi_enable(dfi);
>  }
>  
>  static int rockchip_dfi_set_event(struct devfreq_event_dev *edev)
> @@ -190,8 +212,8 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
>  }
>  
>  static const struct devfreq_event_ops rockchip_dfi_ops = {
> -	.disable = rockchip_dfi_disable,
> -	.enable = rockchip_dfi_enable,
> +	.disable = rockchip_dfi_event_disable,
> +	.enable = rockchip_dfi_event_enable,
>  	.get_event = rockchip_dfi_get_event,
>  	.set_event = rockchip_dfi_set_event,
>  };
> @@ -272,6 +294,7 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
>  		return PTR_ERR(dfi->regmap_pmu);
>  
>  	dfi->dev = dev;
> +	mutex_init(&dfi->mutex);
>  
>  	desc = &dfi->desc;
>  	desc->ops = &rockchip_dfi_ops;

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
