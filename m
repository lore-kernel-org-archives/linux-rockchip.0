Return-Path: <SRS0=3Wd+=LX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64EF9C11F66
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 09:07:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 285F861DD6
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 09:07:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 285F861DD6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ypw+YCc65h1dEVkV+5d6nTAsy/TB+qyjWDbK9E7Ltsg=; b=XL5TwQxXEawCYr/Fos8zTdB0W3
	qPii83Cz8mukvtdr0DEDJtg478wnWNWIwSnAkB5Ah0o9oAv7oZf2u6gJHn7jQTYS4mFoWOUPUBEsm
	rgyVGW7IJlvbvs0BgAC6LWa5TFxmMYs8Kiw2kyDR18jBDwqGLKL7Mz6m+By2HXZ4rW89cGqLL+QWp
	4ZgZV0DOu4tkuYN277l8FFnOHjPnDTJhKsGh9t9gOtC8EAVG3gTrdOgJRyT+zcCAUSVKEy+s/AhWp
	xWotJUEGZtCyLLt1cGx1T+o3utMfr2YYd/RqFLFVZicDVNuqNitDYfWICQq1BBvLFWRBoi4Z9bnjp
	MOPSSC0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ly9hr-00AK3p-2S; Tue, 29 Jun 2021 09:06:59 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ly9hn-00AK2g-KM; Tue, 29 Jun 2021 09:06:57 +0000
Received: by mail-wr1-x432.google.com with SMTP id i8so2642444wrc.0;
 Tue, 29 Jun 2021 02:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=xUNa+0KV7B+vXGxAAaNhqc6ILKPrP8e6nGYC6NphWSA=;
 b=Vu+xtrLTkJeh5aC5cORWSlDNFiwk1Ep9IDbU6YLNus2SyHOTPFGMpB4hpjwEu6xjrx
 FxYvLll3mp6UpO2ZrGYwoNoegsMO13EAHAs6PkNHX1GVOGXj0B/8e5KahXvd9EWaD+Q5
 VDhmCY0MY+vXv2+QoHaNEqgr1pR/+LwtiNt7qosHe/OOHMEN9Fh2IYIRbpFZbMI+RNQw
 TSK4AAXGtKpdeyE2hCrvIGPilXdPe+1gf8sr7mo+pplIOLM1bMnPiTxpE93wahQKycD6
 WeYOBp5m6x10oQ2mLdRV189fp8nqbtlUzcogzJ7XgyaxRACpDXS+Xs+AvOooO4LPiq/w
 6UYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=xUNa+0KV7B+vXGxAAaNhqc6ILKPrP8e6nGYC6NphWSA=;
 b=j6I1CiMTve6F/3ukW6RWGV0AX4wOsl/BpoSQ0tSqIGuZx3H49ijG0weIRxCYxgOrn+
 nAPVutzc3qk/ydR9xQYU1wsEbNu70eUnkXZp2bJwGu87Zl8VvF+jaTKEZBGRqXBbyUPa
 lbcuMb0XL+tlt6mHFOAM2vA2hc7MBYVebwLDyFb4TeKae22IEJBZBE6X2ZQYWZbw+pMI
 624AN3Io7GtjqWNv43KTujfvHhf9jUbhn+huZRIa5mI2T51/EoLYdKpPjcgQpfhWbM1t
 qPQJORC23KsKCYNMYyYdYBVFpJDwJ6Nhxh592DWXjSJ4+kaH0quHhzpkVY5LX4XIbivW
 0KcA==
X-Gm-Message-State: AOAM530oxzLcVcKz8+FfFQIgqHZescrxRTMFS9nW063RnPOF8s1FcYcm
 wIVh57Qg/uXnCiTR4xpNeg==
X-Google-Smtp-Source: ABdhPJwvKWCQVsOJd9eUeFeHQfLFrIdvqdtZZcxsszSocuFblwXkrTqLQOVIRnfeVYIvo7ZariePdA==
X-Received: by 2002:a5d:51ce:: with SMTP id n14mr15179890wrv.209.1624957613371; 
 Tue, 29 Jun 2021 02:06:53 -0700 (PDT)
Received: from [192.168.200.247] (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.gmail.com with ESMTPSA id l15sm17628496wrt.47.2021.06.29.02.06.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Jun 2021 02:06:52 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: add rock-pi-4 analog audio
To: Adrian Ratiu <adrian.ratiu@collabora.com>, Heiko Stuebner <heiko@sntech.de>
Cc: jack@radxa.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Rob Herring <robh+dt@kernel.org>
References: <20210628113033.9145-1-adrian.ratiu@collabora.com>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <7f806d30-594e-2325-615a-8fee875c83a8@gmail.com>
Date: Tue, 29 Jun 2021 11:06:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210628113033.9145-1-adrian.ratiu@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_020655_738046_95FCE185 
X-CRM114-Status: GOOD (  19.48  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Adrian,

I've submitted similar patch already. Its part of [1]

There is no headphone detection pin in the schematics, btw.

[1] 
https://patchwork.kernel.org/project/linux-rockchip/cover/20210618181256.27992-1-knaerzche@gmail.com/

Best,

Alex

Am 28.06.21 um 13:30 schrieb Adrian Ratiu:
> This adds the necessary pinctrl and nodes to enable the
> analog audio on rk3399 rock-pi-4 SBCs using the es8316
> codec and the audio-graph-card driver.
>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
>   .../boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 38 +++++++++++++++++++
>   1 file changed, 38 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> index b28888ea9262..77781d9150ac 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> @@ -128,6 +128,12 @@ vdd_log: vdd-log {
>   		regulator-max-microvolt = <1400000>;
>   		vin-supply = <&vcc5v0_sys>;
>   	};
> +
> +	sound {
> +		compatible = "audio-graph-card";
> +		label = "rockchip,rk3399";
> +		dais = <&i2s0_p0>;
> +	};
>   };
>   
>   &cpu_l0 {
> @@ -422,6 +428,24 @@ &i2c1 {
>   	i2c-scl-rising-time-ns = <300>;
>   	i2c-scl-falling-time-ns = <15>;
>   	status = "okay";
> +
> +	es8316: codec@11 {
> +		compatible = "everest,es8316";
> +		reg = <0x11>;
> +		clocks = <&cru SCLK_I2S_8CH_OUT>;
> +		clock-names = "mclk";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hp_det_pin>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <RK_PA0 IRQ_TYPE_LEVEL_HIGH>;
> +		#sound-dai-cells = <0>;
> +
> +		port {
> +			es8316_p0_0: endpoint {
> +				remote-endpoint = <&i2s0_p0_0>;
> +			};
> +		};
> +	};
>   };
>   
>   &i2c3 {
> @@ -441,6 +465,14 @@ &i2s0 {
>   	rockchip,capture-channels = <2>;
>   	rockchip,playback-channels = <2>;
>   	status = "okay";
> +
> +	i2s0_p0: port {
> +		i2s0_p0_0: endpoint {
> +			dai-format = "i2s";
> +			mclk-fs = <256>;
> +			remote-endpoint = <&es8316_p0_0>;
> +		};
> +	};
>   };
>   
>   &i2s1 {
> @@ -556,6 +588,12 @@ wifi_host_wake_l: wifi-host-wake-l {
>   			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
> +
> +	es8316 {
> +		hp_det_pin: hp-det-pin {
> +			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
>   };
>   
>   &pwm2 {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
