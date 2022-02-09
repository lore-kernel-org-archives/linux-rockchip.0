Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6302DC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 12:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uu7fAupUBUQY96Zam1K+rDDlbc79ml7+0/DSKhm5B1Y=; b=l5sGYhESev9zRM
	Y/IsMkoChTmapUWzHioWbozDxQewl+z/jKHdlnLrelNiOyCvxipVLZxhW7RCmf6gGaLDlxdbyFASt
	ZhBQSLtxmNiJ/luaiL7K60PQq1b2lkCCZ7z5GMWnv7Z1szy/V1z3MPUiAOh4NqYoyaEPWGaRlVJ2C
	7lY6OkGQBk84EhaI8xDLl/C9bcvgGxsx+uwz12C8mgAmBD2+4OigPxrN1zHqkKSEeldGG/ofHnigz
	duCWtxgG+bXSczQsZNiiWpvl1C/ksEWoNlWJklLg208HXJpG/MpMotRbXC0RrWCh4Jf3y+07v+i+P
	gPjV5q1Qs2fQv4qvrEVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHmT5-0005JI-8x; Wed, 09 Feb 2022 12:53:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHmSs-0005Fz-80; Wed, 09 Feb 2022 12:52:55 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nHmSj-0001ci-RZ; Wed, 09 Feb 2022 13:52:45 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: davem@davemloft.net, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org,
 Corentin Labbe <clabbe@baylibre.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH] dt-bindings: crypto: convert rockchip-crypto to yaml
Date: Wed, 09 Feb 2022 13:52:45 +0100
Message-ID: <2571349.qrhAyUUNuM@diego>
In-Reply-To: <20220209124725.2080986-1-clabbe@baylibre.com>
References: <20220209124725.2080986-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_045254_326730_F6A62391 
X-CRM114-Status: GOOD (  22.04  )
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

Am Mittwoch, 9. Februar 2022, 13:47:25 CET schrieb Corentin Labbe:
> Convert rockchip-crypto to yaml.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../bindings/crypto/rockchip-crypto.txt       | 28 --------
>  .../bindings/crypto/rockchip-crypto.yaml      | 64 +++++++++++++++++++
>  2 files changed, 64 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
>  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.yaml
> 
> diff --git a/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt b/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> deleted file mode 100644
> index 5e2ba385b8c9..000000000000
> --- a/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -Rockchip Electronics And Security Accelerator
> -
> -Required properties:
> -- compatible: Should be "rockchip,rk3288-crypto"
> -- reg: Base physical address of the engine and length of memory mapped
> -       region
> -- interrupts: Interrupt number
> -- clocks: Reference to the clocks about crypto
> -- clock-names: "aclk" used to clock data
> -	       "hclk" used to clock data
> -	       "sclk" used to clock crypto accelerator
> -	       "apb_pclk" used to clock dma
> -- resets: Must contain an entry for each entry in reset-names.
> -	  See ../reset/reset.txt for details.
> -- reset-names: Must include the name "crypto-rst".
> -
> -Examples:
> -
> -	crypto: cypto-controller@ff8a0000 {
> -		compatible = "rockchip,rk3288-crypto";
> -		reg = <0xff8a0000 0x4000>;
> -		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
> -		clocks = <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
> -			 <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
> -		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
> -		resets = <&cru SRST_CRYPTO>;
> -		reset-names = "crypto-rst";
> -	};
> diff --git a/Documentation/devicetree/bindings/crypto/rockchip-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip-crypto.yaml
> new file mode 100644
> index 000000000000..392d89055398
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/crypto/rockchip-crypto.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/crypto/rockchip-crypto.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip Electronics And Security Accelerator
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    const: rockchip,rk3288-crypto
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: clock data
> +      - description: clock data
> +      - description: clock crypto accelerator
> +      - description: clock dma
> +
> +  clock-names:
> +    items:
> +      - const: aclk
> +      - const: hclk
> +      - const: sclk
> +      - const: apb_pclk
> +
> +  resets:
> +    minItems: 1
> +
> +  reset-names:
> +    const: crypto-rst
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |

Binding itself looks good.

But the constants below will probably trigger a compiler-error and
therefore Rob's bot.

You will need something like 

    #include <dt-bindings/clock/rk3399-cru.h>
    #include <dt-bindings/interrupt-controller/arm-gic.h>

here.

A "make ..... dt_binding_check" should show the issue and also
it going away with the right includes ;-)

Heiko


> +    crypto: crypto@ff8a0000 {
> +      compatible = "rockchip,rk3288-crypto";
> +      reg = <0xff8a0000 0x4000>;
> +      interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
> +               <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
> +      clock-names = "aclk", "hclk", "sclk", "apb_pclk";
> +      resets = <&cru SRST_CRYPTO>;
> +      reset-names = "crypto-rst";
> +    };
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
