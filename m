Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52C40C77B76
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Apr 2023 19:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Kr1/L46Xww/zKhNwU1eMsNrnMVHku0TM0MyxXPaieU=; b=oT1l7NM76IeFTm
	FrSuh5Gr5QS61bg5JsyIffrL/VbTmRAtJvG7GyIf0AOmEuPkb14NoqqDcMR7pKZFasGHoYAEw2QPe
	LPMhejILIzzPw2mq47lFCWwKUib6tmEYfUP8lL9bNW5s7/itC/oKX6ZTeKmNpYp0c70HhKWCha8BF
	YvCoxLs6YkusBjE5ObxJmcLRnfZU+fSIdvOKmh8FuD7kHYUpp6cPAkVow94il/+8IhNF1l+/tQMHd
	jdSGWKsYZ371GNZHvZ0BNg5eD/o30+1OmAwj/Mfpq93QN0k7bMq9DI9ASH8bs1LHuVwYOw8OuSKkp
	ZD7zPe/LhBqI65UaN+gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppwQq-00BjSc-2P;
	Fri, 21 Apr 2023 19:28:32 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppwQm-00BjRy-1s;
	Fri, 21 Apr 2023 19:28:30 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4ec8da7aaf8so2114796e87.2;
        Fri, 21 Apr 2023 12:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682105306; x=1684697306;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=b3fs5vArEoThWvHEwgVac02PfGMwSsmxq51Eot541Pk=;
        b=USV86Vg8oEbhQWhj3kgaVwT1WLmRzqGOuVVZ+sEIOlvEUigNJk8ma1IL5/BkcYQiwM
         gOgDdrhzZOTBsTf5GMC2xUDXnOtAUXpV01hpy27MD6MAy4xu/jbH0mPJuAHE0VNXxGkQ
         TUn7p0uiw1K3ChWOCch0ESazwc1gCpMEtw++/xWCytsWmjjyV3dImKnaaPWH1brZSb16
         qQRJENEnzjhJiYc0IlHZDS3E37MNQu0JifMVAXs6AvI3Y6H4F8QAB8WLPk3Wj+Vf9Rp6
         KJVTT63SpaDSupX2Zf2SyL1E3Jvj2pdxfTGEZk4UZVHQQdCtMffrN0IpyNoe4gPPohPH
         MLAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682105306; x=1684697306;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b3fs5vArEoThWvHEwgVac02PfGMwSsmxq51Eot541Pk=;
        b=W9njwGhNxG+eeyXvIpOySChL6snZD4TMsVwIUaBWuAeipu2gWQ0AVWmjWhCMM2tYhs
         0ur4qCKQzkraWB0+MwK0dvVG5TNyjVwYlLT6zkt9G4m0JOsmgU1ZkSztKIL85bzZdPcq
         UDb+AJ7dhhuqw4Va4FNnB/aW5I1nST4ppscxhionYrf0Do5y0YYicpz6xBlllcZFDQYi
         Bv5KUacg9gkSekgHslZf9rAMg/MBmtJbCTLZ1ZxuYt/2zxvQDugOq9jq2QS5aGZgaNzI
         R/oRUlzsAOWMrz0O2PxFl4+ik1SCmByxv6jhInfTRUoO+iNQ2Je4UCbiaeMBPvGkRc75
         mjcg==
X-Gm-Message-State: AAQBX9dprZOr6Cd94764HZlV8zF6WYfxA2fcpXOQ1/qBzn+5IVN6qqAm
	zoz/XHKVkUNiBldMIg2eHzg=
X-Google-Smtp-Source: AKy350b4nzhvyStKwG8CwDoH+ikPDWhGFNxeEaFNvuDpetkuK+c66QM2naloCN6WduMmD3HR23CP0g==
X-Received: by 2002:ac2:5475:0:b0:4ec:81c7:119a with SMTP id e21-20020ac25475000000b004ec81c7119amr1664912lfn.3.1682105305633;
        Fri, 21 Apr 2023 12:28:25 -0700 (PDT)
Received: from mobilestation ([95.79.140.35])
        by smtp.gmail.com with ESMTPSA id u16-20020ac25190000000b004cf6c56fdb5sm638885lfi.232.2023.04.21.12.28.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 12:28:24 -0700 (PDT)
Date: Fri, 21 Apr 2023 22:28:22 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCHv1 2/5] dt-bindings: ata: ahci: add RK3588 AHCI controller
Message-ID: <20230421192822.yckihqlk2vlkueyc@mobilestation>
References: <20230413182345.92557-1-sebastian.reichel@collabora.com>
 <20230413182345.92557-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230413182345.92557-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_122828_646117_6B30571B 
X-CRM114-Status: GOOD (  25.24  )
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

Hi Sebastian

