Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D57AC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 11:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vw84zL2qle9h/zkG2I+f02sKh0dkMO9u3l5MTuZJ9HM=; b=keHRWUwjE4WHuI
	PP4vnOSfYRS/yGqpK9RKYiutOzdXlf90N5GDyR+76eR7ddJwrnvwJax/VOnFnxoEjxYQsCuXpGj9q
	nk7xYkqSWIMhFnRfnEFSgkrfUbqavJVWxDjsA/BWkv7GvII1bspdsPCz2HdostM7JqdiRuoWw+xfS
	e83qkVPqjlNx6XF/FT+uTrBgeWJ59FLLuazkPWJyVs5UiFqidHE+/Ch74OdXA0pjpYWIsC7Igk+8f
	/ZPnrsnSn0WCj+hveSwFG1Os1uBUTkOxsClAr0WJAsx19hoD66cZ/VRsySReEZA4Ks3OjsiMsfl8b
	d4uyy8VoVcArFbKjs/9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Dtr-00CHzW-Bu; Mon, 19 Dec 2022 11:01:39 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7DtK-00CHak-AS
	for linux-rockchip@lists.infradead.org; Mon, 19 Dec 2022 11:01:12 +0000
Received: by mail-lf1-x136.google.com with SMTP id b3so13116263lfv.2
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Dec 2022 03:01:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K9TiKFq5dq+t/y/OEuShbJ7inw5lT2gdllgnKZs9p38=;
        b=tV+hDIKitEbNl6RBh1+KFoZbFWmVqn6USwBvi4LJxZ/AhZR47+Fo9j35aIrTpcfj6l
         /NwZP/o2r+FEQIn+WLTbuhLp5OdaPQ1whvHGTug57Q3Pvp1Y0WB+E3bzBPyTOdplbz3h
         CzlgQQrBR09J8fvHU1G94ccNK14TGwfZUzD878MDbs3crYdN44c5IcJrRAc++Kl0wKJz
         wuTdhbO9KL3QrNB+LmuL3R5aW+KU2aO9LNeXViYEX8mpK3/2QaafseaVdkFgLwkzEl+g
         xsHqyDMm84eMsh8SsmCQLsrpN3wVDNIGk759Z3IapoSOfDhMjUEgNhf5cknIQ74y5Imq
         k+iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K9TiKFq5dq+t/y/OEuShbJ7inw5lT2gdllgnKZs9p38=;
        b=nfFPZ/zZyQM9B8wGAPr+TQPfqdww3lUUngYutXrO5C1l/hGLS25cJIlrnGWwc8xYC9
         6KdTk3U3jqdc7b5M9pEYuZ4ZqjDKlrnQaJz+wqyHPE+iOef+UAyG60tqy/4OpgiTrvAj
         P3gHQ2B8PjETd63SajegS5dTE60IMUyAfdf/pi6U/wh38XVI8kFUM1kHlxlx69G6BRwd
         mfR7c2JjAxh95B0f+hhFW/P5CQnxe8XrF44dUq5WhZ4ATgihuCS0wTMlNwGsfva4id0D
         oKkTJ9Qvz0BTuWqOQT/6qw3vtRHKGGIxSfHix9sUAbXv8uIXN2UVyI7DRykFctyN7SY4
         hTqg==
X-Gm-Message-State: ANoB5pkEeOnY0auC6PHCtrP4RP12+Qt4c9HMoX3cd15IdYkgMwl3gtvn
	CThv8JAddd9jLkfH9B1dZ70d/g==
X-Google-Smtp-Source: AA0mqf4H1M8wwTE+G1mBusCirNh1t+02owUspJmFP8vDHOct+sqr1eLVg1rG1TUYsFeKwxmO8FJFaQ==
X-Received: by 2002:a05:6512:b89:b0:4b5:98bc:194c with SMTP id b9-20020a0565120b8900b004b598bc194cmr16119569lfv.63.1671447661907;
        Mon, 19 Dec 2022 03:01:01 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d20-20020a056512369400b0049ae3ed42e8sm1062948lfs.180.2022.12.19.03.01.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 03:01:01 -0800 (PST)
Message-ID: <ad1a74be-c32c-522d-8183-1079e3ce7b80@linaro.org>
Date: Mon, 19 Dec 2022 12:01:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2] dt-bindings: display: rockchip: convert
 rockchip-lvds.txt to YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <dea33013-ae1b-a8b2-5287-68a52f5ce028@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <dea33013-ae1b-a8b2-5287-68a52f5ce028@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_030106_505851_5C66C9B4 
X-CRM114-Status: GOOD (  23.74  )
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

