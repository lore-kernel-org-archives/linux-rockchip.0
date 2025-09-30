Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 353E6CAC5BD
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Sep 2025 00:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qqbGoskSiW5dQn2DRa3gio+zQhNhhCiFdcdx4DOLfVg=; b=ADVbDE0tNWHWhG
	T3dFXl7Sk/igt20tzKwK8zUq+ItlfEFxxrEOKDhH+07FxfaOWkHYvx/arPI9zoOv3FDrHGMLDUX9m
	ud1OM9WjUYAM7WsM/t+PL03gfwZvyqsI7BsoLA/r5Zj85UXtAuOlnp23ngXaBiNN2y0Sd/a+6aNcN
	YMewWJ2rWvhl8gexl7mfDstMPfRAoxF9KbM6Kk1cl+0wQ1tZ16737VqvcLL/+uFzDd1ty20N6Z3Dc
	QAzQ6Bx9M88AexJyNIX7Zyb/ODIHyr99dRmkjXYeIMa20PwhRLvwRkvuuDDGEfZaD/0owcydeHvuE
	8jCmALANw5ff+gPTwxOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3O6I-00000003fm8-3R9R;
	Tue, 30 Sep 2025 00:20:14 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3O6F-00000003fkm-1ys8
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Sep 2025 00:20:13 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-46e3af7889fso29331735e9.2
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Sep 2025 17:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759191610; x=1759796410; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d2aCUV6OLkXwTtwNzSY66MPjJRvAozma0kNGW9LaNrE=;
        b=LeNNbn2igfpVvRFGiG/tJgZ/2MM6tMFmdFko2f/01EJGKV8x/bAe/YdThtvoUUCrcf
         nQPVHmmjU3jK5bRVkOt9A1H+zSGs8RGKztVn+9fuGNlYLH1P9S2VHZcLVj9rlWRMy7cW
         un6nwTtn5e8TiKmwBmHKH2kk7GXDAoOswgV7e2aB2uIfMdhWHiSdqEqix9MMuYMo33Vf
         C7TsNssrrTLZ+RgU8uJXiJzXVfenCTDiXOFl460P9bbPjGtWM2ZfHFu2giRO+Sh9+fpX
         lGpC6U2KmLQb/UBkphMVezlr2bFU1lxSR8c3ttNQOzgOJAmWLFxRQZDBAUS6au62X1HY
         XuIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759191610; x=1759796410;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d2aCUV6OLkXwTtwNzSY66MPjJRvAozma0kNGW9LaNrE=;
        b=E3UT2dL7N8QdNFv1vPx8jzL1erA/rhJrYU2WDnxMmZklCYRkqBV8RHiAVbwhFeE3XM
         thy11cuSN2cxtxPQRIccTBAWBN+lwekRNprmdIJdW4LXVcHchI0Mq85oqh8xHEMcUuVK
         VpCcRPi1NwgkoAGSSxcbhxJB+pYagZkZtl7vF/Mwg0d4lUb11JQ49ZzctXeunqwaSjOZ
         kXq+PkcX/DA/koyKFSZS/y486T3+HN+VfcggmdHBZPjUivGg8rQnD96JXMme6m47jNJj
         YWZQWFanv2C42Dah0AvLcmZgOierPCe5U4sCMLtEk373f4+wcY+dNpiiEmi61M0wm2Mo
         PwDg==
X-Forwarded-Encrypted: i=1; AJvYcCVYZHztgxPFz05twaaygTfgFqlPGtMBTgHbvDa64I3rDK4rM487MGC/iqRIxdYVCOH36XWy9xP/ZQDXun07BQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwXW1u4ec9HGUKuDf2kcSYLGcLYDGhVLM+mQWtdu8uGDfbX1mU8
	o3VYUhG3y4sioS9FuwuixODC3KxjPvJBNTpdIvN+KzoPFQZPTNEnXmcrgXIG7nmXdxg=
