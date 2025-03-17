Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6D69C35FF1
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Mar 2025 00:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4GCfrzVp6k7VAo2XCqJHVyW9DeGcbBdx0nBmp5fJys=; b=GRv2ZmqU1bDBqw
	J8d8PjxYCS9Cm+wMihIFVJ0CASyN/5my/+HwRdPDEPliDmWHNmUhWPuNVuydR3AHy5PHeIIqSvHFk
	UrAx+cmMXafFLyFEm8wOLkAPiDduf34VdW0692TFHehqUh6miiOqi8TGy0LJIShGG6074uXKBbPGq
	n/Gablunbu1GmfzN5n0dce4WHw2DzJ2pR4OUpAMn5f3vjmIHR/SBDTm3kA2ltaJHNgowzYZHZOV7P
	akOYqLbIkkjuQzGkrjpb/3FoLjlJSvm63AEe7X+9BtC3WO1wE1k3TSI3wJhEeO7n7xVK2WJ38pmxq
	kYzYkUowSTzyhGoZoBWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ttxwJ-00000000jzX-1VzF;
	Mon, 17 Mar 2025 00:02:43 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ttxua-00000000jpc-1Wjz
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Mar 2025 00:00:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1742169653;
 bh=fAGt0LGgvh2CTmO4opasnT3lsd36sdAL3KaucUM6oTQ=;
 b=ImkSaYpGL1+FgeyClL4HKpGLKGesBU/olaV6poFbLQv/7IFvfIJOt0ajb94rXQ99WLuYaH2EY
 wPdFZJ0lrjNJWknLZYmkamJiWdOnbvFiXVjAncVZEuihmDZ1itoQ3ZOtBppU4N1VdPQNZY+c00I
 zGoSKsYRRhPfXt4SC5sN7w8PpxgG+FIfbkE7jLoXt0eCcX0NjSGBIw6d0IEIjazFLP6Z6C2Ojt3
 E16om8N3HYDGhPuP66uGjXGY5hgbLPvrVt51F+urjWJ0kaKYSLN/r8/qXLq+T4FW8cp/5o4hILD
 cgf3B703kE/UYo1Y5ILF5LpW5JOYJU18lawRqnjTc5IA==
X-Forward-Email-ID: 67d76630255865abb78c04f1
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <05ddd536-cf14-4ae0-b092-51a0c536f16e@kwiboo.se>
Date: Mon, 17 Mar 2025 01:00:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: nvmem: rockchip,otp: Add support for
 rk3562 and rk3568
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
References: <20250227110804.2342976-1-kever.yang@rock-chips.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250227110804.2342976-1-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250316_170056_892460_EFC8C544 
X-CRM114-Status: GOOD (  14.13  )
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

Hi Kever,

On 2025-02-27 12:08, Kever Yang wrote:
> Add compatible entry for the otp controller in rk3562 and rk3568, add schema
> for different clock names for new entry.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v2:
> - Update the commit message and add maxItems in schema.
> 
>  .../bindings/nvmem/rockchip,otp.yaml          | 53 ++++++++++++++++---
>  1 file changed, 46 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
> index a44d44b32809..7572f4a1d73b 100644
> --- a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
> @@ -14,6 +14,8 @@ properties:
>      enum:
>        - rockchip,px30-otp
>        - rockchip,rk3308-otp
> +      - rockchip,rk3562-otp
> +      - rockchip,rk3568-otp
>        - rockchip,rk3588-otp
>  
>    reg:
> @@ -25,19 +27,15 @@ properties:
>  
>    clock-names:
>      minItems: 3
> -    items:
> -      - const: otp
> -      - const: apb_pclk
> -      - const: phy
> -      - const: arb
> +    maxItems: 4
>  
>    resets:
>      minItems: 1
> -    maxItems: 3
> +    maxItems: 4
>  
>    reset-names:
>      minItems: 1
> -    maxItems: 3
> +    maxItems: 4

For clock-names above and reset-names we could possible skip the
min/max-items, e.g. something like:

  clock-names: true
  reset-names: true

and then only keep the items prop in the different conditions below.

>  
>  required:
>    - compatible
> @@ -62,12 +60,45 @@ allOf:
>        properties:
>          clocks:
>            maxItems: 3
> +        clock-names:
> +          items:
> +            - const: otp
> +            - const: apb_pclk
> +            - const: phy
>          resets:
>            maxItems: 1
>          reset-names:
>            items:
>              - const: phy
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3562-otp
> +              - rockchip,rk3568-otp
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 4
> +          maxItems: 4
> +        clock-names:
> +          items:
> +            - const: usr

Why do we not use the name "otp" here ? For px30 and rk3308 the clock is
named clk_otp_usr and we still use the "otp" name.

> +            - const: sbpi
> +            - const: apb_pclk
> +            - const: phy
> +        resets:
> +          minItems: 4
> +          maxItems: 4
> +        reset-names:
> +          items:
> +            - const: usr

Same here.

This needs to be rebased to also include rk3576 clock-names.

I prepared a FIXUP commit at [1] with the suggested changes, feel free
to squash any changes you agree with in a v3.

I am planing to send out a OTP series for RK3528, and that will depend
on next revision of this series :-)

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20250314-rk3528/

Regards,
Jonas

> +            - const: sbpi
> +            - const: apb
> +            - const: phy
> +
>    - if:
>        properties:
>          compatible:
> @@ -78,8 +109,16 @@ allOf:
>        properties:
>          clocks:
>            minItems: 4
> +          maxItems: 4
> +        clock-names:
> +          items:
> +            - const: otp
> +            - const: apb_pclk
> +            - const: phy
> +            - const: arb
>          resets:
>            minItems: 3
> +          maxItems: 3
>          reset-names:
>            items:
>              - const: otp


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
