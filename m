Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0157CC77B6F
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Apr 2023 10:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVFYuNpExrXMyvndE4pAAYMvb9qxeBnTMxpURw6TwOY=; b=dzqooIeG10Rrcy
	Hi7YA5KYrWXba1O/WjduApFzeD0psLfPFJaKXEtBg02b5lxV/aQdo2DKfv4NOvRJ5e3LT8b66LlDi
	qnj68gceSToXU2GIAb2y43iV0+rnpW2S2TQNhQZNBYFriYOJ3/GYCvqgJOB+GcpgsPDJm4XVKBX80
	yJ4OdwDqiM2hs/PmvVnRgnaFFhGmZSxumBIyCeLHNB1vaNzUKc5eWQ7OyZ4APtgm3FcSaFh+TiMkb
	v2zwOk9DKmokkqWh7EZWus3qodJKEXRQqSaNuCrKpoktbnJQES1OOTUSPO6sQNH2Gspvll3EYRMTe
	Kgke8JiIij1+Ql27rFcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnGen-0098N7-0e;
	Fri, 14 Apr 2023 10:27:53 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnGel-0098JX-0p
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Apr 2023 10:27:52 +0000
Received: by mail-ej1-x62e.google.com with SMTP id fy21so1444676ejb.9
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Apr 2023 03:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681468068; x=1684060068;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GfsBlxdTSJzQBTJl1OQ8F2O5M+aBu5tpSg3iXmktVXg=;
        b=AF4HzdJP7Aw9KCPftS4DVfNYmqMCqiiYUSVCkM8WQyc2XPxROjGGKsGcT/xeeYTKpY
         8/14/qT3Zc0de4dg5rWYtABdHgnbxE2/LCyCqwNr9KPO+UUzsJtFxaNgh4al8PhfUoAN
         /xrWEJ2umqth+7YriTNHDTfpkTBXYZyYqjWF3E/XlziPjp7HLMDUl/ZOVfntgYVeRu8a
         U2EBVCKahePEqWxpoJS4bDwHinOVgJ4j6ezqJ+JiwRebuiU6IEQlkpoHwpefs1Y77Ti4
         hIcd33ZPFe2hsEPgJM8n7L4hCROi6KqyHdP5fFT0nu0MWEI2zlL0MBnfxGrXsKxG7VGr
         FiGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681468068; x=1684060068;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GfsBlxdTSJzQBTJl1OQ8F2O5M+aBu5tpSg3iXmktVXg=;
        b=DBDXGwtPpv4tkDO6pJPOkgPxbzin8kfKEqlf5G+GGXJ7j1jiukgin42NAPt22XpEhS
         Uf79fTcl6dbBjvMi4y0MikTxO9FRQeCXxCPt6RGezrZVpCyG4MZEUiUImSXYljdg18K4
         BDTq2dmRTOBDCQffuT6MOv2fpG6+K6LmFKghQs74mZakGdYBUfkqrS3iC7dJVZMIev1/
         Yd34eyzV076YkZOVs51yppR+z2HQtDjTWt265GQbAW1drb6jVgW8fthB8fY9Smm/EIJe
         Mf1olbYO8G6Uwov/gjqEpIJ+gaiqEhSW1qWd+IhPCBu+yc21Gsv7vJkq2FFkmla25xjg
         wDYg==
X-Gm-Message-State: AAQBX9fgYUvvnGf0fYIDnpQVBeVpeDaGf3wqkTmL6PKWv5aR/6lR1fd3
	/wTKfJ4qCKonycSi9hvaULL3nw==
X-Google-Smtp-Source: AKy350YwjBYY/9l54IU4pggStT9CGvMLLTI4ZvcV36eCKzr4rR2yhO8Ku0K0cb8HDXLUNgTntWGhvw==
X-Received: by 2002:a17:906:7f98:b0:87b:6bbb:11ac with SMTP id f24-20020a1709067f9800b0087b6bbb11acmr5167654ejr.60.1681468067936;
        Fri, 14 Apr 2023 03:27:47 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:40b9:8c57:b112:651d? ([2a02:810d:15c0:828:40b9:8c57:b112:651d])
        by smtp.gmail.com with ESMTPSA id m7-20020a17090679c700b0094a8aa6338dsm2294826ejo.14.2023.04.14.03.27.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 03:27:47 -0700 (PDT)
Message-ID: <0cbafc31-9b46-54df-f569-810a8781743c@linaro.org>
Date: Fri, 14 Apr 2023 12:27:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add vdd_cpu_big regulators to
 rk3588-rock-5b
Content-Language: en-US
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Christopher Obbard <chris.obbard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230414093411.113787-1-cristian.ciocaltea@collabora.com>
 <20230414093411.113787-4-cristian.ciocaltea@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230414093411.113787-4-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_032751_298890_8FE656B6 
X-CRM114-Status: GOOD (  15.39  )
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

On 14/04/2023 11:34, Cristian Ciocaltea wrote:
> The RK8602 and RK8603 voltage regulators on the Rock 5B board provide
> the power lines vdd_cpu_big0 and vdd_cpu_big1, respectively.
> 
> Add the necessary device tree nodes and bind them to the corresponding
> CPU big core nodes.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 8cc97d146a73..3e4aee8f70c1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -53,6 +53,62 @@ vcc5v0_sys: vcc5v0-sys-regulator {
>  	};
>  };
>  
> +&cpu_b0 {
> +	cpu-supply = <&vdd_cpu_big0_s0>;
> +};
> +
> +&cpu_b1 {
> +	cpu-supply = <&vdd_cpu_big0_s0>;
> +};
> +
> +&cpu_b2 {
> +	cpu-supply = <&vdd_cpu_big1_s0>;
> +};
> +
> +&cpu_b3 {
> +	cpu-supply = <&vdd_cpu_big1_s0>;
> +};
> +
> +&i2c0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c0m2_xfer>;
> +	status = "okay";
> +
> +	vdd_cpu_big0_s0: regulator@42 {
> +		compatible = "rockchip,rk8602";

Looking at your next node, this is surprising... Double check if you
have correct compatibles everywhere.

> +		reg = <0x42>;
> +		fcs,suspend-voltage-selector = <1>;

Does not look like you tested the DTS against bindings. Please run `make
dtbs_check` (see Documentation/devicetree/bindings/writing-schema.rst
for instructions).

> +		regulator-name = "vdd_cpu_big0_s0";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <550000>;
> +		regulator-max-microvolt = <1050000>;
> +		regulator-ramp-delay = <2300>;
> +		vin-supply = <&vcc5v0_sys>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	vdd_cpu_big1_s0: regulator@43 {
> +		compatible = "rockchip,rk8603", "rockchip,rk8602";
> +		reg = <0x43>;
> +		fcs,suspend-voltage-selector = <1>;

Does not look like you tested the DTS against bindings. Please run `make
dtbs_check` (see Documentation/devicetree/bindings/writing-schema.rst
for instructions).

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
