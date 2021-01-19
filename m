Return-Path: <SRS0=wbav=GW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1538AC433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 13:07:56 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A71E62312D
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 13:07:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A71E62312D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3O37OvBf9CeJiY7HEWqB0OBYk3s2P6aKHGREICkV0Ro=; b=v9gY+010BtlN1tdQ3nOxcRUQB
	5G28Wui+/3+QqJP2Y254FmVXqRowg1k3RcnqfRQ+3mIn5ZBzNK+nxwpdx4F8YaYAnDUUvJBp/lTSQ
	UKPFmFbB1PaIK4RuV2OzID+3tr6BMLDTHtHaC4Q/y0N1tBxTUccPLolAS18AcyPIyRhU2Gvyq3RUf
	J9f9+nx6zwwAoiTiP8Cgs8gt2oKGibraWafuePqpkdRSWVqZv88emc+gu7GVPkH8WJjEs+a+NO85M
	K+98md6rnArpp6dznv89HAbQcjGR1WhN8AyBOFK2QrnZD2+EkmKHBa9S+EQmMGEstmF0CX2i3QyIg
	S/zlQYaxA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1qje-00057T-BV; Tue, 19 Jan 2021 13:07:50 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1qjZ-00056v-GS
 for linux-rockchip@lists.infradead.org; Tue, 19 Jan 2021 13:07:49 +0000
Received: by mail-ed1-x52c.google.com with SMTP id b2so21411117edm.3
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Jan 2021 05:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wzaXSRn4+k01DEBdxGgglCeDYjx+EaPzUwvzpubQoSs=;
 b=HzOBN2TQiQXAD6gN5jIPfgNqQOLdMxjEWNT04squLwNoPZ2YGCKBDbjd7ADFHtEGzZ
 JUBpEDMJKdaQMeAXb3YRwX1SjNKRCc+Pq7pzBtYFrUUYa95VA6wd6vlA4mMOMPVuElpT
 QozoL55q/mVw15BNzeRN4Hi83aWALP0LM0dKZVN5eQMHNV/w6K+yPr7J11RDqkKjkicP
 jbtd3iPVLVvAnoKA52u/++7z4YyxXZiS7YZiiyjqZYFeE5Ay5aKAUfg/kXIXv+M34ubn
 f2P17MgnrtNYpDz+dZIQN2cXN892oqSn8EW5g7HO8GirziT2NNt7PuyVA+O/+TBiKUJ3
 I9dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wzaXSRn4+k01DEBdxGgglCeDYjx+EaPzUwvzpubQoSs=;
 b=HnnlJ2f3sg3DNCqPEjJXVTLnFa27J0CLdLzLJSIwY7B4O3xJvht6ZzWQ61nQGn+eAo
 X0x+bROnBMGSew+I/YENmjTqTGDCPs8/f4s8AKq3bG3XE7UHJPX6lHfo5SUSMB6z+gPB
 a+vKAWba/vtiHyfetAeGQdQdDKkiTwaia0RLOk8pPgaVzaEAhZV/bAvFO5Q6MEEnnWou
 KgiNGpPovmeWW5O/XCzFNJyPiYzksJJ5qh529+zHrqXn0Q50E5novxGQIY6bpD8cTI74
 xwayN1xZRpy5hNv3Ds2WZ4Vcq6ri3gwRpsY3Vb3/5B+iL93eU43DmgLiA6kff1jBQPSh
 vOEA==
X-Gm-Message-State: AOAM5311sV7MOnuZadT/hScMhhef4E+BbagU+Jbo9tDWc9veJkizP5p5
 7UEJ/4gtEQMLVHzxCpdZdTk=
X-Google-Smtp-Source: ABdhPJxGMjNIGBOEXxEbq4NM0CuNR7cCn53Aw3uCy1mn9iG1Rc6tAxOw8T+aMFDekTP/Cird6una6A==
X-Received: by 2002:aa7:dd12:: with SMTP id i18mr2486937edv.36.1611061664198; 
 Tue, 19 Jan 2021 05:07:44 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 l17sm2408837ejc.60.2021.01.19.05.07.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Jan 2021 05:07:43 -0800 (PST)
