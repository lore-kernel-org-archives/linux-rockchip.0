Return-Path: <SRS0=DwMt=J2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF33C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 21:37:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2472661445
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 21:37:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2472661445
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2pfAUpM/urTrtU6VLMsCDEO0gG8xn4SFnpibTeyttEs=; b=RodBmxUa2yT+LEmQ5rIkztvGk
	JBxADR/H46vTbx5PXtqIJDKSMzNUmaC3rZrHG0/c86ChjlUPmeQQ/75VF0/kjy7qwmjX2tFcdIsfP
	TBVx6OU06KlS3eqwl+I4PUbksqYuKdF5I6vudWBvK6Pz1eWnKzKsZYyqSCKNzSYcJf45BLjE6nia+
	W1sjuR87ZiOsq8s8r6RkOvEzUvwaR5FUMeBg+F2OyK0FR+u+KSYIsgHvaiheXmH+ssVU+tJrtMsEs
	qfT9h6lhqOoJ6CkCedGI2ElY7moIcz6f0MXM/MUkuez/FixYsKEB4pbju3MUWTzhpXskAodG6bsCD
	MN3WcOeNA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcELV-006aNj-AC; Thu, 29 Apr 2021 21:37:17 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcELS-006aMd-ND
 for linux-rockchip@desiato.infradead.org; Thu, 29 Apr 2021 21:37:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=boOMjil7NyRPPxSfGbH8NqLTaQoANhvid5nxhOE8Ll0=; b=u+qGDidLLyBH9QBkyt2Zj54rcM
 qGoJVkC1dWIAlzWFQabqWykCNKAO6w5BmE/2i0BPtL/J4sES8p78hu64HsHL1BMYUl7xIQxeODZKA
 mWUs6Vs6ci1bphXH8KGlorvUoCRIXPx2rBMVNXo9aPLGga7kA6G7t7FO0xomBgprRV6T/3izr5E89
 9waZpBK0+smT7b/56ofj18T3bNIfBxs7EaTz6uuMuDYDJaLuZzqPX3hGFz/FLJ06JdMsU9xb+8X/s
 MezG3/WuHVKZSijlWj3H1SbvWjfbw4zGosvYR2iHZJjeXyYQnGX5tP0nK0ipKiDa7nZ2BqFxY0yGC
 U3PVWT/w==;
Received: from mail-oi1-f181.google.com ([209.85.167.181])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcELF-000zM6-Gl
 for linux-rockchip@lists.infradead.org; Thu, 29 Apr 2021 21:37:03 +0000
Received: by mail-oi1-f181.google.com with SMTP id u80so34368221oia.0
 for <linux-rockchip@lists.infradead.org>; Thu, 29 Apr 2021 14:37:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=boOMjil7NyRPPxSfGbH8NqLTaQoANhvid5nxhOE8Ll0=;
 b=V0uw4oOQHtgkeGqu7K7bYKxqJOJW/NTlp0Wgb5Z71vXVtSRb/KMSuBg10QocKU9a2e
 Qccufcw5r24OBpeIq2iGHzmi1C9mvUhvgvMvEdKFtPVveH4+uZqIOSzMXXPJHCkGCrSC
 G7dOcb6Qd73mNT9Yj8HtocGfkeCgUL7/vsghYrfco41BGObHYctT3hyoCA05wKXxlL3X
 9Y7KKDU4Q6shUcKdmK4uynRgug20lvt6eTDVsDgqkYWsihfK0/ga7vdFl9zBmTsuuhDh
 7DALAoQ9js85TGHwI2iy27DirlrxRVzlwVmvA1tWpXL8z1BRPkG6hmw8B+UcfWLOmbcO
 JUfQ==
X-Gm-Message-State: AOAM532JePae/RQheUN+cKnOGJpyES2grRXhpU0e9wvizC83rhztqkw/
 0pzVtrORszowbe9E8rCfRA==
X-Google-Smtp-Source: ABdhPJyHYzw16n2HkrM5iDIBUTOhmroKn636bn+qDW8o9FPD2Hgl+PVNy1tQuaXRQfjjRqz/KRRoaw==
X-Received: by 2002:aca:4056:: with SMTP id n83mr8725262oia.47.1619732220318; 
 Thu, 29 Apr 2021 14:37:00 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m13sm225077otp.71.2021.04.29.14.36.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 14:36:59 -0700 (PDT)
Received: (nullmailer pid 1818964 invoked by uid 1000);
 Thu, 29 Apr 2021 21:36:57 -0000
Date: Thu, 29 Apr 2021 16:36:57 -0500
From: Rob Herring <robh@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Jose Abreu <joabreu@synopsys.com>,
 Heiko Stuebner <heiko@sntech.de>, "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Kever Yang <kever.yang@rock-chips.com>, David Wu <david.wu@rock-chips.com>,
 Johan Jonker <jbx6244@gmail.com>, kernel@collabora.com
