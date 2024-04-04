Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6806ECD1292
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 08:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPr4NlvyLU1ph345+TVWYZEhYn3oA+66PPV0HYyBMd4=; b=BbNxYK9/gESkQM
	FQWkIe/J7XEHO1q8JTlOisimGIaL+a5A9lbSoMsW1cpj0w5Gf/VbG3P7eDhbqgkxOICjPUh4jzHv4
	ziJBm4Exelx65BlIYv+TFhradqeO4izmEbUTsPDO2OvGTn7pzF/m+qkwHASocq+AapYOc8xf7wpcE
	5yOz5vQoaQO5vZPXF0y7CtK1J5pURZn75jWsUU1SQL54NH3b0ceTQsuOGVCx8OYx6ZWOB+BUKU/0v
	T0T2pCmv3L2G9KzsT5NGBV8KKv2xIsdNpqKinUjUUt2ECrgJP/I4b0wqNSu/mB49HvOjHnZj3X6jj
	XwCBiN34rUrjxSRKj5sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsInH-00000001ukx-1bpD;
	Thu, 04 Apr 2024 08:49:59 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsInE-00000001ukF-0RId
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Apr 2024 08:49:57 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-56e0f359240so886311a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Apr 2024 01:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712220594; x=1712825394; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=AS9fYR9zGwUoTL7HF1cQrTKYZ55L5s5/uAAu0jS8KbY=;
        b=ViM55VdsOGjm9FfrrUa2YOnjUr1dYs9xReTqfsFLwfrxG0j7l6LMXpwQ7/VPKdXWWK
         omjnhM+SlD7Krq8UyDWHbRQVt7xlDD5AEDHRsi3xi0qiUBXOlpQqH2lIxh50x4oHeHSv
         Awk0Haw8VGh7pSwgB7ceZkSChs3dOZmnsb340S6yEtTl7wk3yJBbYspm4lyP7L5TH8Lb
         zzR4HANVE3PVomfm/WEASP7ZnDPY9+KHd7IYSq8T0R4qzbcngC9vsHAuEy8If7eIo/uz
         dpmaMtB7SmyjEE12QLTJSdLWBBFoIjHCy1AfyJ3U+gj+EQ9A+qPZ08pxjFszLrGHhNha
         0uMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712220594; x=1712825394;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AS9fYR9zGwUoTL7HF1cQrTKYZ55L5s5/uAAu0jS8KbY=;
        b=Joa4+7pE+Rc7rEhElKbUEySo/OONWyRRHsLDMAxSQlxWJOYxxnBqpsz1QHRkLOuQ99
         /r7gzue4jgq7/ufjQYfW9gToAzhfX6PUPAxNNBnIoP126mZEKuovi/S8ljS/9rJUBRoq
         E4nuQtEk7WCDY61Pcc42LEUdgci8IVRz/WRwq80c0s8ruQ+uLqgHULD3VBOI63h1TEO/
         64mci3/zSCYRxbk0csfHUZriOLfrWOJGiQlZekwg1yCmR0FD7jBnruqJr1/K8NHrwHZY
         xRouQCZA8k29onC99nt3f1cHaDIzvBUJpmMWQjAQ6vpJbRJbjTOIQaB58SWbCPYSwT5d
         4iUA==
X-Forwarded-Encrypted: i=1; AJvYcCXj0qD3WwzxVyexCP3vwum1OdjdI2O062+L0/pvrZXa3tN8/4SiOyAVw5cFvZPWu+pYTa0ADn01s+e/MEcwFPA4x3SItET9j6SntVF20SnTTg8q
X-Gm-Message-State: AOJu0YxT33fkLRmIJ6bAQ1hqflSpQ/vDyoj2npPBVyuBvHWi35gof0yd
	kqp8x2mBp8Tpx8PotvDmCjIe6CWDP8CX40L2TlpFtfBds+o+G2X4q8DfaLY6XvPcIycSHrZ0cNv
	4
