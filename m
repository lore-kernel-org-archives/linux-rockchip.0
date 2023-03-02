Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D90CC6FA8E
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Mar 2023 06:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPdvbr8HVVpfQUBLnkABuZVF4o2iZSwRBOCKn8zZlE8=; b=4CMXj1kNcaOXlj
	JVVQmKQ6DkItjuyzLorSOqKOrsUXbs7Z5O7cDIiwb4rQ2dRJkme54UxLp94w3zW6DMygWYf8dPaKF
	2PlDoOUimLhpsv69t9k0AjJHCp8hxu+lIWIbx+RbtI4+ZBzaQk290Q0Jdep6aTIAyhUNMRDlbqD93
	928MG7ZqWr1f0fYezilLZNQS6vj0waX9oq1oCG1E5k8k+iIx1W1i1zuZWdAIaZ7pqadS9Nk9RefiG
	2YK6qwlFBelgs6FplwGf3c/us4CiaO4far3r/ihDPN5V7LQxf5M/bmqakcai5D32X69Ll5krdhA0t
	/frjcjT503X9EcJe0wUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXca9-0012Dl-25; Thu, 02 Mar 2023 06:38:25 +0000
Received: from mail-m11874.qiye.163.com ([115.236.118.74])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXcZy-00129c-H4; Thu, 02 Mar 2023 06:38:16 +0000
Received: from [172.16.12.93] (unknown [58.22.7.114])
	by mail-m11874.qiye.163.com (Hmail) with ESMTPA id 2E07B3C01E4;
	Thu,  2 Mar 2023 14:38:11 +0800 (CST)
Message-ID: <6eff30d4-aad3-33e7-49ff-707bca1bda11@rock-chips.com>
Date: Thu, 2 Mar 2023 14:38:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 5/8] arm64: dts: rockchip: add gpio-ranges property to
 gpio nodes
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, sjg@chromium.org, philipp.tomsich@vrull.eu,
 john@metanate.com, quentin.schulz@theobroma-systems.com
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
 <845d82ef-bd36-cc95-dde8-48429597d51b@gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <845d82ef-bd36-cc95-dde8-48429597d51b@gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh9KSlZJSE4ZSB8fSRhNH0pVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSkpLSEpMVUpLS1VLWQ
	Y+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MBw6Tgw5Nz0KHEJIIhwzFitC
	Ag1PCQ1VSlVKTUxMTEhCS0JJSUJDVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKS01CTTcG
X-HM-Tid: 0a86a10ae73c2eb0kusn2e07b3c01e4
X-HM-MType: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230301_223814_915766_F5FA412B 
X-CRM114-Status: GOOD (  12.76  )
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


On 2023/1/21 19:09, Johan Jonker wrote:
> Add a gpio-ranges property to Rockchip gpio nodes to be
> independent from aliases and probe order for our bank id.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Looks good to me, GPIO controller has 32 pin each bank, even if there 
may have some empty bits.

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>


