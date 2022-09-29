Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F228C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Sep 2022 15:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2An57fuzo4B7E4lLAybXoU8x1luS6LuQ0udOvb96+7c=; b=D8Q/Zceu4MSnNR
	sDZ2fAnItVdrSqU4rTCw/t2wv5Bokxs7hZQl0wQuTj7gbLhOIglZmUwWM+wxU7mZGEA0hULZx8NZC
	jsLEaGRj93y4G1YeM9MOuxrIdrIZRv61DRnV2LU2vStB7x/wuTS9HfF0H1+r72+7UA+3DnBoYCauy
	aetjYg44eRDRxwOQXHHKIPFgqfbLlgPGeabkTbYBYeD1x7nPDgcwmX/m2xujOsi0pso7hjd0ZZ1ir
	KXiv6rAGLyffzyAoe/D2jq5hwHk5A12tQWwIOednxt0YGpD7w0LoIGZX+GyL0Uy+RnoX3ka7Bj2E/
	Zu51Wtfdb1D+Vd7uQkdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odvoV-003yMp-Th; Thu, 29 Sep 2022 15:51:03 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odvoK-003yJL-MZ; Thu, 29 Sep 2022 15:50:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BCBFE15BF;
	Thu, 29 Sep 2022 08:50:54 -0700 (PDT)
Received: from [10.57.65.170] (unknown [10.57.65.170])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CEE953F792;
	Thu, 29 Sep 2022 08:50:44 -0700 (PDT)
Message-ID: <7ae39c9c-8424-8b65-ac09-c0e87f3b0f01@arm.com>
Date: Thu, 29 Sep 2022 16:50:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [RFC PATCH v1 2/2] ARM: dts: rk3288: add the interrupts property
 for PWM
Content-Language: en-GB
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 sebastian.reichel@collabora.com, wxt@rock-chips.com,
 kever.yang@rock-chips.com, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <6eba6c10-9c96-b40f-937a-e02d43b04cd7@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <6eba6c10-9c96-b40f-937a-e02d43b04cd7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_085052_859507_6B703ACC 
X-CRM114-Status: GOOD (  17.81  )
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

On 2022-09-29 15:04, Johan Jonker wrote:
> The Rockchip rk3288 SoC has 4-built-in PWM channels.
> 
> Configurable to operate in capture mode.
> Measures the high/low polarity effective cycles of this input waveform
> Generates a single interrupt at the transition of input waveform polarity
> 
> Configurable to operate in continuous mode or one-shot mode.
> One-shot operation will produce N + 1 periods of the waveform,
> where N is the repeat counter value, and generates a single interrupt at
> the end of operation.
> Continuous mode generates the waveform continuously and
> do not generates any interrupts.
> 
> Add interrupts property to rk3288 PWM nodes.

As far as I can make out from the TRM, these are only valid when 
GRF_SOC_CON2[0] = 0, otherwise it's in "new" RK_PWM mode using SPI 78 
for all channels. Which apparently will be the case for anyone using 
upstream U-Boot:

https://source.denx.de/u-boot/u-boot/-/blob/master/arch/arm/mach-rockchip/rk3288/rk3288.c#L83

Thanks,
Robin.

> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> 
> ---
> 
> Original patch location:
>    ARM: dts: rk3288: add the interrupts property for PWM
>    https://github.com/rockchip-linux/kernel/commit/16b7b284618d1652e694f6286f575ce82f5f03e5
> 
> ---
> 
> "rockchip,rk3288-pwm" is in use as fall back string for Rockchip SoCs with combined
> PWM interrupt.
> ---
>   arch/arm/boot/dts/rk3288.dtsi | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index 487b0e03d..1223aa369 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -675,6 +675,7 @@
>   	pwm0: pwm@ff680000 {
>   		compatible = "rockchip,rk3288-pwm";
>   		reg = <0x0 0xff680000 0x0 0x10>;
> +		interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
>   		#pwm-cells = <3>;
>   		pinctrl-names = "default";
>   		pinctrl-0 = <&pwm0_pin>;
> @@ -685,6 +686,7 @@
>   	pwm1: pwm@ff680010 {
>   		compatible = "rockchip,rk3288-pwm";
>   		reg = <0x0 0xff680010 0x0 0x10>;
> +		interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
>   		#pwm-cells = <3>;
>   		pinctrl-names = "default";
>   		pinctrl-0 = <&pwm1_pin>;
> @@ -695,6 +697,7 @@
>   	pwm2: pwm@ff680020 {
>   		compatible = "rockchip,rk3288-pwm";
>   		reg = <0x0 0xff680020 0x0 0x10>;
> +		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
>   		#pwm-cells = <3>;
>   		pinctrl-names = "default";
>   		pinctrl-0 = <&pwm2_pin>;
> @@ -705,6 +708,7 @@
>   	pwm3: pwm@ff680030 {
>   		compatible = "rockchip,rk3288-pwm";
>   		reg = <0x0 0xff680030 0x0 0x10>;
> +		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
>   		#pwm-cells = <3>;
>   		pinctrl-names = "default";
>   		pinctrl-0 = <&pwm3_pin>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
