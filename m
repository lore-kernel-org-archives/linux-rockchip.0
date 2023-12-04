Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08F08C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 18:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0kcsDBPPvYosnjXeShWUycjLJGQNllCC+Q4KIhD869I=; b=KNubE2GfS0Ufmc
	07g9fV5Vx36/y9UAddR/vfjbwZG9NJJWHsoF7rilkVrt18PQuLYRdWRETL7y+KwooJ7wfx98o/Cck
	atCL6RPMGJsmY3QzRsa3DDBnsmfDSnwoTjZsyzCXDacekrNaRI/pW9H+8OOtOh1pd2Bz+ZZZ+wD4w
	HeFYY+JsOSrR2Qz5mlfQPu2SUUYy1qFt4FtqGHh8S1/vRu1K8UtONsEiTZVNBSFjnjY3METp38/Be
	qXZ4/FzwrO2C0LpIfP6+8vRnX4jx4It/sgvXX8WXS1u6rETlnlt2iN8QWPVe5fZCLwBrncqzjn+Vi
	8b0VIICAkf++WjHTuG0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE7l-005NbB-0Y;
	Mon, 04 Dec 2023 18:56:57 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE7g-005NYd-2M;
	Mon, 04 Dec 2023 18:56:55 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a1b654faa8cso208686366b.2;
        Mon, 04 Dec 2023 10:56:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701716210; x=1702321010; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pri3ddujsFeLv389wEODEb2MJ2HdQA1JC0+3zG94NUY=;
        b=lLb4TRmX1DwDFOQ9NPfLhtsbAcJMqI3NIBCRAxKbnFyTgUtzdSjnPlKONXhaajk+R3
         v4/NPWqs2vfeKIUibmhaxU5sfUr4b29FFCxjroClA5X+cyCzLMMHPJHn4ODhRKtF9mJX
         H1OreMvKtSCihEs/uUqIrHXKPFRzMxlg7UAETn7KONYDtHNM8YdHlOjXc8Lhf9xvDLS9
         NOIbCD9prG7d6AlSwrKpjsydYjaQvyDmDxNIxfBgDt4AK9uFR6Km529VtMSZ1pvEkvFD
         A/URf8YOV00veXMr4/vMuXQVTRcBMC4OYcGqj/sG+v6yU/BXi0CqTthFwKfbdWdieU5Z
         pUng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701716210; x=1702321010;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pri3ddujsFeLv389wEODEb2MJ2HdQA1JC0+3zG94NUY=;
        b=AXPGf1T5vXbUYcxBg6Qbq+MHfbHuM3mmTi4pW9aOU1YMdUaOm7vhabfAmUWNiuvZll
         liIXCyzhFXLeDiPTwUvdqf0OA9SXTuz91DcqCvH8siPXBE7SaZTnBv0tVuDM9uauEC2/
         369p8EJX4KYIGKwr93E7GikCENYUn9EY9hypjf6V1pIif7h2IhnhAZPjHyxmPELdkGRO
         P3bx7ecjvqdfnrL4QO1J1oe07WrFjTbBe0InLwmyIgZOdoetW5aRmdAHprd/azzyLpjA
         8fAhpnf/kNuqIg4UkGPkfJmdDqkVV2A3kmdctY/zsOwittP/G0LZhCUXcn/4Ts3NdnfL
         WxBQ==
X-Gm-Message-State: AOJu0YyEYqBLrqqQMPAeXs722doSldpp2j95cGGO0HFJRQV9Sx4zOtog
	ylBW8vWSS2yYXwexHsxYmw==
X-Google-Smtp-Source: AGHT+IGnP+vNUpVLS/Ix1nYmpgtRz3wo5KT/7n9jXzwcrtYk1AyMn8XyPfIEuOuPjnH3bC3jQwA37Q==
X-Received: by 2002:a17:906:d797:b0:a19:5e12:d570 with SMTP id pj23-20020a170906d79700b00a195e12d570mr1718314ejb.64.1701716210062;
        Mon, 04 Dec 2023 10:56:50 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:55ff:210b:5393:c9d7? ([2a02:810b:f40:4300:55ff:210b:5393:c9d7])
        by smtp.gmail.com with ESMTPSA id di16-20020a170906731000b00a1b6d503e7esm1847680ejc.157.2023.12.04.10.56.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 10:56:49 -0800 (PST)
Message-ID: <3f235189-da75-4e9d-ad68-8cbebca12f6d@gmail.com>
Date: Mon, 4 Dec 2023 19:56:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/3] dt-bindings: drm: rockchip: convert
 inno_hdmi-rockchip.txt to yaml
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, hjc@rock-chips.com
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_105652_777013_B28E0EB4 
X-CRM114-Status: GOOD (  25.21  )
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

