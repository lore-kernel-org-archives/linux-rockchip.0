Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7025C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 17:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+I1MDYpSVsM2ukF6Sw7L7U0WKxyU8gEZmfekPX5bgnw=; b=YpGcNU6iFilMd+
	wA6P8WXq8lPTpTDM0urSO4YsRNeeScNB6napcEgsRZixCGIomab306fujbpcGLBSKPZtgqlTvGLp9
	/ECQWxrmXyutAW2UraQOUHZyv/PiM+CQh1Qsh5KS8N8Yi4Wad34qQn1ZYdIiGZpCPYBXoQ0/WfBcB
	p5jv/IYuqXFGGPMFIaVlt0/kPRYHD7S7mvPlOeTpg8RV5P5zo0jY33vHGlE281Vomo2s7uV3DBiUU
	aJZ3Qomumy38DdiPjXCNNLgg6TjcnExEvBhhDpeUmF+dLuCS8dkHFTh7Qd7i/YIbaD0gLN0cIfHGD
	SLV6j48nVgOi1HLr369w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZyHW-0033Y7-7M; Thu, 31 Mar 2022 17:08:22 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZyHT-0033Wz-CD
 for linux-rockchip@lists.infradead.org; Thu, 31 Mar 2022 17:08:21 +0000
Received: by mail-ej1-x62b.google.com with SMTP id i16so599508ejk.12
 for <linux-rockchip@lists.infradead.org>; Thu, 31 Mar 2022 10:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=kEqVFaQNVsirI19BzOWunmIWYpJUmcbYWL8iEQUsWPQ=;
 b=YzXEakKa9RntpJcjDKxIzuhwh1c/WC9cXqvtM8JcjpKzKUIGosE6f8TFF3rr+o4TzG
 y39yX9VOjnrK+FGfJxk39L5L9ePAWqPrSFE5KHai7sIzySNKqeNaTY2sgcqXzTAqGvPm
 3cHmmlkB6ks9VSHjSx0+Mkr6Q6d/nQVIXtI9Smd3aRXBrgoVtr9qDVgzWFZHLP81vvxM
 lg3gajYoJnRe6neA0cl1wjXQ94g1qln68LKFBKRyaI8ZDE68RYGszL0fEgH2cvDO1oka
 nm5edvnYiMw6GCHHQZie9Ev9ULe0p34YDC3l+zHD0a6dLEzhqz+Qgqm1qTFUsgR1T+Wd
 36OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=kEqVFaQNVsirI19BzOWunmIWYpJUmcbYWL8iEQUsWPQ=;
 b=yxR+1Gw0VfKsUk1R7cK3WOt4a1ZAP0JIZFnlWFQiQuIps8ZlviguECVUm2u8/MBAkF
 EyVmXISB44/Cx/gDVaBOchx+17nyyYKJGV17HhnhBF1Jc9OD/VSPOr+GppQvf6960vSQ
 610hiAXS+god+1mMkr0AQDTanSJzJ74nCc1sPKcMTW2JO/UW1PFoYpyUheyzwQ5ITbHX
 N5BCBKjqqPkrP0pZuwD+BTe4rl18g7zyTl5BT4nivP0NB3jQ+bnJwhCvNG+8GMfpX9sJ
 YkGSzd2659O0WF3PvxL3704Q8QZoRTDxyQbMZNHP/4UO9366j+XbaRIPxwFRgR2Epr7E
 BbSQ==
X-Gm-Message-State: AOAM5300P/hHnRMrZiuYCY6Ci6ayZ8ELwkt/Q6txxu3V/Y+pZ3ZgPmxU
 c/ThS6VEL5MwKkGfUBhrSGQHScQWy1Ka5jtX
X-Google-Smtp-Source: ABdhPJwPbLh5zS5vCrMs/t4eUy9456kE1Rj1C5TKr5bJKpEs1nTB5UEyCthua6vli7lcaN0oHpCaMg==
X-Received: by 2002:a17:907:7899:b0:6e0:f285:a860 with SMTP id
 ku25-20020a170907789900b006e0f285a860mr5756132ejc.261.1648746496580; 
 Thu, 31 Mar 2022 10:08:16 -0700 (PDT)
Received: from [192.168.0.167] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 jg15-20020a170907970f00b006e0466dcc42sm9622686ejc.134.2022.03.31.10.08.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 31 Mar 2022 10:08:16 -0700 (PDT)
Message-ID: <25555081-ed80-bbca-b53a-c46a798d3f4d@linaro.org>
Date: Thu, 31 Mar 2022 19:08:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1 1/3] dt-bindings: net: convert emac_rockchip.txt to YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, davem@davemloft.net,
 kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220331161459.16499-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220331161459.16499-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_100819_538936_18A0984E 