Subject: Re: [PATCH 2/3] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
To: Simon Xue <xxm@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20210118091739.247040-1-xxm@rock-chips.com>
 <20210118091739.247040-2-xxm@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <e143ad9e-1cfd-e59d-0079-513c036981ba@gmail.com>
Date: Tue, 19 Jan 2021 14:07:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210118091739.247040-2-xxm@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210119_080745_660141_281AEF85 
X-CRM114-Status: GOOD (  24.23  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-pci@vger.kernel.org, devicetree <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Simon,

Thank you for this patch for rk3568 pcie.

Include the Rockchip device tree maintainer and all other people/lists
to the CC list.

./scripts/checkpatch.pl --strict <patch1> <patch2>

 ./scripts/get_maintainer.pl --noroles --norolestats --nogit-fallback
--nogit <patch1> <patch2>

git send-email --suppress-cc all --dry-run --annotate --to
heiko@sntech.de --cc <..> <patch1> <patch2>

This SoC has no support in mainline linux kernel yet.
In all the following yaml documents for rk3568 we need headers with
defines for clocks and power domains, etc.

For example:
#include <dt-bindings/clock/rk3568-cru.h>
#include <dt-bindings/power/rk3568-power.h>

Could Rockchip submit first clocks and power drivers entries and a basic
rk3568.dtsi + evb dts?
Include a patch to this serie with 3 pcie nodes added to rk3568.dtsi.

A dtbs_check only works with a complete dtsi and evb dts.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml

On 1/18/21 10:17 AM, Simon Xue wrote:
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> ---
>  .../bindings/pci/rockchip-dw-pcie.yaml        | 101 ++++++++++++++++++
>  1 file changed, 101 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> new file mode 100644
> index 000000000000..fa664cfffb29
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -0,0 +1,101 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/rockchip-dw-pcie.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: DesignWare based PCIe RC controller on Rockchip SoCs
> +

> +maintainers:
> +  - Shawn Lin <shawn.lin@rock-chips.com>
> +  - Simon Xue <xxm@rock-chips.com>

maintainers:
  - Heiko Stuebner <heiko@sntech.de>

Add only people with maintainer rights.


allOf:
  - $ref: /schemas/pci/pci-bus.yaml#

designware-pcie.txt is in need for conversion to yaml.
Include the things that are needed in this document for now.

> +
> +# We need a select here so we don't match all nodes with 'snps,dw-pcie'
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        const: rockchip,rk3568-pcie
> +  required:
> +    - compatible
> +
> +properties:
> +  compatible:

> +    enum:
> +      - rockchip,rk3568-pcie
> +      - snps,dw-pcie

    items:
      - const: rockchip,rk3568-pcie
      - const: snps,dw-pcie

> +
> +  reg:
> +    maxItems: 1

    interrupts:
      - description:
      - description:
      - description:
      - description:
      - description:

  interrupt-names:    items:
      - const: sys
      - const: pmc
      - const: msg
      - const: legacy
      - const: err

> +
> +  clocks:
> +    items:
> +      - description: AHB clock for PCIe master
> +      - description: AHB clock for PCIe slave
> +      - description: AHB clock for PCIe dbi
> +      - description: APB clock for PCIe
> +      - description: Auxiliary clock for PCIe
> +
> +  clock-names:
> +    items:
> +      - const: aclk_mst
> +      - const: aclk_slv
> +      - const: aclk_dbi
> +      - const: pclk
> +      - const: aux
> +


  msi-map: true

  power-domains:
    maxItems: 1

> +  resets:	maxItems: 1

> +    items:
> +      - description: PCIe pipe reset line

remove

> +
> +  reset-names:
	const: pipe

> +    items:
> +      - const: pipe

remove

> +
> +required:
> +  - compatible

> +  - "#address-cells"
> +  - "#size-cells"

already required in pci-bus.yaml

> +  - bus-range
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names

> +  - msi-map

not defined in pci-bus.yaml and designware-pcie.txt
add to document

> +  - num-lanes

> +  - phys
> +  - phy-names

not defined in pci-bus.yaml and designware-pcie.txt
add to document

   - power-domains

> +  - ranges

already required in pci-bus.yaml

> +  - resets
> +  - reset-names
> +

> +additionalProperties: false

unevaluatedProperties: false

If other documents are included use unevaluatedProperties.

> +
> +examples:
> +  - |

#include <dt-bindings/clock/rk3568-cru.h>
#include <dt-bindings/interrupt-controller/arm-gic.h>
#include <dt-bindings/power/rk3568-power.h>

Missing defines


    bus {
        #address-cells = <2>;
        #size-cells = <2>;

dt-check uses standard 32 bit regs
this example is for 64 bit

> +    pcie3x2: pcie@fe280000 {
> +      compatible = "rockchip,rk3568-pcie", "snps,dw-pcie";

> +      #address-cells = <3>;
> +      #size-cells = <2>;

sort things that start with # below

> +      bus-range = <0x20 0x2f>;

sort order is:
compatible
reg
interrupt
the rest in alphabetical order
things with #
no status in yaml examples


> +      reg = <0x3 0xc0800000 0x0 0x400000>,
> +            <0x0 0xfe280000 0x0 0x10000>;
> +      reg-names = "pcie-dbi", "pcie-apb";

		interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
			     <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>,
			     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>,
			     <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
			     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
		interrupt-names = "sys", "pmc", "msg", "legacy", "err";

> +      clocks = <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,
> +               <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,
> +               <&cru CLK_PCIE30X2_AUX_NDFT>;
> +      clock-names = "aclk_mst", "aclk_slv",
> +                    "aclk_dbi", "pclk",
> +                    "aux";
> +      msi-map = <0x2000 &its 0x2000 0x1000>;
> +      num-lanes = <2>;
> +      phys = <&pcie30phy>;
> +      phy-names = "pcie-phy";

    power-domains = <&power RK3568_PD_PIPE>;

> +      ranges = <0x00000800 0x0 0x80000000 0x3 0x80000000 0x0 0x800000
> +                0x81000000 0x0 0x80800000 0x3 0x80800000 0x0 0x100000
> +                0x83000000 0x0 0x80900000 0x3 0x80900000 0x0 0x3f700000>;
> +      resets = <&cru SRST_PCIE30X2_POWERUP>;
> +      reset-names = "pipe";
> +    };

};

> +
> +...
> 

Make sure that all properties that show up in this node are checked!

	pcie2x1: pcie@fe260000 {
		compatible = "rockchip,rk3568-pcie", "snps,dw-pcie";
		#address-cells = <3>;
		#size-cells = <2>;
		bus-range = <0x0 0xf>;
		clocks = <&cru ACLK_PCIE20_MST>, <&cru ACLK_PCIE20_SLV>,
			 <&cru ACLK_PCIE20_DBI>, <&cru PCLK_PCIE20>,
			 <&cru CLK_PCIE20_AUX_NDFT>;
		clock-names = "aclk_mst", "aclk_slv",
			      "aclk_dbi", "pclk", "aux";
		device_type = "pci";
		interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
			     <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>,
			     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>,
			     <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
			     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
		linux,pci-domain = <0>;
		num-ib-windows = <6>;
		num-ob-windows = <2>;
		max-link-speed = <2>;
		msi-map = <0x0 &its 0x0 0x1000>;
		num-lanes = <1>;
		phys = <&combphy2_psq PHY_TYPE_PCIE>;
		phy-names = "pcie-phy";
		power-domains = <&power RK3568_PD_PIPE>;
		ranges = <0x00000800 0x0 0x00000000 0x3 0x00000000 0x0 0x800000
			  0x81000000 0x0 0x00800000 0x3 0x00800000 0x0 0x100000
			  0x83000000 0x0 0x00900000 0x3 0x00900000 0x0 0x3f700000>;
		reg = <0x3 0xc0000000 0x0 0x400000>,
		      <0x0 0xfe260000 0x0 0x10000>;
		reg-names = "pcie-dbi", "pcie-apb";
		resets = <&cru SRST_PCIE20_POWERUP>;
		reset-names = "pipe";
		status = "disabled";
	};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