Thanks,
- Kever
> ---
>
> Number of pins per bank not checked with datasheet.
> Use default 32 for now.
> ---
>   arch/arm64/boot/dts/rockchip/px30.dtsi   | 4 ++++
>   arch/arm64/boot/dts/rockchip/rk3308.dtsi | 5 +++++
>   arch/arm64/boot/dts/rockchip/rk3328.dtsi | 4 ++++
>   arch/arm64/boot/dts/rockchip/rk3368.dtsi | 4 ++++
>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 5 +++++
>   arch/arm64/boot/dts/rockchip/rk356x.dtsi | 5 +++++
>   6 files changed, 27 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index 4f6959eb5..9fcc0d0f3 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -1387,6 +1387,7 @@
>   			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
>   			clocks = <&pmucru PCLK_GPIO0_PMU>;
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 0 32>;
>   			#gpio-cells = <2>;
>
>   			interrupt-controller;
> @@ -1399,6 +1400,7 @@
>   			interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
>   			clocks = <&cru PCLK_GPIO1>;
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 32 32>;
>   			#gpio-cells = <2>;
>
>   			interrupt-controller;
> @@ -1411,6 +1413,7 @@
>   			interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
>   			clocks = <&cru PCLK_GPIO2>;
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 64 32>;
>   			#gpio-cells = <2>;
>
>   			interrupt-controller;
> @@ -1423,6 +1426,7 @@
>   			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
>   			clocks = <&cru PCLK_GPIO3>;
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 96 32>;
>   			#gpio-cells = <2>;
>
>   			interrupt-controller;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> index dd228a256..38976f413 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> @@ -798,6 +798,7 @@
>   			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
>   			clocks = <&cru PCLK_GPIO0>;
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 0 32>;
>   			#gpio-cells = <2>;
>   			interrupt-controller;
>   			#interrupt-cells = <2>;
> @@ -809,6 +810,7 @@
>   			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
>   			clocks = <&cru PCLK_GPIO1>;
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 32 32>;
>   			#gpio-cells = <2>;
>   			interrupt-controller;
>   			#interrupt-cells = <2>;
> @@ -820,6 +822,7 @@
>   			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
>   			clocks = <&cru PCLK_GPIO2>;
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 64 32>;
>   			#gpio-cells = <2>;
>   			interrupt-controller;
>   			#interrupt-cells = <2>;
> @@ -831,6 +834,7 @@
>   			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
>   			clocks = <&cru PCLK_GPIO3>;
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 96 32>;
>   			#gpio-cells = <2>;
>   			interrupt-controller;
>   			#interrupt-cells = <2>;
> @@ -842,6 +846,7 @@
>   			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
>   			clocks = <&cru PCLK_GPIO4>;
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 128 32>;
>   			#gpio-cells = <2>;
>   			interrupt-controller;
>   			#interrupt-cells = <2>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index 6d7a7bf72..7ba695728 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -1051,6 +1051,7 @@
>   			clocks = <&cru PCLK_GPIO0>;
>
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 0 32>;
>   			#gpio-cells = <2>;
>
>   			interrupt-controller;
> @@ -1064,6 +1065,7 @@
>   			clocks = <&cru PCLK_GPIO1>;
>
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 32 32>;
>   			#gpio-cells = <2>;
>
>   			interrupt-controller;
> @@ -1077,6 +1079,7 @@
>   			clocks = <&cru PCLK_GPIO2>;
>
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 64 32>;
>   			#gpio-cells = <2>;
>
>   			interrupt-controller;
> @@ -1090,6 +1093,7 @@
>   			clocks = <&cru PCLK_GPIO3>;
>
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 96 32>;
>   			#gpio-cells = <2>;
>
>   			interrupt-controller;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> index a4c5aaf1f..5a008ed18 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> @@ -984,6 +984,7 @@
>   			interrupts = <GIC_SPI 0x51 IRQ_TYPE_LEVEL_HIGH>;
>
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 0 32>;
>   			#gpio-cells = <0x2>;
>
>   			interrupt-controller;
> @@ -997,6 +998,7 @@
>   			interrupts = <GIC_SPI 0x52 IRQ_TYPE_LEVEL_HIGH>;
>
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 32 32>;
>   			#gpio-cells = <0x2>;
>
>   			interrupt-controller;
> @@ -1010,6 +1012,7 @@
>   			interrupts = <GIC_SPI 0x53 IRQ_TYPE_LEVEL_HIGH>;
>
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 64 32>;
>   			#gpio-cells = <0x2>;
>
>   			interrupt-controller;
> @@ -1023,6 +1026,7 @@
>   			interrupts = <GIC_SPI 0x54 IRQ_TYPE_LEVEL_HIGH>;
>
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 96 32>;
>   			#gpio-cells = <0x2>;
>
>   			interrupt-controller;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 1881b4b71..7eb96fcc6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -2091,6 +2091,7 @@
>   			interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH 0>;
>
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 0 32>;
>   			#gpio-cells = <0x2>;
>
>   			interrupt-controller;
> @@ -2104,6 +2105,7 @@
>   			interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH 0>;
>
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 32 32>;
>   			#gpio-cells = <0x2>;
>
>   			interrupt-controller;
> @@ -2117,6 +2119,7 @@
>   			interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH 0>;
>
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 64 32>;
>   			#gpio-cells = <0x2>;
>
>   			interrupt-controller;
> @@ -2130,6 +2133,7 @@
>   			interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH 0>;
>
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 96 32>;
>   			#gpio-cells = <0x2>;
>
>   			interrupt-controller;
> @@ -2143,6 +2147,7 @@
>   			interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH 0>;
>
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 128 32>;
>   			#gpio-cells = <0x2>;
>
>   			interrupt-controller;
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index eed0059a6..870b4d9c6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -1808,6 +1808,7 @@
>   			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
>   			clocks = <&pmucru PCLK_GPIO0>, <&pmucru DBCLK_GPIO0>;
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 0 32>;
>   			#gpio-cells = <2>;
>   			interrupt-controller;
>   			#interrupt-cells = <2>;
> @@ -1819,6 +1820,7 @@
>   			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
>   			clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 32 32>;
>   			#gpio-cells = <2>;
>   			interrupt-controller;
>   			#interrupt-cells = <2>;
> @@ -1830,6 +1832,7 @@
>   			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
>   			clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 64 32>;
>   			#gpio-cells = <2>;
>   			interrupt-controller;
>   			#interrupt-cells = <2>;
> @@ -1841,6 +1844,7 @@
>   			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
>   			clocks = <&cru PCLK_GPIO3>, <&cru DBCLK_GPIO3>;
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 96 32>;
>   			#gpio-cells = <2>;
>   			interrupt-controller;
>   			#interrupt-cells = <2>;
> @@ -1852,6 +1856,7 @@
>   			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
>   			clocks = <&cru PCLK_GPIO4>, <&cru DBCLK_GPIO4>;
>   			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 128 32>;
>   			#gpio-cells = <2>;
>   			interrupt-controller;
>   			#interrupt-cells = <2>;
> --
> 2.20.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
