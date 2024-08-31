Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D661EC5474C
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Aug 2024 06:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lbFKZrkVN16vVT9NH1ja2P1dCvXBj2GKBQ9ZpX9Je7c=; b=dAQzqA9x/w1VJZ
	ICtzmSnF40bSnU40BJSQs8w2qPMSaNUwmH2RbMbp7vtIMV5AvugQksqaY4mtSRvdJUvkvxM3qpNEa
	ySAGkUUNTqOpOPPYwuGIRW++XW2bW1VlYfE6FFMclRsyv0x4kFUUJkKyKHt/SOEe/LtoxIBgv29ug
	T0LKXaJ/1oP0x58gUP1ja6sXJ8HL9nljelYkZUeI22umQYPc+tFUiZ9R6iD8kKtegcjDAvqQkasla
	eW+FyBlAmIw0RPkfP1X1RgiWavAK/yBhO53mKv+drxCNOXY+JC23m+qT3WiqyrmYXaVIznVe/6nKk
	xjw4NhbQ+MDyzXTNGn4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skHNP-00000008gtU-4A1e;
	Sat, 31 Aug 2024 06:14:23 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skHMW-00000008glM-0R30;
	Sat, 31 Aug 2024 06:13:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C83F55C3A5C;
	Sat, 31 Aug 2024 06:13:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C72E7C4CEC0;
	Sat, 31 Aug 2024 06:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725084806;
	bh=r4QcLe2zH5VCVWMbpDB30H66Ja6ioSiSEKZ4BH0YNE8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U0uy46Xh9Dzs7TOtOcbQpb78Pkdp7Atwx8vMJ1nIG42WYLPgcPW+n2J32NY2T8ITM
	 O8EOaPsm0CpweassR8aSvWl2/se/Eo4kgi3tbbzGKoc3PvM3fhG/el+qYfjzHPiSWC
	 NAYLEoKSG4Ta3IzbGCN3shWzyL/ckl9KRt++QBU96zF28BDeWtqfkuej6C+Xz0q1kz
	 p6tOXTeTdHTOo6RZrTivrL+0Zgg+8MBaCv4do+SKNsg0gG9b6O10sjsQasN7w47c45
	 4CbXoaP5wC+XN+nW5vc+BzAmv5+CPXYA8iZXj8YB5wwTw035sUGc2xq9EQwDQKIc4l
	 Om8BKaHM7uutw==
Date: Sat, 31 Aug 2024 08:13:23 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mark Yao <markyao0591@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>, 
	Luis de Arquer <ldearquer@gmail.com>
Subject: Re: [PATCH v5 3/4] dt-bindings: display: rockchip: Add schema for
 RK3588 HDMI TX Controller
Message-ID: <myiu2nmyzysjnuvy4jnahket2go5kq4qs7pdhb7rznrp5pwilj@d55nh7qdenhj>
References: <20240831-b4-rk3588-bridge-upstream-v5-0-9503bece0136@collabora.com>
 <20240831-b4-rk3588-bridge-upstream-v5-3-9503bece0136@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240831-b4-rk3588-bridge-upstream-v5-3-9503bece0136@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_231328_303606_CFEB2640 
X-CRM114-Status: GOOD (  17.80  )
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

On Sat, Aug 31, 2024 at 12:55:31AM +0300, Cristian Ciocaltea wrote:
> Rockchip RK3588 SoC integrates the Synopsys DesignWare HDMI 2.1
> Quad-Pixel (QP) TX controller IP.
> 
> Since this is a new IP block, quite different from those used in the
> previous generations of Rockchip SoCs, add a dedicated binding file.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml       | 166 +++++++++++++++++++++
>  1 file changed, 166 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
> new file mode 100644
> index 000000000000..d2919ff6aa23
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
> @@ -0,0 +1,166 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip DW HDMI QP TX Encoder
> +
> +maintainers:
> +  - Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> +
> +description:
> +  Rockchip RK3588 SoC integrates the Synopsys DesignWare HDMI QP TX controller
> +  IP and a HDMI/eDP TX Combo PHY based on a Samsung IP block.
> +
> +allOf:
> +  - $ref: /schemas/display/bridge/synopsys,dw-hdmi-qp.yaml#
> +  - $ref: /schemas/sound/dai-common.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3588-dw-hdmi-qp
> +
> +  clocks:
> +    items:
> +      - {}
> +      - {}
> +      - {}
> +      - {}
> +      - description: TMDS/FRL link clock
> +      - description: Video datapath clock

Please define all clocks.

> +
> +  clock-names:
> +    items:
> +      - {}
> +      - {}
> +      - {}
> +      - {}
> +      - enum: [hdp, hclk_vo1]
> +      - const: hclk_vo1
> +
> +  interrupts:
> +    items:
> +      - {}
> +      - {}
> +      - {}
> +      - {}
> +      - description: HPD interrupt
> +
> +  interrupt-names:
> +    items:
> +      - {}
> +      - {}
> +      - {}
> +      - {}
> +      - const: hpd
> +
> +  phys:
> +    maxItems: 1
> +    description: The HDMI/eDP PHY.
> +
> +  phy-names:
> +    const: hdmi

Drop phy-names, not really useful if it copies the name of the block.

> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    minItems: 2
> +    maxItems: 2
> +
> +  reset-names:
> +    items:
> +      - const: ref
> +      - const: hdp
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Some HDMI QP related data is accessed through SYS GRF regs.
> +
> +  rockchip,vo-grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Additional HDMI QP related data is accessed through VO GRF regs.
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - interrupt-names
> +  - phys
> +  - phy-names
> +  - ports
> +  - resets
> +  - reset-names
> +  - rockchip,grf
> +  - rockchip,vo-grf
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/power/rk3588-power.h>
> +    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
> +
> +    soc {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +
> +      hdmi@fde80000 {
> +        compatible = "rockchip,rk3588-dw-hdmi-qp";
> +        reg = <0x0 0xfde80000 0x0 0x20000>;
> +        clocks = <&cru PCLK_HDMITX0>,
> +                 <&cru CLK_HDMITX0_EARC>,
> +                 <&cru CLK_HDMITX0_REF>,
> +                 <&cru MCLK_I2S5_8CH_TX>,
> +                 <&cru CLK_HDMIHDP0>,
> +                 <&cru HCLK_VO1>;
> +        clock-names = "pclk", "earc", "ref", "aud", "hdp", "hclk_vo1";
> +        interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH 0>,
> +                     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH 0>,
> +                     <GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH 0>,
> +                     <GIC_SPI 172 IRQ_TYPE_LEVEL_HIGH 0>,
> +                     <GIC_SPI 360 IRQ_TYPE_LEVEL_HIGH 0>;
> +        interrupt-names = "avp", "cec", "earc", "main", "hpd";
> +        phys = <&hdptxphy_hdmi0>;
> +        phy-names = "hdmi";
> +        power-domains = <&power RK3588_PD_VO1>;
> +        resets = <&cru SRST_HDMITX0_REF>, <&cru SRST_HDMIHDP0>;
> +        reset-names = "ref", "hdp";
> +        rockchip,grf = <&sys_grf>;
> +        rockchip,vo-grf = <&vo1_grf>;
> +        #sound-dai-cells = <0>;
> +
> +        ports {
> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +
> +          port@0 {
> +            reg = <0>;
> +
> +            hdmi0_in_vp0: endpoint {
> +                remote-endpoint = <&vp0_out_hdmi0>;

Messed indentation.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
