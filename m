Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8300CCCFA1A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 11:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkKtm01HoIg2nJuaCTz4/+xAI/rXmQqtyX2oUMcMnTg=; b=TACa1Q7TYYOBzR
	GK90KtvFAaO0axik9+vd3ZtVy+BWsWxPx1H0oJNd/0/UX1OF8bjtob0z446LSvEQUtpdW6eIJuzji
	a3UgjmIetRbHkaQlWnEbbJxHl6eIeyDFvnantmRqC20M2u2VWkt5Ai99wYxubAkFToO/zvd5ZHuls
	s5e7ceLJ93VXqTOJvfRpXppI6v3kL3Z4k+f427oJLlUd7OdKCDorUz62OueWwAfWyGKzmIlukYiK8
	1UelsvfqjfDGz1wH5AcYmjgM9YnnJtDvFL8SFnDchUoVE3IYK7DhpGV+vdvcLoMM54q8+aayCwfET
	rVlGkBWXr1dcETkINJMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vImmy-000000076U1-03qU;
	Tue, 11 Nov 2025 11:43:56 +0000
Received: from smtpbg151.qq.com ([18.169.211.239])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vImmu-000000076Ri-32Fu
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 11:43:55 +0000
X-QQ-mid: zesmtpip4t1762861389t225b1ad2
X-QQ-Originating-IP: CnFKXworqreyPgjtRRUIGo1/7hlQ0Xqt6xU26RYKeDs=
Received: from [IPV6:240f:10b:7440:1:62e3:2c99 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 11 Nov 2025 19:43:06 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4623093854345164356
Message-ID: <FC06F2D88D1A6D6B+2515ff82-cd34-4f1d-8078-feb669912e41@radxa.com>
Date: Tue, 11 Nov 2025 20:43:05 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 04/14] arm64: dts: rockchip: Fix microSD card detect
 for Radxa ROCK 5C
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251109141859.206835-1-naoki@radxa.com>
 <20251109141859.206835-5-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251109141859.206835-5-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NPR7uEA6bBho2vyFxAH/44d4hURMFkoPr9g1+PLwALB+a7Ud/0lJRJx1
	NZwsWxLd892O/pChgcAklYB/010wj7p4lOmBZz6e+7cjV3dX7eVt5UJ8y11ygUlIwu1QpLU
	UTDMwGslSMcAU3PKx8SlP5XZGBPvRcRZPPh+UgUVkPoE9BApcom72HCBkm7aNfqIx+7BXWC
	KEEhSFCVJiv9Uzf+/fFf5v9FX3PWRTaOxaU/Y8Tc+aFQIGcqah3boThwqTnbZ5oQ/efRajH
	TMB32oMcG1cgz5/5ymdGTYbfcvV7Emyg/2V1+Ug6G8zU8x1Xgm3PzNbS2Tv4noLCkWdmEUd
	7NiI+eUL+AABv3a6LNx2aWhh1ald6aRPhiWpEIhzrzMjhAd/1YtGqLi67+EEZogM6KYfrAv
	SmUgUsytc8vn9hB/3qiqcUd2F8tVqvRts5gGUHH51KItF0VoT3OD8RKbNqwQhNHAOtyg9Fb
	gMgox5fnYDDHbROnFHGArz8hfL4fW7uMNFcLLhOmHhQgJcYfA4VGM0QbwMDeUSR0fyiHY5D
	gHv/Anaq9U1nLScK+b1knAlAfoaRdKOBComRf12BYpgJzxjA5rUGAS+5UX2grA5k2vjiOjE
	9TkaG1JtQEDYxpm3XgmlJ9h1o0yxuibkS04U/UfRHYB7RgFrAdOExnMqbkqXTlvGSwVBhBG
	h+6P1AzCfDquWWtQRQOptIav+mB1vW21Oe27uEzXGRuPmUs4XHq0PoDRlyCHFMmrnmXOvuX
	tjWk0/uSHxH065KLVbXEVornJgh3HwoTycKJkKd0h4szGGnNV2eHJcSqmck2JcbOXOkqGZT
	wSiOp9Jf5PWF+he7eVWJlS36hqOFlakgSa4/Z66B7Oz81+ATdfqk2lwN4cTJnWLo4JtzA0X
	jct/BSmu463nlUFlJhAcdO6p23v3T8mXtz/tqe8zNOmQSSTGzde+jwabKzgc0rA/ikZ6HHe
	OXNx22+SkMLTk+V4HEAR40TFw8OQvumoSM+zdKPqtJkLxxfM2j4U0FIpc
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_034353_698307_84FBFFB3 
X-CRM114-Status: GOOD (  11.99  )
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

I'll drop this on v8. This will be handled in
  https://lore.kernel.org/linux-rockchip/20251111071730.126238-1-naoki@radxa.com/

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 11/9/25 23:18, FUKAUMI Naoki wrote:
> Due to the discussion about cd-gpios and sdmmmc_det pin
> functionality[1], it would be better to use cd-gpios for now.
> 
> [1] https://lore.kernel.org/linux-rockchip/20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid/T/#u
> 
> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v7:
> - Add pinctrl-*
> - Reword commit message
> Changes in v6:
> - Reword commit message
> Changes in v5:
> - Reword commit message
> Changes in v4:
> - None
> Changes in v3:
> - None
> Changes in v2:
> - None
> ---
>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index 9a9430b2494b7..1257aaac8f350 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -510,9 +510,12 @@ &sdmmc {
>   	bus-width = <4>;
>   	cap-mmc-highspeed;
>   	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>   	disable-wp;
>   	no-sdio;
>   	no-mmc;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd>;
>   	sd-uhs-sdr104;
>   	vmmc-supply = <&vcc_3v3_s3>;
>   	vqmmc-supply = <&vccio_sd_s0>;



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
