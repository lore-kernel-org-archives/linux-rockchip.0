Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0558C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 07:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2dbmvEcywsde4cM6IOcGnVUY20UXIF0t7BgJqlPnAQ=; b=upEMQxaoDwgW9q
	28dJVQkeOritIVVvZcOTXULmh/wIbD1oIyAAETZUBelrq3sGSWM8Ns/wRbga0V7zYycXWp/nQh4a6
	azsFvNDUxNkKIdhBWX9H0A5jlnQg9Z1+wg8D5nE1LFiGePGlhxb2g8RkHZHXr/j/y8GDKHkEAcuth
	dJ7yoDeKnQTFPxftT2+n1GxH068FpfhyEGdBwSf+hZ28QsTTQxhBphWd9ra8EQDF2El20vzXstbS3
	k5eNPjDK7Tv1tmLg1ETQw+7GnA8QRAu19qQ5i1B4KREB+U9X8SreyaVt8r8C0/zN0FDDbwjZFXm/A
	N1lSMMGZFs4kMdCZUfdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZSVa-00EWsH-23; Wed, 30 Mar 2022 07:12:46 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZSVW-00EWr6-VL
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 07:12:44 +0000
Received: by mail-ej1-x630.google.com with SMTP id bg10so39602722ejb.4
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Mar 2022 00:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=5ug0Vb3n/y1kMz7s7i3LwK9TDhCTMMMovBQ50l01MHg=;
 b=atzlgvzvihkz9xDD+XoJpzmbD9wjky+0js/tcXak7y6EwOAw5ALVhRjF22BSYXIw8D
 u3L2YlB9BDgnkqmv1qW73BbVLyB0DE5MrSq/RFLlx9f18JSi8OqigESvvSVavkvfjzV1
 ocppm0wraVtHB979mqPPIh1Gre3jhpLOxt6eRJtl2sU4DvwVr6ECj1nui6nsRgvrswVv
 EJKI4V9v1XUUdooT9WtzBXT5ld5TC2bD7sDwPLDTW4Ai7Jf4QMZ86W3I4xCOMFaZ0d4u
 A69qY6XqZeaMSvc7nL4uzUqAbmLEcNHslJbNxhEv9QaqW5kERqwUGoEmHrFb4q8VA4Le
 eDFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=5ug0Vb3n/y1kMz7s7i3LwK9TDhCTMMMovBQ50l01MHg=;
 b=z3baTPJkjWBI0Vm7NiUQxHYULOuclWLFhajHmC217TC3pAmecl5cpofuIGYnHhJZus
 0Q9QagTHjy3o8mcmA6uFAu+X2uyO/Jrl3Cje1l5kCEjVPVIddeMvwMDLZSyz/VtJ1bGa
 ixcc3O5IzA4i17YUVcC9CbQsbK3twwKIskDGAFSGZbgqP4+rqkNqhyzVqfSYtnxa9kZu
 UqnDAXLFPyDXLtu5B+FVxT7NdGbK2oO8mF/5NeBDqKnMdct88Mbqw72FQoBXQPi4TiIy
 QFdizvmMrnwow+xyOUN1mgF//gpNgBkfFm3+YqKsFnQeAxzspggENlk639+2TkHVYeGz
 UJQQ==
X-Gm-Message-State: AOAM530/FUetk9rrHDkpaPhTvlz570op6UjquJy746qhB3U9upFjdNH2
 /s/CXEOxgrTkId27kuxqfa5jiA==
X-Google-Smtp-Source: ABdhPJxpMBRA7Iu+FkwPspTUBMkW5jdmZ4XJutw6rxD5PFu1SoJKSrXDDCjRaWv86N+ZQBZmm7xWzQ==
X-Received: by 2002:a17:906:5cb:b0:6cf:954:d84d with SMTP id
 t11-20020a17090605cb00b006cf0954d84dmr38804313ejt.560.1648624361193; 
 Wed, 30 Mar 2022 00:12:41 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 f17-20020a056402355100b0041925e80963sm9658657edd.41.2022.03.30.00.12.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Mar 2022 00:12:40 -0700 (PDT)
Message-ID: <63ad0846-8acd-1a9e-c625-9af3b073646c@linaro.org>
Date: Wed, 30 Mar 2022 09:12:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1] dt-bindings: clock: convert rockchip,px30-cru.txt to
 YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220329195057.15571-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220329195057.15571-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_001243_092611_77BECC98 
X-CRM114-Status: GOOD (  25.98  )
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

