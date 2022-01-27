Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A783C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 06:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GOYr89I6mlpwERy/qwYm8PECSh3NEpWPT05TDJqh8+o=; b=s9Mfya/sWPkMZF
	rSOAPXyL5wbMRcdKX+INc9ZOb3yfNoyAfHbrA7Gj2eXxS+G6Sw3vxcdTH1Oqj0eTv9xl06ytbO3BN
	pMloRDopzf+Q5a5QtbUNZ+kSvao+COYDY2NdoVYLiZpR/dc7sfxb1VNRs33jf5rTTxVoTs19hQ1dB
	kF/SDea/uFALpl+/LnIubCudJJk1AbNZUilIXckgjTqdxhaE74ryOaA5Ide6kq0KpAiDx21M217jT
	Kmh6i2HGhjrbkt5+OiFTfdDXkR/0xGPNs/uNVV5JlGbdu3YIpMHGVTKun6ZCfdVKKAoeBXP9heajw
	/F2/W5NgNUVdWqzihs4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCy7O-00ETwU-VH; Thu, 27 Jan 2022 06:18:50 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCy78-00ETra-2R; Thu, 27 Jan 2022 06:18:35 +0000
Received: by mail-ed1-x52a.google.com with SMTP id u24so2136521eds.11;
 Wed, 26 Jan 2022 22:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=4AH18SqUt3875X1csGckeQTmdeWFVcmVXOtHFyC7kz4=;
 b=A+E+wvx3lHw1w4emZKAFoqzSw2nwDE+qG8qCxhSTNhQePLcchO5h4QG3vimuFqHOdF
 0RsjioK2H0mVp2PDj17aOb/r8FO/kPBBCqcvqkArvKMXxMq+x6OKwT5S6fQ2yRLVMNIx
 UKhOWhTuQ/I0X8LQKb8T9DNSN7eeZn7/wHKKhN2WjC21B0f6KSRUljBKpOj2S3qLBuJs
 k3vHTcgzfWn8tC38vlV78Du4zdl0kluCZTvvn1Qfdj3SdSPgiYuI8OFtZtJ0BoBfP/8R
 3/o3HuMeFd59aJ0gNdc/21oy+DXODCVsP9z6ai5CgIsR/LxGJtK7MrcUlkBtKCSPWKTq
 NGdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=4AH18SqUt3875X1csGckeQTmdeWFVcmVXOtHFyC7kz4=;
 b=AgMqsGeHHV3rT4RGyJrbM4cHTWjCGB9yt3QGRWhMvea7JSgfs5ApOSBGrkSgdj6lm8
 7PJSL9deKjNFKmXjIHdyHzn5ybuKxl2NC5E6mINSBuMaKTklYs0XySGUzZZFKDXLRFQ/
 viN9/JoVtS7y2J/Pyc3/ZWDBWC4gDK7iNGg8Ik3SA47gumRQkxY8alTwoZilbNgOvO+V
 uxWX6r7ShfEMyGGNTRhUYwdpyEGfuRbm9S+B+N6ghIjzYEph7CdgI4jwwv/OJemeOjpf
 iMz12nOG+zAWBOLvLQ4JunUNheLBLB80JfJ1gpeiljGoxIgHel6y1jYCuGvc4GzWGaRa
 /oRA==
X-Gm-Message-State: AOAM531ysb7IoTextwjfl9gXvIo+oDP5UGmhe3dSa88hhfpheZfAA5sO
 6J4O/aS+n9DBZBitUcZlmZ0=
X-Google-Smtp-Source: ABdhPJwQ8vX8FeqC2S0Sb+2I0GE54PRSylU6GWyscqXvsAB8TvF4rhL1nxhMv7ep+IRr/jbK4KaYPA==
X-Received: by 2002:aa7:d1cd:: with SMTP id g13mr2304830edp.70.1643264312604; 
 Wed, 26 Jan 2022 22:18:32 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 cf13sm8388353ejb.141.2022.01.26.22.18.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Jan 2022 22:18:31 -0800 (PST)
Message-ID: <07281029-0efd-0a74-0d96-92e3dcf5bbb7@gmail.com>
Date: Thu, 27 Jan 2022 07:18:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add Quartz64-A sdmmc1 node
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220127010023.3169415-1-pgwipeout@gmail.com>
 <20220127010023.3169415-4-pgwipeout@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220127010023.3169415-4-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_221834_159308_4ED71A9F 
X-CRM114-Status: GOOD (  19.30  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 1/27/22 02:00, Peter Geis wrote:
> The sdmmc1 node on Quartz64-A supports the optional wifi module from
> Pine64.
> Add the sdmmc1 node and requisite sdio_pwrseq to enable wifi support on
> the Quartz64-A.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index 33c2c18caaa9..1d73ac6557c5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -91,6 +91,18 @@ simple-audio-card,codec {
>  		};
>  	};
>  
> +	sdio_pwrseq: sdio-pwrseq {

> +		status = "okay";

When a node is not previously disabled, then there's no need for "okay".

> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rk817 1>;
> +		clock-names = "ext_clock";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_enable_h>;
> +		reset-gpios = <&gpio2 RK_PC2 GPIO_ACTIVE_LOW>;
> +		post-power-on-delay-ms = <100>;
> +		power-off-delay-us = <5000000>;
> +	};
> +
>  	vcc12v_dcin: vcc12v_dcin {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc12v_dcin";
> @@ -147,6 +159,17 @@ vcc_sys: vcc_sys {
>  		regulator-max-microvolt = <4400000>;
>  		vin-supply = <&vbus>;
>  	};
> +
> +	/* sourced from vcc_sys, sdio module operates internally at 3.3v */
> +	vcc_wl: vcc_wl {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_wl";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_sys>;
> +	};
>  };
>  
>  &cpu0 {
> @@ -475,6 +498,12 @@ pmic_int_l: pmic-int-l {
>  		};
>  	};
>  
> +	sdio-pwrseq {
> +		wifi_enable_h: wifi-enable-h {
> +			rockchip,pins = <2 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>  	vcc_sd {
>  		vcc_sd_h: vcc-sd-h {
>  			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
> @@ -516,6 +545,22 @@ &sdmmc0 {
>  	status = "okay";
>  };
>  
> +&sdmmc1 {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;

> +	disable-wp;

From mmc-controller.yaml:

  disable-wp:
    $ref: /schemas/types.yaml#/definitions/flag
    description:
      When set, no physical write-protect line is present. This
      property should only be specified when the controller has a
      dedicated write-protect detection logic. If a GPIO is always used
      for the write-protect detection logic, it is sufficient to not
      specify the wp-gpios property in the absence of a write-protect
      line. Not used in combination with eMMC or SDIO.

> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
> +	sd-uhs-sdr104;
> +	vmmc-supply = <&vcc_wl>;
> +	vqmmc-supply = <&vcc_1v8>;
> +	status = "okay";
> +};
> +
>  &spdif {
>  	status = "okay";
>  };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
