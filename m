Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7DC5CA0EED
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Aug 2025 18:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzD4LT0KakGKuED7ydKN6QdqnwGinK9ClEpYpp07K1U=; b=wvOiwvSbyRRV27
	cALCscOJCKpXrq1CyEPh2aZvq0UGYK4dqSzCoC7w+jmpEeMDEIpF0ibSFrJRbK4QrfP5yWtQiSneC
	+55LXSyx623GF9Jof0OpjTePrsTut3fMS7o5S6blCxv2XQw+EzKD1kW614OxjzEWKUv5avRPQMO3Q
	FYJCOAaxidYi90OYqHu6iVitDQ+PuRZliYwAGLOIEuHRRDTBVy1ARp4ojBO1q1KM6zXKVk1+BD8OC
	PxetsR0o7yqExJ4g4L3Eaygi7ZeMKm/X0g3TUQdWwx+1X7osEzZ526PKyRFoZlXnUsT9treK8teUW
	xjrZMJ/VOu7xOdQIf68g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urhWJ-00000002oAI-2ETk;
	Thu, 28 Aug 2025 18:38:47 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urcZp-00000001iab-28UL
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Aug 2025 13:22:06 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-afcb78ead12so147686966b.1
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 06:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756387324; x=1756992124; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0vejRaEijRO8+CORhQowxHuuY85LG5Du7ZSdJ6Jjs0g=;
        b=QyGURqmW+lY6cxGEE0fxxjuY3jCZ7YoSmSxOYD7eCUZseRYDcDZwZvHZhim0V5HZmQ
         lfQTINUiKwkgZfaSLmRrtxrWAXBIXZpZKxVIzj094kyV0Djvq7v1hsq96yjnjaOoQm33
         xlu1/MrvaX92bK9kWuTUj4j8nJzJG7uaOfFhh4fMjjGGBXsiy1dkHAICyys96XU1DfkA
         n/wYtq6E20HgdMgY3VO1q/4dLy7EqgauTU7Z3w4L8hdSjMvsqwynzlOg9Dj8dy10WKVZ
         ecIRjq6DO7IdbBB+YG0t7iZn3d+YxFwtsLlOded8J6bFlCPMPznWfwTuFDcxZFO++LgA
         UIKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756387324; x=1756992124;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0vejRaEijRO8+CORhQowxHuuY85LG5Du7ZSdJ6Jjs0g=;
        b=cCJGABuH/pu0eHL/6XVyvtamGX9YrOi35iITCxKxGTgElzvIBplRj/VU95nIMBoVew
         vo9yxWilGjhjZ7BK1OR+09SPT/3rzippqUBnL+SxhxilpYOuD2PLVYQ1vb4ejmnMIINg
         /IpRqLxy6tKCDR3lTMOAYatyrNsLdOJvZY0dhd3HkJINVQN1qvpzEt9zuBRuqwi/MvPL
         qY/hdlnA78kgdHDPzkKfx3aspDr1ImOtY+U4MmnUhGmLjby4rP9hwPDb2V8W+B5uRG2D
         stwHYcGqJ+UXXRhfbo2BVzRGieftaPIsRZrsL06+eoExtNlgidMjMb1qUcwI8nfrY1j0
         3NNw==
X-Forwarded-Encrypted: i=1; AJvYcCWf5EmFvRoG6Ubqjiz/lQTEy/BNt6jWW3epqBAF5wIrxE8LHsvAOQne1zYqt7Fby+qreI8/JST56pgF/kkipg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzBcGaSG693qfpMa6Ib/2Zp0L7PmRURKl+SEUZJxZOa/Nt9s6VV
	nRh3u4cNwjRCMC83D2FUqpju/5yAKBB11ko/8FxFhY3PVl75GLWapFEsr9sWpZi1+64=
X-Gm-Gg: ASbGnctJIA1kUMmJ2ZGVgksZwyG6jhO4CtjChoVobn95jGICGHr9EsiabOhRCClCKGK
	PJD9ME48SvNSA9T732j1PiTpt/32nKfbPEYBNQgOLCZ/mgFKh2dkLqXBUmXhVEQ0IhYiu3o7Qte
	/q8/oQOVT8pv/8ddgYpV7n2V70voCcKUr/VOp+rzIvAnMPqBsC7mdQuxqfyls1wAkYjI/jdhECj
	6Ua9HCxe/jtRErta7D/jjpxd4V65Pqsjtn1O0aQUG/OWIoBcbnTgvIuwZL6ixWFx1C862xYkKjA
	gP5S8UOuAG6TJkzWlHWNuZWLS/3YEXav2CPRItjvD5gk64QExU8DQzR4f/2BD1ynYN3h2O/Sxdt
	5o4L2zcd4DciKr0FZt/fEQhl2kpUMJJvnkMvP+6FX0RRe2pBWxcgeDxXC40h3WybSp5KTkltCbq
	yFuw==
