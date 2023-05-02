Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DA1AC77B7E
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 08:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D9iwFmfmdIB72ceV+AhggXdMB1HkJVu0GXNV8+2TxIk=; b=PDKn2Aokr0Jgpq
	8gIMQOsknsM1d4WIemmGT+RnKwVAUimJI4kmcVwBn4XZG9aggkaP4IeC5KwYORqs2MnmVM35o7YKZ
	jJU5M669sSM9RxE/NYGozt5VLk/52pG/Rc+jc2XZcqURCdxneG1YtA7yVRiHMiZZzYtc2a76K0X9f
	yGX4Jl4j3zOSl+TdDVau+qSRsgdVSN247YaltitTwQiH6FVNdlt0oNpB6EGKGiJCMANtX6Luk0nfx
	Erb1ZKVP5yT+BUbh+pheQDEW7+UmXBdntPLNwl6twJDfadDLws53pUQdL+agAlRUtcymQZhttc+EG
	xrJNCAYyDQWT0WzWaxyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptlbA-000eqW-07;
	Tue, 02 May 2023 08:43:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptlb4-000eoU-1b;
	Tue, 02 May 2023 08:42:57 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ptlay-0006Md-K6; Tue, 02 May 2023 10:42:48 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject:  Re: [PATCH 2/8] dt-bindings: nvmem: rockchip-otp: Add compatible for RK3588
Date: Tue, 02 May 2023 10:42:47 +0200
Message-ID: <5471965.k3LOHGUjKi@diego>
In-Reply-To: <20230501084401.765169-3-cristian.ciocaltea@collabora.com>
References:  <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
 <20230501084401.765169-3-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_014254_532791_0CC8A3D8 
X-CRM114-Status: GOOD (  15.67  )
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

Hi,

Am Montag, 1. Mai 2023, 10:43:54 CEST schrieb Cristian Ciocaltea:
> Document the OTP memory found on Rockchip RK3588 SoC.

nit: I guess the changed clock and resets configuration for rk3588 variants
could be mentioned in the commit message.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../bindings/nvmem/rockchip-otp.yaml          | 71 ++++++++++++++++---
>  1 file changed, 60 insertions(+), 11 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml b/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
> index 658ceed14ee2..84a11382c6e7 100644
> --- a/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
> @@ -9,34 +9,31 @@ title: Rockchip internal OTP (One Time Programmable) memory
>  maintainers:
>    - Heiko Stuebner <heiko@sntech.de>
>  
> -allOf:
> -  - $ref: nvmem.yaml#
> -
>  properties:
>    compatible:
>      enum:
>        - rockchip,px30-otp
>        - rockchip,rk3308-otp
> +      - rockchip,rk3588-otp
>  
>    reg:
>      maxItems: 1
>  
>    clocks:
>      minItems: 3
> -    maxItems: 3
> +    maxItems: 4
>  
>    clock-names:
> -    items:
> -      - const: otp
> -      - const: apb_pclk
> -      - const: phy
> +    minItems: 3
> +    maxItems: 4
>  
>    resets:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 3
>  
>    reset-names:
> -    items:
> -      - const: phy
> +    minItems: 1
> +    maxItems: 3
>  
>  required:
>    - compatible
> @@ -46,6 +43,58 @@ required:
>    - resets
>    - reset-names
>  
> +allOf:
> +  - $ref: nvmem.yaml#
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,px30-otp
> +              - rockchip,rk3308-otp
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 3
> +          maxItems: 3
> +        clock-names:
> +          items:
> +            - const: otp
> +            - const: apb_pclk
> +            - const: phy
> +        resets:
> +          maxItems: 1
> +        reset-names:
> +          items:
> +            - const: phy
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3588-otp
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 4
> +          maxItems: 4
> +        clock-names:
> +          items:
> +            - const: otpc
> +            - const: apb
> +            - const: arb
> +            - const: phy
> +        resets:
> +          minItems: 1
> +          maxItems: 3
> +        reset-names:
> +          items:
> +            - const: otpc
> +            - const: apb
> +            - const: arb
> +
>  unevaluatedProperties: false
>  
>  examples:
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
