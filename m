Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05E95C6FA8F
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Aug 2023 18:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3rfdCMm2b0ByKrFPN6FeSQr4cEPtz8a6TNdieqZ7KuA=; b=hVzAE0q4xvwhfe
	3JFTGBGlNCjqTUXmeLqmFB4De6by9l6oi8orFI3gFw/1+WPwNN0OyGfWGkTTvHcrqRtwLWAk72FUW
	Ftwn0BlF+6oW067tyvgTotg7/gRJhUZDD4oxRaa1qBJlXxjPFF1aYVRJF+CTae0b/fTlZX2doN14O
	PP3LF/M3gu5ZIRgaHhUW4Xm8tRE/e6DIk4Tw4Zpc24yXyX2V7QRiiFurJ9ILJurgQ/JF6CJsDVWRu
	AX3tDdW1gEXIncaMYeYs7Sfacp9tga5w3fbY5NiXY7RjMcoTYmJ0pYS7FeiuZdvIsLexpJue1ij8X
	1lIUtWhHAjx73ACSiUXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbPl4-00DxVC-0y;
	Wed, 30 Aug 2023 18:17:38 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbPl0-00DxUL-0X;
	Wed, 30 Aug 2023 18:17:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C26722F4;
	Wed, 30 Aug 2023 11:18:07 -0700 (PDT)
Received: from [10.57.4.99] (unknown [10.57.4.99])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D1A3C3F64C;
	Wed, 30 Aug 2023 11:17:26 -0700 (PDT)
Message-ID: <101f3b88-7151-af5c-3bd4-feb13763228b@arm.com>
Date: Wed, 30 Aug 2023 19:17:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 5/5] ARM: dts: rockchip: Disable non-required timers
 for RK3128
Content-Language: en-GB
To: Alex Bee <knaerzche@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230829203721.281455-4-knaerzche@gmail.com>
 <20230829203721.281455-14-knaerzche@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20230829203721.281455-14-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_111734_252281_2A70B843 
X-CRM114-Status: GOOD (  18.30  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2023-08-29 21:37, Alex Bee wrote:
> The Rockchip timer linux driver can handle a maximum of 2 timers and will
> get confused if more of them exist.

Wouldn't it be better to fix that? It looks trivial to do, and frankly 
it's a behaviour that doesn't make sense anyway. Of course a system can 
have more hardware available than Linux wants to use; that's not an 
error, it's just Linux's choice to not use it! See commit a98399cbc1e0 
("clocksource/drivers/sp804: Avoid error on multiple instances") for 
example.

DTs shouldn't be treated like Linux board files, so curating them around 
Linux-specific driver behaviour is inappropriate; FreeBSD or U-Boot or 
whatever are perfectly entitled to make use of 5 timers at once if they can.

Thanks,
Robin.

> RK3128 only needs timer0, timer1 and timer5. The latter is the source
> for the arm-timer and it's clock is prevented from being disabled in the
> clock driver so it can get disabled in the device tree, too.
> 
> Fixes: a0201bff6259 ("ARM: dts: rockchip: add rk3128 soc dtsi")
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>   arch/arm/boot/dts/rockchip/rk3128.dtsi | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
> index 88a4b0d6d928..f3f0788195d2 100644
> --- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
> @@ -252,6 +252,7 @@ timer2: timer@20044040 {
>   		interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
>   		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER2>;
>   		clock-names = "pclk", "timer";
> +		status = "disabled";
>   	};
>   
>   	timer3: timer@20044060 {
> @@ -260,6 +261,7 @@ timer3: timer@20044060 {
>   		interrupts = <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
>   		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER3>;
>   		clock-names = "pclk", "timer";
> +		status = "disabled";
>   	};
>   
>   	timer4: timer@20044080 {
> @@ -268,6 +270,7 @@ timer4: timer@20044080 {
>   		interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
>   		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER4>;
>   		clock-names = "pclk", "timer";
> +		status = "disabled";
>   	};
>   
>   	timer5: timer@200440a0 {
> @@ -276,6 +279,7 @@ timer5: timer@200440a0 {
>   		interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
>   		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER5>;
>   		clock-names = "pclk", "timer";
> +		status = "disabled";
>   	};
>   
>   	watchdog: watchdog@2004c000 {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
