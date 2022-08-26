Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 628ABECAAD2
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Aug 2022 06:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jjnO1enpk9Qw/lny/2Do+s05eeX8uI4jv+CN3fkcqWI=; b=bHqayRE7Sla4Vz
	FTvIce5GGnyKMki8PnujtWd2BwrqX2rzee1B1Vp1lZh4itvajRnYBMfa8W1BY3np4MpbJZIyJXSLS
	E9scs4y+TJsz1N8xb8oQfN/ushtson8CwpZb49uZBM0RrPoVtXLGzTLbGjPyMyquDZcm1ACE3YG7J
	2RphsGvrBnpA1TWKmvQZt3mwH4qZmp5O+rMEZW1Jvzl6GeHmqf6AsHbNjeauDHVDffY998XpsDpON
	sUOL5JcQMv/FqurZSkjJ+NX9yIrqE7MmlIxcp8fmfnQebVcsOVvarz/eQGFxFjQysSzKnH4udRyG7
	nNuLtql+Y8+ZOKm6eIUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRTBF-00EvWX-Gb; Fri, 26 Aug 2022 06:51:01 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRTAt-00Ev2a-Dt
	for linux-rockchip@lists.infradead.org; Fri, 26 Aug 2022 06:50:41 +0000
Received: by mail-lj1-x235.google.com with SMTP id n24so680248ljc.13
        for <linux-rockchip@lists.infradead.org>; Thu, 25 Aug 2022 23:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=7ucuTjvwcIeRgdHUmyQVPcOH0rtFIB9s92k3HvPl+Lg=;
        b=UYyICR8Kxwxx3N+l7H9vpwbhmxjQgKuED9l4C3BW8de56rIH6/rCSVoGsirsqC/mlY
         HrUIIH136YrjQQs+UW8+I8ekNgXkQSZCQF4jkpaO7nwf98t8ccK4S7wUh9dHlDIR8eve
         UMSCAYrj8MenS4A6DSa5fgg//e/PFeYV6tXhiwRgfQLwWI1gPaITe3lGvI4a/TKiuIj1
         7kfY1ByEIJDuPuNsOGqZWdmgqY2brrV/nGQoHVebnrKB1m5aAB5i65lTaPXnziflxP7D
         bzOrlMOKv8+8alYcPSRsVmz+amuXm6ReASHU/u+5nq7OTJtARrH2ICC/kvxGZWE9LJPL
         rLnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=7ucuTjvwcIeRgdHUmyQVPcOH0rtFIB9s92k3HvPl+Lg=;
        b=gCQgWie81iXJlzV7ox/wyyraiwOsaT79+Hm4qSq6PT0uP8tuNGo2vmKs6yjsLmGgKN
         J5mZfNfsY6GaPH/i6cjNr2ygtIjOHUQiNIkzgCxHYx68hPKzY9NOjz41xcGmblbc0W/W
         u+wUE/df+/1JKVPBjyg3ZfqFDAeTqeMEDKr79LRuzUIZ3GYS4eRgN+pM3SWscfKxQGi0
         yji8LmG1ZaYJhxsniaQ5KK3/N/piXnEGG5nkrGGOlePivm4dv6nQJuOkUkpXoqdAIMyo
         mrdSZ9pvjDwTUzXRv+IMavuPI15rNX5hDpu/yRAaGdR5XcFjlLBcLiTzknpZWUAvd43Z
         uvKw==
X-Gm-Message-State: ACgBeo0uXJirSwHJ4vN/hrsYlHwsqBgJyTSGOKvbh6BLBf+ZhRtT32cI
	KBICm/9rw450SVPVsEylL5agWw==
X-Google-Smtp-Source: AA6agR55muQUl0EGQptKMs7t57bYTpy+EF08JVpOQGsnvB+PmIqzUrrBi05Mcf4CLakmC5vokewSKg==
X-Received: by 2002:a2e:54d:0:b0:261:bbfc:23f8 with SMTP id 74-20020a2e054d000000b00261bbfc23f8mr1743546ljf.145.1661496636932;
        Thu, 25 Aug 2022 23:50:36 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id w27-20020ac2443b000000b00492faa68260sm258539lfl.229.2022.08.25.23.50.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 23:50:36 -0700 (PDT)
Message-ID: <cae915f6-c951-ba97-346d-00922c85067d@linaro.org>
Date: Fri, 26 Aug 2022 09:50:34 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v5 5/5] arm64: dts: rockchip: Add PCIe v3 nodes to
 BPI-R2-Pro
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Simon Xue <xxm@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220825193836.54262-1-linux@fw-web.de>
 <20220825193836.54262-6-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220825193836.54262-6-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_235039_507963_5E4DBA4E 
X-CRM114-Status: GOOD (  20.41  )
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

On 25/08/2022 22:38, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add Nodes to Bananapi-R2-Pro board to support PCIe v3 and
> set PCIe related regulators to always on.
> 
> Suggested-by: Peter Geis <pgwipeout@gmail.com>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> v5:
> - rebase on 6.0-rc1
> - add pinctrl for pcie
> - fix ngff pwr_en_h gpio for hw ref 1.1
> 
> v4:
> - change u8 lane-map to u32 data-lanes
> 
> v3:
> - squash lane-map over bifurcation property
> - add comment which slot is M2 and which one if mPCIe
> - fixes from Peter:
>   - drop regulator-always-on/regulator-boot-on from regulators
>   - increase startup-delay-us for regulators
>   - set phy-mode on PCIe3-phy
>   - add num-lanes to PCIe overrides
>   - add usb node for to PCIe/m2
>   - move lane-map from PCIe controller to PCIe-phy
> 
> v2:
> - underscores in nodenames
> - rockchip,bifurcation to vendor unspecific bifurcation
> - fix trailing space
> ---
>  .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 117 ++++++++++++++++++
>  1 file changed, 117 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> index 93d383b8be87..40b90c052634 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> @@ -86,6 +86,66 @@ vcc5v0_sys: vcc5v0-sys {
>  		vin-supply = <&dc_12v>;
>  	};
>  
> +	pcie30_avdd0v9: pcie30-avdd0v9 {

Use consistent naming, so if other nodes have "regulator" suffix, use it
here as well.

> +		compatible = "regulator-fixed";
> +		regulator-name = "pcie30_avdd0v9";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <900000>;
> +		regulator-max-microvolt = <900000>;
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	pcie30_avdd1v8: pcie30-avdd1v8 {

Ditto.


> +		compatible = "regulator-fixed";
> +		regulator-name = "pcie30_avdd1v8";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	/* pi6c pcie clock generator feeds both ports */
> +	vcc3v3_pi6c_05: vcc3v3-pi6c-05-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_pcie";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		enable-active-high;
> +		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
> +		startup-delay-us = <200000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
