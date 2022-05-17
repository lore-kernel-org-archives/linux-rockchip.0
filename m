Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 660C7C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 00:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nDn+LvBFt680NTQOVoJltccb3FvV2Sbsrogj8bQKRTY=; b=leOInfmA9OpBvY
	yOYTNMmxhu4l5SdHYK62UD8riAbURBpzyANqs4sluG13C3aZKd+6WjPaIeYkzylzxmwZDotV0NuNA
	ytdhji3yNuL+VXYGyGRdNDF+T61a+8kxvhDd7AvvS2bR9ZiP4ifnyLiWsNxMyd8D6fLcydw7HJSu/
	iUHUx98/ifudpccx0cIZwCpwpsazS1I9pBvNaMHx2Ajw33so9juUbFw0QB6wAtbWn2foBXDRhrPpN
	gWTAAoHknKX1zfgkXF2Gv8XT1oBWEyMzJkykyTTaXi6taxdxOvrP+Tc/DhLbga4wuGWA5rxIvY/zZ
	iAVshhAHR724t1XqBiGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqkfC-00Au1I-2C; Tue, 17 May 2022 00:02:10 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqkf0-00Atvh-Li; Tue, 17 May 2022 00:02:00 +0000
Received: by mail-oi1-f173.google.com with SMTP id j12so20609997oie.1;
 Mon, 16 May 2022 17:01:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Hk36ziFXO9TalU4BGZkjhExbMm1QNoPw9Ie36IVTwNw=;
 b=v7SfLa7/R0utl1GTxj3JxUXp4GZGKzfAtmaNv/lD8T+0z+YTWl9yNPmnXorAfCLkim
 308U9gmJJ76OHRGnrrnIn1CpK0grzlcvX14q/s0t4mCBWyIImWqOag7cQ+od0qVEMhMi
 Q1VplRYt0ronYdYv5vFWQl0hgF4jo3J+gDhy39CaOauJ1QqBwxTFcJwMbEp80hCq7exG
 JvxXNbah7pofbeAqe9jd6NZ6wiJYi1DZuP0LVdJOOPpqpmsE7ibBTqI+R2DYwS7U2rnp
 qZ7BuOW6+U4AWv7XKDeEtR2/QabsJHrfGLvp4O4myENQZmp9BjSuEMvL3YhUanJosYBK
 vGHg==
X-Gm-Message-State: AOAM533WdxmmA5uw4w3oYc0XpPCH7hxKIYjBy0SphMFa6tIs356dADyM
 LMQZ6Ep/5Q1/HaUubf5qR/rc+Iqvyg==
X-Google-Smtp-Source: ABdhPJxNS1w1V4Tgb8Bfadl7HxB3INT74jHp2qXeUshOlyFbHb2JkvEfkCuZymuaXD8jWIfZcHIUqQ==
X-Received: by 2002:a05:6808:1781:b0:326:d85f:b00d with SMTP id
 bg1-20020a056808178100b00326d85fb00dmr14638011oib.113.1652745715123; 
 Mon, 16 May 2022 17:01:55 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 97-20020a9d0eea000000b00605da994088sm4420874otj.2.2022.05.16.17.01.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 May 2022 17:01:54 -0700 (PDT)
Received: (nullmailer pid 3601836 invoked by uid 1000);
 Tue, 17 May 2022 00:01:53 -0000
Date: Mon, 16 May 2022 19:01:53 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Adrian Hunter <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 linux-clk@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 Elaine Zhang <zhangqing@rock-chips.com>, kernel@collabora.com
Subject: Re: [PATCHv2 03/21] dt-binding: clock: Document rockchip,rk3588-cru
 bindings
Message-ID: <20220517000153.GA3593598-robh@kernel.org>
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
 <20220504213251.264819-4-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220504213251.264819-4-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_170158_750918_B1673D78 
X-CRM114-Status: GOOD (  22.73  )
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

On Wed, May 04, 2022 at 11:32:33PM +0200, Sebastian Reichel wrote:
> From: Elaine Zhang <zhangqing@rock-chips.com>
> 
> Document the device tree bindings of the rockchip Rk3588 SoC
> clock driver.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/clock/rockchip,rk3588-cru.yaml   | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
> new file mode 100644
> index 000000000000..6e65ee7b0092
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/rockchip,rk3588-cru.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip rk3588 Family Clock Control Module
> +
> +maintainers:
> +  - Elaine Zhang <zhangqing@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description: |
> +  The RK3588 clock controller generates the clock and also implements a
> +  reset controller for SoC peripherals.
> +  (examples: provide SCLK_UART2\PCLK_UART2 and SRST_P_UART2\SRST_S_UART2 for UART module)
> +  Each clock is assigned an identifier and client nodes can use this identifier
> +  to specify the clock which they consume. All available clocks are defined as
> +  preprocessor macros in the dt-bindings/clock/rk3588-cru.h headers and can be
> +  used in device tree sources.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3588-cru
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  "#reset-cells":
> +    const: 1
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: >
> +      phandle to the syscon managing the "general register files". It is used
> +      for GRF muxes, if missing any muxes present in the GRF will not be
> +      available.
> +
> +  clocks: true

You have to define how many clocks and what they are.

> +  assigned-clocks: true
> +  assigned-clock-rates: true

You don't need these. They are allowed in any node with 'clocks' or now 
'#clock-cells'.

> +
> +required:
> +  - compatible
> +  - reg
> +  - "#clock-cells"
> +  - "#reset-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  # Clock Control Module node:
> +  - |
> +    cru: clock-controller@fd7c0000 {
> +      compatible = "rockchip,rk3588-cru";
> +      reg = <0xfd7c0000 0x5c000>;
> +      #clock-cells = <1>;
> +      #reset-cells = <1>;
> +    };
> -- 
> 2.35.1
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