Hi Johan,
Am 04.12.23 um 18:39 schrieb Johan Jonker:
> Convert inno_hdmi-rockchip.txt to yaml.
Nice - I'm having something very similar on my queue :)
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Note for rob+dt:
>    Used enum to "soon" be able to add "rockchip,rk3128-inno-hdmi"
Yeah, actually I'm planning to submit it really soon (if timne allows).
> 
> Changed V1:
>    Rename file to more common layout
>    Add/fix hdmi_out port example
> ---
>   .../display/rockchip/inno_hdmi-rockchip.txt   |  49 ---------
>   .../display/rockchip/rockchip,inno-hdmi.yaml  | 103 ++++++++++++++++++
>   2 files changed, 103 insertions(+), 49 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/display/rockchip/inno_hdmi-rockchip.txt
>   create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/inno_hdmi-rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/inno_hdmi-rockchip.txt
> deleted file mode 100644
> index cec21714f0e0..000000000000
> --- a/Documentation/devicetree/bindings/display/rockchip/inno_hdmi-rockchip.txt
> +++ /dev/null
> @@ -1,49 +0,0 @@
> -Rockchip specific extensions to the Innosilicon HDMI
> -================================
> -
> -Required properties:
> -- compatible:
> -	"rockchip,rk3036-inno-hdmi";
> -- reg:
> -	Physical base address and length of the controller's registers.
> -- clocks, clock-names:
> -	Phandle to hdmi controller clock, name should be "pclk"
> -- interrupts:
> -	HDMI interrupt number
> -- ports:
> -	Contain one port node with endpoint definitions as defined in
> -	Documentation/devicetree/bindings/graph.txt.
> -- pinctrl-0, pinctrl-name:
> -	Switch the iomux of HPD/CEC pins to HDMI function.
> -
> -Example:
> -hdmi: hdmi@20034000 {
> -	compatible = "rockchip,rk3036-inno-hdmi";
> -	reg = <0x20034000 0x4000>;
> -	interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
> -	clocks = <&cru  PCLK_HDMI>;
> -	clock-names = "pclk";
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&hdmi_ctl>;
> -
> -	hdmi_in: port {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		hdmi_in_lcdc: endpoint@0 {
> -			reg = <0>;
> -			remote-endpoint = <&lcdc_out_hdmi>;
> -		};
> -	};
> -};
> -
> -&pinctrl {
> -	hdmi {
> -		hdmi_ctl: hdmi-ctl {
> -			rockchip,pins = <1 8  RK_FUNC_1 &pcfg_pull_none>,
> -					<1 9  RK_FUNC_1 &pcfg_pull_none>,
> -					<1 10 RK_FUNC_1 &pcfg_pull_none>,
> -					<1 11 RK_FUNC_1 &pcfg_pull_none>;
> -		};
> -	};
> -
> -};
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
> new file mode 100644
> index 000000000000..96889c86849a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
> @@ -0,0 +1,103 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/rockchip/rockchip,inno-hdmi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip Innosilicon HDMI controller
> +
> +maintainers:
> +  - Sandy Huang <hjc@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3036-inno-hdmi
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
The interrupts/clock description exists already in the txt-bindings - so 
how about:

+    items:
+      - descrition: ....
> +
> +  clock-names:
> +    const: pclk
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Port node with one endpoint connected to a vop node.
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Port node with one endpoint connected to a hdmi-connector node.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - pinctrl-0
> +  - pinctrl-names
> +  - ports
> +
> +additionalProperties: false
Did you check that with dtbs_check? RK3036's SoC dtsi also contains a

  rockchip,grf = <&grf>;

and I'm not seeing this removed in this series.

It would be great if that would added here to as requirement
for RK3036 too  (and updated in the example)
Even if it is beyond a pure txt to yaml conversion: RK3036 needs to set 
HDMI polarities in GRF.

Regards,
Alex
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3036-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/pinctrl/rockchip.h>
> +    hdmi: hdmi@20034000 {
> +      compatible = "rockchip,rk3036-inno-hdmi";
> +      reg = <0x20034000 0x4000>;
> +      interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&cru  PCLK_HDMI>;
> +      clock-names = "pclk";
> +      pinctrl-names = "default";
> +      pinctrl-0 = <&hdmi_ctl>;
> +
> +      ports {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        hdmi_in: port@0 {
> +          reg = <0>;
> +          hdmi_in_vop: endpoint {
> +            remote-endpoint = <&vop_out_hdmi>;
> +          };
> +        };
> +
> +        hdmi_out: port@1 {
> +          reg = <1>;
> +          hdmi_out_con: endpoint {
> +            remote-endpoint = <&hdmi_con_in>;
> +          };
> +        };
> +      };
> +    };
> +
> +    pinctrl {
> +      hdmi {
> +        hdmi_ctl: hdmi-ctl {
> +          rockchip,pins = <1 RK_PB0 1 &pcfg_pull_none>,
> +                          <1 RK_PB1 1 &pcfg_pull_none>,
> +                          <1 RK_PB2 1 &pcfg_pull_none>,
> +                          <1 RK_PB3 1 &pcfg_pull_none>;
> +        };
> +      };
> +    };
> --
> 2.39.2
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
