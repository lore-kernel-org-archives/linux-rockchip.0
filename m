Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 600F3C54EE9
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Sep 2022 21:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BbaNsf45FZG6bA+Wf2WXF8ua0Q3Mvswat3uaN30mhoE=; b=Wkfz0IfiziIh1L
	WZo9vb5X0vHbN65il/C87PB26On+NSdTfvWwd1dtHBj8mTX+9pDhZn74xZtRuIWatGamWa9eRMvpB
	JS8WLIAqdVT2PDM8kb1umXu/jsAXfyv9aRE0mToqwe04GyhvC55/nEsmboB3+h1yPlDRXGSb4/JBi
	C3FOCkkVHGoy5JYR8viyc5UiH3XKAq9f0dvdJfA2z9QlovTwfYdm3Mx0WvaIxSAoXgnT7N81fBQPe
	U3UntX5yMaGrPDj/c1FhsPkEDy+nW3C6HdH476zWkrtkIqeXYoePElMwC4vbRPEkv+XXvGLUuHT/p
	UzZH5rhjsDA3dyugZ3lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obTfH-000Iqe-1U; Thu, 22 Sep 2022 21:23:23 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obTee-000IeU-Uh; Thu, 22 Sep 2022 21:22:47 +0000
Message-ID: <659fc2fe-f820-04ad-8a4f-224b4d4bd97b@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1663881758;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZYMCYi0P3f0uCs3zXu9KgEbi+wTwz81X89dKXGgBfIo=;
	b=JnAKBACcsruAYDfVZcI5L8Dy8qhkZQMYhEYqqFRu9iscTDdGVSeRbyM8Kz4e3GNO4lw5pt
	+iO2qmp2N8Hn/QtGZSuQEA8vyz7IoTTYWGqWV8RJCTjIFB3+4PMvUe/07xIsRw6mF2V7jZ
	6zmBseXq2OyciOnMA7dGCRKJuWikOTE1jd5ny0RR0SYXEvrZGlnpZFWjiTr7RwUxvPD8IT
	IegQIlu948/Dc0zokruQrCou/TT5IQaP4I7tsftNRMGrG5SUNn64ZkYqyD0wsAt8JI5Zzm
	zwCLXLEO6aLXmPEaWWmpjX7koyZRCcdy1UufqQTShmgB3Xp6A47Oq2+k387m/g==
Date: Thu, 22 Sep 2022 23:22:37 +0200
MIME-Version: 1.0
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HDMI and GPU on quartz64-b
Content-Language: da-DK
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920143446.633956-1-frattaroli.nicolas@gmail.com>
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <20220920143446.633956-1-frattaroli.nicolas@gmail.com>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_142245_677366_351F1EE8 
X-CRM114-Status: GOOD (  15.56  )
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

This seems to be based against linux-next and not mainline. It fails to 
apply on mainline for me.

Den 20.09.2022 kl. 16.34 skrev Nicolas Frattaroli:
> This enables the GPU and HDMI output (including HDMI audio) on
> the PINE64 Quartz64 Model B single board computer.
>
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>   .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 60 +++++++++++++++++++
>   1 file changed, 60 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> index 0f623198970f..77b179cd20e7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> @@ -4,6 +4,7 @@
>   
>   #include <dt-bindings/gpio/gpio.h>
>   #include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
>   #include "rk3566.dtsi"
>   
>   / {
> @@ -28,6 +29,17 @@ gmac1_clkin: external-gmac1-clock {
>   		#clock-cells = <0>;
>   	};
>   
> +	hdmi-con {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi_con_in: endpoint {
> +				remote-endpoint = <&hdmi_out_con>;
> +			};
> +		};
> +	};
> +
>   	leds {
>   		compatible = "gpio-leds";
>   
> @@ -183,6 +195,33 @@ &gmac1m1_clkinout
>   	status = "okay";
>   };
>   
> +&gpu {
> +	mali-supply = <&vdd_gpu>;
> +	status = "okay";
> +};
> +
> +&hdmi {
> +	avdd-0v9-supply = <&vdda0v9_image>;
> +	avdd-1v8-supply = <&vcca1v8_image>;
> +	status = "okay";
> +};
> +
> +&hdmi_in {
> +	hdmi_in_vp0: endpoint {
> +		remote-endpoint = <&vp0_out_hdmi>;
> +	};
> +};
> +
> +&hdmi_out {
> +	hdmi_out_con: endpoint {
> +		remote-endpoint = <&hdmi_con_in>;
> +	};
> +};
> +
> +&hdmi_sound {
> +	status = "okay";
> +};
> +
>   &i2c0 {
>   	status = "okay";
>   
> @@ -456,6 +495,10 @@ &i2c5 {
>   	status = "disabled";
>   };
>   
> +&i2s0_8ch {
> +	status = "okay";
> +};
> +
>   &i2s1_8ch {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&i2s1m0_sclktx
The above part does not seem to exist in the current mainline (rc6) git 
repo.
> @@ -677,3 +720,20 @@ &usb_host0_ehci {
>   &usb_host0_ohci {
>   	status = "okay";
>   };
> +
> +&vop {
> +	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
> +	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
> +	status = "okay";
> +};
> +
> +&vop_mmu {
> +	status = "okay";
> +};
> +
> +&vp0 {
> +	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
> +		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
> +		remote-endpoint = <&hdmi_in_vp0>;
> +	};
> +};
-- 
Kind regards
*Dan Johansen*
Project lead of the *Manjaro ARM* project
Manjaro-ARM <https://manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
