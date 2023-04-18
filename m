Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CA44C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 11:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qjaK8Tpvxmpzu+7dbrccowodjEBaWj7H9FQiVTbzKRY=; b=21MWa0x0wpq+S2
	B4ZNLRu3N44l4dv8ABv1abBspm1WKl4U7WtOvC6Vu940Z0cP/9nxUcIQTsCP5EgvMjjpUOxx8aKyJ
	+BGqzkpBmxDUZ7ISkyFE7g4mbdOW9O/q2pk2rFYh/Fgs70uCua9gcfy2MCwNLiGgkDhGvaCLYHNHE
	jKOt9vuNpe81LCVXuHmf0+rrfEGbz5I4tnBeX+KGHgYxs76ydl/trEBHz1342jQ6h1BlDtBGHzf+m
	Qow7SIL8bV1S0Dm4HGCaC6pYcD4mU37C7k5ziB4HpSLYMkL6wQK9N6WFZ+iKFFD9QtXBmH1cPhgSf
	QZv4MAbl72W15mdJLhPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pojX7-001wob-1i;
	Tue, 18 Apr 2023 11:30:01 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pojX3-001wmj-2T;
	Tue, 18 Apr 2023 11:29:59 +0000
Received: by mail-ej1-x633.google.com with SMTP id dx24so28252972ejb.11;
        Tue, 18 Apr 2023 04:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681817393; x=1684409393;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zUjxC0HW0q5I55Ax2kRGx20p8+lDHCxMQJGu0kJowSw=;
        b=U0iCP8nOAVApaPEkGMtGpgndS6lVxObOT5lefbgS6i07iCjKPsAtfi0yrtsLTFav7C
         dsYcDXIDHBHjLSwxkRnVns9jMC5mSyElI7ZZu8JIHF/v+r8F75GjSb/+BrBZC+ogAwgT
         +jNu5mJgctRSYIY3mL0mxn8TGFh6qQ9Tm8hnXSGaYyUpD2epJt+wqrqM2j7fFbnwe/dm
         PUkk3qgKtanqohQqh5BevHHP1jbw952C5P8+sTQruVtoSbQhITjeivDEXVs2fnYA+FZX
         6PUuJQfNVssCi+Nb99qx+S4Gt95d9RG5gp/MZNRRuzQLjZFAWMerIZfHXA4P1Fe3Higa
         a17w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681817393; x=1684409393;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zUjxC0HW0q5I55Ax2kRGx20p8+lDHCxMQJGu0kJowSw=;
        b=DjBFWfSqYrthQHXPpYGj/pK0a4KEpDYcbexgLvqhAeiFMACHRdHukol9zt7pjDOtA+
         BPC37WPPsa3JOsPKiBwwkobIbvwZLSO+1yadZrrRkEcTjP8LMuOV8KVk4FgMeh89PzMl
         oX3SIfWIFd8LcNMCUJWt2dhcXlMdqbSyHAasV+CrUStfSuGYYroYsiAySRrhs1UCKnN1
         dgbKHsRy+V3i+dr/C3CCvEhyBPAt7Kyr5c6cmWGgRYPTDSbF7YcYWH8r0bY+1Blv/tEY
         ilkRacvcaFbBVzYaAVp0csDN5dRgBsAEyzphn3Tv8pBeL3EhzPoyUQDyEC7y9kxwgWMi
         Y8Kg==
X-Gm-Message-State: AAQBX9eJ28FXuDjbvcWnZZS4TliGJH9S07TNG09d9N1G6+Jr/+jQ+b0W
	NbmpjWqGSG491VU5wb+TGZs=
X-Google-Smtp-Source: AKy350Z5PYIUr+24jeO+tsguwPxv00arJ5cPOm61+xLOM5UFxuNli8FAI+NRKMphOLz9QZFDv9jT/A==
X-Received: by 2002:a17:906:f107:b0:895:58be:957 with SMTP id gv7-20020a170906f10700b0089558be0957mr10433828ejb.2.1681817393267;
        Tue, 18 Apr 2023 04:29:53 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id c1-20020a17090603c100b00882f9130eafsm7799572eja.26.2023.04.18.04.29.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 04:29:52 -0700 (PDT)
Message-ID: <a8a9e82b-996e-2b0d-4e3b-9ceda0ab81e4@gmail.com>
Date: Tue, 18 Apr 2023 13:29:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add rk3588 timer
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20230418095344.274025-1-cristian.ciocaltea@collabora.com>
 <20230418095344.274025-4-cristian.ciocaltea@collabora.com>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20230418095344.274025-4-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_042957_802110_EA9F8604 
X-CRM114-Status: GOOD (  15.35  )
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



On 4/18/23 11:53, Cristian Ciocaltea wrote:
> Add DT node for Rockchip RK3588/RK3588S SoC timer.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 657c019d27fa..acd89a55374a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -1400,6 +1400,14 @@ i2c5: i2c@fead0000 {
>  		status = "disabled";
>  	};
>  

> +	rktimer: timer@feae0000 {

There are multiple timers.
Use a label in line with the TRM.
Maybe change your label to "timer0" in that trend?

> +		compatible = "rockchip,rk3588-timer", "rockchip,rk3288-timer";
> +		reg = <0x0 0xfeae0000 0x0 0x20>;

> +		clocks = <&cru PCLK_BUSTIMER0>, <&cru CLK_BUSTIMER0>;
> +		clock-names = "pclk", "timer";
> +		interrupts = <GIC_SPI 289 IRQ_TYPE_LEVEL_HIGH 0>;

Heiko's sort rules:

compatible
reg
interrupts
[alphabetical]
status [if needed]

> +	};
> +
>  	wdt: watchdog@feaf0000 {
>  		compatible = "rockchip,rk3588-wdt", "snps,dw-wdt";
>  		reg = <0x0 0xfeaf0000 0x0 0x100>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
