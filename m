Return-Path: <SRS0=VpfD=G4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ECAFC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 15:55:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E9DCB21707
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 15:55:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E9DCB21707
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+LKIX8KY+7g1KHXgdTlOkIEu4eb8eyEAI+per05HpS0=; b=ee5FxFrR102IywxxCyBrZ1Qaa
	nfPBVeR5lBjZnDDcXuume5xk+nN2bcdyFztrF+JRT9yTQP8z2yN31WNEJIOwMMnCIEGTmP3SGfCsY
	qcgefHR79y0/pgFptMwQIF8SC5//02lG9B/D7Gcery7cBglcacGqs4nsf8wVCVgvcCiTue38VuOjH
	IVAk/zlWfbJnbMbuMb2jEplj9EaQkQlsDeNheKFLj19INwGK7rtS3y+CQbrGTCkf4SC1u9Do7ThW7
	LvbfLqM5CyA4578y2OEmxC0Ry0lHJ2qTmsgVWeyMHUi/dlFq4jlwUfXI1gqeFsjT4+1PQvd16OcFt
	Dag+RUjCA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l44DA-0007Dm-Kk; Mon, 25 Jan 2021 15:55:28 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l44D7-0007Cp-Su
 for linux-rockchip@lists.infradead.org; Mon, 25 Jan 2021 15:55:26 +0000
Received: by mail-ed1-x52e.google.com with SMTP id z22so1270715edb.9
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Jan 2021 07:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fOfyMKZTVMFkxLGbe5k1gBTItQ5Xbwh8Wz8c7T0rHmk=;
 b=L8u7VlRW+tiHkg7CeNcQ8xLj5U4iZ3T947mi7HmkKzueWsl3NCRKZji9ykkWFWwzuI
 zsFXp4OkcppPqgu2qeHGxA3zUKcIhOU+/UlPuZZ9fpx0iam6Q6bt9Wj/FIc6ZHLfxiF9
 2RBFE0pl8YmzUJ8aOtjRu769KjX3DNiOSWmOsQ7sxABfMSOUHeX3f1P34PTL/XpTxopy
 9Gb0zalU+3zbV7nL7aLv6mjz39/uMprOMSwagXUgg+NINiyFB9R3aGHa+lNgH+LUxFwi
 2fvC96lEHqFy9fCMDpq5fj1h+/BwWTGQoJjjKTJOmuE2ociKYCJTjp8aq1vpz031LbE5
 Bl9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fOfyMKZTVMFkxLGbe5k1gBTItQ5Xbwh8Wz8c7T0rHmk=;
 b=EerqYcRuFbSV9x0r+qe30q6Rw9cU4UzAi2vrnMIZSTAYhAPdGTna8L0Iro0g4pzxxD
 +8tRZSKk0cbWKVBgze/bqfuegg5+KuNmH0W5F6ftpgqN4mdZrdial+VmQa44sY2ISJwJ
 XwSnakC9d19JfoxQqEy6bFnYj2JuOm7p1eT7tPlO+cwFNG9UMw6tpNUQ/PEEcD/HWM61
 BRi5Dme+53YC4KWXdH/yDP1zqDpa0b13ikUmigM0DIbZ9i2wH1BgisX8IuzpK6uwn3e2
 l3JFH5gh1qoBmUUodk7xGCr+SCS1iXiJGJ2JZzMPA8Ktg4JHWA7tzzY/YxIYiLDuI6JB
 wHDA==
X-Gm-Message-State: AOAM531cUuxE2SBEKjO7GntuYyKjrOl1ifhqj1TJDdN6Rx56GuSwH/7Q
 8ys+iqdPy51oFb2ga5Ip45M=
X-Google-Smtp-Source: ABdhPJyuulNKB4EEL1lvq10gMZkd3iMS9W3Tjc6+svr9Nz6yqMHzt4bETBprYKKiGcOwQkzAwwNS5Q==
X-Received: by 2002:a05:6402:31ae:: with SMTP id
 dj14mr1015112edb.364.1611590122664; 
 Mon, 25 Jan 2021 07:55:22 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 g14sm10818591edm.31.2021.01.25.07.55.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Jan 2021 07:55:22 -0800 (PST)
