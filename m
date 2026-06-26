Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48138C43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 13:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yaJuyD+pF/56rKrpFhAndX5575/Vpx4P1tO9/qsiMSM=; b=sOnY0p2HI/82A3
	9rxcOL2YvZXc1u1ZJRdRJQ8gbXL3g4CipNK+7nrM9GondmsYMl3K6rG952W6LavL1MKiePwCUB40o
	55cJRyX2hx4yMVr40cTSL8klqfWnzWWlsMdRb8bcM3poYgLOgylHMawar8yNEPYyW1hppsamFbN+W
	RdNAWRadoZS9bxm2UUQ2i4rg688wDHE08UHAwO1yU9rRgzRajTMgJfqiVVcNSL+LHsWOzKyOv5WD0
	MHMKO8dyQS2TpX5KMHd05kfA14XtGbjkB/Dzu9DDIbCr0xYHV7hTjFhO6TesPvHZLco2IgPUu+9Jx
	tBxlRABqbvhQxihdqRsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd6Vq-0000000BMuy-3u8C;
	Fri, 26 Jun 2026 13:22:30 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd6Vo-0000000BMsk-1ifV
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jun 2026 13:22:30 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5aea616f511so85141e87.2
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 06:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1782480146; x=1783084946; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=oQ23aqtvHk/KnAoTWB/JH/fphJ2pYqYtw5YHFybaZsQ=;
        b=AsvlPAEGSMX7lSS5jIKel1vfgDTBVRGXVvsCYabBihALBjE82Nr7miQWoJTJU1dKQJ
         KRIA/Wy4VukTj2cF9FhDWfokgqNb/Y5F0n/TS/XvVYlH2uf6m6NcZOt6BwZ3T0eh9UCx
         Jlx7yPxlRV/j97BNYv4S9dJxbh9QR0rhA/xIdHgP8uMiGuWe4RyiWVr5lh9UJ3lZHNqn
         0ASkCb5mfGWYALhfk6Obli1hfd/lheZ37Rrg4phdplylO8jUddhxIqXUQJxh2RvkvVBW
         VZvMUzF/CEsV+qFYa9X3dEypPxBjE1519jTv4JMymuRHfAjJJ6JlRRAhvWxCaQvpTNEl
         nhwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782480146; x=1783084946;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oQ23aqtvHk/KnAoTWB/JH/fphJ2pYqYtw5YHFybaZsQ=;
        b=HnkRVvrsdTOT0E+mJqyHEYFR+7pS9DL4ElReOd0aND4WGS7K/J/KZltJMFVhZv982k
         ev9jufDbV+ftcmKa5mPKq7Yz7h56Y7gtGWD4lXkRj/070H49wrhoSGo2UVI2OG0QvFob
         1N/lV7B5jZH7dDeAFYCGlNA5OzHoeCDc+nu3r34uCimzEuggUhBLnCrPyzpEd/xYCysu
         4aSEGWpT149fWc8va4z+tPYN2lg53qrY4WBkfiAbgE/i3SFOwhrn6Gc8VTeZyShoDddl
         93spnihJhrECNmrFsDIYozj3JaxdhxdqTFlVF0NSAquk4xMTRWwGMphVP+se1kB6GzIv
         1tLA==
X-Forwarded-Encrypted: i=1; AHgh+RphBDo9btg0APNKwHHa1UHhqCq1Eco4h4ly94a86sC3eLfIinG0nFBOniF8YER8ACQOc1AXwrU2RuZ/7Qs59w==@lists.infradead.org
X-Gm-Message-State: AOJu0YyIgIXNvU9GitJ7Bx7+nNJljwFKcElKwDLBhCA7kUNt0oH4cuaB
	HTx9bgNXKUpI6snuQWqg73s3nNFwkWWJBDWq2C/jC2bB2fUcAp7OFHyS2UTzO7xd164=
X-Gm-Gg: AfdE7cl3vhbZ3njsMj0Lvl0qN4TMPKeP2j892lPPktABlwoTZ364AP8HTxDxEQvUkMM
	YngsApJS2DthkWWVeW1TLff2E2JL0uuvXKHJeExeqpi8QBonul6Wiv5fNvbqivRrs51nN20xk5W
	XSDExiTjKofZ/l2/eB/wXvUtYSAUW0R2BcQ8WXnvOoEz2VW+q3l5BzhjBehPjJS/q754rHVolHg
	CryrvFcAqSMh6aGic9LV2+2CRH4m2/meHvPQOGI4PL9ZN67dnL+X6Nr0Q+4Hoy3TdbbDCM0JEo4
	aaA/nGdWSimAAmsMr8g1likJFspELVcYnaiDnQP5GoJCDXIfkGzEx7EnrqEuNxxuPGEkUp3V0x/
	Vk9q6FrT2w9ooraYnQCTjZlk+T10DvV9qdJ8RXIsq8c3eCIP8032n75DTGR2s/BYvgXVEyY5umS
	BBooKS5wV9UDOtxh736soHSihce5glTGfKFqlyeARxxnJ8GiNs3r3WMmVyilntIx9gE5c=
