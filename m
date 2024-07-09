Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C618C2BD09
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 21:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGBF8H0XWML/55U6O313x96CbfvX/52Grz6WSTDQ+Ug=; b=ATGxjIA+lQHq0g
	aLD6duaEmWGQc+qLFlhiD3UM28LZ9srKWwktckACi9L9i3upsBjII6xDeL+I+AnT+quuGWhAcgInU
	WEqRK5dNggg1Nx7wKZ7I/z7EprHxSAhrfFfINa34TJGaN/BpQ/gxg6o84jFDYCu/gYBSbzP1/TmGf
	ZcltsPhvOjape1nf765qu3dFSIy6q+s9b5UH+4MGgnqivW28JssKRf1dlXVJfG2meIRxhevc4WfCi
	q0A9Z/SVY4FAzgNEMwIyaFSJTMXMy5N5JH5GOcea9h1FuCAfmoGch/kAJzqvtugbrqOSZkzBQ9/JR
	HSTOmCvJKBc//SKRmL+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRIec-00000008hH2-1OlU;
	Tue, 09 Jul 2024 21:45:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRIeK-00000008hBz-2Opr;
	Tue, 09 Jul 2024 21:45:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 52EC3616A6;
	Tue,  9 Jul 2024 21:45:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5AA9C3277B;
	Tue,  9 Jul 2024 21:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720561523;
	bh=L7UCNM+c3AvSjhbiLx4WoUJDX1N1mNGU5BEXO5uWjzc=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=frC0CHfXu1bTRMyhetfceQWH82xLTzJheQuXuE0434yrS81Mb5rQudZ/hcCgMHeBs
	 ENsAbpfbkyWHg2pXiLNjfCuH+3EDroTgysl/0iZP8DRVr/ohdG7ajVfKrg85paOdr1
	 ufJw+uUDx/vcJpwXj/5x0Zf+plkcsiHR9Hc8/5dThk+6zpimocysjXtYohnaYXCRfq
	 940XequIFcEM893M5FJQXsD48a7SUeDOCZR8fMbysS43IlO+V/DkQmoHH9wWoaoVuP
	 ZT6yoVsSsimYP4MaH8fkUPEWF3R/l2gXLBbs6Ob3iUky1KWexnO9/tb7piaMvZEVYV
	 s8+6xMozhLbfQ==
Message-ID: <2e5852b9e94b9a8d0261ce7ad79f4329.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240709123121.1452394-2-heiko@sntech.de>
References: <20240709123121.1452394-1-heiko@sntech.de> <20240709123121.1452394-2-heiko@sntech.de>
Subject: Re: [PATCH 1/6] dt-bindings: clocks: add binding for generic clock-generators
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, quentin.schulz@cherry.de, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Tue, 09 Jul 2024 14:45:20 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_144524_763842_74294D8B 
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

Quoting Heiko Stuebner (2024-07-09 05:31:16)
> In contrast to fixed clocks that are described as ungateable, boards
> sometimes use additional clock generators for things like PCIe reference
> clocks, that need actual supplies to get enabled and enable-gpios to be
> toggled for them to work.
> 
> This adds a binding for such clock generators that are not configurable
> themself, but need to handle supplies for them to work.

Sounds like vdd-supply is required?

> 
> While in a lot of cases the type of the IC used is described in board
> schematics, in some cases just a generic type description like
> "100MHz, 3.3V" might also be used. The binding therefore allows both
> cases. Specifying the type is of course preferred.
> 
> The clock-frequency is set in devicetree, because while some clock
> generators have pins to decide between multipls output rates, those
> are generally set statically on the board-layout-level.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../bindings/clock/clock-generator.yaml       | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/clock-generator.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/clock-generator.yaml b/Documentation/devicetree/bindings/clock/clock-generator.yaml
> new file mode 100644
> index 0000000000000..f44e61e414e89
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/clock-generator.yaml
> @@ -0,0 +1,62 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/clock-generator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Simple clock generators
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  $nodename:
> +    anyOf:
> +      - description:
> +          Preferred name is 'clock-<freq>' with <freq> being the output
> +          frequency as defined in the 'clock-frequency' property.
> +        pattern: "^clock-([0-9]+|[a-z0-9-]+)$"
> +      - description: Any name allowed
> +        deprecated: true

Drop the deprecated stuff from the fixed-clock binding?

> +
> +  compatible:
> +    oneOf:
> +      - const: clock-generator
> +      - items:
> +          - enum:
> +              - diodes,pi6c557-03b

I see this datasheet[1]. Can that link be included somewhere? That shows
there's a clock input pin, which means I expect a 'clocks' property.

Maybe instead of creating a generic binding just make a binding for
these diodes parts? It certainly looks like a generic binding could come
later when another vendor supports the same binding.

> +              - diodes,pi6c557-05b
> +          - const: clock-generator
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
> +      the clock generator.
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: handle of the regulator that provides the supply voltage
> +
> +required:
> +  - compatible
> +  - "#clock-cells"
> +  - clock-frequency

This is the same required properties as fixed rate clocks. I'd guess
that at least 'enable-gpios' or 'vdd-supply' should also be required, or
the node would simply use fixed-clock compatible.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    clock {
> +      compatible = "clock-generator";
> +      #clock-cells = <0>;
> +      clock-frequency = <1000000000>;
> +    };

[1] https://diodes.com/assets/Datasheets/PI6C557-03B.pdf

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