Subject: Re: [PATCH 3/3] dt-bindings: net: convert rockchip-dwmac to
 json-schema
Message-ID: <20210429213657.GA1812381@robh.at.kernel.org>
References: <20210426024118.18717-1-ezequiel@collabora.com>
 <20210426024118.18717-3-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210426024118.18717-3-ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210429_143701_591048_C1A7470A 
X-CRM114-Status: GOOD (  18.63  )
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

On Sun, Apr 25, 2021 at 11:41:18PM -0300, Ezequiel Garcia wrote:
> Convert Rockchip dwmac controller dt-bindings to YAML.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../bindings/net/rockchip-dwmac.txt           |  76 -----------
>  .../bindings/net/rockchip-dwmac.yaml          | 120 ++++++++++++++++++
>  2 files changed, 120 insertions(+), 76 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/rockchip-dwmac.txt
>  create mode 100644 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml


> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> new file mode 100644
> index 000000000000..5acddb6171bf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> @@ -0,0 +1,120 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/net/rockchip-dwmac.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Rockchip 10/100/1000 Ethernet driver(GMAC)
> +
> +maintainers:
> +  - David Wu <david.wu@rock-chips.com>
> +
> +# We need a select here so we don't match all nodes with 'snps,dwmac'

No you don't because there isn't 'snps,dwmac' in the compatible.

> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - rockchip,px30-gmac
> +          - rockchip,rk3128-gmac
> +          - rockchip,rk3228-gmac
> +          - rockchip,rk3288-gmac
> +          - rockchip,rk3328-gmac
> +          - rockchip,rk3366-gmac
> +          - rockchip,rk3368-gmac
> +          - rockchip,rk3399-gmac
> +          - rockchip,rv1108-gmac
> +  required:
> +    - compatible
> +
> +allOf:
> +  - $ref: "snps,dwmac.yaml#"
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - rockchip,px30-gmac
> +          - rockchip,rk3128-gmac
> +          - rockchip,rk3228-gmac
> +          - rockchip,rk3288-gmac
> +          - rockchip,rk3328-gmac
> +          - rockchip,rk3366-gmac
> +          - rockchip,rk3368-gmac
> +          - rockchip,rk3399-gmac
> +          - rockchip,rv1108-gmac
> +
> +  clocks:
> +    minItems: 5
> +    maxItems: 8
> +
> +  clock-names:
> +    contains:
> +      enum:
> +        - stmmaceth
> +        - mac_clk_tx
> +        - mac_clk_rx
> +        - aclk_mac
> +        - pclk_mac
> +        - clk_mac_ref
> +        - clk_mac_refout
> +        - clk_mac_speed

This would be an example of one too complex to define any order.

> +
> +  clock_in_out:
> +    description:
> +      For RGMII, it must be "input", means main clock(125MHz)
> +      is not sourced from SoC's PLL, but input from PHY.
> +      For RMII, "input" means PHY provides the reference clock(50MHz),
> +      "output" means GMAC provides the reference clock.
> +    $ref: /schemas/types.yaml#/definitions/string
> +    enum: [input, output]
> +
> +  rockchip,grf:
> +    description: The phandle of the syscon node for the general register file.
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +
> +  tx_delay:
> +    description: Delay value for TXD timing. Range value is 0~0x7F, 0x30 as default.

range, default, those are constraints. Make a schema.

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  rx_delay:
> +    description: Delay value for RXD timing. Range value is 0~0x7F, 0x10 as default.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  phy-supply:
> +    description: PHY regulator
> +
> +required:
> +  - compatible
> +  - clocks
> +  - clock-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/rk3288-cru.h>
> +
> +    gmac: ethernet@ff290000 {
> +        compatible = "rockchip,rk3288-gmac";
> +        reg = <0xff290000 0x10000>;
> +        interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names = "macirq";
> +        clocks = <&cru SCLK_MAC>,
> +                 <&cru SCLK_MAC_RX>, <&cru SCLK_MAC_TX>,
> +                 <&cru SCLK_MACREF>, <&cru SCLK_MACREF_OUT>,
> +                 <&cru ACLK_GMAC>, <&cru PCLK_GMAC>;
> +        clock-names = "stmmaceth",
> +                      "mac_clk_rx", "mac_clk_tx",
> +                      "clk_mac_ref", "clk_mac_refout",
> +                      "aclk_mac", "pclk_mac";
> +        assigned-clocks = <&cru SCLK_MAC>;
> +        assigned-clock-parents = <&ext_gmac>;
> +
> +        rockchip,grf = <&grf>;
> +        phy-mode = "rgmii";
> +        clock_in_out = "input";
> +        tx_delay = <0x30>;
> +        rx_delay = <0x10>;
> +    };
> -- 
> 2.30.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