X-Received: by 2002:a05:6512:1252:b0:5ad:4ead:72d7 with SMTP id 2adb3069b0e04-5aea1f630cbmr1249234e87.5.1782480146180;
        Fri, 26 Jun 2026 06:22:26 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aea5195050sm816328e87.83.2026.06.26.06.22.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2026 06:22:25 -0700 (PDT)
Message-ID: <eaca986e-81d5-44f7-bc64-8e89e5a1f823@linaro.org>
Date: Fri, 26 Jun 2026 16:22:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] arm64: dts: qcom: Convert to new media orientation
 definitions
To: Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jacopo Mondi <jacopo@jmondi.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Jimmy Su <jimmy.su@intel.com>,
 Matthias Fend <matthias.fend@emfend.at>,
 Mikhail Rudenko <mike.rudenko@gmail.com>,
 Daniel Scally <dan.scally@ideasonboard.com>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Michael Riesch <michael.riesch@collabora.com>,
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
 Sylvain Petinot <sylvain.petinot@foss.st.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Martin Kepplinger <martin.kepplinger@puri.sm>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Tommaso Merciai <tomm.merciai@gmail.com>,
 Svyatoslav Ryhel <clamor95@gmail.com>,
 Richard Acayan <mailingradian@gmail.com>,
 Thierry Reding <thierry.reding@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux@ew.tq-group.com, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20260626-kbingham-orientation-v2-0-47178be927b4@ideasonboard.com>
 <20260626-kbingham-orientation-v2-6-47178be927b4@ideasonboard.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260626-kbingham-orientation-v2-6-47178be927b4@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_062228_472804_D3FD51D8 
X-CRM114-Status: GOOD (  15.12  )
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

On 6/26/26 15:07, Kieran Bingham wrote:
> The orientation property for video interface devices now has definitions
> to prevent hardcoded integer values for the enum options.
> 
> Update the users throughout the qualcomm device trees to use the new
> definitions.
> 
> Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> ---
>   arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts         | 3 ++-
>   arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 3 ++-
>   arch/arm64/boot/dts/qcom/sdm670-google-common.dtsi         | 3 ++-
>   3 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> index 04cb9230d29f..d79be22108c8 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> @@ -13,6 +13,7 @@
>   #include <dt-bindings/iio/qcom,spmi-adc7-pmk8350.h>
>   #include <dt-bindings/leds/common.h>
>   #include <dt-bindings/media/video-interfaces.h>
> +#include <dt-bindings/media/video-interface-devices.h>
>   #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>   #include <dt-bindings/sound/qcom,q6asm.h>
> @@ -701,7 +702,7 @@ camera@10 {
>   		pinctrl-0 = <&cam_mclk3_default>;
>   		pinctrl-names = "default";
>   
> -		orientation = <0>; /* Front facing */
> +		orientation = <MEDIA_ORIENTATION_FRONT>;
>   		rotation = <270>;
>   
>   		port {
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> index abd9c5a67b9f..543fc691fd3c 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> @@ -11,6 +11,7 @@
>   #include <dt-bindings/input/gpio-keys.h>
>   #include <dt-bindings/input/input.h>
>   #include <dt-bindings/leds/common.h>
> +#include <dt-bindings/media/video-interface-devices.h>
>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>   
>   #include "sc8280xp.dtsi"
> @@ -682,7 +683,7 @@ camera@10 {
>   
>   		clocks = <&camcc CAMCC_MCLK3_CLK>;
>   
> -		orientation = <0>;	/* Front facing */
> +		orientation = <MEDIA_ORIENTATION_FRONT>;
>   
>   		avdd-supply = <&vreg_l6q>;
>   		dvdd-supply = <&vreg_l2q>;
> diff --git a/arch/arm64/boot/dts/qcom/sdm670-google-common.dtsi b/arch/arm64/boot/dts/qcom/sdm670-google-common.dtsi
> index 0f57b915186b..375b3c0edea7 100644
> --- a/arch/arm64/boot/dts/qcom/sdm670-google-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm670-google-common.dtsi
> @@ -9,6 +9,7 @@
>   #include <dt-bindings/gpio/gpio.h>
>   #include <dt-bindings/input/input.h>
>   #include <dt-bindings/leds/common.h>
> +#include <dt-bindings/media/video-interface-devices.h>
>   #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>   #include <dt-bindings/power/qcom-rpmpd.h>
>   #include "sdm670.dtsi"
> @@ -460,7 +461,7 @@ camera@1a {
>   		pinctrl-names = "default";
>   
>   		rotation = <270>;
> -		orientation = <0>;
> +		orientation = <MEDIA_ORIENTATION_FRONT>;
>   
>   		port {
>   			cam_front_endpoint: endpoint {
> 

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