X-Gm-Gg: ASbGnct1lv2RYaP2FHat7nYe5a/eJDIwTBTHscZBbwzsnOwx+WNnnxqyLBA6077DpcU
	Q7FXLHixrxvBxnMGcafQ/p7RtxqLi9ffq4SRFAsQ2ETlkjvkeNZTjPXW6izCgUDSlqk+8ZFshlR
	93S1HikBwlJ2KqH6Q6mo8pXufckx+T6OkcbuDF6SVmbrOrAMjGDw/diDMXrRyPBvwv/NWgJp9b5
	meKRXdsnIccHP082f6bdDRUSzOFibyAVeRvy/z6aLEx7cVpgQNbX5Sz1+jwOEIRiiWz6pD4Q9xA
	ca0bU8z2+NZOdSrzFRDlbsgEJFF6gajEu1VCu/FTBeistJrYKww83O6Q/9trgtOXhIUZKft/OZC
	bzB0o/SUPwnH2LnaBd9IfLypfegnLrCZZ25OzoAxpKAWHrNNGr9gM2/nbTrYMumruHwVyIXARaG
	AwsEZ/MRfcdM3pNHiOIomi1Cps605eYBk=
X-Google-Smtp-Source: AGHT+IHXl9KNUIAY5LT7IQhdhWGKaz6kpmbHg2ltlnlV5LX2piwjkJPMXt7gP1unlCKB0JI7t/YWLA==
X-Received: by 2002:a05:600c:8b65:b0:46e:36f8:1eb7 with SMTP id 5b1f17b1804b1-46e36f81fbamr160812465e9.10.1759191609420;
        Mon, 29 Sep 2025 17:20:09 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e56f3dcacsm33715495e9.2.2025.09.29.17.20.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 17:20:08 -0700 (PDT)
Message-ID: <1ccec2cd-0290-4804-b274-b3dcb481449e@linaro.org>
Date: Tue, 30 Sep 2025 01:20:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 04/17] media: dt-bindings: add rockchip rk3568 vicap
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
 linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20240220-rk3568-vicap-v11-0-af0eada54e5d@collabora.com>
 <20240220-rk3568-vicap-v11-4-af0eada54e5d@collabora.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20240220-rk3568-vicap-v11-4-af0eada54e5d@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_172011_553831_6B5E323B 
X-CRM114-Status: GOOD (  15.41  )
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

On 17/09/2025 16:38, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> Add documentation for the Rockchip RK3568 Video Capture (VICAP) unit.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>   .../bindings/media/rockchip,rk3568-vicap.yaml      | 170 +++++++++++++++++++++
>   MAINTAINERS                                        |   1 +
>   2 files changed, 171 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-vicap.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-vicap.yaml
> new file mode 100644
> index 000000000000..99861d236f5e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-vicap.yaml
> @@ -0,0 +1,170 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/rockchip,rk3568-vicap.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip RK3568 Video Capture (VICAP)
> +
> +maintainers:
> +  - Michael Riesch <michael.riesch@collabora.com>
> +
> +description:
> +  The Rockchip RK3568 Video Capture (VICAP) block features a digital video
> +  port (DVP, a parallel video interface) and a MIPI CSI-2 port. It receives
> +  the data from camera sensors, video decoders, or other companion ICs and
> +  transfers it into system main memory by AXI bus.
> +
> +properties:
> +  compatible:
> +    const: rockchip,rk3568-vicap
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
> +      - description: DCLK
> +      - description: ICLK
> +
> +  clock-names:
> +    items:
> +      - const: aclk
> +      - const: hclk
> +      - const: dclk
> +      - const: iclk
> +
> +  iommus:
> +    maxItems: 1
> +
> +  resets:
> +    items:
> +      - description: ARST
> +      - description: HRST
> +      - description: DRST
> +      - description: PRST
> +      - description: IRST
> +
> +  reset-names:
> +    items:
> +      - const: arst
> +      - const: hrst
> +      - const: drst
> +      - const: prst
> +      - const: irst
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: Phandle to general register file used for video input block control.
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
> +        description: The digital video port (DVP, a parallel video interface).
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              bus-type:
> +                enum: [5, 6]

I meant to add my nit-pick comment here as I added my RB.

Its not important though.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
