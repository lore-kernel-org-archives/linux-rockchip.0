Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B66CC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 09:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvVH6le8/TezwBD4Jp//G9QSKLAq30NQVjjU64P0QKU=; b=pHDPMEfv4RAhq9
	uDirTbZv1jFIfEut6Yahck03ZVkTplb7f3hic3fa7FHZd3vZStWyEya0nvQDbYbUxSfFKBkSPzodk
	W2VzO3lgMJ0GbJZzPAqQsUUY2dR/A1W7A9DmN8rEe+mJLo5mMoSm7C8Sq3cJ7/xX5+g36RbBreClN
	J0RDvPJbsEHobPPijJS0XcMPNRwm43rG6nIxNfl2bgm6/mNAhulDX7/FNyjZExF4dDh8HvtYE6aBF
	wZzHlN3ehX5mjpZT6vFaP4JA2IjsAspDlQt7GH2aiKXdSkKq8NzFp6cPvwyf78nZgYU/eiXdFUEf3
	rRzqSp3/dGOR6pXmwPaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOGGq-0091aB-0W; Sun, 27 Feb 2022 09:55:16 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOGGm-0091Zj-Jr
 for linux-rockchip@lists.infradead.org; Sun, 27 Feb 2022 09:55:14 +0000
Received: by mail-ej1-x62b.google.com with SMTP id gb39so19267308ejc.1
 for <linux-rockchip@lists.infradead.org>; Sun, 27 Feb 2022 01:55:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=a0TWmZ5TqxjnJRwC6WA6zfFCPTgI5AdsnlPUfHcIo20=;
 b=UqiNrE4nDC8dmxsGADt350qNz9njqgWfyF88VK1QQ8myDHzRYyj8ZG6pRqCzPisZJs
 22yPtcuuD/tIvFz2krYlNWCMd0Zd9zro1LhAexVzt6zmaUSaW/cFpMOzyrPU/eoEMBbp
 qtvJYL8yL8pMp99rCVbQBjK3/VdF8b+NZpqHebhHXSFdhP/Q+7mXmzYof4CIFUzlmrCw
 h743VM0lxeb6Rn98YkNWbrjSkdjOq4cg6J0hHrv7396+o6iCNBm8M4mqWbRa8XR+kNea
 hmouVa1iNWilzboNkUwznD/mPPj3vQBYwPT8ewdQMmgjzEDGdnzEZYmQdLttGeHYCGJp
 05MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=a0TWmZ5TqxjnJRwC6WA6zfFCPTgI5AdsnlPUfHcIo20=;
 b=nE+q/Lp57hHLVQGMotshqZJbEnGS37r3YZILJa3VVBtUrIWgf8AQvpPuN6Zz84XOdp
 Bs8eZcb5Hqe9PEaac1C4nHy7NcjJozWPOvoQKOrQtGL9bKZLnF/HUk27kJBPcvKZnMmq
 QPLkzc7ZTJ3wXJW7pyFyG8NTxuG3XBe47mDP6XloOx2JlsUNyPQbUmRTn+inluyZQ6CI
 e3BHQlMxV0XKJ4zkeBkzu2V4gLdhJhluAOmXLdSR1dzxGF10wytJrly2wAGyT2aiiqxP
 1C14TJ5oTVSvHWXhTxROxcdIRxIW6eCeDk5HmE4aZOi4mpnu5zNxPn+9zt75PboBFHES
 L0Xg==
X-Gm-Message-State: AOAM533mFHvv3gd0N39RGzc6DO2e1rYuI7aNxCNcNZ2ZTm9G5RqGYteY
 JrNTo13ylBWFniYlnoArIHA=
X-Google-Smtp-Source: ABdhPJyNoRWUgY0eOtb419sKGoRRV8NeEdNA3+7eT/DCsqxRdpSs9azDSqUnWBbFCDnmNKi9+2C3VQ==
X-Received: by 2002:a17:906:d964:b0:6ca:4019:3928 with SMTP id
 rp4-20020a170906d96400b006ca40193928mr11901605ejb.762.1645955710055; 
 Sun, 27 Feb 2022 01:55:10 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 h21-20020a170906829500b006cef3dcd067sm3194084ejx.174.2022.02.27.01.55.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 27 Feb 2022 01:55:09 -0800 (PST)
