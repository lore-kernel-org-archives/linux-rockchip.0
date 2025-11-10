Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B24E8CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 07:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SwP+B3Lzrq8J7+g1GxjbRrKgG/fHF6bXTP252o86jUw=; b=Wcull9SG4nrHCt
	iUceDJa4yJ5LGroxUYh/HdQhlzgVC+EVzsrDFkW2HB1L0nIcn7uyZ8dl1MXc6ZxxjjHZQoQE0e6y3
	/5Q8pFP/ulVmLXwe8J9Oq+UvS6aRKu5IbQprulMYrF48dH1+jWVl7Uf9KB0PcTRPG4mnK8kqHUf60
	40Mr2aGKNnAAOjp+oGTDrRtbPqW/K20Ka7VoY4jjpPH7HG7JylOhVg6C4JOHL2SXl51wV4rY6ud8q
	qR3MameGHt1xm7xUnTu28ip5AUcxWXBrDh2/vIpqXUWa0KhgsuWySjRDpOUywjt6f9zZkOfWfimpQ
	7SPBHQ34hPyicryj39fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIMDq-00000004tKG-3uc2;
	Mon, 10 Nov 2025 07:21:54 +0000
Received: from smtpbg151.qq.com ([18.169.211.239])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIMDn-00000004tJD-3yUu
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 07:21:53 +0000
X-QQ-mid: zesmtpip3t1762759258t3733c2d8
X-QQ-Originating-IP: 5RQj6u7itzzYBGLyTFn3CtvI8oam3E+7Aeatxqe+KAI=
Received: from [IPV6:240f:10b:7440:1:64e0:6ba: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 10 Nov 2025 15:20:52 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2291220406888787485
EX-QQ-RecipientCnt: 25
Message-ID: <6A1E6DDCEB1C076D+69dd1564-cc49-4f61-9834-97e78dc5d793@radxa.com>
Date: Mon, 10 Nov 2025 16:20:52 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Turn all LEDs on at boot for Radxa
 boards
To: heiko@sntech.de
Cc: stephen@radxa.com, amadeus@jmu.edu.cn, dsimic@manjaro.org,
 ziyao@disroot.org, robh@kernel.org, sebastian.reichel@collabora.com,
 linux-rockchip@lists.infradead.org, pbrobinson@gmail.com,
 dmitry.osipenko@collabora.com, devicetree@vger.kernel.org,
 conor+dt@kernel.org, pgwipeout@gmail.com, jonas@kwiboo.se,
 kylepzak@projectinitiative.io, damon.ding@rock-chips.com, jbx6244@gmail.com,
 wens@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
 liujianfeng1994@gmail.com, detlev.casanova@collabora.com,
 didi.debian@cknow.org, andy.yan@rock-chips.com, krzk+dt@kernel.org,
 nicolas.frattaroli@collabora.com
References: <20251110022732.809145-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251110022732.809145-1-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: M83iEva+1QDBCaRTFio1q6/Kk+yCTL7GrW2mgSbD8D69+/B9Z/WjtmUY
	mxDr+i0Kxl5jN+pv0VoF/f2Uc7jg8VjLnXsto3/n2UmasYuLZbG7RuNFemj+V1UWjx0d8JD
	1ij2Gq5tsz4bIUfOzOiT2f+s+oyzhveNeNExBRZWGhtVp8xa/ufq34bsqpsp5plKFvTcPgl
	clk9iSC4910sHOSJ3pUstzMwRtfXqzazb329IL5aBP1vLFLKCnO2SL59QTKYcUXxtINKGu6
	Wa0+ZfuxZDV/aneX9FNLWTVFCsG+hPih/VjqaveY0QahhxiCifJOb0dWjPxCDQgIDTr2EIi
	9pL7TrF/WCppwaLFO9wmBaLGBf+yNNTQS1oI0CQiSXsx9b6e1MiHAzJoO7ybTSvGbdPmzjF
	EXClk8ObEQpodR17S30YHzYM5BmtniW+rdVzEGGyP4pjJT8bWEIaLThwVVUdjVqgvDof9Zr
	JZCKDOc1EG6Vov/0iJ8Dc1AHhFFX0ZbP4J8p0ELsGb2/kb8bcyOWVWp3gWVZeGYeCq3npZ7
	1mUd2ls78sjkQuBGygmc6mUj/pa5hZAUaFOOY9zFzwhkCuxeAlp9Cy4yy2cfPcQ0FSoF4FA
	p5HMFcARf/yK0TjMRWy6on0zqbE10MlEjCzTLbikf9+557amsu0oIIe/4+XU+qBw1LdrJkf
	hRpox1WVp6GMSwOqALydk8OE5g+Xi7ZczoCIGtaxp3WWg9TX2hLHHXwsndIaG/maGPLz+aY
	OOKhipTI/f7tuQQpuT8mCzoiosqZE4Pg0h0wa9vikThCQc5JSEGKqzT7ec9E5qSBw165DZh
	0bYxN5I/qGNjpd8KB+Bvv59kufN6bQo0sddHJ4YcD++3bCTAPUvzFi2F4ni6JUz09BTJZNa
	CVn+jZG6jmvhdC/1R6NsLb1DqVc+3PQ4iW8j4TTEcYzs2tJ93vgT/fpq9RugkKo8DaymnLK
	JCVsra4qNYezebqxNYkTa5eoW4lXqMhzP1O+TAE2qRk29qOHZyrWm7Dl2sQdfWlzz2uc=
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_232152_494031_1396A44F 
X-CRM114-Status: GOOD (  16.03  )
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

Hi,

On 11/10/25 11:27, FUKAUMI Naoki wrote:
> Radxa's boards turn all LEDs on at boot(loader), but some boards, e.g.
> ROCK Pi E don't have `default-state` property in Linux kernel tree but
> have it in U-Boot tree[1] instead.
> 
> This patch adds `default-state = "on"` for (almost) all LEDs (with a
> few exceptions which should be "off" such as RGB LEDs on E25 and LAN/
> WAN LEDs on E20C/E52C).
> 
> Also, remove following redundant properties:
>   linux,default-trigger = "default-on"; // use default-state = "on"
>   default-state = "off"; // default is "off"
> 
> [1] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3328-rock-pi-e-base-u-boot.dtsi#L11

I'll add the following as a reference:

https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3399-rock-4c-plus-u-boot.dtsi#L11-17
https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi#L11-13
https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3566-radxa-cm3-io-u-boot.dtsi#L10-12
https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3566-rock-3c-u-boot.dtsi#L14-16
https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3568-radxa-e25-u-boot.dtsi#L7-24
https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3568-rock-3a-u-boot.dtsi#L11-13
https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3588-rock-5b-u-boot.dtsi#L11-13
https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3588-rock-5b-u-boot.dtsi#L11-13

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts    | 1 -
>   arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts    | 1 +
>   arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 3 ++-
>   arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 1 +
>   arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts   | 2 --
>   arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts      | 1 -
>   arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 1 +
>   arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts      | 1 +
>   arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi  | 1 +
>   arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts      | 1 +
>   arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts      | 3 ++-
>   arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts   | 2 --
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts   | 3 ++-
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi     | 1 +
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts      | 1 +
>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 3 ++-
>   16 files changed, 16 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> index 7a32972bc2496..c1e3098b9a7bc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> @@ -35,7 +35,6 @@ green-led {
>   			function = LED_FUNCTION_POWER;
>   			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
>   			label = "rockpis:green:power";
> -			linux,default-trigger = "default-on";
>   		};
>   
>   		blue-led {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> index a4bdd87d0729f..d3d6f34b66fb0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> @@ -59,6 +59,7 @@ leds {
>   
>   		led-0 {
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
>   			linux,default-trigger = "heartbeat";
>   		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> index 962b8b231c960..a83ffbef22a7b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> @@ -39,14 +39,15 @@ leds {
>   		led-0 {
>   			function = LED_FUNCTION_POWER;
>   			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
>   			gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_LOW>;
> -			linux,default-trigger = "default-on";
>   		};
>   
>   		/* USER_LED2 */
>   		led-1 {
>   			function = LED_FUNCTION_STATUS;
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
>   			linux,default-trigger = "heartbeat";
>   		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> index 046dbe3290178..ef434c23fe85c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> @@ -35,6 +35,7 @@ leds {
>   		led-0 {
>   			function = LED_FUNCTION_STATUS;
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
>   			linux,default-trigger = "heartbeat";
>   		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> index b324527561558..79d316a1d8495 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> @@ -62,7 +62,6 @@ leds {
>   
>   		led-lan {
>   			color = <LED_COLOR_ID_GREEN>;
> -			default-state = "off";
>   			function = LED_FUNCTION_LAN;
>   			gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
>   			linux,default-trigger = "netdev";
> @@ -78,7 +77,6 @@ led-sys {
>   
>   		led-wan {
>   			color = <LED_COLOR_ID_GREEN>;
> -			default-state = "off";
>   			function = LED_FUNCTION_WAN;
>   			gpios = <&gpio4 RK_PC0 GPIO_ACTIVE_HIGH>;
>   			linux,default-trigger = "netdev";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts b/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts
> index c03ae1dd34560..0b696d49b71fa 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts
> @@ -45,7 +45,6 @@ led-1 {
>   		default-state = "on";
>   		function = LED_FUNCTION_STATUS;
>   		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
> -		linux,default-trigger = "default-on";
>   	};
>   };
>   
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
> index b5b253f04cdf5..9e7212b70e3f1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
> @@ -46,6 +46,7 @@ leds {
>   		led-1 {
>   			gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_LOW>;
>   			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
>   			function = LED_FUNCTION_ACTIVITY;
>   			linux,default-trigger = "heartbeat";
>   			pinctrl-names = "default";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> index 6224d72813e59..3ec108bcf89a1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> @@ -47,6 +47,7 @@ led-0 {
>   			gpios = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
>   			function = LED_FUNCTION_HEARTBEAT;
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			linux,default-trigger = "heartbeat";
>   			pinctrl-names = "default";
>   			pinctrl-0 = <&user_led2>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> index 729e38b9f620e..140582f8e1034 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> @@ -23,6 +23,7 @@ led_user: led-0 {
>   			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
>   			function = LED_FUNCTION_HEARTBEAT;
>   			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
>   			linux,default-trigger = "heartbeat";
>   			pinctrl-names = "default";
>   			pinctrl-0 = <&led_user_en>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index 44cfdfeed6681..e6c18df0fa582 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -47,6 +47,7 @@ led_user: led-0 {
>   			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
>   			function = LED_FUNCTION_HEARTBEAT;
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			linux,default-trigger = "heartbeat";
>   			pinctrl-names = "default";
>   			pinctrl-0 = <&led_user_en>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
> index 9bc33422ced50..99d3a8be8f18c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
> @@ -52,13 +52,14 @@ leds: leds {
>   
>   		power-led {
>   			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
>   			function = LED_FUNCTION_STATUS;
>   			gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger = "default-on";
>   		};
>   
>   		user-led {
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			function = LED_FUNCTION_HEARTBEAT;
>   			gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
>   			linux,default-trigger = "heartbeat";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> index 854c118418eb8..f737769d4a007 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> @@ -71,7 +71,6 @@ leds-1 {
>   
>   		led-1 {
>   			color = <LED_COLOR_ID_GREEN>;
> -			default-state = "off";
>   			function = LED_FUNCTION_LAN;
>   			linux,default-trigger = "netdev";
>   			pwms = <&pwm14 0 1000000 PWM_POLARITY_INVERTED>;
> @@ -80,7 +79,6 @@ led-1 {
>   
>   		led-2 {
>   			color = <LED_COLOR_ID_GREEN>;
> -			default-state = "off";
>   			function = LED_FUNCTION_WAN;
>   			linux,default-trigger = "netdev";
>   			pwms = <&pwm11 0 1000000 PWM_POLARITY_INVERTED>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> index bc8140883de47..86477346c3f5a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> @@ -88,11 +88,12 @@ gpio-leds {
>   		pinctrl-0 = <&led_pins>;
>   
>   		power-led1 {
> +			default-state = "on";
>   			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger = "default-on";
>   		};
>   
>   		hdd-led2 {
> +			default-state = "on";
>   			gpios = <&gpio0 RK_PC0 GPIO_ACTIVE_HIGH>;
>   			linux,default-trigger = "disk-activity";
>   		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi
> index e5c474e4d02a6..8c4a4270f9f93 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi
> @@ -30,6 +30,7 @@ leds {
>   		led_rgb_b {
>   			function = LED_FUNCTION_STATUS;
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
>   			linux,default-trigger = "heartbeat";
>   		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
> index 0dd90c744380b..87e9d4b86dad4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
> @@ -33,6 +33,7 @@ leds {
>   		led_rgb_b {
>   			function = LED_FUNCTION_STATUS;
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			gpios = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
>   			linux,default-trigger = "heartbeat";
>   		};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 19a08f7794e67..46c81e796b100 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -54,6 +54,7 @@ leds {
>   
>   		io-led {
>   			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
>   			function = LED_FUNCTION_STATUS;
>   			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
>   			linux,default-trigger = "heartbeat";
> @@ -61,9 +62,9 @@ io-led {
>   
>   		power-led {
>   			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
>   			function = LED_FUNCTION_POWER;
>   			gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger = "default-on";
>   		};
>   	};
>   


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