On 17/12/2022 16:23, Johan Jonker wrote:
> Convert rockchip-lvds.txt to YAML.
> 
> Changed:
>   Add power-domains property.
>   Requirements between PX30 and RK3288
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V2:
>   Fix title
> ---
>  .../display/rockchip/rockchip-lvds.txt        |  92 ----------
>  .../display/rockchip/rockchip-lvds.yaml       | 157 ++++++++++++++++++
>  2 files changed, 157 insertions(+), 92 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
> deleted file mode 100644
> index aaf8c44cf..000000000
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
> +++ /dev/null
> @@ -1,92 +0,0 @@
> -Rockchip RK3288 LVDS interface
> -================================
> -
> -Required properties:
> -- compatible: matching the soc type, one of
> -	- "rockchip,rk3288-lvds";
> -	- "rockchip,px30-lvds";
> -
> -- reg: physical base address of the controller and length
> -	of memory mapped region.
> -- clocks: must include clock specifiers corresponding to entries in the
> -	clock-names property.
> -- clock-names: must contain "pclk_lvds"
> -
> -- avdd1v0-supply: regulator phandle for 1.0V analog power
> -- avdd1v8-supply: regulator phandle for 1.8V analog power
> -- avdd3v3-supply: regulator phandle for 3.3V analog power
> -
> -- rockchip,grf: phandle to the general register files syscon
> -- rockchip,output: "rgb", "lvds" or "duallvds", This describes the output interface
> -
> -- phys: LVDS/DSI DPHY (px30 only)
> -- phy-names: name of the PHY, must be "dphy" (px30 only)
> -
> -Optional properties:
> -- pinctrl-names: must contain a "lcdc" entry.
> -- pinctrl-0: pin control group to be used for this controller.
> -
> -Required nodes:
> -
> -The lvds has two video ports as described by
> -	Documentation/devicetree/bindings/media/video-interfaces.txt
> -Their connections are modeled using the OF graph bindings specified in
> -	Documentation/devicetree/bindings/graph.txt.
> -
> -- video port 0 for the VOP input, the remote endpoint maybe vopb or vopl
> -- video port 1 for either a panel or subsequent encoder
> -
> -Example:
> -
> -lvds_panel: lvds-panel {
> -	compatible = "auo,b101ean01";
> -	enable-gpios = <&gpio7 21 GPIO_ACTIVE_HIGH>;
> -	data-mapping = "jeida-24";
> -
> -	ports {
> -		panel_in_lvds: endpoint {
> -			remote-endpoint = <&lvds_out_panel>;
> -		};
> -	};
> -};
> -
> -For Rockchip RK3288:
> -
> -	lvds: lvds@ff96c000 {
> -		compatible = "rockchip,rk3288-lvds";
> -		rockchip,grf = <&grf>;
> -		reg = <0xff96c000 0x4000>;
> -		clocks = <&cru PCLK_LVDS_PHY>;
> -		clock-names = "pclk_lvds";
> -		pinctrl-names = "lcdc";
> -		pinctrl-0 = <&lcdc_ctl>;
> -		avdd1v0-supply = <&vdd10_lcd>;
> -		avdd1v8-supply = <&vcc18_lcd>;
> -		avdd3v3-supply = <&vcca_33>;
> -		rockchip,output = "rgb";
> -		ports {
> -			#address-cells = <1>;
> -			#size-cells = <0>;
> -
> -			lvds_in: port@0 {
> -				reg = <0>;
> -
> -				lvds_in_vopb: endpoint@0 {
> -					reg = <0>;
> -					remote-endpoint = <&vopb_out_lvds>;
> -				};
> -				lvds_in_vopl: endpoint@1 {
> -					reg = <1>;
> -					remote-endpoint = <&vopl_out_lvds>;
> -				};
> -			};
> -
> -			lvds_out: port@1 {
> -				reg = <1>;
> -
> -				lvds_out_panel: endpoint {
> -					remote-endpoint = <&panel_in_lvds>;
> -				};
> -			};
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.yaml
> new file mode 100644
> index 000000000..f05901633
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.yaml

Filename matching compatible style, so: "rockchip,lvds.yaml"

> @@ -0,0 +1,157 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/rockchip/rockchip-lvds.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip low-voltage differential signal (LVDS) transmitter
> +
> +maintainers:
> +  - Sandy Huang <hjc@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,px30-lvds
> +      - rockchip,rk3288-lvds
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: pclk_lvds
> +
> +  avdd1v0-supply:
> +    description: Regulator phandle for 1.0V analog power.

Drop "Regulator phandle for ". Same in other regulators.

> +
> +  avdd1v8-supply:
> +    description: Regulator phandle for 1.8V analog power.
> +
> +  avdd3v3-supply:
> +    description: Regulator phandle for 3.3V analog power.
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: Phandle to the general register files syscon.
> +
> +  rockchip,output:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    enum: [rgb, lvds, duallvds]
> +    description: This describes the output interface.
> +
> +  phys:
> +    maxItems: 1
> +
> +  phy-names:
> +    const: dphy
> +
> +  pinctrl-names:
> +    const: lcdc
> +
> +  pinctrl-0: true
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Video port 0 for the VOP input, the remote endpoint maybe vopb or vopl.
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Video port 1 for either a panel or subsequent encoder.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +additionalProperties: false
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,px30-lvds
> +
> +    then:
> +      required:
> +        - phys
> +        - phy-names

else:
  properties:
    phys: false
    phy-names: false

(assuming it is correct)

> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3288-lvds
> +
> +    then:
> +      required:
> +        - reg
> +        - clocks
> +        - clock-names
> +        - avdd1v0-supply
> +        - avdd1v8-supply
> +        - avdd3v3-supply
> +
> +required:
> +  - compatible
> +  - rockchip,grf
> +  - rockchip,output
> +  - ports

Please keep order like in example-schema.yaml:

properties:
required:
allOf:
additionalProperties:
examples:

> +
> +examples:
> +  - |

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
