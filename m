Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D07BD2504D
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 08:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HwahDOn86alClYTpOkW4AEflsh5HGgjeasMhSCpc9VE=; b=FplvIzEFQ03GjK
	NOcCjymOoP3cI+bXYM+NIqakt4DUmS0Eez3qWMWmHFmdmon5Ku1waKFi/XiNH/2gdP6vPGKcyR6rR
	ZiOsaAQ4Al4/TpM+9e1pvGaBNiSBaO+ZiCJesR1LVaxTkcqRiQnTD64e7PVemK+WQo6M64SJ7d6tD
	EkX3qBngNASxyvdqBNGh9tjObUvQG2t9IB8f1FTkHfqvgxTAHOXYH6hJlH/v+Ehr/WztKinE1uzH0
	mffddh/Poh6Pd/G6XxQF5PyVr3N1mDBsqT6a4lYYxjO8+xVXAutwBGdYtAgqdAoWFnu2SIKm9lktc
	pHBLu4amI8fzVZN5MhEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDdN-000000051G5-3JhX;
	Mon, 12 Jan 2026 08:50:45 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDdI-000000051FO-3uLU;
	Mon, 12 Jan 2026 08:50:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3126940879;
	Mon, 12 Jan 2026 08:50:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CA40C116D0;
	Mon, 12 Jan 2026 08:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768207840;
	bh=WNiMZmCXbtCUCtjSuHYY/XW9lCniSthvEMeQbEklHlc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FHK8UKem2IQ7gNmRRtwxlDFrk/hmM9XfMvkqmXrU9zKruNNHlsTSSB6spvDdcxN4Z
	 y5UZ4gZTBZp4DmoZbqZLhP0WrksQaZ16uzId3BLzgs10APPyb0h/1d6idDffdM1hSy
	 6aZSmQWCIwbdGXv8mnYpNi8pHqBrsmTBPmUNj2tZBDqmDzw5ikyLPyj+b8SOzVkkBS
	 3EDknigcKxctvvDyR3H0ul+3KSB8eMc5BIJ9gUtnDnnA+jI29pzLw41LcgdhgZR97+
	 vuWHzVRFzJPS4vk4dtVw0dOAcXpSdZmy221xOqSedaNJgZsP9Maj6ym5LtDZV5fIs9
	 VihrwMQOg20tg==
Date: Mon, 12 Jan 2026 09:50:37 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Jonas Karlman <jonas@kwiboo.se>, 
	Chaoyi Chen <chaoyi.chen@rock-chips.com>, Hsun Lai <i@chainsx.cn>, John Clark <inindev@gmail.com>, 
	Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>, 
	Michael Riesch <michael.riesch@collabora.com>, Peter Robinson <pbrobinson@gmail.com>, 
	Alexey Charkov <alchark@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: usb: Add binding for WCH CH334/CH335
 hub controller
Message-ID: <20260112-lively-hallowed-beetle-fc15b2@quoll>
References: <20260112022823.91-1-kernel@airkyi.com>
 <20260112022823.91-2-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260112022823.91-2-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_005041_044940_A275B79F 
X-CRM114-Status: GOOD (  18.99  )
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

On Mon, Jan 12, 2026 at 10:28:21AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The WCH CH334/CH335[0] are USB2.0 protocol compliant 4-port USB HUB
> controller chips, supporting USB2.0 high-speed and full-speed for
> upstream ports, and USB2.0 high-speed 480Mbps, full-speed 12Mbps and
> low-speed 1.5Mbps for downstream ports, supporting not only low-cost STT
> mode (single TT schedules 4 downstream ports in time share), but also
> supports high performance MTT mode (4 TTs each corresponding to 1 port,
> concurrent processing).
> 
> Add a device tree binding for it.
> 
> [0]: https://www.wch-ic.com/downloads/CH334DS1_PDF.html
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  .../devicetree/bindings/usb/wch,ch334.yaml    | 65 +++++++++++++++++++

This must be separate patch. Do not combine independent subsystems into
one patchset.

>  1 file changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/wch,ch334.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/wch,ch334.yaml b/Documentation/devicetree/bindings/usb/wch,ch334.yaml
> new file mode 100644
> index 000000000000..2eeb92f25b4c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/wch,ch334.yaml
> @@ -0,0 +1,65 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/wch,ch334.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: WCH CH334/CH335 USB 2.0 Hub Controller
> +
> +maintainers:
> +  - Chaoyi Chen <kernel@airkyi.com>
> +
> +allOf:
> +  - $ref: usb-hub.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - usb1a86,8091
> +
> +  reg: true
> +
> +  reset-gpios:
> +    description: GPIO controlling the RESET# pin.
> +
> +  vdd-supply:
> +    description:
> +      The regulator that provides 3.3V core power to the hub.
> +
> +  vdd2-supply:
> +    description:
> +      The regulator that provides 3.3V or 5V power to the hub.
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    patternProperties:
> +      '^port@':
> +        $ref: /schemas/graph.yaml#/properties/port
> +
> +        properties:
> +          reg:
> +            minimum: 1
> +            maximum: 4
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    usb {
> +        dr_mode = "host";
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        hub: hub@1 {
> +            compatible = "usb1a86,8091";
> +            reg = <1>;
> +            reset-gpios = <&gpio0 2 GPIO_ACTIVE_HIGH>;

Are you sure?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
