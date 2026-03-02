Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67CD4EB363D
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Mar 2026 21:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+p0Sbm2BEOlsIzzlqqx4d3vCEgywG+PKsm3pcI63NI=; b=LYQknw0bFtFBHH
	BXROsoqES7gx2NDZ1t0fj8hcyUarUSfCGmDbVVLKB+Nle3U2ezL5Klt8YrYhbFssFq1SiN2eUr6s3
	nVjye32wpHXjwoM58zdCu6hmVyVc+XRwLvf8gpA+aMhZMQxcVIaLWXqsWl8ZY8AIzOOm0QIcs39t3
	I93Pmvjb5JD7hhtVMjLHoeG+hAdkTzHkQMR1L5eO6idbkvdntg3cws1Dm1FuZwfnZ60L3lCirOKvZ
	YXOAZT7aZqwtd/wUpt/YuP/QeiF/0yBzimlbpnVZDG388gps8/2iosT4IK+AVYJ/7/xdcL8mEY1Q8
	If2jmfrOayhC1UbKJCBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxBGJ-0000000E4CG-0e29;
	Mon, 02 Mar 2026 21:57:11 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxBGG-0000000E4Bp-1GVc
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Mar 2026 21:57:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1772488626;
 bh=OP9ybk+orz8SA4kEyEh+9E7911j3DQb5yf+d6l5ndHI=;
 b=dkQaAYfcc+QAvNajJb2DANd8JaUND+tAL5EfE49qJNjs6sbzVVxwa7khgKlZYWAJ5sKMK8xus
 U1jngg6ycYfhysT2Te09oVXCti53LuQUd/VHO6cqWaCGgQPGCvucJB/zquAVKgisENFiWfteG8V
 Kp0IFJUFAa6cK9PdoBerKpUq4tX3Dgt6H/A277aGLji4zw8CNkrYOAASwxbo1LSNAvt7ZTYBVDo
 GYzdjoxTgZY/bveizNNLVQMwbUblOafXs+qQCDccD2zTPJ5S/CI5EiUtNSq7LyHavy/aAXpSS4W
 JtuksTWJ4RJrN90vn3O1+2xq0OYflBCPebQGhjVUzRCw==
X-Forward-Email-ID: 69a607a900eccc184c5c9cd8
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.6.37
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <e439f2f7-0b25-41a5-951a-d8d3bc9f2bf2@kwiboo.se>
Date: Mon, 2 Mar 2026 22:56:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 1/2] arm64: dts: rockchip: rk3308: Add gpio-ranges
 properties
To: Matthijs Kooijman <matthijs@stdin.nl>
Cc: Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linusw@kernel.org>,
 Bartosz Golaszewski <brgl@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
References: <20260302202121.197288-1-matthijs@stdin.nl>
 <20260302202121.197288-3-matthijs@stdin.nl>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260302202121.197288-3-matthijs@stdin.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_135708_651545_9783F4B2 
X-CRM114-Status: GOOD (  16.38  )
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

Hi Matthijs,

On 3/2/2026 9:17 PM, Matthijs Kooijman wrote:
> This makes the mapping between gpio and pinctrl explicit.
> 
> This does not immediately change functionality, because the
> gpio-rockchip.c driver has a workaround that defines ranges when they
> are not present in DT, but that relies on global gpio numbering (so
> AFAICS only works when the rockchip gpio banks are initialized first and
> in-order).

This is strictly not correct, the driver use the gpioX alias id as
defined in the device tree and does not depend on the initialization
order.

This file explicitly define the aliases matching the hardware:

	aliases {
		gpio0 = &gpio0;
		gpio1 = &gpio1;
		gpio2 = &gpio2;
		gpio3 = &gpio3;
		gpio4 = &gpio4;
		[...]
	};

> 
> Signed-off-by: Matthijs Kooijman <matthijs@stdin.nl>
> ---
>  arch/arm64/boot/dts/rockchip/rk3308.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> index 31c25de2d689c..681d2429d541d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> @@ -889,6 +889,7 @@ gpio0: gpio@ff220000 {
>  			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&cru PCLK_GPIO0>;
>  			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 0 32>;

This matches the driver, but not the hardware according to datasheet, it
only lists gpio0 A0-C5 used, and not all 32 pins supported by the gpio0
controller.

>  			#gpio-cells = <2>;
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
> @@ -900,6 +901,7 @@ gpio1: gpio@ff230000 {
>  			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&cru PCLK_GPIO1>;
>  			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 32 32>;

Same here, the datasheet only lists gpio1 A0-D1 used, and not all 32
pins supported by the gpio1 controller.

>  			#gpio-cells = <2>;
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
> @@ -911,6 +913,7 @@ gpio2: gpio@ff240000 {
>  			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&cru PCLK_GPIO2>;
>  			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 64 32>;

Same here, the datasheet only lists gpio1 A0-C0 used, and not all 32
pins supported by the gpio2 controller.

>  			#gpio-cells = <2>;
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
> @@ -922,6 +925,7 @@ gpio3: gpio@ff250000 {
>  			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&cru PCLK_GPIO3>;
>  			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 96 32>;

Same here, the datasheet only lists gpio1 A0-B5 used, and not all 32
pins supported by the gpio3 controller.

>  			#gpio-cells = <2>;
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
> @@ -933,6 +937,7 @@ gpio4: gpio@ff260000 {
>  			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&cru PCLK_GPIO4>;
>  			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 128 32>;

Same here, the datasheet only lists gpio1 A0-C1 and D0-D7 used, and not
all 32 pins supported by the gpio4 controller.

Regards,
Jonas

>  			#gpio-cells = <2>;
>  			interrupt-controller;
>  			#interrupt-cells = <2>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