X-Google-Smtp-Source: AGHT+IEydpmL/CGGlYRxIOHwyq2SzsRVG+uSKGaJVOpWYTkFto5PXtB9f5EDZvVuQAcMg4VMfo+bpw==
X-Received: by 2002:a17:906:398f:b0:afe:b7b5:555a with SMTP id a640c23a62f3a-afeb7b56482mr637165366b.63.1756387323855;
        Thu, 28 Aug 2025 06:22:03 -0700 (PDT)
Received: from [10.41.150.230] ([77.241.232.9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe849d7e6bsm850780866b.61.2025.08.28.06.22.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Aug 2025 06:22:03 -0700 (PDT)
Message-ID: <45fa25b0-076e-4df5-a3e3-118b1034c71b@linaro.org>
Date: Thu, 28 Aug 2025 15:22:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 03/13] media: dt-bindings: add rockchip px30 vip
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
 linux-rockchip@lists.infradead.org, Mehdi Djait <mehdi.djait@bootlin.com>
References: <20240220-rk3568-vicap-v10-0-62d8a7b209b4@collabora.com>
 <20240220-rk3568-vicap-v10-3-62d8a7b209b4@collabora.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20240220-rk3568-vicap-v10-3-62d8a7b209b4@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_062205_577059_22CDD917 
X-CRM114-Status: GOOD (  17.91  )
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

On 19/08/2025 01:25, Michael Riesch via B4 Relay wrote:
> From: Mehdi Djait <mehdi.djait@bootlin.com>
> 
> Add documentation for the Rockchip PX30 Video Input Processor (VIP).
> 
> Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
> [revised description]
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>   .../bindings/media/rockchip,px30-vip.yaml          | 122 +++++++++++++++++++++
>   MAINTAINERS                                        |   1 +
>   2 files changed, 123 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml b/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
> new file mode 100644
> index 000000000000..9f7ab6965636
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
> @@ -0,0 +1,122 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/rockchip,px30-vip.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip PX30 Video Input Processor (VIP)
> +
> +maintainers:
> +  - Mehdi Djait <mehdi.djait@linux.intel.com>
> +  - Michael Riesch <michael.riesch@collabora.com>
> +
> +description:
> +  The Rockchip PX30 Video Input Processor (VIP) receives the data from a camera
> +  sensor or CCIR656 encoder and transfers it into system main memory by AXI bus.
> +
> +properties:
> +  compatible:
> +    const: rockchip,px30-vip
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: ACLK
> +      - description: HCLK
> +      - description: PCLK
> +
> +  clock-names:
> +    items:
> +      - const: aclk
> +      - const: hclk
> +      - const: pclk
> +
> +  resets:
> +    items:
> +      - description: AXI
> +      - description: AHB
> +      - description: PCLK IN
> +
> +  reset-names:
> +    items:
> +      - const: axi
> +      - const: ahb
> +      - const: pclkin
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description: input port on the parallel interface
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              bus-type:
> +                enum: [5, 6]
> +
> +            required:
> +              - bus-type
> +
> +    required:
> +      - port@0
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/px30-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/media/video-interfaces.h>
> +    #include <dt-bindings/power/px30-power.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        video-capture@ff490000 {
> +            compatible = "rockchip,px30-vip";
> +            reg = <0x0 0xff490000 0x0 0x200>;
> +            interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks = <&cru ACLK_CIF>, <&cru HCLK_CIF>, <&cru PCLK_CIF>;
> +            clock-names = "aclk", "hclk", "pclk";
> +            power-domains = <&power PX30_PD_VI>;
> +            resets = <&cru SRST_CIF_A>, <&cru SRST_CIF_H>, <&cru SRST_CIF_PCLKIN>;
> +            reset-names = "axi", "ahb", "pclkin";
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;
> +
> +                    cif_in: endpoint {
> +                        remote-endpoint = <&tw9900_out>;
> +                        bus-type = <MEDIA_BUS_TYPE_BT656>;
> +                    };
> +                };
> +            };
> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 0d2adf483426..356679cfdcaa 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -21768,6 +21768,7 @@ M:	Michael Riesch <michael.riesch@collabora.com>
>   L:	linux-media@vger.kernel.org
>   S:	Maintained
>   F:	Documentation/admin-guide/media/rkcif*
> +F:	Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
>   
>   ROCKCHIP CRYPTO DRIVERS
>   M:	Corentin Labbe <clabbe@baylibre.com>
> 

I think your example could use with some newlines per dtsi files in real 
life, i.e. newline after the reg as an example.

Other than that this looks fine to me, please consider incorporating.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
