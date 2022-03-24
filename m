Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CF89C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Mar 2022 14:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ri9c/zGHYnIgZczp7I55N3J3I8BwAPsDXKoVp3WM9po=; b=4XLb4+PY4Sdkno
	hWaA0BVJAq8fbCZzEdZhQlVvubtd3lFUJBDYDP8XBfcWTVcoBfEf206P1/O5OEPsx2hazjD0N5XMa
	ZkN1rzkoFKHab08oSXjnQ8sc+UVP/N4BWi40EePr3NWm9Ag8wnqi/1kufskyTVJb3ELRp9cwjGU1e
	SiNcbpQBtZFDp1e7M2uQcPgsWC78c4op89EJ4e+tNFIa4tOS3RyvaqGg/XJch331qly/7ctdEj0AH
	Iq3GeNSRWN2T2SjJoTvbb46FnRdjvduP+wDMsNYKgrwMRplIgwG/MyoUBJPUJ0E8EAijSo6jS4E5a
	AVrgqXXBOg9/CobNSXpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXOSw-00GtjY-MK; Thu, 24 Mar 2022 14:29:30 +0000
Received: from mail-wr1-f43.google.com ([209.85.221.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXOS3-00GtS6-Nj; Thu, 24 Mar 2022 14:28:37 +0000
Received: by mail-wr1-f43.google.com with SMTP id t11so6890458wrm.5;
 Thu, 24 Mar 2022 07:28:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=f48oD3A4pzq9XiG2BbQysIkG06YGH9C2RvCqIx0bChc=;
 b=QzoIkSPFLlYRXoLed2YzUjjcJX929ZrYOU8kkfeJrCCbd17IWLiLO1xlBX5T3Rvkp1
 Qi2YxzMUEREfq38gmulG519bS2o0yTzry8+cSJXMfzYWFWtL0xqOCVaESSubiuPmsBie
 2uRHQKXRPYrBhOasx6DJ6rm25UGEuWNZ4YvwCd38Z9dwUDkZswsIpBk3EtHiJ1frzlL9
 R5KiQzPNuuwRQRA9lwvEQGJD22lbRw/odFvnBHxpMS5/hsx3veQkhgI4d+FU+gtly7p8
 K30uUjMvIfWc6AMPcT18NLLh+DFtR7WNDLBNa88qTl13EYdbO2g1Ma7gkfeN7km0y5yT
 3g9A==
X-Gm-Message-State: AOAM531sT4pl1K2k8nwAt2uRRWiD9wQFDoBb7VTNF+0zPAqUY3EMQaCU
 HqcLnu2Is6dNtfVxSjA++e4=
X-Google-Smtp-Source: ABdhPJxC7cHhryRpYCMgAM7q7W5uOJdQCZlwQDTLeZoCHnCN5lDxPV2JZJbSiwb2nh5mJiPljPmH5Q==
X-Received: by 2002:a5d:6c65:0:b0:204:119d:37e2 with SMTP id
 r5-20020a5d6c65000000b00204119d37e2mr4648532wrz.635.1648132113605; 
 Thu, 24 Mar 2022 07:28:33 -0700 (PDT)
Received: from [192.168.0.157] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.googlemail.com with ESMTPSA id
 y15-20020a056000168f00b002057a9f9f5csm3449789wrd.31.2022.03.24.07.28.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Mar 2022 07:28:32 -0700 (PDT)
Message-ID: <f7493d93-6c8a-efa9-1f2c-a0003a6d43b2@kernel.org>
Date: Thu, 24 Mar 2022 15:28:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1] dt-bindings: clock: convert rockchip, rk3188-cru.txt to
 YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220324133229.24035-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220324133229.24035-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220324_072835_850830_28F84EB6 
X-CRM114-Status: GOOD (  28.75  )
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

On 24/03/2022 14:32, Johan Jonker wrote:
> Current dts files with RK3188/RK3066 'cru' nodes are manually verified.
> In order to automate this process rockchip,rk3188-cru.txt has to be
> converted to YAML.
> 
> Changed:
>   Add properties to fix notifications by clocks.yaml for example:
>     clocks
>     assigned-clock-rates
>     assigned-clocks
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/clock/rockchip,rk3188-cru.txt    | 61 --------------
>  .../bindings/clock/rockchip,rk3188-cru.yaml   | 81 +++++++++++++++++++
>  2 files changed, 81 insertions(+), 61 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.txt
> deleted file mode 100644
> index 7f368530a..000000000
> --- a/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.txt
> +++ /dev/null
> @@ -1,61 +0,0 @@
> -* Rockchip RK3188/RK3066 Clock and Reset Unit
> -
> -The RK3188/RK3066 clock controller generates and supplies clock to various
> -controllers within the SoC and also implements a reset controller for SoC
> -peripherals.
> -
> -Required Properties:
> -
> -- compatible: should be "rockchip,rk3188-cru", "rockchip,rk3188a-cru" or
> -			"rockchip,rk3066a-cru"
> -- reg: physical base address of the controller and length of memory mapped
> -  region.
> -- #clock-cells: should be 1.
> -- #reset-cells: should be 1.
> -
> -Optional Properties:
> -
> -- rockchip,grf: phandle to the syscon managing the "general register files"
> -  If missing pll rates are not changeable, due to the missing pll lock status.
> -
> -Each clock is assigned an identifier and client nodes can use this identifier
> -to specify the clock which they consume. All available clocks are defined as
> -preprocessor macros in the dt-bindings/clock/rk3188-cru.h and
> -dt-bindings/clock/rk3066-cru.h headers and can be used in device tree sources.
> -Similar macros exist for the reset sources in these files.
> -
> -External clocks:
> -
> -There are several clocks that are generated outside the SoC. It is expected
> -that they are defined using standard clock bindings with following
> -clock-output-names:
> - - "xin24m" - crystal input - required,
> - - "xin32k" - rtc clock - optional,
> - - "xin27m" - 27mhz crystal input on rk3066 - optional,
> - - "ext_hsadc" - external HSADC clock - optional,
> - - "ext_cif0" - external camera clock - optional,
> - - "ext_rmii" - external RMII clock - optional,
> - - "ext_jtag" - externalJTAG clock - optional
> -
> -Example: Clock controller node:
> -
> -	cru: cru@20000000 {
> -		compatible = "rockchip,rk3188-cru";
> -		reg = <0x20000000 0x1000>;
> -		rockchip,grf = <&grf>;
> -
> -		#clock-cells = <1>;
> -		#reset-cells = <1>;
> -	};
> -
> -Example: UART controller node that consumes the clock generated by the clock
> -  controller:
> -
> -	uart0: serial@10124000 {
> -		compatible = "snps,dw-apb-uart";
> -		reg = <0x10124000 0x400>;
> -		interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
> -		reg-shift = <2>;
> -		reg-io-width = <1>;
> -		clocks = <&cru SCLK_UART0>;
> -	};
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
> new file mode 100644
> index 000000000..136a9771e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
> @@ -0,0 +1,81 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/rockchip,rk3188-cru.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip RK3188/RK3066 Clock and Reset Unit (CRU)
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description: |
> +  The RK3188/RK3066 clock controller generates and supplies clocks to various
> +  controllers within the SoC and also implements a reset controller for SoC
> +  peripherals.
> +  Each clock is assigned an identifier and client nodes can use this identifier
> +  to specify the clock which they consume. All available clocks are defined as
> +  preprocessor macros in the dt-bindings/clock/rk3188-cru.h and
> +  dt-bindings/clock/rk3066-cru.h headers and can be used in device tree sources.
> +  Similar macros exist for the reset sources in these files.
> +  There are several clocks that are generated outside the SoC. It is expected
> +  that they are defined using standard clock bindings with following
> +  clock-output-names:
> +    - "xin24m"    - crystal input                 - required
> +    - "xin32k"    - RTC clock                     - optional
> +    - "xin27m"    - 27mhz crystal input on RK3066 - optional
> +    - "ext_hsadc" - external HSADC clock          - optional
> +    - "ext_cif0"  - external camera clock         - optional
> +    - "ext_rmii"  - external RMII clock           - optional
> +    - "ext_jtag"  - external JTAG clock           - optional
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3066a-cru
> +      - rockchip,rk3188-cru
> +      - rockchip,rk3188a-cru
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

You need maxItems. Would be also nice to describe what should be here as
input


> +
> +  assigned-clock-rates:
> +    minItems: 1
> +    maxItems: 64
> +
> +  assigned-clocks:
> +    minItems: 1
> +    maxItems: 64

Both assigned-xxx should not be necessary. Did you try validate the dtbs
without these?

I guess you added "clocks" above because of these, so you need to
correct the DTS because asigned-xxx depend on clocks property.

> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the syscon managing the "general register files" (GRF),
> +      if missing pll rates are not changeable, due to the missing pll lock status.
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#clock-cells"
> +  - "#reset-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    cru: cru@20000000 {

Node name: clock-controller

> +      compatible = "rockchip,rk3188-cru";
> +      reg = <0x20000000 0x1000>;
> +      rockchip,grf = <&grf>;
> +      #clock-cells = <1>;
> +      #reset-cells = <1>;
> +    };


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
