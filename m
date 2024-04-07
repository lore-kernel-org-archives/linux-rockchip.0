Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F6D7CD11C2
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Apr 2024 17:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UkGHwa+5dYr6tFxiMsd5OW7XhzljcIpXK7P8PmpLK78=; b=uWeoajTDXgW6dcJn8aTuqNM1yU
	oah0T7MXfEPDzG0cRaXOsvzQc9+1j1MkVmQ+yvmTVHiirGaI9uABGExJ2SdPP8jGZbL9wNaCONC14
	NARtX0HnczmCzwkcHTWleRkkg2IoB/w2DK8hEhN1raLLk0fUijMGV3nzyq5uF+9PjP0KXwbgfQWbh
	rCbSN6mfipt8WWrnwG8OWYVmyeV5dwkUsM3xeDqm+nYENptRDolG4w6e28atsW7iBtxXb9HJwDLrV
	v5dfuRN+9xfkVP/24b8Jq4eHPGNh2owLr2C97mhNlPq+nbyVlJ8TRdUNH9eSyKttkvUAXarhEgcSj
	j+DZ6jyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtWbJ-0000000DBjJ-11e8;
	Sun, 07 Apr 2024 17:46:41 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtWbE-0000000DBhh-3Twb;
	Sun, 07 Apr 2024 17:46:38 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1712511992;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iQ0RagVYlpoPCOEVbhL/XEghMJXfL6hPUtcOCd5OGRs=;
	b=oGsnrqIRNGRlLM3EkygQhgdBR5bwCsZNnXfXnwrjL3RwVRav1uvLDjcZST3k/keAjhT0Gx
	SOzxCmNtzBoujd6+9/L0XQXQTTbV5C3npoRMhyVaEn9ISPcsdx7ZXbtKTneCPAkaT08Ccs
	fM6TKVB6Xg7rNRj/TKoUrs9Em6DaIJFZL46r5GTjn4gM6ak37glpHG22fUOSSXMUxr3S1s
	LoiB2h3bXpD5IKY4EWztqPna0ePZwfc90PB5egRweQm95Xw3CrjCI8lwKobSZJI/i666c6
	oPcOEfj1ndMuwK3XbbQQZQOsNx6j23H1blZ08VXWXD5SEZexkpljARW4KtoHug==
Date: Sun, 07 Apr 2024 19:46:31 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: efectn@6tel.net
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 sebastian.reichel@collabora.com, Muhammed Efe Cetin <efectn@protonmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: mark system power controller and
 fix typo on orangepi-5-plus
In-Reply-To: <20240407173210.372585-1-efectn@6tel.net>
References: <20240407173210.372585-1-efectn@6tel.net>
Message-ID: <fe326de6e370fa98f89751f9bb69e2af@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_104637_160947_525B1CC9 
X-CRM114-Status: GOOD (  13.10  )
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

On 2024-04-07 19:32, efectn@6tel.net wrote:
> From: Muhammed Efe Cetin <efectn@protonmail.com>
> 
> Mark the PMIC as system power controller, so the board will shut-down
> properly and fix the typo on rk806_dvs1_null pins property.
> 
> Fixes: 236d225e1ee7 ("arm64: dts: rockchip: Add board device tree for
> rk3588-orangepi-5-plus")
> Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>

Looking good to me.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> index 1b606ea5b6cf..1a604429fb26 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> @@ -485,6 +485,7 @@ pmic@0 {
>  		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
>  			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
>  		spi-max-frequency = <1000000>;
> +		system-power-controller;
> 
>  		vcc1-supply = <&vcc5v0_sys>;
>  		vcc2-supply = <&vcc5v0_sys>;
> @@ -506,7 +507,7 @@ pmic@0 {
>  		#gpio-cells = <2>;
> 
>  		rk806_dvs1_null: dvs1-null-pins {
> -			pins = "gpio_pwrctrl2";
> +			pins = "gpio_pwrctrl1";
>  			function = "pin_fun0";
>  		};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
