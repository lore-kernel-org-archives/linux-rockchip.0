Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41AD8C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 15:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vU2uKRM1l9lUDtXvkcDqRoSwsQnfSyqzMlINHu1dWbo=; b=w3z2dOeOIm5Aqe
	pmCNCgtr3whSWZF10f2zwai1Zxe3OLJle9Jl6/UyFpCP8LjFUP8Asmi2NCsDfharwCY5hAbipCo32
	cfox8Iysd7Efu5vu85haQBQ4wBID5S2ur228cebJ+r2+9Xbt6RYEYe3v8b/197RKAWUkOzXv7/aKh
	nAXRwLMYxA2sJ6D44vw57uRryMzS+bRnuktNInuNDup0a2UY4TNx37YgqOPBF6hUv/mURCicFijbK
	RSe74ZBhYNYHsIN8Ro6NN9kmlelDu9gtBfxPemcGd480LkPSbmy329EvKsFuv94PaBOAMPH+5ab3K
	RqbzfkYViimuG9t6i8Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofjYG-00A0bc-Lk; Tue, 04 Oct 2022 15:09:44 +0000
Received: from mail-oa1-f49.google.com ([209.85.160.49])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofjYD-00A0Xm-4v; Tue, 04 Oct 2022 15:09:42 +0000
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-1322fa1cf6fso9528556fac.6;
        Tue, 04 Oct 2022 08:09:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=1/SfhmEZO2JzUCSYSQdFtcYRPEgPC0CoBH/8raGMDh8=;
        b=W/2rFfXUAPwOsykmbk8k1PDlFlIn3HF4/xaT5wVfHG8hb4W4BdM7EHfM86NLgqUpJ5
         kDXfF+eGpI6l/ntFplJ5qPadtPoyXUZlnbPaHC6PkOJft0tbt+75Ou66HJz/4QJBnyUZ
         jRR8jad7D8LWOc1IPIrZeWD5BSWENLJd8xEC4q/1Q+w5HjQdMwQr0UNCAaAMRROIrF8k
         VmzTQLWZOek7mziuar+JJP/YLRipE0Be0h4wtqI05ot7jALsueVJq5DBHUjv3LVs7FK7
         3eMUKHDG9aYd56dGDtAG53jj+1tUSnEt6oPkWr80sZeU9VSaIudjXyUuS4x98fLybI9c
         Kh6w==
X-Gm-Message-State: ACrzQf2OXi5k94ICejSKQYmzI7Q29fWmQS3HQqWpV6KCiDakuQysYA0f
	bSni6umXxAOFo1DwToYPNg==
X-Google-Smtp-Source: AMsMyM7jLjnl+O35aTbkfKDjVHvR3//Sg2sceoBCi4M/ndmVZF8lzWetnP5LNWSYt4i5fyF+WtyZkA==
X-Received: by 2002:a05:6870:b39e:b0:10d:8d5d:a9b with SMTP id w30-20020a056870b39e00b0010d8d5d0a9bmr133280oap.144.1664896171203;
        Tue, 04 Oct 2022 08:09:31 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r35-20020a056870582300b0011f22e74d5fsm3756563oap.20.2022.10.04.08.09.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Oct 2022 08:09:30 -0700 (PDT)
Received: (nullmailer pid 1507385 invoked by uid 1000);
	Tue, 04 Oct 2022 15:09:29 -0000
Date: Tue, 4 Oct 2022 10:09:29 -0500
From: Rob Herring <robh@kernel.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: linux-rockchip@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, Yifeng Zhao <yifeng.zhao@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>, Simon Xue <xxm@rock-chips.com>, Liang Chen <cl@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v5 1/5] dt-bindings: phy: rockchip: add PCIe v3 phy
Message-ID: <20221004150929.GA1506199-robh@kernel.org>
References: <20220825193836.54262-1-linux@fw-web.de>
 <20220825193836.54262-2-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220825193836.54262-2-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_080941_219668_93514473 
X-CRM114-Status: GOOD (  22.69  )
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

On Thu, Aug 25, 2022 at 09:38:32PM +0200, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add a new binding file for Rockchip PCIe v3 phy driver.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> v4:
> - add reviewed-by
> - remove minitems for clock-names as i have static list to fix error
> - fix reg error by using 32-bit adressing in binding example
> - change lane-map to u32 data-lanes
> - tried to move data-lanes to phy-provider
>   https://github.com/frank-w/dt-schema/blob/main/dtschema/schemas/phy/phy-provider.yaml#L17
>   cloned and installed via pip install -e <local path>
>   verified with pip show, but phy-privider seems not to be applied
> 
> v3:
> - drop quotes
> - drop rk3588
> - make clockcount fixed to 3
> - full path for binding header file
> - drop phy-mode and its header and add lane-map
> 
> v2:
> dt-bindings: rename yaml for PCIe v3
> rockchip-pcie3-phy.yaml => rockchip,pcie3-phy.yaml
> 
> changes in pcie3 phy yaml
> - change clock names to ordered const list
> - extend pcie30-phymode description
> - add phy-cells to required properties
> - drop unevaluatedProperties
> - example with 1 clock each line
> - use default property instead of text describing it
> - update license
> ---
>  .../bindings/phy/rockchip,pcie3-phy.yaml      | 80 +++++++++++++++++++
>  1 file changed, 80 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> new file mode 100644
> index 000000000000..9f2d8d2cc7a5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> @@ -0,0 +1,80 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/rockchip,pcie3-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip PCIe v3 phy
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3568-pcie3-phy

The driver also has 'rockchip,rk3588-pcie3-phy'. Please send a fix 
adding it here or removing from the driver. Are they not compatible with 
each other?

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
