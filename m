Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAADDC48BF6
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Feb 2024 21:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CaR1zM54tselzpdK6CZjTUYlsL6TE25NVQOal3pG/Ls=; b=FxdStB4mbI/2hBT42Fmtqoa/Xa
	1LEOrsdTgDfwxGI4dJ95svQfymuEZoHdVpXcgwXLby10ZL+UzSD4TijgZv2aIsvTcVFG19erpU97w
	HhMfshcwUOkxnNISaGxgs+Dm2p2ghg6Ozp6KpRB3ZGkCHdfmc40bbRMSI9eg2Gdw9VhIWmier+QiL
	mLJsNIH1DJ8Qa/YoFtQUQW/KTOfws9zy922puu7D2GFv6k4/4T3O3RWQ4EP4c+Z/3IkmBnH96RYsk
	yOCOlKsHf8xcDSi5KmNe8y3SczIIgU/Sy1uUA+nAuhYIlE+RNUovOPWRBdoDVwo78mdyS4yrZ7GaQ
	9LkjGRGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfnu1-0000000FJX4-2Ggu;
	Thu, 29 Feb 2024 21:25:17 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfntx-0000000FJVd-21Nh;
	Thu, 29 Feb 2024 21:25:15 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709241911;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=j/jsIYQWtNjGo8V67lba+C9XsvoM+JnwriF6mpcDVn8=;
	b=d89LOaNKrX6cixjeJ68nSXNhPFchDZiqiqCu6ykaBlnJJBLl1Th/424XtWLWAYz6rkib1F
	QoVJsAfsErJ8lUaTUXUQm0/8qT21TJJ/Dsdd2bhxOYSaESaExHAg3NWj1DhdvylS0BQNVr
	M4DM9bLV3qvr6IKJ9SRsdC3Xa8rOJuosByahQbhVVLdfuVXeIdNP9pQ2J3HE0VRsWqkddO
	xeHSjmUshU1OTIkrArv7E2Hvs3G3n7GOQyx4IlKmKdoZXJSh0lyHHJ145ccFJqR+8MmqxK
	YHha/ZO91aJJ7QDn8RV+VIxajr2HymxMxxsHpMZQUzfG2cTJPmaY5GFoBN3urA==
Date: Thu, 29 Feb 2024 22:25:10 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu
 Tsai <wens@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/5] arm64: dts: rockchip: enable automatic active
 cooling on Rock 5B
In-Reply-To: <20240229-rk-dts-additions-v3-2-6afe8473a631@gmail.com>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
 <20240229-rk-dts-additions-v3-2-6afe8473a631@gmail.com>
Message-ID: <823379825559bb76088c31f44f998dd3@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_132513_858685_4255BCC7 
X-CRM114-Status: GOOD (  16.07  )
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

Hello Alexey,

On 2024-02-29 20:26, Alexey Charkov wrote:
> This links the PWM fan on Radxa Rock 5B as an active cooling device
> managed automatically by the thermal subsystem, with a target SoC
> temperature of 65C and a minimum-spin interval from 55C to 65C to
> ensure airflow when the system gets warm

I'd suggest that you replace "automatic active cooling" with "active
cooling" in the patch subject.  I know, it may seem like more of the
unnecessary nitpicking, :) but I hope you'll agree that "automatic"
is actually redundant there.  It would also make the patch subject
a bit shorter.

Another option would be to replace "automatic active cooling" with
"automatic fan control", which may actually be a better choice.
I'd be happy with whichever one you prefer. :)

Otherwise, please feel free to add:

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 30 
> ++++++++++++++++++++++++-
>  1 file changed, 29 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index a0e303c3a1dc..3f7fb055c4dc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -52,7 +52,7 @@ led_rgb_b {
> 
>  	fan: pwm-fan {
>  		compatible = "pwm-fan";
> -		cooling-levels = <0 95 145 195 255>;
> +		cooling-levels = <0 120 150 180 210 240 255>;
>  		fan-supply = <&vcc5v0_sys>;
>  		pwms = <&pwm1 0 50000 0>;
>  		#cooling-cells = <2>;
> @@ -173,6 +173,34 @@ &cpu_l3 {
>  	cpu-supply = <&vdd_cpu_lit_s0>;
>  };
> 
> +&package_thermal {
> +	polling-delay = <1000>;
> +
> +	trips {
> +		package_fan0: package-fan0 {
> +			temperature = <55000>;
> +			hysteresis = <2000>;
> +			type = "active";
> +		};
> +		package_fan1: package-fan1 {
> +			temperature = <65000>;
> +			hysteresis = <2000>;
> +			type = "active";
> +		};
> +	};
> +
> +	cooling-maps {
> +		map1 {
> +			trip = <&package_fan0>;
> +			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
> +		};
> +		map2 {
> +			trip = <&package_fan1>;
> +			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
> +		};
> +	};
> +};
> +
>  &i2c0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&i2c0m2_xfer>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
