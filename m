Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99E31C77B7A
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 16:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZBCwilHLCjkmq/9Zlvy8qUHOtEb1dESIq1IxVt6Wzk=; b=f8MhWu3rxMQeIZ
	PTenQ4Sm0n/4P7ENkaMP0cwaLghzd9LQ9Wg/NfOSwqoWf/1IJOc5SA8kz2KOACFuvJfwMu64byDTT
	SOvB0E0SASaKj9pyb96aj9DOwba9B8nB4jn8OnerzO7/DUt4uKcORh1PbpwKxLPzrOgq0+nbYJCGO
	SIQAwP2HC7KbPw3m47OdbkPA1IWO33ravnM6KSGJk6hVxH8AV4amYso/oT19cTaICb6UyXI/q+miO
	qqduoS9e+uE2YYRgccXHAT6+Zxy0FyQSPLqgpcS9lvy4MtQYFakxI7YrsqkrHzdjSJZLYhl+ruBkV
	CQ3lB/djFRpsjB+RCSsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxNj-006RDy-0d;
	Tue, 16 May 2023 16:18:35 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxNf-006RCm-13;
	Tue, 16 May 2023 16:18:32 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.207])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4QLLx43hgVz6D8WK;
	Wed, 17 May 2023 00:17:28 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Tue, 16 May
 2023 17:18:27 +0100
Date: Tue, 16 May 2023 17:18:27 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: <linux-rockchip@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>, MyungJoo Ham
	<myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>, Mark Rutland
	<mark.rutland@arm.com>, <kernel@pengutronix.de>, Michael Riesch
	<michael.riesch@wolfvision.net>
Subject: Re: [PATCH v4 16/21] PM / devfreq: rockchip-dfi: make register
 stride SoC specific
Message-ID: <20230516171827.000075de@Huawei.com>
In-Reply-To: <20230505113856.463650-17-s.hauer@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
	<20230505113856.463650-17-s.hauer@pengutronix.de>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500006.china.huawei.com (7.191.161.198) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_091831_506274_A618ABB4 
X-CRM114-Status: GOOD (  16.40  )
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

On Fri,  5 May 2023 13:38:51 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> The currently supported RK3399 has a stride of 20 between the channel
> specific registers. Upcoming RK3588 has a different stride, so put
> the stride into driver data to make it configurable.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
LGTM though the flip from decimal to hex is a little odd. Which
makes sense probably depends on what the datasheet uses...

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 400b1b360e3c9..3d76e58c602b2 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -100,6 +100,7 @@ struct rockchip_dfi {
>  	int active_events;
>  	int burst_len;
>  	int buswidth[DMC_MAX_CHANNELS];
> +	int ddrmon_stride;
>  };
>  
>  static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
> @@ -176,13 +177,13 @@ static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_coun
>  		if (!(dfi->channel_mask & BIT(i)))
>  			continue;
>  		count->c[i].read_access = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_RD_NUM + i * 20);
> +				DDRMON_CH0_RD_NUM + i * dfi->ddrmon_stride);
>  		count->c[i].write_access = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_WR_NUM + i * 20);
> +				DDRMON_CH0_WR_NUM + i * dfi->ddrmon_stride);
>  		count->c[i].access = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
> +				DDRMON_CH0_DFI_ACCESS_NUM + i * dfi->ddrmon_stride);
>  		count->c[i].total = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_COUNT_NUM + i * 20);
> +				DDRMON_CH0_COUNT_NUM + i * dfi->ddrmon_stride);
>  	}
>  }
>  
> @@ -567,6 +568,8 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
>  	dfi->buswidth[0] = FIELD_GET(RK3399_PMUGRF_OS_REG2_BW_CH0, val) == 0 ? 4 : 2;
>  	dfi->buswidth[1] = FIELD_GET(RK3399_PMUGRF_OS_REG2_BW_CH1, val) == 0 ? 4 : 2;
>  
> +	dfi->ddrmon_stride = 0x14;
> +
>  	return 0;
>  };
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
