Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A865DC52D7B
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Aug 2024 17:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vnf7T1NypFSCXvqd9VxoHpeWn1v7M39AdJkl4ccmNeg=; b=S++xk3uxATs0nC
	4cMd+ZU2IGCONbG+KlGGS+w1axDFBat7gWOelBcCHg5SrTFvAYO68X/3bnA2JjIcShyo5Rax8P9Bs
	U6oMAmw0Lsw0NhViJJX0HC7hugsKFcKlHRNyKkOHrIfZX2wsqJrKJnYo3H5qDmTZNVR8ST7ZSuw6A
	ehCn5lC28/4trTJMqcJbYgdhAaMpUfmGoSg1dwxhb8iZJl6RBxfVAOgGaQrXhSB0sfBuuB1dXFeJ6
	EUxapM6WmOpSBaYzPOr2WphX2H++o7QEC6zByiLdLPTHTnFNy0xVv3bEX6DV/VBeUhFR9CTNkI1ts
	Kb0XsNchxzzgstkjTyhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdvoE-00000004ZH0-0QSK;
	Tue, 13 Aug 2024 17:59:50 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdvnW-00000004Yz2-01xo;
	Tue, 13 Aug 2024 17:59:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id EA5B3CE10E0;
	Tue, 13 Aug 2024 17:59:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B77EDC32782;
	Tue, 13 Aug 2024 17:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723571941;
	bh=Udh93aatepcn0N17vUvPrrHSs078UxAKq9paEPu2A5c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZwDCyGb6ESpAiWDw4I308wrMi6IOTwHGwFGfY5esWLUgJYkXthW4SMWzvWqFcj8vk
	 /I4QDNzP3K1ZegzoYJu3oQGzUMsZ/Jqq3atk8HecHUIxUe/8yAL0VPq4JsfBMiGqwN
	 ogtKbNzXakaii7goxXBJ2W+bdXMTWLB3S82PAyalkGfG5wX/u8xTdyDlr3RDNxlg3H
	 RcFE143uOXbrfPabZagQWw3gjTrblLj1TwGIvpHRhsVeY/kQIcOsH6uQrcerZHfbUe
	 ymHPssfV7j+vKiXWOSw3+vpzYtq7kAAYGXFIYgHfyCRBq04KyMJy5pxkMbEtKel5YR
	 i8y5i62e3OHwg==
Date: Tue, 13 Aug 2024 11:58:59 -0600
From: Rob Herring <robh@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mark Yao <markyao0591@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
	Luis de Arquer <ldearquer@gmail.com>
Subject: Re: [PATCH v3 3/5] dt-bindings: display: rockchip: Add schema for
 RK3588 HDMI TX Controller
Message-ID: <20240813175859.GA1415670-robh@kernel.org>
References: <20240807-b4-rk3588-bridge-upstream-v3-0-60d6bab0dc7c@collabora.com>
 <20240807-b4-rk3588-bridge-upstream-v3-3-60d6bab0dc7c@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240807-b4-rk3588-bridge-upstream-v3-3-60d6bab0dc7c@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_105906_415582_17CB2D17 
X-CRM114-Status: GOOD (  19.62  )
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

On Wed, Aug 07, 2024 at 02:07:25PM +0300, Cristian Ciocaltea wrote:
> Rockchip RK3588 SoC integrates the Synopsys DesignWare HDMI 2.1
> Quad-Pixel (QP) TX controller IP.
> 
> Since this is a new IP block, quite different from those used in the
> previous generations of Rockchip SoCs, add a dedicated binding file.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../display/rockchip/rockchip,dw-hdmi-qp.yaml      | 188 +++++++++++++++++++++
>  1 file changed, 188 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi-qp.yaml
> new file mode 100644
> index 000000000000..33572c88a589
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi-qp.yaml
> @@ -0,0 +1,188 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi-qp.yaml#
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
> +  - $ref: ../bridge/synopsys,dw-hdmi-qp.yaml#

Use full path: /schemas/display/bridge/...

> +  - $ref: /schemas/sound/dai-common.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3588-dw-hdmi-qp
> +
> +  clocks:
> +    minItems: 4
> +    items:
> +      - {}
> +      - {}
> +      - {}
> +      - {}
> +      # The next clocks are optional, but shall be specified in this
> +      # order when present.
> +      - description: TMDS/FRL link clock
> +      - description: Video datapath clock
> +
> +  clock-names:
> +    minItems: 4
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
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Port node with one endpoint connected to a vop node.
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Port node with one endpoint connected to a hdmi-connector node.

ports can go in the common schema. The description should be what the 
data and direction are for the ports. What the connection is can vary 
and is outside the scope of this binding.

> +
> +    required:
> +      - port@0
> +      - port@1
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
> +      Most HDMI QP related data is accessed through SYS GRF regs.
> +
> +  rockchip,vo1_grf:

rockchip,vo1-grf

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
