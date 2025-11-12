Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8515ECCF9E3
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 15:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/yFpQ5r8SyfhE+vWdFiURvd67l/ixEfdGFoxAYdHBeo=; b=zTm+OcbYTcP6Qt
	6HrEeNufnLcji01J0VOGrdG1Npfvd7HktFs+E6bK4H/KpQUFSaXt5gGulUuuKcv2lrPbu+7/bEtcx
	cDW8QMSeZ7h8zFzrqX3J9hq2JHM9FvkLFzuxIZbmxzmceZRRh9bmNseqg1HuWHszHRw+2HMPKc84Y
	3RmNfqKObZEeTe7Uui3wKF+x/4R3Oj9DfiyPxhTuLWS2yqZcRNIStu1gFudEJ7wnJmg+r8YUEibJB
	4Svvy/EMxPRLwLjl1m4ZoMc9wCIh0pRHxjFewOD8HunJhJMPgpyWSJwqPptS6sZjJasJaPTWHL8V8
	hZ00l6CRxnDDKw8XhhNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJCPi-000000090uw-0oNR;
	Wed, 12 Nov 2025 15:05:38 +0000
Received: from smtpbgeu1.qq.com ([52.59.177.22])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJCPc-000000090qc-3Pxq
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Nov 2025 15:05:37 +0000
X-QQ-mid: zesmtpip2t1762959885t3ff03be6
X-QQ-Originating-IP: mJE4eEKySaLR+H/BYV/62eTPaxWQEYFOtnoj1F1NHTI=
Received: from [IPV6:240f:10b:7440:1:325d:36bf ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 12 Nov 2025 23:04:39 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16507840704419657484
EX-QQ-RecipientCnt: 23
Message-ID: <96E7FE4AEF8C8BB4+b7161fa3-d05c-4ee6-9d15-7583de0d9fdf@radxa.com>
Date: Thu, 13 Nov 2025 00:04:39 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: Turn all LEDs on at boot for
 Radxa boards
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jbx6244@gmail.com, dsimic@manjaro.org, pgwipeout@gmail.com,
 didi.debian@cknow.org, jonas@kwiboo.se, ziyao@disroot.org,
 amadeus@jmu.edu.cn, nicolas.frattaroli@collabora.com, pbrobinson@gmail.com,
 wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com,
 sebastian.reichel@collabora.com, liujianfeng1994@gmail.com,
 andy.yan@rock-chips.com, damon.ding@rock-chips.com,
 kylepzak@projectinitiative.io, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251111054112.55505-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251111054112.55505-1-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Mf2c2cXG8XEi6G977yD+J1TahKhHg8bLRGJ+F7G8rREGekN0GO4OSNSv
	Gt3Iddzea9Q1euiFoEMojl54ifcEOx/ucuDdR9p7INQQLx32F+1ImXHZMIQ3TmVIZP6Kg6U
	tbEosISZ81wTWB3QMhiR7qut+yIBPmeYEJW9kfVg+lUQgQ7UXrEAEqYVcywq8ogiEG+o/+D
	topwIJBzSjm1gtcUpvAiWtac/t+M5fX5pvInds7M5VVER+d6AUdxPgXBTnT2Y/HkQp2f7Pm
	SfCnddUwXBrVRCXk4Ye6jTjmqifxGP4YwVkjVt0OXg7c5/8uE4M12/DT8NKMOMM2YGoQKUB
	ICiemO3MenyQNP9WzQ9X/6W0iLaXumidq3jBa3HLlI8oxAVYyrZWVI4E16nalCQk+iuv2Qj
	Kd/5jnyXwa6o+UU8RugH/C5AHWSlwlgRgsN+5dSilLsMnwucbZ9fgpjgH8+8GR0kUvxVsWo
	/U1YhGBzm1neY9vcDvjrI7MgdsSalrVoqDxdKJ/GRnIY7i0J0oCpW10J1pE9pzeWz4ekEfm
	wunG+cnKSnxy7yaQbiW8TwDjO5mKYdEZ0q/Xlv3/xlBwJYOTVNWsR22bTFov8fVZyh85LGi
	LkA3FG6tSt0t89pJFT4X04CxMidEktjVO7Ma8C3FNTQybR2QmTXguRoAZiSS26TkQVCW8XC
	E1vikLHs+l6AhorJbp60KqJqQ5PA7ooZmDr53XI6jeL2Wra5J7GX1iNrndN4Pk/Lxlh0Kps
	Cn5l+ervIuO9lh94oIqv1dyH66Q3ScnQjEnAsyWEVH0shb+0Nu2mgBrFfZGxUX9/atsfui8
	bQY8MAKH6z4KvKTJ7nUpjl408xYsEN93XkviQlkPnZHYSY4ffyCpelJdXindTY9u6rZM8Tt
	1MT/ds1Bl1rwnbW2r6M/x3Tk0yyABNkB3szZvVirLL7WvkHmnUTjLFb8hIdDdBO87klLCbK
	CAizmMNnn/O4fZ4EaA8GQ+vE38UWy92QGNUvkfakrjGHuMEZUOraxRdd1uPKuBC7sN90Nu0
	63Njl/nCdTOBhjhQKTVgO0QGdrvSU=
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_070533_336290_749562FC 
X-CRM114-Status: GOOD (  19.63  )
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

Hi all,

How about this?

----
Subject: Consolidates and clarifies LED device tree descriptions on 
Radxa boards

Currently, on Radxa boards, the power LED is turned on immediately after 
power-up, independent of software control. The heartbeat LED and other 
available LEDs are subsequently turned on by the initial software, such 
as U-Boot, to indicate software is running.

However, the device tree description for this behavior is inconsistent 
and fragmented, with definitions split between the main Linux DTS files 
and separate U-Boot files (u-boot/arch/arm/dts/*-u-boot.dtsi).

This patch series addresses this inconsistency and fragmentation by 
consolidating the description within the upstream device tree, thereby 
improving overall clarity.

Patch 1 addresses the inconsistency for the power LED by using 
default-state = "on" instead of linux,default-trigger = "default-on".

Patch 2 addresses the fragmentation for the heartbeat LED by 
consolidating its default-state = "on" definition into the main Linux DTS.

Patch 3 addresses inconsistency by removing redundant default-state = 
"off" definitions, as this is already the default configuration. 
(Alternatively, the opposite could be done: explicitly adding 
default-state = "off" for other LEDs.)
----

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 11/11/25 14:41, FUKAUMI Naoki wrote:
> Radxa's boards turn all LEDs on at boot(loader), but some boards don't
> have `default-state` property in Linux kernel tree but have it in
> U-Boot tree instead[1].
> 
> This patch adds `default-state = "on"` for (almost) all LEDs (with a
> few exceptions which should be "off" such as RGB LEDs on E25 and LAN/
> WAN LEDs on E20C/E52C).
> 
> Also, remove following redundant properties:
>   linux,default-trigger = "default-on"; // use default-state = "on"
>   default-state = "off"; // default is "off"
> 
> [1]
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3328-rock-pi-e-base-u-boot.dtsi#L10-12
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3399-rock-4c-plus-u-boot.dtsi#L11-17
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi#L11-13
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3566-radxa-cm3-io-u-boot.dtsi#L10-12
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3566-rock-3c-u-boot.dtsi#L14-16
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3568-radxa-e25-u-boot.dtsi#L7-24
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3568-rock-3a-u-boot.dtsi#L11-13
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3588-rock-5b-u-boot.dtsi#L11-13
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3588s-rock-5a-u-boot.dtsi#L10-12
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v2:
> - Add more URLs for reference
> - Reword commit message
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