On Thu, Apr 13, 2023 at 08:23:42PM +0200, Sebastian Reichel wrote:
> Just like RK3568, the RK3588 has a DWC based AHCI controller.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> FWIW IDK what exactly the ASIC clock is. The TRM does not provide any
> details unfortunately. It is required for functional SATA, though.
> ---
>  .../devicetree/bindings/ata/snps,dwc-ahci-common.yaml       | 6 ++++--
>  Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml    | 6 ++++--
>  2 files changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> index c1457910520b..0df8f49431eb 100644
> --- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> +++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> @@ -31,11 +31,11 @@ properties:
>        PM-alive clock, RxOOB detection clock, embedded PHYs reference (Rx/Tx)
>        clock, etc.
>      minItems: 1
> -    maxItems: 4
> +    maxItems: 5
>  
>    clock-names:
>      minItems: 1
> -    maxItems: 4
> +    maxItems: 5
>      items:
>        oneOf:
>          - description: Application APB/AHB/AXI BIU clock
> @@ -50,6 +50,8 @@ properties:
>            const: rxoob
>          - description: SATA Ports reference clock
>            const: ref

> +        - description: Rockchip ASIC clock
> +          const: asic

Actually it's a standard DW SATA AHCI PHY-interface clock (named as
clk_asicN in the DW SATA AHCI HW manual). So feel free to add it to the
clock-names array with the description (taken from the manual): "PHY
Transmit Clock". The manual also says that the clock is generated by
the PHY0 for clocking Port0 Link and Transport Layers (TX clock
domain): 37.5 MHz, 75 MHz, 150 MHz, 300 MHz, or 600 MHz.

Similarly there is another clocks source "clk_rbcN". It's "PHY Receive
Clock" which is used to receive data from the PHYn. It can be also
added to the clock-names property under the name "rbc".

Note 1. Please add the suggested names to the property constraint
above the "ref" name definition. The later clock is mainly relevant to
the attached PHY rather than to the SATA AHCI controller itself.

Note 2. "rxoob", "asic" and "rbc" clocks are defined as "clk_rxoobN",
"clk_asicN" and "clk_rbcN" which means they are supposed to be defined
(if relevant) for each available SATA port. So in general they should
have been defined in the port sub-nodes clocks/clock-names properties.

Note 3. Note natively DW SATA AHCI doesn't have any PIPE interface (or
anything being called as PIPE). Instead it provides a PMA-interface
which is directly connected to a Synopsys SATA xG PHY with no
intermediate coders (PCS). Like this:

+---------+     +--------+
|         | PMA | Snps DW| SATA
| DW SATA |<--->| SATA xG|<---->
|  AHCI   | I/F |  PHY   |
|         |     |        |
+---------+     +--------+

In that case the DW SATA AHCI IP-core is supposed to be synthesized
with the particular Synopsys PHY type specified in the parameter
PHY_INTERFACE_TYPE. If a non-standard PHY is connected (like in your
case) PHY_INTERFACE_TYPE is supposed to be set to zero thus providing
a wide set of the PMA-interface configs which otherwise would have
been pre-defined with the Synopsys PHY-specific values. So judging by
the clock names in your patches and the way the DT-nodes are designed
Rockchip SATA AHCI controller diagram must be looking like this:

+---------+      +-------+       +--------+
|         | PIPE | some  | Rx/Tx | PMA/PMD| SATA
| DW SATA |<---->|  PCS  |<----->| NANEng |<---->
|  AHCI   |former|       |       |  PHY   |
|         |DW PMA|       |       |        |
+---------+      +-------+       +--------+

In the former case (DW SATA AHCI with Synopsys SATA xG PHY attached)
all the clocks "pmalive", "rbc", "asic" and "rxoob" are generated by
the Synopsys PHYs itself so there is no need in having them explicitly
defined in the system. In your case AFAICS a non-standard PCS+PHY
setup is utilized and the clocks are generated by a system-wide unit -
CRU.

>  
>    resets:
>      description:
> diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> index 5afa4b57ce20..c6a0d6c8b62c 100644
> --- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> +++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> @@ -23,9 +23,11 @@ properties:
>          const: snps,dwc-ahci
>        - description: SPEAr1340 AHCI SATA device
>          const: snps,spear-ahci

> -      - description: Rockhip RK3568 AHCI controller
> +      - description: Rockhip AHCI controller
>          items:
> -          - const: rockchip,rk3568-dwc-ahci
> +          - enum:
> +              - rockchip,rk3568-dwc-ahci
> +              - rockchip,rk3588-dwc-ahci
>            - const: snps,dwc-ahci

What about moving all that in a dedicated YAML-file in order to define a
more comprehensive schema with actual "clocks", "clock-names",
ports-specific properties constraints? (see the way it's done for
Baikal-T1 SATA AHCI in ata/baikal,bt1-ahci.yaml).

Please note in that case you'll either need to drop the generic
fallback compatible (it's not like it would have been much useful
anyway) from your and RK3568 SATA DT-nodes, or define the
"select: properties: compatible: ..." property in the generic
DW SATA AHCI DT-schema, in order to prevent the generic schema being
automatically applied to the your SATA DT-nodes.

-Serge(y)

>  
>  patternProperties:
> -- 
> 2.39.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
