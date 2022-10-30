Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C803EC38A02
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Oct 2022 20:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WT3itTSu8yOPftnDlurPnSp2RRQcsFyn7joJQ0uzpz4=; b=3e8od7jHgvJZYv
	4yAeLhTQHTnFTlyxaPXIQq56OtP2nWzg7w0P0Wxla60RhcyScw3sh3lmpCPUoZ7ypKPhW4Ge+ePEX
	Y+8XuifeDmOStKmoRBYM+8NBmLXkf8nn6iVEIWvktoMg3U5xjwJ2y0wFRhg9/m5L/o6Ro7MHyOwwX
	uZ9/xoKcAJ1VQy6oXiEaJYuqPgBMEs7Jt7zBtXggSozb3iKHiH/d3vjNTE3/s4tDEqyW6wNOo8fD7
	DROWlkZoXwXRMi3owNuHjQZ3QccjNPhy0F5ydlpsOm0QHh2uElduldgUz9x46ZOiaCsLA6JzBQZLm
	/Jd9qxoomm82s99NS+ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opEYo-002eaD-Qe; Sun, 30 Oct 2022 20:05:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opEYl-002eWF-39; Sun, 30 Oct 2022 20:05:32 +0000
Received: from [185.156.123.69] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1opEYb-0005bW-Cr; Sun, 30 Oct 2022 21:05:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Alessandro Zummo <a.zummo@towertech.it>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, linux-rockchip@lists.infradead.org, linux-amlogic@lists.infradead.org, linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCHv2 6/6] dt-bindings: rtc: convert hym8563 bindings to json-schema
Date: Sun, 30 Oct 2022 21:05:19 +0100
Message-ID: <9218219.T7Z3S40VBb@phil>
In-Reply-To: <20221024165549.74574-7-sebastian.reichel@collabora.com>
References: <20221024165549.74574-1-sebastian.reichel@collabora.com> <20221024165549.74574-7-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221030_130531_168322_21A7B142 
X-CRM114-Status: GOOD (  17.07  )
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

Am Montag, 24. Oktober 2022, 18:55:49 CET schrieb Sebastian Reichel:
> Convert RTC binding for Haoyu Microelectronics HYM8563 to Device Tree
> Schema format.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  .../devicetree/bindings/rtc/haoyu,hym8563.txt | 30 ----------
>  .../bindings/rtc/haoyu,hym8563.yaml           | 56 +++++++++++++++++++
>  2 files changed, 56 insertions(+), 30 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/rtc/haoyu,hym8563.txt
>  create mode 100644 Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml
> 
> diff --git a/Documentation/devicetree/bindings/rtc/haoyu,hym8563.txt b/Documentation/devicetree/bindings/rtc/haoyu,hym8563.txt
> deleted file mode 100644
> index a8934fe2ab4c..000000000000
> --- a/Documentation/devicetree/bindings/rtc/haoyu,hym8563.txt
> +++ /dev/null
> @@ -1,30 +0,0 @@
> -Haoyu Microelectronics HYM8563 Real Time Clock
> -
> -The HYM8563 provides basic rtc and alarm functionality
> -as well as a clock output of up to 32kHz.
> -
> -Required properties:
> -- compatible: should be: "haoyu,hym8563"
> -- reg: i2c address
> -- #clock-cells: the value should be 0
> -
> -Optional properties:
> -- clock-output-names: From common clock binding
> -- interrupts: rtc alarm/event interrupt
> -
> -Example:
> -
> -hym8563: hym8563@51 {
> -	compatible = "haoyu,hym8563";
> -	reg = <0x51>;
> -
> -	interrupts = <13 IRQ_TYPE_EDGE_FALLING>;
> -
> -	#clock-cells = <0>;
> -};
> -
> -device {
> -...
> -	clocks = <&hym8563>;
> -...
> -};
> diff --git a/Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml b/Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml
> new file mode 100644
> index 000000000000..0b9f39ef0edc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml
> @@ -0,0 +1,56 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/rtc/haoyu,hym8563.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Haoyu Microelectronics HYM8563 RTC
> +
> +maintainers:
> +  - Alexandre Belloni <alexandre.belloni@bootlin.com>
> +
> +properties:
> +  compatible:
> +    const: haoyu,hym8563
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  "#clock-cells":
> +    const: 0
> +
> +  clock-output-names:
> +    description: From common clock binding to override the default output clock name.
> +    maxItems: 1
> +
> +  wakeup-source:
> +    description: Enables wake up of host system on alarm.
> +
> +allOf:
> +  - $ref: rtc.yaml
> +
> +unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#clock-cells"
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        rtc@51 {
> +            compatible = "haoyu,hym8563";
> +            reg = <0x51>;
> +            interrupts = <13 IRQ_TYPE_EDGE_FALLING>;
> +            #clock-cells = <0>;
> +        };
> +    };
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
