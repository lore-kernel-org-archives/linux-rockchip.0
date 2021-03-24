Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D55EBC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 15:17:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7A5B961A06
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 15:17:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7A5B961A06
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TF811FbNv6PjE1BRzKDITimuATHBdRlFSsqjqUnXqVE=; b=o2ZW4fiqP7c+rBdwjoHO9zLPN
	DaBN50IQ1fJri578eRiiRdpbcFpstjM8C2FTAnKmcQFZNuTbKpZwD4UJbCDn2DagwpmxcwkmW3U7v
	VoNtyas4ZYvmIWRtZlCNdcITHJsx5y4msZDa1Z/qQMEgXtgxD32xh4xrTSo+INjpQncKmBOOGK4Ko
	uCXh2JZZ4XBAFXKDALzua0c4bDDxsbgRuzRYoNsaZjiiFAxxBDKPTX2lcAkkdKyKCmcIcjZ1nGIZo
	E4qkeAx9fZAhtxIcSwrW0/HrJCeY56mDJr8yIlqOhKRyeeajQ/R31td0OjKDco+SThBJS4qakUTZR
	FkvMo35RQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP5G8-00HGA5-AB; Wed, 24 Mar 2021 15:17:24 +0000
Received: from mail-io1-f51.google.com ([209.85.166.51])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP5G4-00HG9R-CN
 for linux-rockchip@lists.infradead.org; Wed, 24 Mar 2021 15:17:22 +0000
Received: by mail-io1-f51.google.com with SMTP id r193so21863622ior.9
 for <linux-rockchip@lists.infradead.org>; Wed, 24 Mar 2021 08:17:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pFK/hlLIyYgFOB9MKct/KWeHqcYMta2ZA7PC3OnmFDI=;
 b=cSOXFHHGaYvaJq5+5jVeUlfMy/dQzIVvXJ8pFeh9t3m7WAWXcj6vSdhjv+h/fbP/cn
 ZmYZAh5474Qrs+RebkNL6HjC3xRjx96y55MOU0wtupzoYXBwGwSysdwSdRjc2cOpWqmq
 ECrhy6S/8+IwIWfe+E6vUk1/KpnXHZlBEtTveG393GQ4rarYuYIXygnOF6Lx9IVcz26M
 ieZoKoi6P2FaBxEerjyLKPf39qvr/0aElGXk5ViDbQ0ILwpbflfAHQkXeGWMwnI/aNOA
 TBoAFNMJZBjKVrCUqxxHCR1JK7OcX/z39ZlpUZJsOAmyCkana4PtVH+HVVIdKM19YqQF
 71lg==
X-Gm-Message-State: AOAM532gFp43DUFPc89mi1rCzHEXC7fjOQtXXJ+nXIZw9k/r2l0xH5vk
 4Df1uCFlLPCn0wJRsG60eg==
X-Google-Smtp-Source: ABdhPJxa1T5Mab+bhlE6pdxQmGvtMBiwyMq64Di77lMMKOnjRC3K5lSWHh1Il3w07Isf9/IdyGVIXg==
X-Received: by 2002:a6b:4109:: with SMTP id n9mr2760705ioa.43.1616599039279;
 Wed, 24 Mar 2021 08:17:19 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id s15sm1247129ilv.4.2021.03.24.08.17.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Mar 2021 08:17:17 -0700 (PDT)
Received: (nullmailer pid 3082380 invoked by uid 1000);
 Wed, 24 Mar 2021 15:17:15 -0000
Date: Wed, 24 Mar 2021 09:17:15 -0600
From: Rob Herring <robh@kernel.org>
To: Emil Velikov <emil.l.velikov@gmail.com>
Cc: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 06/10] media: dt-bindings: Document SAMA5D4 VDEC
 bindings
Message-ID: <20210324151715.GA3070006@robh.at.kernel.org>
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
 <20210311154055.3496076-7-emil.l.velikov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210311154055.3496076-7-emil.l.velikov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_151720_477659_F3B846B2 
X-CRM114-Status: GOOD (  17.54  )
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

On Thu, Mar 11, 2021 at 03:40:51PM +0000, Emil Velikov wrote:
> From: Emil Velikov <emil.velikov@collabora.com>
> 
> Add devicetree binding documentation for the Hantro G1/G2 VDEC on
> the Microchip SAMAS5D4 SoC.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Frank Rowand <frowand.list@gmail.com>
> Cc: devicetree@vger.kernel.org>
> Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
> ---
> v2
>  - Newly introduced
>  - s/Atmel/Microchip/ (Nicolas)
>  - Drop leading 0 in node name/address
> ---
>  .../media/microchip,sama5d4-vdec.yaml         | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml b/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
> new file mode 100644
> index 000000000000..9cb2c0295d54
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/media/microchip,sama5d4-vdec.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Hantro G1 VPU codec implemented on Microchip SAMA5D4 SoCs
> +
> +maintainers:
> +  - Emil Velikov <emil.velikov@collabora.com>
> +
> +description:
> +  Hantro G1 video decode accelerator present on Microchip SAMA5D4 SoCs.
> +
> +properties:
> +  compatible:
> +    const: microchip,sama5d4-vdec
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  interrupt-names:
> +    items:
> +      - const: vdec

Why do you need a name? *-names are used to distinguish multiple entries 
and don't add anything if only a single entry.

> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: vdec_clk

And here too? These are typically named for either the name of input 
signal (hclk, aclk, etc.) or function ('core', 'bus', etc.). 

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-names
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +        #include <dt-bindings/clock/at91.h>
> +        #include <dt-bindings/interrupt-controller/irq.h>
> +
> +        vdec0: vdec@300000 {
> +                compatible = "microchip,sama5d4-vdec";
> +                reg = <0x00300000 0x100000>;
> +                interrupts = <19 IRQ_TYPE_LEVEL_HIGH 4>;
> +                interrupt-names = "vdec";
> +                clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
> +                clock-names = "vdec_clk";
> +        };
> -- 
> 2.30.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
