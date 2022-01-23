Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 943B4C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jan 2022 15:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IgEKgMBW/wQb27XZLdw4Hxk0bw3OWVvoERIrHsygn3M=; b=gyVxt2VKUgI+Fg
	2bWi3OUd/GK0xFCaklhHW/vxyg6Um9riw2xoTMmZP2EaxrDBIqdDs0MdCJlQjB6oqkGSveE+qH8dX
	Pk91vF0rSuDj9D+t+5bW3VSa2yDq5opb7tfuIDDBC2hldhmlTnwLevVuAmwsFgk6PmHUO6vPnwiZw
	rmb9gv4zi/B9I3A7/3oLjXKbh8VQfA6jgS7M43apBn3Sh/92/ptdO0AxIWHFbgCp7rPnijVOLB8tT
	pgE6Hizkd/wIuh6xo8yIUjRkQ6gGBOHWaOXus/bA/W1qawBr9E9XFhF/agwTEPnS7KjyYeZQ1gpSo
	swfUo5wFVnjU2AYYTk6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBeqd-00168N-SY; Sun, 23 Jan 2022 15:32:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBep4-0015Wy-SX; Sun, 23 Jan 2022 15:30:32 +0000
Received: from p508fcdea.dip0.t-ipconnect.de ([80.143.205.234]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nBep2-0005KV-40; Sun, 23 Jan 2022 16:30:28 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: enable the pine64 touch screen
 on rockpro64
Date: Sun, 23 Jan 2022 16:30:29 +0100
Message-ID: <5747938.922zgog0jt@phil>
In-Reply-To: <20220107051335.3812535-5-pgwipeout@gmail.com>
References: <20220107051335.3812535-1-pgwipeout@gmail.com>
 <20220107051335.3812535-5-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_073030_993290_EF596F20 
X-CRM114-Status: GOOD (  20.87  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Peter,

Am Freitag, 7. Januar 2022, 06:13:35 CET schrieb Peter Geis:
> Enable the touch screen, backlight, and dsi nodes for the Pine64 touch panel
> attached to the rockpro64.

can you please also include me in the other patches of the series?
I.e. they introduce a new property for the display, so it's nice to know
when they get applied.

While I do agree with patch 3/4, I'm hesistant about this one.
The display/touchscreen will probably not be connected on every rockpro64
so what happens if it doesn't?

I.e are there alternative uses for the affected pins, that may get fried
when this is always enabled?

So part of me would think that an dt-overlay enabling this might be the
nicer way to go?


Heiko


> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> index 158befb9a48c..f6c36fcd6db3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> @@ -26,7 +26,7 @@ backlight: backlight {
>  		pwms = <&pwm0 0 1000000 0>;
>  		brightness-levels = <0 4 8 16 32 64 128 255>;
>  		default-brightness-level = <5>;
> -		status = "disabled";
> +		status = "okay";
>  	};
>  
>  	clkin_gmac: external-gmac-clock {
> @@ -594,7 +594,7 @@ touch: touchscreen@5d {
>  		interrupts = <RK_PD5 IRQ_TYPE_EDGE_FALLING>;
>  		irq-gpios = <&gpio4 RK_PD5 GPIO_ACTIVE_HIGH>;
>  		reset-gpios = <&gpio4 RK_PD6 GPIO_ACTIVE_HIGH>;
> -		status = "disabled";
> +		status = "okay";
>  	};
>  };
>  
> @@ -633,7 +633,7 @@ &io_domains {
>  
>  /* enable for pine64 panel display support */
>  &mipi_dsi {
> -	status = "disabled";
> +	status = "okay";
>  	clock-master;
>  
>  	ports {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
