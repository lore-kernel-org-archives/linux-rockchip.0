Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF037CDB482
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 15:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vnGVri6c/kVmV2BBK9fe5nBQOy2WLxEKgStIeiqSdHg=; b=f2kdXlP7jPe7BE
	lBM2jRrv245tPF3t8tZxr/UO+0/8FBFO8tnH7EVKZeFaCpflOci3Cnnpv51lh4561hlL5WwMwAHmZ
	IY9J+i5hvvIgzUuL1wn24RtDj7NsO1neLxXQagv1bo21PaUtNx2IT1YRfnVMYyOtWoA3xGeYXe/W1
	eZzcuXh0C97q5v6W1kNWVpis/urp207oy7dPNj/iuhg1VCooJDzJdNDgT0y6xDOcpI7VyLrJ3a4Gl
	NJ1SCTkgYARFGMePdvTxfcR2HPzvb4a1PWk5LWv+RoGZVEnxuY+D0WUAzqy8MNCpPvvr8FwkI8gP0
	BQTl1OxGTk53no6aXASQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt8Cw-00F08S-07;
	Wed, 18 Oct 2023 15:11:38 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt8Cs-00F06W-0B;
	Wed, 18 Oct 2023 15:11:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 730EACE10E3;
	Wed, 18 Oct 2023 15:11:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8981C433C8;
	Wed, 18 Oct 2023 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697641891;
	bh=C7m9fDYT0joXqYIu3u06j8ma6FQv1VuJV51Xu0vTIqY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Zy6i7MymdvB1KwBvVdO5Z6/e+/Ab0RQlko43oMW4jt2vEfPM6QrFB2utwdbijLHLs
	 ePtwaweOBz/sUx2zHoB1rLeI9h6Dpq5f8750OluWZbo9QOgMrcB6XNMMpCaU1bVMAQ
	 pzPeEeLJQsJtI50+KSBkXc0j9P0ofj+g1pPD8qyaXKx6307awuopkLmWTAwamofCz3
	 ltYx3LNJSkEwDvgV971pfbYfZ65QKLP29n34jCGKZEvHeDo1MIz9Fw1K5VE05oNzcw
	 n8UcdSvHR/SwlrI8LfzOT0AwLvRvaDhjMo333HhZnFiIJOFCoGuTe+/G1qZwYYL2x6
	 1tPriTpmeHSvA==
Message-ID: <b24844da-f82c-448d-91bc-bc2a8d2053b1@kernel.org>
Date: Thu, 19 Oct 2023 00:11:27 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 17/26] PM / devfreq: rockchip-dfi: make register stride
 SoC specific
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
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
 <20231018061714.3553817-18-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20231018061714.3553817-18-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_081134_443648_B7CEB611 
X-CRM114-Status: GOOD (  19.78  )
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

On 23. 10. 18. 15:17, Sascha Hauer wrote:
> The currently supported RK3399 has a stride of 20 between the channel
> specific registers. Upcoming RK3588 has a different stride, so put
> the stride into driver data to make it configurable.
> While at it convert decimal 20 to hex 0x14 for consistency with RK3588
> which has a register stride 0x4000 and we want to write that in hex
> as well.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v7:
>      - Initialize ddrmon_stride for RK3568 and explain why it's not needed
> 
>  drivers/devfreq/event/rockchip-dfi.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 63977f9fc2693..a3d823ac68ace 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -113,6 +113,7 @@ struct rockchip_dfi {
>  	int active_events;
>  	int burst_len;
>  	int buswidth[DMC_MAX_CHANNELS];
> +	int ddrmon_stride;
>  };
>  
>  static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
> @@ -190,13 +191,13 @@ static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_coun
>  		if (!(dfi->channel_mask & BIT(i)))
>  			continue;
>  		res->c[i].read_access = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_RD_NUM + i * 20);
> +				DDRMON_CH0_RD_NUM + i * dfi->ddrmon_stride);
>  		res->c[i].write_access = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_WR_NUM + i * 20);
> +				DDRMON_CH0_WR_NUM + i * dfi->ddrmon_stride);
>  		res->c[i].access = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
> +				DDRMON_CH0_DFI_ACCESS_NUM + i * dfi->ddrmon_stride);
>  		res->c[i].clock_cycles = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_COUNT_NUM + i * 20);
> +				DDRMON_CH0_COUNT_NUM + i * dfi->ddrmon_stride);
>  	}
>  }
>  
> @@ -664,6 +665,8 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
>  	dfi->buswidth[0] = FIELD_GET(RK3399_PMUGRF_OS_REG2_BW_CH0, val) == 0 ? 4 : 2;
>  	dfi->buswidth[1] = FIELD_GET(RK3399_PMUGRF_OS_REG2_BW_CH1, val) == 0 ? 4 : 2;
>  
> +	dfi->ddrmon_stride = 0x14;
> +
>  	return 0;
>  };
>  
> @@ -690,6 +693,8 @@ static int rk3568_dfi_init(struct rockchip_dfi *dfi)
>  
>  	dfi->buswidth[0] = FIELD_GET(RK3568_PMUGRF_OS_REG2_BW_CH0, reg2) == 0 ? 4 : 2;
>  
> +	dfi->ddrmon_stride = 0x0; /* not relevant, we only have a single channel on this SoC */
> +
>  	return 0;
>  };
>  

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
