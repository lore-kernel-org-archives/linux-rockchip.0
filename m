Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF415E95A95
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 00:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=joBj9CsjCktD/nkKuUhZ424K9LVcMtoOv8ujB8lbE1Q=; b=wX68X6IJpzEfEr
	NnzsbGQlunfJqjiH65w60zD9edy9KcuRMaJBu1nbyAunu79Q94zHN0KYg+hy/lxiga8H+gTObrncF
	Jhehxwh5RS0gbbF4TuVn8IxPEkMHh8789rLIXMowlGPwLQprBSzpLw7wfQG6b74jsfGeIJhBuYNmx
	Gb3CLr7rLfjcdMi7nVn4amX8nEiz5jgjcUNYllhylz80fkY1q/tornAjPMVF327v7TLz06uMYTZgK
	pC6KbGcQgl0S4pxmxb9RposNCzreW/XfngivjzIeAOnw7SRlElaCtX7uOrTp8i2E/ONvZekpQC+m1
	bPpjntzQW1wKbcJVPDzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpeJz-009Xlg-0q;
	Mon, 09 Oct 2023 00:40:31 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpeJv-009Xjv-2O;
	Mon, 09 Oct 2023 00:40:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id C0C04B80CA6;
	Mon,  9 Oct 2023 00:40:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A52EDC433C8;
	Mon,  9 Oct 2023 00:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696812021;
	bh=J0GRDxm080uPCD8Am8KeUyA7JKGTDkfvRl5M8xldpxw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TaduiPvw4uewX3e7GiHqNWuI+H0eTaDAhLngRqTzr4/1KPmzqP9zCPAxH/lieIm7X
	 v9XTWRvZwIW1I0OTQ27eYokYRysoDYMlOUDdxL+RMQGS+R9nvguwvx2BmS7jK1mJQW
	 RG/bET3ZJgw9NmlpkLm8+TbygS7cV6sgKPGLP02/VL8jntA3bY7Vbv78MukH66EZcV
	 wZpImZdqRyTSzXfyiGTSlbOsaYdDKU+1RKaNaFS4hXdOsVRAsUccU9mP7o78385F20
	 w+a2DyAC9eK/egYLXpMEgdG9d0r+26DueE/IPOhGbQXl/Lj7GORjKntVkSFfn+jhhD
	 yTeHH58wdPrWQ==
Message-ID: <d33cadd3-4432-44c7-8570-1a28e5669939@kernel.org>
Date: Mon, 9 Oct 2023 09:40:16 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 20/26] dt-bindings: devfreq: event: convert Rockchip
 DFI binding to yaml
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Rob Herring <robh@kernel.org>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-21-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-21-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231008_174028_080866_9391690C 
X-CRM114-Status: GOOD (  19.54  )
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

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> Convert the Rockchip DFI binding to yaml.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v4:
>     
>     - Revert to state of v3 (changes were lost in v4)
> 
>  .../bindings/devfreq/event/rockchip,dfi.yaml  | 61 +++++++++++++++++++
>  .../bindings/devfreq/event/rockchip-dfi.txt   | 18 ------
>  .../rockchip,rk3399-dmc.yaml                  |  2 +-
>  3 files changed, 62 insertions(+), 19 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> new file mode 100644
> index 0000000000000..7a82f6ae0701e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/devfreq/event/rockchip,dfi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip DFI
> +
> +maintainers:
> +  - Sascha Hauer <s.hauer@pengutronix.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3399-dfi
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: pclk_ddr_mon
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  reg:
> +    maxItems: 1
> +
> +  rockchip,pmu:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the syscon managing the "PMU general register files".
> +
> +required:
> +  - compatible
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/rk3308-cru.h>
> +
> +    bus {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +
> +      dfi: dfi@ff630000 {
> +        compatible = "rockchip,rk3399-dfi";
> +        reg = <0x00 0xff630000 0x00 0x4000>;
> +        interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH 0>;
> +        rockchip,pmu = <&pmugrf>;
> +        clocks = <&cru PCLK_DDR_MON>;
> +        clock-names = "pclk_ddr_mon";
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt b/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
> deleted file mode 100644
> index 148191b0fc158..0000000000000
> --- a/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -
> -* Rockchip rk3399 DFI device
> -
> -Required properties:
> -- compatible: Must be "rockchip,rk3399-dfi".
> -- reg: physical base address of each DFI and length of memory mapped region
> -- rockchip,pmu: phandle to the syscon managing the "pmu general register files"
> -- clocks: phandles for clock specified in "clock-names" property
> -- clock-names : the name of clock used by the DFI, must be "pclk_ddr_mon";
> -
> -Example:
> -	dfi: dfi@ff630000 {
> -		compatible = "rockchip,rk3399-dfi";
> -		reg = <0x00 0xff630000 0x00 0x4000>;
> -		rockchip,pmu = <&pmugrf>;
> -		clocks = <&cru PCLK_DDR_MON>;
> -		clock-names = "pclk_ddr_mon";
> -	};
> diff --git a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
> index fb4920397d08e..aba8649aaeb10 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
> +++ b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
> @@ -18,7 +18,7 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description:
>        Node to get DDR loading. Refer to
> -      Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt.
> +      Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml.
>  
>    clocks:
>      maxItems: 1

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
