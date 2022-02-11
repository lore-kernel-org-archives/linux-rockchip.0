Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2683C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 13:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpW73QzG7l+QuewsU/+arlxu8552soMNhBCuuFQyVjM=; b=vKTedNXsP2rH5Z
	ykJBhZ37j/X+a0Vj5egWzS3Q6wQdQDRa2A2HkGFRr4BzK+PpGxTeVEZrXvbk0EkyEUNDjlbMFKFMq
	bFNGR/ljzqNzlP7bNHE7RlaTwg99ng7+ADPLHQbiB18Un4O566FET2emYEfrZhQrDu36MYQl7G9rh
	d1n6TwDckAKYMhB4ELfxR1H9/bUVfQB1far0+8MnduFi0YzbAVeDlp+hggQ7Bi1nB3VUzkQNeN35W
	flHMtYj6uShc4G3pntAAmgruTlmSLi/zR9ySUifKH0lzd+v9B9tcleh+Syq5cUe2sV746cXg4cp/5
	UtPX5fmUpB5tiYxnwNWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIVjj-007LhI-Bp; Fri, 11 Feb 2022 13:13:19 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIVjU-007LbM-9M; Fri, 11 Feb 2022 13:13:06 +0000
Received: by mail-ej1-x629.google.com with SMTP id p15so22816809ejc.7;
 Fri, 11 Feb 2022 05:13:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=5K0CikJXBqops03xFbHcLxJj6g75cZR54I23Dc+2jY0=;
 b=l8s74E1JJ3QZ6OYNOUN3fl/zyCp+rXEY5LJqIBBwUe/PCJs4g4aONzuIsljlm9HKRU
 nBbK9Nj/d0E+UoZTXZnSwJtKATSbLtnjlstFIlNsPBvWucyC/x/t7q2ERfCkOH5RcXl6
 QuN8WIS5n7EAyXV1JNdHQ5RHy0TEQK3QtunwPHjxIyyvlh1qAprfdnInacIh0uTdUegR
 QyacjWSvJZUFQ8qP5NnwP+KykSQvjo04F9xg9LSgKBy4u9uQFXa/D+jGtBkAwakUvuEI
 hY7nNZFmG7VfhUG2S2YUkIrakopXGJIyDvW1PEGPHJ/6IgBTuhjmwy8cKD0Ja0NcIFiG
 xC8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=5K0CikJXBqops03xFbHcLxJj6g75cZR54I23Dc+2jY0=;
 b=t2bE+VEbMz5saugnlCofvgIJE0FL+RbFweqRs+oLr5sXjhZygLe7iJbMw/Ex1j0LTh
 fRD4o0GxrXMEpNmkAEFrWjfXwTxH0G3RJppfB+gFHLEJtSaU11LIQwobF797iq8XU2LH
 XJgeg259RR7isWRaMARqSYcdZFISZSLj7eDc6cio4TCIHN+GObX2+2THrTyKlUBMcaZ7
 GU77RDosMqe0qiRMGbXw81txYAb7lbXdpRx3QUCdqUjGgRQZJiMMv+9yvG4W9jJ8Ktmq
 Xgi/XoPl3Fo38McVizH5qfGHLC8addSAURT24cESyAfdzdtDMn6Kgm/bb/JjAxyafTuR
 /Wag==
X-Gm-Message-State: AOAM531XLRKjOnkyuXKZKqwTpM3MN+5F1GPcSwibJAYVyJ6pxxO7csZR
 rvxrCa91DpQNoDZZFV41CcE=
X-Google-Smtp-Source: ABdhPJx2LUop1nYKtP4tB1ZVYUG0AibVEEV+9xZq++OZ26qZlReGU5qNcffLxXyYbNm/B/IcNi4RRw==
X-Received: by 2002:a17:907:6e91:: with SMTP id
 sh17mr1363464ejc.534.1644585181608; 
 Fri, 11 Feb 2022 05:13:01 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 gt10sm4483811ejb.38.2022.02.11.05.13.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Feb 2022 05:13:01 -0800 (PST)
Message-ID: <dba5684a-1e5f-a4d4-604b-651751636cf3@gmail.com>
Date: Fri, 11 Feb 2022 14:13:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3] dt-bindings: crypto: convert rockchip-crypto to yaml
Content-Language: en-US
To: Corentin Labbe <clabbe@baylibre.com>, davem@davemloft.net,
 heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20220211115925.3382735-1-clabbe@baylibre.com>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220211115925.3382735-1-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_051304_402924_5095E0A3 
X-CRM114-Status: GOOD (  19.58  )
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



On 2/11/22 12:59, Corentin Labbe wrote:
> Convert rockchip-crypto to yaml
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
> Changes since v1:
> - fixed example
> - renamed to a new name
> - fixed some maxItems
> 
> Change since v2:
> - Fixed maintainers section
> 
>  .../crypto/rockchip,rk3288-crypto.yaml        | 66 +++++++++++++++++++
>  .../bindings/crypto/rockchip-crypto.txt       | 28 --------
>  2 files changed, 66 insertions(+), 28 deletions(-)

>  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
>  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt

There's more possible to this document:

dt-bindings: crypto: rockchip: add support for px30
https://github.com/rockchip-linux/kernel/commit/3655df1bc6114bda2a6417f39772a3cb008084ea

crypto: rockchip - add px30 crypto aes/des support
https://github.com/rockchip-linux/kernel/commit/ee082ae4f609f3b48f768420b31d8600448bd35a

> 
> diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
> new file mode 100644
> index 000000000000..2e1e9fa711c4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/crypto/rockchip,rk3288-crypto.yaml#
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
> +    maxItems: 1
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
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/rk3288-cru.h>
> +    crypto@ff8a0000 {
> +      compatible = "rockchip,rk3288-crypto";
> +      reg = <0xff8a0000 0x4000>;
> +      interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
> +               <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
> +      clock-names = "aclk", "hclk", "sclk", "apb_pclk";
> +      resets = <&cru SRST_CRYPTO>;
> +      reset-names = "crypto-rst";
> +    };
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

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
