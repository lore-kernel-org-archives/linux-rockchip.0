Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FF9BC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jul 2024 15:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w51AC/bxiHgAIRLkFZCfe5mn2UxUCtCclqFKfsoakCE=; b=VcTd/S1vt33BWneycR+Ndqz3Ac
	2vKVXCEt3l7l7NcSVueyHTBI6AKYcvMw/nyd7QCU/obdaGGOGftOgxPq13CMy2rKOPcjGLHSMcR2V
	evNcfqjZ3C4csayZdhdF3yKrOWW3MySr+4Zjedq3US6RTdOU2aGDlhDzhnTWCT4NGqT8g9QZ8aetK
	QSgSRHIqfVv/dbUG/XN6OrDLEktRWtYRfTRWJyfyTRV8mysqwAgIXx7FBnUXLJcTXDBOcodKTxTfi
	WHxhe6te16lwfwiba7CpbhXpky9MTUNdpDt/rVM48YK///PN+6MYw8g1VswAbtB3ahlXYrC8mF6r+
	F2K3CS9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTNQu-00000007VUD-2c7X;
	Mon, 15 Jul 2024 15:16:08 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTNQZ-00000007VPu-3TtZ;
	Mon, 15 Jul 2024 15:15:49 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721056545;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ve+HcnJKK/0EVhGwswCoyHDfbPprdzw5K51U2Jo6x/A=;
	b=B0EJk0B941xU9Jc6UF4nz2OIfVUSQ5xWnDCQzRw366fRQ9I4f1pHLxM7AcPRFSX70uG2SM
	WDvAWM1Xh/Rc9bSFqd06E/UQOsaj992OIxPvSueXLI78/wuRor44IG+CQLNu21YiM6iCaA
	0kbfTTnbm8czhZQIGxEdV8BQFaEk1QJYkMMlxCK1QH/g7AzxY1FIAu2VsxyDYcX5+VLYCr
	nh+TJYpSqXufAALuX1USpynn42z5UiZ/XtuMTgmkJNFURQpPCG4XcOwWnoY7bBkhrsfKHB
	p8QYP6sbUVCnOE1ahYxv5WqaIJas5bphT3dXuSF2uWPdqc24beAzduCJuHFVYw==
Date: Mon, 15 Jul 2024 17:15:45 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: clocks: add binding for
 voltage-controlled-oscillators
In-Reply-To: <20240715110251.261844-2-heiko@sntech.de>
References: <20240715110251.261844-1-heiko@sntech.de>
 <20240715110251.261844-2-heiko@sntech.de>
Message-ID: <ec84dc37e2c421ee6d31294e08392d57@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_081548_211661_966EDA9A 
X-CRM114-Status: GOOD (  22.49  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Heiko,

Please see some comments below.

On 2024-07-15 13:02, Heiko Stuebner wrote:
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
>  .../bindings/clock/voltage-oscillator.yaml    | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> 
> diff --git
> a/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> b/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> new file mode 100644
> index 0000000000000..8bff6b0fd582e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/voltage-oscillator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Voltage controlled oscillator

Frankly, I find the "voltage-oscillator" and "voltage controlled
oscillator" names awkward.  In general, "clock" is used throughout
the entire kernel, when it comes to naming files and defining
"compatible" strings.  Thus, I'd suggest that "clock" is used here
instead of "oscillator", because it's consistent and shorter.

How about using "gated-clock" for the "compatible" string, and
"Simple gated clock generator" instead of "voltage controlled
oscillator"?  Besides sounding awkward, "voltage controlled
oscillator" may suggest that the clock generator can be adjusted
or programmed somehow by applying the voltage, while it can only
be enabled or disabled that way, which is by definition clock
gating.  Thus, "gated-clock" and "Simple gated clock generator"
would fit very well.

> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    const: voltage-oscillator
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
> +      Contains a single GPIO specifier for the GPIO that enables and 
> disables
> +      the oscillator.
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: handle of the regulator that provides the supply 
> voltage
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
> +      compatible = "voltage-oscillator";
> +      #clock-cells = <0>;
> +      clock-frequency = <1000000000>;
> +      vdd-supply = <&reg_vdd>;
> +    };
> +...

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