Subject: Re: [PATCH v3 1/2] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
To: Simon Xue <xxm@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20210125024824.634583-1-xxm@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <84c7672f-2cfc-63fc-bc36-35ab22cbfad8@gmail.com>
Date: Mon, 25 Jan 2021 16:55:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210125024824.634583-1-xxm@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210125_105525_944741_8BED7FB0 
X-CRM114-Status: GOOD (  19.32  )
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
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, robh+dt@kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Thanks you for version 3.

A few comments, have a look if it is useful or that you disagree.

On 1/25/21 3:48 AM, Simon Xue wrote:
> Document DT bindings for PCIe controller found on Rockchip SoC.
> 
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> ---
>  .../bindings/pci/rockchip-dw-pcie.yaml        | 133 ++++++++++++++++++
>  1 file changed, 133 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> new file mode 100644
> index 000000000000..24ea42203c14
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -0,0 +1,133 @@
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
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description: |+
> +  RK3568 SoC PCIe host controller is based on the Synopsys DesignWare
> +  PCIe IP and thus inherits all the common properties defined in
> +  designware-pcie.txt.
> +
> +allOf:
> +  - $ref: /schemas/pci/pci-bus.yaml#
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
> +    items:
> +      - const: rockchip,rk3568-pcie
> +      - const: snps,dw-pcie
> +
> +  reg:
> +    items:
> +      - description: Data Bus Interface (DBI) registers
> +      - description: Rockchip designed configuration registers

reg-names:
    items:
      - const: dbi
      - const: apb

rockchip->apb_base = devm_platform_ioremap_resource_byname(pdev, "apb");

config ???

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
> +  msi-map: true
> +
> +  num-lanes: true
> +
> +  phys:
> +    maxItems: 1
> +
> +  phy-names:
> +    const: pcie-phy
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  ranges:

> +    maxItems: 3

if remove ??? config ???
<0x00000800 0x0 0x80000000 0x3 0x80000000 0x0 0x800000>
then maxItems: 2

> +

reset-gpios:
   maxItems: 1

rockchip->rst_gpio = devm_gpiod_get_optional(&pdev->dev, "reset",
GPIOD_OUT_HIGH);

> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: pipe

vpcie3v3-supply: true

rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");

> +
> +required:
> +  - compatible
> +  - reg

> +  - reg-names

required but not defined above

> +  - clocks
> +  - clock-names
> +  - msi-map
> +  - num-lanes
> +  - phys
> +  - phy-names
> +  - power-domains
> +  - resets
> +  - reset-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |

> +    #include <dt-bindings/interrupt-controller/arm-gic.h>

no interrupts then no need for include defines ??

> +
> +    bus {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        pcie3x2: pcie@fe280000 {
> +            compatible = "rockchip,rk3568-pcie", "snps,dw-pcie";
> +            reg = <0x3 0xc0800000 0x0 0x400000>,
> +                  <0x0 0xfe280000 0x0 0x10000>;

> +            reg-names = "pcie-dbi", "pcie-apb";

reg-names = "dbi", "apb";

> +            bus-range = <0x20 0x2f>;
> +            clocks = <&cru 143>, <&cru 144>,
> +                     <&cru 145>, <&cru 146>,
> +                     <&cru 147>;
> +            clock-names = "aclk_mst", "aclk_slv",
> +                          "aclk_dbi", "pclk",
> +                          "aux";
> +            device_type = "pci";
> +            linux,pci-domain = <2>;
> +            max-link-speed = <2>;
> +            msi-map = <0x2000 &its 0x2000 0x1000>;
> +            num-lanes = <2>;
> +            phys = <&pcie30phy>;
> +            phy-names = "pcie-phy";
> +            power-domains = <&power 15>;

> +            ranges = <0x00000800 0x0 0x80000000 0x3 0x80000000 0x0 0x800000>,

remove ??? config ???
<0x00000800 0x0 0x80000000 0x3 0x80000000 0x0 0x800000>

> +                     <0x81000000 0x0 0x80800000 0x3 0x80800000 0x0 0x100000>,
> +                     <0x83000000 0x0 0x80900000 0x3 0x80900000 0x0 0x3f700000>;
> +            resets = <&cru 193>;
> +            reset-names = "pipe";
> +            #address-cells = <3>;
> +            #size-cells = <2>;
> +        };
> +    };
> +...
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
