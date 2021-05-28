Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB79BC47087
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 15:57:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C4D1610FA
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 15:57:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4C4D1610FA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/2H1P1TKEY5NL4CVkhw+4FEmnvZm6GQJyVm2B1a7Vo=; b=l96vzas0y7TDah
	+4AaEtC813wXzZ20vwyzuWO0fYJpT+q20Bnsp6nVEa+V736jQ2P8WlY8aZQNoDAXKLGyl4AstjUkM
	R7O5ElkZqDSvQ66uUqQQ+OByyBhw3mnn13MmNPcpVMrRaHfwOMZUQYvV2F1DlNqq5vmdR4bVMZ0Gx
	8IjrAltJBCm+ZyrBuX44qqirFR54ajvq1Tyq8utZaSaTRmZoBcjV2x8ZbgV5S5sAUoXXlG9L4w3eF
	uz4s8dCVS2EacN7VFZktjg4w+OABRXmFO7g6tB+N71ZiadKtxZhmrR9xnEBNkaNUDWdTOfxX+7BSR
	DcN2BGAah/ENC7aAQvUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmer3-00GlOX-91; Fri, 28 May 2021 15:56:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmer0-00GlM2-7T
 for linux-rockchip@lists.infradead.org; Fri, 28 May 2021 15:56:55 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lmeqq-0005yC-LT; Fri, 28 May 2021 17:56:44 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Ezequiel Garcia <ezequiel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH v2 3/3] dt-bindings: timer: convert rockchip,
 rk-timer.txt to YAML
Date: Fri, 28 May 2021 17:56:43 +0200
Message-ID: <15819722.JCcGWNJJiE@diego>
In-Reply-To: <20210506111136.3941-4-ezequiel@collabora.com>
References: <20210506111136.3941-1-ezequiel@collabora.com>
 <20210506111136.3941-4-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_085654_334463_14938096 
X-CRM114-Status: GOOD (  19.65  )
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

Hi Daniel,

Am Donnerstag, 6. Mai 2021, 13:11:36 CEST schrieb Ezequiel Garcia:
> Convert Rockchip Timer dt-bindings to YAML.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

can you apply this patch to the timer-tree?

Thanks
Heiko

> ---
>  .../bindings/timer/rockchip,rk-timer.txt      | 27 --------
>  .../bindings/timer/rockchip,rk-timer.yaml     | 64 +++++++++++++++++++
>  2 files changed, 64 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> 
> diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
> deleted file mode 100644
> index d65fdce7c7f0..000000000000
> --- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -Rockchip rk timer
> -
> -Required properties:
> -- compatible: should be:
> -  "rockchip,rv1108-timer", "rockchip,rk3288-timer": for Rockchip RV1108
> -  "rockchip,rk3036-timer", "rockchip,rk3288-timer": for Rockchip RK3036
> -  "rockchip,rk3066-timer", "rockchip,rk3288-timer": for Rockchip RK3066
> -  "rockchip,rk3188-timer", "rockchip,rk3288-timer": for Rockchip RK3188
> -  "rockchip,rk3228-timer", "rockchip,rk3288-timer": for Rockchip RK3228
> -  "rockchip,rk3229-timer", "rockchip,rk3288-timer": for Rockchip RK3229
> -  "rockchip,rk3288-timer": for Rockchip RK3288
> -  "rockchip,rk3368-timer", "rockchip,rk3288-timer": for Rockchip RK3368
> -  "rockchip,rk3399-timer": for Rockchip RK3399
> -- reg: base address of the timer register starting with TIMERS CONTROL register
> -- interrupts: should contain the interrupts for Timer0
> -- clocks : must contain an entry for each entry in clock-names
> -- clock-names : must include the following entries:
> -  "timer", "pclk"
> -
> -Example:
> -	timer: timer@ff810000 {
> -		compatible = "rockchip,rk3288-timer";
> -		reg = <0xff810000 0x20>;
> -		interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> -		clocks = <&xin24m>, <&cru PCLK_TIMER>;
> -		clock-names = "timer", "pclk";
> -	};
> diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> new file mode 100644
> index 000000000000..e26ecb5893ae
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/timer/rockchip,rk-timer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip Timer Device Tree Bindings
> +
> +maintainers:
> +  - Daniel Lezcano <daniel.lezcano@linaro.org>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: rockchip,rk3288-timer
> +      - const: rockchip,rk3399-timer
> +      - items:
> +          - enum:
> +              - rockchip,rv1108-timer
> +              - rockchip,rk3036-timer
> +              - rockchip,rk3066-timer
> +              - rockchip,rk3188-timer
> +              - rockchip,rk3228-timer
> +              - rockchip,rk3229-timer
> +              - rockchip,rk3288-timer
> +              - rockchip,rk3368-timer
> +              - rockchip,px30-timer
> +          - const: rockchip,rk3288-timer
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: timer
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/rk3288-cru.h>
> +
> +    timer: timer@ff810000 {
> +        compatible = "rockchip,rk3288-timer";
> +        reg = <0xff810000 0x20>;
> +        interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&cru PCLK_TIMER>, <&xin24m>;
> +        clock-names = "pclk", "timer";
> +    };
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