On 29/03/2022 21:50, Johan Jonker wrote:
> Convert rockchip,px30-cru.txt to YAML.
> 
> Changes against original bindings:
>   Use compatible string: "rockchip,px30-pmucru"
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/clock/rockchip,px30-cru.txt      | 70 --------------
>  .../bindings/clock/rockchip,px30-cru.yaml     | 96 +++++++++++++++++++
>  2 files changed, 96 insertions(+), 70 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt
> deleted file mode 100644
> index 55e78cdde..000000000
> --- a/Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt
> +++ /dev/null
> @@ -1,70 +0,0 @@
> -* Rockchip PX30 Clock and Reset Unit
> -
> -The PX30 clock controller generates and supplies clock to various
> -controllers within the SoC and also implements a reset controller for SoC
> -peripherals.
> -
> -Required Properties:
> -
> -- compatible: PMU for CRU should be "rockchip,px30-pmu-cru"
> -- compatible: CRU should be "rockchip,px30-cru"
> -- reg: physical base address of the controller and length of memory mapped
> -  region.
> -- clocks: A list of phandle + clock-specifier pairs for the clocks listed
> -          in clock-names
> -- clock-names: Should contain the following:
> -  - "xin24m" for both PMUCRU and CRU
> -  - "gpll" for CRU (sourced from PMUCRU)
> -- #clock-cells: should be 1.
> -- #reset-cells: should be 1.
> -
> -Optional Properties:
> -
> -- rockchip,grf: phandle to the syscon managing the "general register files"
> -  If missing, pll rates are not changeable, due to the missing pll lock status.
> -
> -Each clock is assigned an identifier and client nodes can use this identifier
> -to specify the clock which they consume. All available clocks are defined as
> -preprocessor macros in the dt-bindings/clock/px30-cru.h headers and can be
> -used in device tree sources. Similar macros exist for the reset sources in
> -these files.
> -
> -External clocks:
> -
> -There are several clocks that are generated outside the SoC. It is expected
> -that they are defined using standard clock bindings with following
> -clock-output-names:
> - - "xin24m" - crystal input - required,
> - - "xin32k" - rtc clock - optional,
> - - "i2sx_clkin" - external I2S clock - optional,
> - - "gmac_clkin" - external GMAC clock - optional
> -
> -Example: Clock controller node:
> -
> -	pmucru: clock-controller@ff2bc000 {
> -		compatible = "rockchip,px30-pmucru";
> -		reg = <0x0 0xff2bc000 0x0 0x1000>;
> -		#clock-cells = <1>;
> -		#reset-cells = <1>;
> -	};
> -
> -	cru: clock-controller@ff2b0000 {
> -		compatible = "rockchip,px30-cru";
> -		reg = <0x0 0xff2b0000 0x0 0x1000>;
> -		rockchip,grf = <&grf>;
> -		#clock-cells = <1>;
> -		#reset-cells = <1>;
> -	};
> -
> -Example: UART controller node that consumes the clock generated by the clock
> -  controller:
> -
> -	uart0: serial@ff030000 {
> -		compatible = "rockchip,px30-uart", "snps,dw-apb-uart";
> -		reg = <0x0 0xff030000 0x0 0x100>;
> -		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
> -		clocks = <&pmucru SCLK_UART0_PMU>, <&pmucru PCLK_UART0_PMU>;
> -		clock-names = "baudclk", "apb_pclk";
> -		reg-shift = <2>;
> -		reg-io-width = <4>;
> -	};
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml
> new file mode 100644
> index 000000000..aa095f375
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml
> @@ -0,0 +1,96 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/rockchip,px30-cru.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip PX30 Clock and Reset Unit (CRU)
> +
> +maintainers:
> +  - Elaine Zhang <zhangqing@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description: |
> +  The PX30 clock controller generates and supplies clocks to various
> +  controllers within the SoC and also implements a reset controller for SoC
> +  peripherals.
> +  Each clock is assigned an identifier and client nodes can use this identifier
> +  to specify the clock which they consume. All available clocks are defined as
> +  preprocessor macros in the dt-bindings/clock/px30-cru.h headers and can be
> +  used in device tree sources. Similar macros exist for the reset sources in
> +  these files.
> +  There are several clocks that are generated outside the SoC. It is expected
> +  that they are defined using standard clock bindings with following
> +  clock-output-names:
> +    - "xin24m"     - crystal input       - required
> +    - "xin32k"     - rtc clock           - optional
> +    - "i2sx_clkin" - external I2S clock  - optional
> +    - "gmac_clkin" - external GMAC clock - optional
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,px30-cru
> +      - rockchip,px30-pmucru
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  "#reset-cells":
> +    const: 1
> +
> +  clocks:
> +    minItems: 1
> +    items:
> +      - description: Clock for both PMUCRU and CRU
> +      - description: Clock for CRU (sourced from PMUCRU)
> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: xin24m
> +      - const: gpll

You need allOf:if:then: constraining clocks and clock-names per compatible.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
