Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B499CCCFA1A
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 03:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a4gTwLTfJOQptyK1/HUKrvVChlyOafajLlZX4NfbN4c=; b=5E2Bgh9IeFu5k7
	nDP7JwDpPl12nho9i30wW+u05Nf0uILqAgF/YQYGMUM20bgkejh8dtNhCy9YLEB5VYYlumqA0tjal
	4b5fBfOaX/WKnmVFgDI1JCmoE727sg1QXNsyaW3D0g2A+8DXmcJoy0b6sNGK8Lc0mb3ItMhWKxrPT
	uQAXBe3zJV57Je4n2MrgZPYA7nq2EwRq6LmeWtU0wjMirklgyBvZ6Dd7VDy8OO7hd5K8+j6pNJhsz
	LNOC1qcDz1/Mj6uf9ZzylOIocgJn9xNTie0e9G9NsP13oUlr9NOuE4HrIuxYgAZPiMqM77jzP28DC
	zrqjDhkuG04df+bFv1bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIIPf-00000004eZb-2LFm;
	Mon, 10 Nov 2025 03:17:51 +0000
Received: from smtpbgeu1.qq.com ([52.59.177.22])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIIPZ-00000004eYW-1NfW
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 03:17:50 +0000
X-QQ-mid: zesmtpip4t1762744600tf9445d23
X-QQ-Originating-IP: owwxmhWvzJquoC49KOn5l2eFLSs+hUY9atpzzmoUgXY=
Received: from [IPV6:240f:10b:7440:1:64e0:6ba: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 10 Nov 2025 11:16:37 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3529179017162153807
Message-ID: <EECF7629320EEEDD+03c6ee06-4351-4150-b1b0-957d5cfc3d6d@radxa.com>
Date: Mon, 10 Nov 2025 12:16:37 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] arm64: dts: rockchip: Fix microSD card detect for
 Radxa ROCK 5 ITX
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
 sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251110030036.825150-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251110030036.825150-1-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NVi1BXwuV7vtBTLC6JjhUreukwj5nwuxZol9+vinZQp6xdCMAUMprU7Y
	mqpN1mVPfLJGWQytXMP1S+kaprtOGXwEYvhQdeaGlmqDBNNootNnGc6vboga1vg4EM3wrrD
	FxoscpePkG/bCvZR2GWnCgBCPY+9zgP5u8sz9SxheXjn18dbsAqxlaWIQsl0NDilmqvYqto
	Bs+TQuSOWuNRIxmxEXZrfnW6SQHMgCRfGBM+wVw4tX8ZDas9ZsIJM1wicjhZJwJeE5lbWWd
	yOax5P6Y7WeJzOZLvWChORIbMS0mI/8xoyp1QaVyvtMfH58vNN/9X+c1S8YDCpbI7eiZwCz
	WOziOVxrcwEqO7LsL5CWJIPMm15xwdRktR6yN0bcbUS2MZj0fnfaAth4kJWvM24OxBfpvWq
	d9T0Yedvy+jpWHjh6Ikwb55MLdbnCqFvR6q8s7j3FXeQyYYuiXeDR4XvIiuO0sCFUHNKUgw
	d1F2Spyvza24bxTNy02hmgL1qhReSTGfBS1wC7RYSDaqOhhXT183dEJoEIEb7dSr3FyedM3
	ebMZcg817Us8+DwAQpq/EQ+xdGVSFhCefddnjX9XDBA2DKaGWC9C0wdy7bmleSYxLnXqIaY
	mEw02gejS8/LQrl6FeRb8Cd23VvB2V58Z5jw3LsRHXhRRngvyViJDdfbhTRVhWZITTjoREw
	h7/CaepoB3fePG4fRskl48aJTHcKMSRFl6euGASp/DaHH8XepCNIvX0mA6IEA/EF6nU/EK/
	hHyYVsU2TpHDeXywRvGMUfRNVIsBBK5qphI9KQVqt2H1iF+AgN6tdAHNTdOvI3vUL5iTL3m
	l3n0zOEtUtVE7m6/V/z4lnlJa9J4Vgz/RrIAjueofA3r7BnJDpCirjrzBdilq65BrXUKJUl
	9SUG1l9wa8qzX/hkNUjjb/nPSva9MclIuA4fJAIrh/9RqMUzGOZIX6+Gkfj9ITivp1aO/3M
	38SQIOgsOtTxgk2KRTz3gPIKw9DuqD682o/O6xz9S/NVkiPObWv9QLM59
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_191745_912394_0FF05068 
X-CRM114-Status: GOOD (  11.78  )
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

On 11/10/25 12:00, FUKAUMI Naoki wrote:
> Due to the discussion about cd-gpios and sdmmmc_det pin
> functionality[1], it would be better to use cd-gpios for now.
> 
> [1] https://lore.kernel.org/linux-rockchip/20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid/T/#u
> 
> Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> index bc8140883de47..391c6482e8ee3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> @@ -670,6 +670,12 @@ led_pins: led-pins {
>   		};
>   	};
>   
> +	mmc {
> +		sdmmc_det_gpio: sdmmc-det-gpio {
> +			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +

I got following error:

$ make CHECK_DTBS=y rockchip/rk3588-rock-5-itx.dtb
   UPD     include/config/kernel.release
   DTC [C] arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dtb
/home/radxa/linux/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dtb: 
mmc: sdmmc-det-gpio: {'rockchip,pins': [[0, 4, 0, 270]], 'phandle': 145} 
is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#

What's wrong?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>   	pcie {
>   		pcie20x1_2_perstn: pcie20x1-2-perstn {
>   			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
> @@ -795,12 +801,13 @@ &sdmmc {
>   	bus-width = <4>;
>   	cap-mmc-highspeed;
>   	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>   	disable-wp;
>   	max-frequency = <200000000>;
>   	no-sdio;
>   	no-mmc;
>   	pinctrl-names = "default";
> -	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det>;
> +	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det_gpio>;
>   	sd-uhs-sdr104;
>   	vmmc-supply = <&vcc_3v3_s3>;
>   	vqmmc-supply = <&vccio_sd_s0>;



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