Message-ID: <dc2484ac-6851-2b25-443c-0a3344a13454@gmail.com>
Date: Sun, 27 Feb 2022 10:55:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: Convert ahci-platform DT bindings to yaml
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-ide@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Jens Axboe <axboe@kernel.dk>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 heiko Stuebner <heiko@sntech.de>
References: <20220226204404.109867-1-linux@fw-web.de>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220226204404.109867-1-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_015512_706517_E0DF5C14 
X-CRM114-Status: GOOD (  28.92  )
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

Hi Frank,

Combine your patch in a serie with Rockchip rk356x sata nodes and
include all current CC people and Rockchip list.

Your conversion and DT patch contains lots of errors.
Check your serie with all/more platforms then Rockchip before you submit
and fix.

ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/ata/ahci-platform.yaml

ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/ata/ahci-platform.yaml

Add power-domains as a new property after the conversion patch.

Johan

===

make a serie:

conversion ahci-platform.yaml
power-domains patch
rockchip rk356x sata nodes patch

On 2/26/22 21:44, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Create a yaml file for dtbs_check from the old txt binding.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  .../devicetree/bindings/ata/ahci-platform.txt |  79 -----------
>  .../bindings/ata/ahci-platform.yaml           | 134 ++++++++++++++++++
>  2 files changed, 134 insertions(+), 79 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/ata/ahci-platform.txt
>  create mode 100644 Documentation/devicetree/bindings/ata/ahci-platform.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.txt b/Documentation/devicetree/bindings/ata/ahci-platform.txt
> deleted file mode 100644
> index 77091a277642..000000000000
> --- a/Documentation/devicetree/bindings/ata/ahci-platform.txt
> +++ /dev/null
> @@ -1,79 +0,0 @@
> -* AHCI SATA Controller
> -
> -SATA nodes are defined to describe on-chip Serial ATA controllers.
> -Each SATA controller should have its own node.
> -
> -It is possible, but not required, to represent each port as a sub-node.
> -It allows to enable each port independently when dealing with multiple
> -PHYs.
> -
> -Required properties:
> -- compatible        : compatible string, one of:
> -  - "brcm,iproc-ahci"
> -  - "hisilicon,hisi-ahci"
> -  - "cavium,octeon-7130-ahci"
> -  - "ibm,476gtr-ahci"
> -  - "marvell,armada-380-ahci"
> -  - "marvell,armada-3700-ahci"
> -  - "snps,dwc-ahci"
> -  - "snps,spear-ahci"
> -  - "generic-ahci"
> -- interrupts        : <interrupt mapping for SATA IRQ>
> -- reg               : <registers mapping>
> -
> -Please note that when using "generic-ahci" you must also specify a SoC specific
> -compatible:
> -	compatible = "manufacturer,soc-model-ahci", "generic-ahci";
> -
> -Optional properties:
> -- dma-coherent      : Present if dma operations are coherent
> -- clocks            : a list of phandle + clock specifier pairs
> -- resets            : a list of phandle + reset specifier pairs
> -- target-supply     : regulator for SATA target power
> -- phy-supply        : regulator for PHY power
> -- phys              : reference to the SATA PHY node
> -- phy-names         : must be "sata-phy"
> -- ahci-supply       : regulator for AHCI controller
> -- ports-implemented : Mask that indicates which ports that the HBA supports
> -		      are available for software to use. Useful if PORTS_IMPL
> -		      is not programmed by the BIOS, which is true with
> -		      some embedded SOC's.
> -
> -Required properties when using sub-nodes:
> -- #address-cells    : number of cells to encode an address
> -- #size-cells       : number of cells representing the size of an address
> -
> -Sub-nodes required properties:
> -- reg		    : the port number
> -And at least one of the following properties:
> -- phys		    : reference to the SATA PHY node
> -- target-supply     : regulator for SATA target power
> -
> -Examples:
> -        sata@ffe08000 {
> -		compatible = "snps,spear-ahci";
> -		reg = <0xffe08000 0x1000>;
> -		interrupts = <115>;
> -        };
> -
> -With sub-nodes:
> -	sata@f7e90000 {
> -		compatible = "marvell,berlin2q-achi", "generic-ahci";
> -		reg = <0xe90000 0x1000>;
> -		interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> -		clocks = <&chip CLKID_SATA>;
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		sata0: sata-port@0 {
> -			reg = <0>;
> -			phys = <&sata_phy 0>;
> -			target-supply = <&reg_sata0>;
> -		};
> -
> -		sata1: sata-port@1 {
> -			reg = <1>;
> -			phys = <&sata_phy 1>;
> -			target-supply = <&reg_sata1>;;
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.yaml b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
> new file mode 100644
> index 000000000000..b5bef93215c0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
> @@ -0,0 +1,134 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ata/ahci-platform.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: AHCI SATA Controller
> +description:
> +  SATA nodes are defined to describe on-chip Serial ATA controllers.
> +  Each SATA controller should have its own node.
> +
> +  It is possible, but not required, to represent each port as a sub-node.
> +  It allows to enable each port independently when dealing with multiple
> +  PHYs.
> +> +maintainers:
> +  - Hans de Goede <hdegoede@redhat.com>
> +  - Jens Axboe <axboe@kernel.dk>
> +

include sata-common.yaml


> +properties:

compatible
reg
interrupts

clocks

the rest

> +  compatible:
> +    enum:

> +      - brcm,iproc-ahci
> +      - hisilicon,hisi-ahci
> +      - cavium,octeon-7130-ahci
> +      - ibm,476gtr-ahci
> +      - marvell,armada-380-ahci
> +      - marvell,armada-3700-ahci
> +      - snps,dwc-ahci
> +      - snps,spear-ahci
> +      - generic-ahci

Sort list in case someone after you wants to add something.

> +
> +  ahci-supply:
> +    description:
> +      regulator for AHCI controller
> +
> +  dma-coherent:
> +    description:
> +      Present if dma operations are coherent
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 3
> +
> +  interrupts:
> +    minItems: 1
> +
> +  phy-supply:
> +    description:
> +      regulator for PHY power
> +
> +  phys:
> +    minItems: 1
> +
> +  phy-names:
> +    minItems: 1
> +
> +  ports-implemented:
> +    description:
> +      Mask that indicates which ports that the HBA supports
> +      are available for software to use. Useful if PORTS_IMPL
> +      is not programmed by the BIOS, which is true with
> +      some embedded SOC's.
> +    minItems: 1
> +
> +  reg:
> +    maxItems: 1
> +
> +  resets:
> +    minItems: 1
> +
> +  target-supply:
> +    description:
> +      regulator for SATA target power
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts

A node without clocks does that work?
Shouldn't that be required?

> +

> +patternProperties:
> +  "^sata-port@[0-9]+$":

Already in included sata-common.yaml
  "^sata-port@[0-9a-e]$":

How many ports does this thing support??

> +    type: object
> +    description:
> +      Subnode with configuration of the Ports.
> +
> +    properties:

> +      reg:
> +        maxItems: 1

Already in included sata-common.yaml
Include only additional special things.

> +
> +      phys:
> +        minItems: 1
> +
> +      target-supply:
> +        description:
> +          regulator for SATA target power
> +
> +    required:
> +      - reg
> +
> +    anyOf:
> +      - required: [ phys ]
> +      - required: [ target-supply ]
> +

> +additionalProperties: true
> +
> +examples:
> +  - |
> +        sata@ffe08000 {
> +               compatible = "snps,spear-ahci";
> +               reg = <0xffe08000 0x1000>;
> +               interrupts = <115>;
> +        };
> +  - |
> +        sata@f7e90000 {
> +                compatible = "marvell,berlin2q-achi", "generic-ahci";
> +                reg = <0xe90000 0x1000>;

> +                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +                clocks = <&chip CLKID_SATA>;

Missing includes for these defines.

> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                sata0: sata-port@0 {
> +                        reg = <0>;
> +                        phys = <&sata_phy 0>;
> +                        target-supply = <&reg_sata0>;
> +                };
> +
> +                sata1: sata-port@1 {
> +                        reg = <1>;
> +                        phys = <&sata_phy 1>;
> +                        target-supply = <&reg_sata1>;;
> +                };
> +        };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
