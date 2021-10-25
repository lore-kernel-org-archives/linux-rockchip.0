Return-Path: <SRS0=GaOA=PN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A0E9C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Oct 2021 07:18:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 12C0460724
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Oct 2021 07:18:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 12C0460724
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFJzyQGEKGXjY6FLPxRTqd7uAXA+AlELWaYxTHmxW1g=; b=xYTm+lu7TKyekM
	TSYMEjBA/qXCW1qd6eMv165f+3olnCYAHzQa72+HP51mXM+1nNlOQhmiApdGSqYKY0L+dJB0frqE+
	NR/gAU6GQxg1pWob7nq8CvCFYoh2fgNhEaSR8ERYrhQC6nlSuLXAtj181fcoSO6Hx8u3E2vQfJACS
	LognIXN/bUdc8sBXLtWchdBNeE2jeJcMdrbwvI//vyREFdT5bVs804HYyvyUyDnRdnBvwswqW/nAZ
	ydiqB7lLyfjjTpdjFdKjpuKTVtW0K387yKO2HIcKnWDjE1G9kktCaOXvhljbxCq8AgekHePMX2XXM
	BZu4976RAdeFvGCeNJYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1meuFo-00FZR6-3U; Mon, 25 Oct 2021 07:18:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1meu5K-00FVZX-RN; Mon, 25 Oct 2021 07:07:56 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 907BC60F9C;
 Mon, 25 Oct 2021 07:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635145674;
 bh=jAvb0Th54ggrdiHBLJ1eMnNsymTI/uXr/s7gfpm+Yw8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dVHSSsU7xk/RWpeonZOIzDd3tH1iEuL0K57WNjrMw8HIdaEFQapbSy7GyinXZcRMC
 QMAQbGyIin6yXie79hHZglXuktnTLHvb1VdBInU8jDuxbhOAAV1ESvBRsXv6PsIODh
 yqjA7Ww8N6rexXAoab2MKkZLaBJvVpyC/o9KIpa9SzvNx+enVFiryjeFqvayjwxAfJ
 XcdYTCKzJykG0SQDcs84oFGhaW723n5nIrZ9EXP90bpVTrypundJhCAsezfm6MSBiA
 u4IfnbBRaQNjtFd3L/1kBFuhszzFjuBoB28RCkL7st+wmZqTW+82qEQj5mudUut4T5
 atMbJ/y7Aun+g==
Date: Mon, 25 Oct 2021 12:37:50 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, devicetree@vger.kernel.org,
 michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kishon@ti.com, p.zabel@pengutronix.de
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: rockchip: Add Naneng combo PHY
 bindings
Message-ID: <YXZXxl8rc7b+i5J8@matsya>
References: <20211013101938.28061-1-yifeng.zhao@rock-chips.com>
 <20211013101938.28061-2-yifeng.zhao@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211013101938.28061-2-yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211025_000754_981393_5AE6B962 
X-CRM114-Status: GOOD (  13.22  )
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

On 13-10-21, 18:19, Yifeng Zhao wrote:
> Add the compatible strings for the Naneng combo PHY found on rockchip SoC.

Pls cc rob & DT list here!

> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> ---
> 
> Changes in v2:
> - Fix dtschema/dtc warnings/errors
> 
>  .../phy/phy-rockchip-naneng-combphy.yaml      | 98 +++++++++++++++++++
>  1 file changed, 98 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> new file mode 100644
> index 000000000000..55ad33d902ec
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> @@ -0,0 +1,98 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/phy-rockchip-naneng-combphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip SoC Naneng Combo Phy Device Tree Bindings
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3568-naneng-combphy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    items:
> +      - description: reference clock
> +      - description: apb clock
> +      - description: pipe clock
> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: ref
> +      - const: apb
> +      - const: pipe
> +
> +  '#phy-cells':
> +    const: 1
> +
> +  resets:
> +    minItems: 1
> +    items:
> +      - description: exclusive apb reset line
> +      - description: exclusive PHY reset line
> +
> +  reset-names:
> +    minItems: 1
> +    items:
> +      - const: combphy-apb
> +      - const: combphy
> +
> +  rockchip,pipe-grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Some additional phy settings are access through GRF regs.
> +
> +  rockchip,pipe-phy-grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Some additional pipe settings are access through GRF regs.
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - '#phy-cells'
> +  - resets
> +  - reset-names
> +  - rockchip,pipe-grf
> +  - rockchip,pipe-phy-grf
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +
> +    #include <dt-bindings/clock/rk3568-cru.h>
> +
> +    pipegrf: syscon@fdc50000 {
> +      reg = <0xfdc50000 0x1000>;
> +    };
> +
> +    pipe_phy_grf0: syscon@fdc70000 {
> +      reg = <0xfdc70000 0x1000>;
> +    };
> +
> +    combphy0_us: phy@fe820000 {
> +      compatible = "rockchip,rk3568-naneng-combphy";
> +      reg = <0xfe820000 0x100>;
> +      #phy-cells = <1>;
> +      clocks = <&pmucru CLK_PCIEPHY0_REF>, <&cru PCLK_PIPEPHY0>,
> +        <&cru PCLK_PIPE>;
> +      clock-names = "ref", "apb", "pipe";
> +      assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
> +      assigned-clock-rates = <100000000>;
> +      resets = <&cru SRST_P_PIPEPHY0>, <&cru SRST_PIPEPHY0>;
> +      reset-names = "combphy-apb", "combphy";
> +      rockchip,pipe-grf = <&pipegrf>;
> +      rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
> +    };
> -- 
> 2.17.1
> 
> 

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