X-CRM114-Status: GOOD (  25.56  )
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

On 31/03/2022 18:14, Johan Jonker wrote:
> Convert emac_rockchip.txt to YAML.
> 
> Changes against original bindings:
>   Add mdio sub node.

I see you replaced phy phandle with mdio node, but is it supported by
the driver? arc_emac_probe() seems to look for "phy".

> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/net/emac_rockchip.txt |  52 --------
>  .../bindings/net/emac_rockchip.yaml           | 112 ++++++++++++++++++
>  2 files changed, 112 insertions(+), 52 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/emac_rockchip.txt
>  create mode 100644 Documentation/devicetree/bindings/net/emac_rockchip.yaml

rockchip,emac.yaml

> 
> diff --git a/Documentation/devicetree/bindings/net/emac_rockchip.txt b/Documentation/devicetree/bindings/net/emac_rockchip.txt
> deleted file mode 100644
> index 05bd7dafc..000000000
> --- a/Documentation/devicetree/bindings/net/emac_rockchip.txt
> +++ /dev/null
> @@ -1,52 +0,0 @@
> -* ARC EMAC 10/100 Ethernet platform driver for Rockchip RK3036/RK3066/RK3188 SoCs
> -
> -Required properties:
> -- compatible: should be "rockchip,<name>-emac"
> -   "rockchip,rk3036-emac": found on RK3036 SoCs
> -   "rockchip,rk3066-emac": found on RK3066 SoCs
> -   "rockchip,rk3188-emac": found on RK3188 SoCs
> -- reg: Address and length of the register set for the device
> -- interrupts: Should contain the EMAC interrupts
> -- rockchip,grf: phandle to the syscon grf used to control speed and mode
> -  for emac.
> -- phy: see ethernet.txt file in the same directory.
> -- phy-mode: see ethernet.txt file in the same directory.
> -
> -Optional properties:
> -- phy-supply: phandle to a regulator if the PHY needs one
> -
> -Clock handling:
> -- clocks: Must contain an entry for each entry in clock-names.
> -- clock-names: Shall be "hclk" for the host clock needed to calculate and set
> -  polling period of EMAC and "macref" for the reference clock needed to transfer
> -  data to and from the phy.
> -
> -Child nodes of the driver are the individual PHY devices connected to the
> -MDIO bus. They must have a "reg" property given the PHY address on the MDIO bus.
> -
> -Examples:
> -
> -ethernet@10204000 {
> -	compatible = "rockchip,rk3188-emac";
> -	reg = <0xc0fc2000 0x3c>;
> -	interrupts = <6>;
> -	mac-address = [ 00 11 22 33 44 55 ];
> -
> -	clocks = <&cru HCLK_EMAC>, <&cru SCLK_MAC>;
> -	clock-names = "hclk", "macref";
> -
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&emac_xfer>, <&emac_mdio>, <&phy_int>;
> -
> -	rockchip,grf = <&grf>;
> -
> -	phy = <&phy0>;
> -	phy-mode = "rmii";
> -	phy-supply = <&vcc_rmii>;
> -
> -	#address-cells = <1>;
> -	#size-cells = <0>;
> -	phy0: ethernet-phy@0 {
> -	      reg = <1>;
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/net/emac_rockchip.yaml b/Documentation/devicetree/bindings/net/emac_rockchip.yaml
> new file mode 100644
> index 000000000..03173fa7b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/emac_rockchip.yaml
> @@ -0,0 +1,112 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/emac_rockchip.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip RK3036/RK3066/RK3188 Ethernet Media Access Controller (EMAC)
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3036-emac
> +      - rockchip,rk3066-emac
> +      - rockchip,rk3188-emac
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 2
> +    items:
> +      - description: host clock
> +      - description: reference clock
> +      - description: mac TX/RX clock
> +
> +  clock-names:
> +    minItems: 2
> +    items:
> +      - const: hclk
> +      - const: macref
> +      - const: macclk

This is also a change, mention it briefly in the commit msg.

> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the syscon GRF used to control speed and mode for the EMAC.
> +
> +  phy-supply:
> +    description:
> +      Phandle to a regulator if the PHY needs one.
> +
> +  mdio:
> +    $ref: mdio.yaml#
> +    unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - rockchip,grf

phy-handle and phy-mode. Probably mdio as well?

> +
> +allOf:
> +  - $ref: "ethernet-controller.yaml#"

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
