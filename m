Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C185CA0EFA
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Aug 2025 15:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YY/llH6P7KrZihqSMDdmYmmk2PaOl/485bW53bmvAE=; b=bCM4c6FWj/1Vnx
	T1zQ1ThqZTnlNuwYDxoW+3h6BQzKdY78F1Q68lqEkA1WG6qewBJCGVTLHkLLqMVXDXuiT9UWilMwg
	hMvdMeRXFeYHBLiOfw3bZfA91H/i003Mf8cAMFFltvCGUEB8KRZhYMCAwpkQ0D5pqtSnjUXOj5GmL
	tGBuWjbi3sA99FibRaxjBULKkgSdNmKIe6a6iN2iw5TMsg+zgykRaN0FsfISXbfs41G+y+vqCNo/N
	tQcfrBj281G+3oEU2Q/eo3Os8KHQB80wHLDX+LSds51OU/7aVU4gdyiB2K0Jr87yQck9eDdVXKkcl
	79yb7GyCSOWMYmn2pM1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqZXt-00000008a7b-28aV;
	Mon, 25 Aug 2025 15:55:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqZ84-00000008W0C-1Y3F;
	Mon, 25 Aug 2025 15:29:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5561D5C611A;
	Mon, 25 Aug 2025 15:29:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95D30C4CEF4;
	Mon, 25 Aug 2025 15:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756135743;
	bh=aOMifVKOp4oKKYyO20R51jVPMX1YJXikplRovu+zXS4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KTrcdSNwYa4HzJaFgquyZob6pNT4hqE3Do95X3/zpk0g/on7STIImmPrwYly7V58K
	 sAMt69RVLuVPvyJMi2lHWmfiS0nnwCaNjofGF3UvzsnjuW1vJQ55WPnb6bccxumqJl
	 QsuPiFJS0A3akEihCcf3szUGidDWcLhq9sXqWpl7QlgmU1ItgL9kT0lAanN6c9H5ID
	 zF0TdZEKFUAAIHlDmZ6nM15Y2kAzsbesdSNktOiAgH5d9XFBJiB6K9Xy+1JXErmo7X
	 v4zMFskk1Ypm4Tv4BgYiQgMBVtJFDclHKhdC/SAYVKK2ElVXL86nFGPA3WVqV18nQp
	 AgFFZWMKL7gLw==
Message-ID: <9af288b0-2c31-48e2-b9ec-cb9e996ea644@kernel.org>
Date: Mon, 25 Aug 2025 17:28:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 05/13] media: dt-bindings: add rockchip rk3568 mipi
 csi-2 receiver
To: michael.riesch@collabora.com, Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Markus Elfring <Markus.Elfring@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240220-rk3568-vicap-v10-0-62d8a7b209b4@collabora.com>
 <20240220-rk3568-vicap-v10-5-62d8a7b209b4@collabora.com>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <20240220-rk3568-vicap-v10-5-62d8a7b209b4@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_082904_500816_A2A60542 
X-CRM114-Status: GOOD (  18.07  )
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

On 19/08/2025 00:25, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> Add documentation for the Rockchip RK3568 MIPI CSI-2 Receiver.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>   .../bindings/media/rockchip,rk3568-mipi-csi.yaml   | 144 +++++++++++++++++++++
>   MAINTAINERS                                        |   6 +
>   2 files changed, 150 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi.yaml
> new file mode 100644
> index 000000000000..8cbab93b4b85
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi.yaml
> @@ -0,0 +1,144 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/rockchip,rk3568-mipi-csi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip RK3568 MIPI CSI-2 Receiver
> +
> +maintainers:
> +  - Michael Riesch <michael.riesch@collabora.com>
> +
> +description:
> +  The Rockchip RK3568 MIPI CSI-2 Receiver is a CSI-2 bridge with one input port
> +  and one output port. It receives the data with the help of an external
> +  MIPI PHY (C-PHY or D-PHY) and passes it to the Rockchip RK3568 Video Capture
> +  (VICAP) block.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - rockchip,rk3588-mipi-csi
> +          - const: rockchip,rk3568-mipi-csi
> +      - const: rockchip,rk3568-mipi-csi
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: Interrupt that signals changes in CSI2HOST_ERR1.
> +      - description: Interrupt that signals changes in CSI2HOST_ERR2.
> +
> +  interrupt-names:
> +    items:
> +      - const: irq1
> +      - const: irq2
> +
> +  clocks:
> +    maxItems: 1
> +
> +  phys:
> +    maxItems: 1
> +    description: MIPI C-PHY or D-PHY.
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description: Input port node. Connect to e.g., a MIPI CSI-2 image sensor.
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              bus-type:
> +                enum: [1, 4]
> +
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +
> +            required:
> +              - bus-type
> +              - data-lanes
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Output port connected to a RK3568 VICAP port.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - phys
> +  - ports
> +  - power-domains
> +  - resets
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3568-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/media/video-interfaces.h>
> +    #include <dt-bindings/power/rk3568-power.h>
> +
> +    soc {
> +        interrupt-parent = <&gic>;
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        csi: csi@fdfb0000 {
> +            compatible = "rockchip,rk3568-mipi-csi";
> +            reg = <0x0 0xfdfb0000 0x0 0x10000>;
> +            interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +            interrupt-names = "irq1", "irq2";
> +            clocks = <&cru PCLK_CSI2HOST1>;
> +            phys = <&csi_dphy>;
> +            power-domains = <&power RK3568_PD_VI>;
> +            resets = <&cru SRST_P_CSI2HOST1>;
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                csi_in: port@0 {
> +                    reg = <0>;
> +
> +                    csi_input: endpoint {
> +                        bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
> +                        data-lanes = <1 2 3 4>;
> +                        remote-endpoint = <&imx415_output>;
> +                    };
> +                };
> +
> +                csi_out: port@1 {
> +                    reg = <1>;
> +
> +                    csi_output: endpoint {
> +                        remote-endpoint = <&vicap_mipi_input>;
> +                    };
> +                };
> +            };
> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 4c39b9fd80bb..2ac4b7a5b255 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -21797,6 +21797,12 @@ F:	Documentation/userspace-api/media/v4l/metafmt-rkisp1.rst
>   F:	drivers/media/platform/rockchip/rkisp1
>   F:	include/uapi/linux/rkisp1-config.h
>   
> +ROCKCHIP MIPI CSI-2 RECEIVER DRIVER
> +M:	Michael Riesch <michael.riesch@collabora.com>
> +L:	linux-media@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi.yaml
> +
>   ROCKCHIP RK3568 RANDOM NUMBER GENERATOR SUPPORT
>   M:	Daniel Golle <daniel@makrotopia.org>
>   M:	Aurelien Jarno <aurelien@aurel32.net>
> 
Reviewed-by: Bryan O'Donoghue <bod@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