X-Google-Smtp-Source: AGHT+IE0w7r90llaKzKBlkqLljImjMknml3WfcjzFyt+g/JhEOvEQF0sCUyI7jAYIKqD1ORuYTMriw==
X-Received: by 2002:a17:907:9693:b0:a4e:6622:8797 with SMTP id hd19-20020a170907969300b00a4e66228797mr1394954ejc.68.1712220594434;
        Thu, 04 Apr 2024 01:49:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709060cc900b00a4e24d259edsm8414223ejh.167.2024.04.04.01.49.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Apr 2024 01:49:53 -0700 (PDT)
Message-ID: <e215fa4b-e777-454e-9b04-e704285050af@linaro.org>
Date: Thu, 4 Apr 2024 10:49:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add Protonic MECSBC device-tree
To: Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 David Jander <david@protonic.nl>
References: <20240404-protonic-mecsbc-v1-0-ad5b42ade6c6@pengutronix.de>
 <20240404-protonic-mecsbc-v1-2-ad5b42ade6c6@pengutronix.de>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240404-protonic-mecsbc-v1-2-ad5b42ade6c6@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_014956_274919_83351EEA 
X-CRM114-Status: GOOD (  10.69  )
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

On 04/04/2024 10:34, Sascha Hauer wrote:
> From: David Jander <david@protonic.nl>
> 
> MECSBC is a single board computer for blood analysis machines from
> RR-Mechatronics, designed and manufactured by Protonic Holland, based on
> the Rockchip RK3568 SoC.
> 
> Signed-off-by: David Jander <david@protonic.nl>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

...

> +	vdd_gpu: regulator-vdd-gpu {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm1 0 5000 PWM_POLARITY_INVERTED>;
> +		regulator-name = "vdd_gpu";
> +		regulator-min-microvolt = <915000>;
> +		regulator-max-microvolt = <1000000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-settling-time-up-us = <250>;
> +		pwm-dutycycle-range = <0 100>; /* dutycycle inverted 0% => 0.915V */
> +	};
> +
> +	vdd_npu: regulator-vdd-npu {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm2 0 5000 PWM_POLARITY_INVERTED>;
> +		regulator-name = "vdd_npu";
> +		regulator-min-microvolt = <915000>;
> +		regulator-max-microvolt = <1000000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-settling-time-up-us = <250>;
> +		pwm-dutycycle-range = <0 100>; /* dutycycle inverted 0% => 0.915V */
> +	};
> +
> +	p3v3: p3v3-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "p3v3";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +
> +	p1v8: p1v8-regulator {

Please keep consistent naming - your other regulators are
"regulator-foo", not "foo-regulator". The "regulator-foo" is preferred
usually, because it groups devices nicely.

> +		compatible = "regulator-fixed";
> +		regulator-name = "p1v8";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +	};


...

> +&i2c3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c3m0_xfer>;
> +	status = "okay";
> +
> +	tas2562: tas2562@4c {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

e.g. audio-codec, speaker, amplifier

> +		compatible = "ti,tas2562";
> +		reg = <0x4c>;
> +		#sound-dai-cells = <0>;
> +		shutdown-gpios = <&gpio1 RK_PD4 GPIO_ACTIVE_HIGH>;
> +		interrupt-parent = <&gpio1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_tas2562>;
> +		interrupts = <RK_PD1 IRQ_TYPE_LEVEL_LOW>;
> +		ti,imon-slot-no = <0>;
> +	};
> +};
> +
> +&i2c5 {
> +	status = "okay";
> +
> +	tmp1075n@48 {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


> +		compatible = "ti,tmp1075";
> +		reg = <0x48>;
> +	};
> +
> +	pcf8563: rtc@51 {
> +		compatible = "nxp,pcf85363";
> +		reg = <0x51>;
> +		#clock-cells = <0>;
> +		clock-output-names = "rtcic_32kout";
> +	};
> +};
> +

...

> +&pcie3x2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie30x2m1_pins>;
> +	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
> +	vpcie3v3-supply = <&p3v3>;
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	ethernet {
> +		eth_phy1_rst: eth_phy1_rst {

No underscores in node names.



Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
