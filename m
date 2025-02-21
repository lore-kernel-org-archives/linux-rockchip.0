Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE1F5C021B3
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Feb 2025 14:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/69vRmRwOMl9il+ynJYcre917SJ0Z+ZYs5s1L4AQ/9o=; b=BOgKoMSB0lQD/a
	ay8LeouSZbIQ+89L3irLt6JoM5j9e1wnCM8Rb3z8fwyPU9rUyC9OY9p+95gT0LbjMU7EHnDoiobQd
	dV009ZsmBj/RZKf0MOfKX/x0AoS8+K2h5tQqdUsoj42V3Y8log4NLF1qQhxo5oqrJJqIS/ieFyrbT
	h0ulQVFL7dDwpto4CFWadqN+oJFHvoQO6eBpsOMa5AVsKyak5tHQsP6lgIwEJUTsF2AbZZpJP4in3
	15y3oH31Bqhz/6EIfbVtGaorWOvG6tBF+WtU7v4VM3Fm9uPrCLgFp5QqbQzWThoeWB1Yiz7NDJfEh
	TrksSV0G8dg4qWyu7zBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlU4V-00000005pX4-2ej9;
	Fri, 21 Feb 2025 14:32:07 +0000
Received: from mgamail.intel.com ([192.198.163.15])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlTmN-00000005ma1-2tVz;
	Fri, 21 Feb 2025 14:13:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1740147204; x=1771683204;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Rdw7VcsQXfPz8ijFFRK9pCO/RD7kMR5M0Z/uSgEDHcs=;
  b=E4V+FGgMeFEMoyeauFsbzatVvwZo9rI0kc6cYtZLdZtp/7+AXeqpG+G4
   QPdQxvKOIlD1dbU03pAq4gs/xMlGOObnnz1qhl7BzHBHdiqKZ49znveVC
   a/XzjliS8a0lzODEXZk32XoNpJaVgw6NxKihKyZdVVESua+SM2eOOHMo9
   P9tUp2qWvXyVBCM7AFXgGbN2/8Vuo9ZCH2V2pUzee3i8g6AgX3s+OSXu7
   HuMyRDXj78WzfH2CEKwO+5vvagu9AjbjUvFWiBZJh9AfYKmIz1g+hMZ5L
   7rXllncBj/NLeiUAsh9ij/7FlMiPoyQ7y+sp3b16O9PBtLdfcpUzn0EwJ
   Q==;
X-CSE-ConnectionGUID: p+JQDVbURuCMEZdhd5CCMQ==
X-CSE-MsgGUID: h/mUdpj5TgmDdOgPSpTL6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11352"; a="41105526"
X-IronPort-AV: E=Sophos;i="6.13,305,1732608000"; 
   d="scan'208";a="41105526"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2025 06:13:23 -0800
X-CSE-ConnectionGUID: kuWEpc3JQdWW113ZADD5WQ==
X-CSE-MsgGUID: r9mxKPfoREW6/MVEd3c6sQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,305,1732608000"; 
   d="scan'208";a="115099483"
Received: from turnipsi.fi.intel.com (HELO kekkonen.fi.intel.com) ([10.237.72.44])
  by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2025 06:13:16 -0800
Received: from kekkonen.localdomain (localhost [127.0.0.1])
	by kekkonen.fi.intel.com (Postfix) with SMTP id E5D12120289;
	Fri, 21 Feb 2025 16:13:13 +0200 (EET)
Date: Fri, 21 Feb 2025 14:13:13 +0000
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Mehdi Djait <mehdi.djait@linux.intel.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	=?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>,
	Gerald Loacker <gerald.loacker@wolfvision.net>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Paul Kocialkowski <paulk@sys-base.io>,
	Alexander Shiyan <eagle.alexander923@gmail.com>,
	Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 04/11] media: dt-bindings: media: add bindings for
 rockchip mipi csi host
Message-ID: <Z7iJ-UaLabqK4ZhY@kekkonen.localdomain>
References: <20250219-v6-8-topic-rk3568-vicap-v4-0-e906600ae3b0@wolfvision.net>
 <20250219-v6-8-topic-rk3568-vicap-v4-4-e906600ae3b0@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250219-v6-8-topic-rk3568-vicap-v4-4-e906600ae3b0@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_061323_738705_4F8D1196 
X-CRM114-Status: GOOD (  19.82  )
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

Hi Michael,

On Wed, Feb 19, 2025 at 11:16:35AM +0100, Michael Riesch wrote:
> Add documentation for the Rockchip RK3568 MIPI CSI-2 Host unit.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  .../bindings/media/rockchip,rk3568-mipi-csi.yaml   | 123 +++++++++++++++++++++
>  MAINTAINERS                                        |   1 +
>  2 files changed, 124 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi.yaml
> new file mode 100644
> index 000000000000..288941686e96
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi.yaml
> @@ -0,0 +1,123 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/rockchip,rk3568-mipi-csi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip RK3568 MIPI CSI-2 Host
> +
> +maintainers:
> +  - Michael Riesch <michael.riesch@wolfvision.net>
> +
> +description:
> +  The Rockchip RK3568 MIPI CSI-2 Host is a CSI-2 bridge with one input port
> +  and one output port. It receives the data with the help of an external
> +  MIPI PHY (C-PHY or D-PHY) and passes it to the Rockchip RK3568 Video Capture
> +  (VICAP) block.
> +
> +properties:
> +  compatible:
> +    const: rockchip,rk3568-mipi-csi
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  phys:
> +    maxItems: 1
> +    description: MIPI C-PHY or D-PHY.
> +
> +  phy-names:
> +    items:
> +      - const: csiphy
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description:
> +          Input port node. Connect to e.g., a MIPI CSI-2 image sensor.
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
> +            required:
> +              - bus-type
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description:
> +          Output port node. Connect to RK3568 VICAP MIPI CSI-2 port.

What's the purpose of a port node without an endpoint?

> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - phys
> +  - phy-names
> +  - ports
> +  - power-domains
> +  - resets
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3568-cru.h>
> +    #include <dt-bindings/power/rk3568-power.h>
> +
> +    parent {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        csi: csi@fdfb0000 {
> +            compatible = "rockchip,rk3568-mipi-csi";
> +            reg = <0x0 0xfdfb0000 0x0 0x10000>;
> +            clocks = <&cru PCLK_CSI2HOST1>;
> +            phys = <&csi_dphy>;
> +            phy-names = "csiphy";
> +            power-domains = <&power RK3568_PD_VI>;
> +            resets = <&cru SRST_P_CSI2HOST1>;
> +            status = "disabled";
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                csi_in: port@0 {
> +                    reg = <0>;
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
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index cd8fa1afe5eb..d83a7762dbe3 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20407,6 +20407,7 @@ M:	Michael Riesch <michael.riesch@wolfvision.net>
>  L:	linux-media@vger.kernel.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
> +F:	Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi.yaml
>  F:	Documentation/devicetree/bindings/media/rockchip,rk3568-vicap.yaml
>  
>  ROCKCHIP CRYPTO DRIVERS
> 

-- 
Kind regards,

Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
