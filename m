Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6987C54FAA
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 14:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SqOBLhhVKREa8j/bDoUwFCnlBdvVyQDBSV2keMs395A=; b=b6nEVP9cGmBEU0
	zfG1kIM5qYwJOK9lbVF8rlRfL6Pj6/jq99Wijapw4S/EiuNByzqLGCi1xe3acrjIOL6WX4T9rF3+C
	JIDpCzuR5EEfSIPKe/I9/Vr7lrIZQM+XrYjVIcPiIMiwSmlGni2ktzgUsvqno4gwMoh6KS05dHZbp
	zSGtCw0QuClKoYvUpqM+RygLcPv+bgLSNWcahlQF40m7zlqcTGovIvZgFQwn1YDgoNO07ODWIBJX4
	I9Rkb4H3mo37yLYmRkrxJsBZAihklN0ReIxj0rfHkE9DVoqOVU2sSmfGCJHE9UNmWuI2Jjr4WFRPR
	pMv+He8ItMpERdEGjx1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjJE2-0000000FdhL-12W2;
	Wed, 28 Aug 2024 14:00:42 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjJAw-0000000Fcvz-1MFo;
	Wed, 28 Aug 2024 13:57:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6CB42CE1835;
	Wed, 28 Aug 2024 13:57:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 678A7C567CD;
	Wed, 28 Aug 2024 13:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724852255;
	bh=KohNPqr7ETWS1kn2mut3vxJ3dYAgefPzIWcOnMsMYbc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=INzfTGWQgjSGxFUugGU75A1T0mwNFfF4fX90FT9O9cVaM393Ulvdi7uKyrdJFcvR2
	 y5Ws07VOxJcysms6pYzTxxvUTFTGKd30OTX3pP60KprUDd/KMOW8rJCA/DgJiYfmOx
	 6VE6QCTavp1L2aYIKnEkiHioIvSC6UXsY4wtvBggunCVe4BUfUhRu8s6IfEzdZGSBg
	 TfXuzu/NLeYjM+SsZ4lpxsm/aTtFUlOQrvX295diXSCVvWzwB3Mk3JlHJ/WPv/5IoT
	 sG8W1XDrqxuzPMtavBl0lLsnw91y8Kv19uBxzphElOfLEIPL4kwjbsl9otSMINvgpf
	 OY8SUCl+tntzw==
Date: Wed, 28 Aug 2024 08:37:33 -0500
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: mturquette@baylibre.com, sboyd@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 1/5] dt-bindings: clocks: add binding for
 gated-fixed-clocks
Message-ID: <20240828133733.GA3650798-robh@kernel.org>
References: <20240828101503.1478491-1-heiko@sntech.de>
 <20240828101503.1478491-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240828101503.1478491-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_065730_844221_F0B37464 
X-CRM114-Status: GOOD (  22.70  )
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

On Wed, Aug 28, 2024 at 12:14:59PM +0200, Heiko Stuebner wrote:
> In contrast to fixed clocks that are described as ungateable, boards
> sometimes use additional oscillators for things like PCIe reference
> clocks, that need actual supplies to get enabled and enable-gpios to be
> toggled for them to work.
> 
> This adds a binding for such oscillators that are not configurable
> themself, but need to handle supplies for them to work.
> 
> In schematics they often can be seen as
> 
>          ----------------
> Enable - | 100MHz,3.3V, | - VDD
>          |    3225      |
>    GND - |              | - OUT
>          ----------------
> 
> or similar. The enable pin might be separate but can also just be tied
> to the vdd supply, hence it is optional in the binding.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../bindings/clock/gated-fixed-clock.yaml     | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/gated-fixed-clock.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/gated-fixed-clock.yaml b/Documentation/devicetree/bindings/clock/gated-fixed-clock.yaml
> new file mode 100644
> index 000000000000..76d264770d35
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/gated-fixed-clock.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/gated-fixed-clock.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Gated Fixed clock
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    const: gated-fixed-clock
> +
> +  "#clock-cells":
> +    const: 0
> +
> +  clock-frequency: true
> +
> +  clock-output-names:
> +    maxItems: 1
> +
> +  enable-gpios:
> +    description:
> +      Contains a single GPIO specifier for the GPIO that enables and disables
> +      the oscillator.
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: handle of the regulator that provides the supply voltage
> +
> +required:
> +  - compatible
> +  - "#clock-cells"
> +  - clock-frequency
> +  - vdd-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    voltage-oscillator {

clock-1000000000

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


> +      compatible = "gated-fixed-clock";
> +      #clock-cells = <0>;
> +      clock-frequency = <1000000000>;
> +      vdd-supply = <&reg_vdd>;
> +    };
> +...
> -- 
> 2.43.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
