Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96E5BE77188
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jan 2025 16:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qT0oGzGklMnIKbb0AXsT0Tfm3lQNC9a5q3FCX7Yg9i8=; b=aupZ1aG7bcyrwQ
	HRlkmAhk9NnG+kw9khkbVG4FABFq52ER9uiyuhXQnz9d7+7o81ZWH1J1JINtlfGUX4T0gIYfnIXO2
	wFKr6v7rpnao+xAZNY/+V+u2hlC1Iwxs70QSfAIGztbEFA18BcJdAYe7TNOBZxc2hAd1C8Yh4Dbla
	x3t5hViokKxebVl0mVaGpEsce3qxSqrzpQ00DsZHo9L3Qqn9R8+DS30d+bqeVDqWSDfLIoNKq38a8
	DTAvKRkU1kkJ2mWy6sCPYtBjCatWWdn5ZWWDvybohnzafjiAZ3aKsJtLo4+HRDvNajymKNsbWLM5Q
	frp+zmE0Wnc8WjOp64aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWHSx-0000000G8WI-26x0;
	Fri, 10 Jan 2025 16:02:31 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWH4W-0000000FyuF-1L2o;
	Fri, 10 Jan 2025 15:37:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1ABDAA42526;
	Fri, 10 Jan 2025 15:35:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12DD9C4CED6;
	Fri, 10 Jan 2025 15:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736523435;
	bh=t/DCLtxTAMc6j2jDTGiXPzE5QLvYDxwka7Xtc0lpisQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IO/BUphEXrds0kt8ktdN0EDh4YXbN7rr/hC1yO0J37SC1Gf5SF1IInMlU2ChMaG9n
	 jyi516GoF+AEOuts7KPRJgOJ3Vt01PRePBb8m7AByK7bvvSLzbNKRvpDBhlkjBSRm6
	 a2bnT4yA9HcMpovdLCe06Gw/aabyimLWOWzKjwMW+hJLZ+O0fz+PMLcpwpSY9X/dJC
	 i8ap8sl4v64+KuA4NfQ+aJs20O2vDqHf0OCOsiTQz/XJvPM4fijMfHtSkr2EU9B/nl
	 5LpRTtflSz9orIksuejhxc0WaQsM7L4I9eP9bmEg6Wx8tDFw3ClpH8Mh8RD0Uxa2fA
	 6myCtPjBgNLxQ==
Date: Fri, 10 Jan 2025 09:37:14 -0600
From: Rob Herring <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, derek.foreman@collabora.com,
	detlev.casanova@collabora.com, daniel@fooishbar.org,
	sebastian.reichel@collabora.com, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v10 10/11] dt-bindings: display: vop2: Add rk3576 support
Message-ID: <20250110153714.GA2912633-robh@kernel.org>
References: <20250110100832.27551-1-andyshrk@163.com>
 <20250110100832.27551-11-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250110100832.27551-11-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_073716_485556_9D3E4903 
X-CRM114-Status: GOOD (  21.24  )
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

On Fri, Jan 10, 2025 at 06:08:25PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add vop found on rk3576, the main difference between rk3576 and the
> previous vop is that each VP has its own interrupt line.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v10:
> - Move interrupt-names back to top level
> - Add constraint of interrupts for all platform
> - Add constraint for all grf phandles
> - Reorder some properties
> 
> Changes in v9:
> - Drop 'vop-' prefix of interrupt-names.
> - Add blank line between DT properties
> - Remove list interrupt-names in top level
> 
> Changes in v8:
> - Fix dt_binding_check errors
> - ordered by soc name
> - Link to the previous version:
>   https://lore.kernel.org/linux-rockchip/6pn3qjxotdtpzucpul24yro7ppddezwuizneovqvmgdwyv2j7p@ztg4mqyiqmjf/T/#u
> 
> Changes in v4:
> - describe constraint SOC by SOC, as interrupts of rk3576 is very
>   different from others
> - Drop Krzysztof's Reviewed-by, as this version changed a lot.
> 
> Changes in v3:
> - ordered by soc name
> - Add description for newly added interrupt
> 
> Changes in v2:
> - Add dt bindings
> 
>  .../display/rockchip/rockchip-vop2.yaml       | 101 +++++++++++++++---
>  1 file changed, 87 insertions(+), 14 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> index 2531726af306..3bae71142018 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> @@ -14,12 +14,14 @@ description:
>  maintainers:
>    - Sandy Huang <hjc@rock-chips.com>
>    - Heiko Stuebner <heiko@sntech.de>
> +  - Andy Yan <andyshrk@163.com>
>  
>  properties:
>    compatible:
>      enum:
>        - rockchip,rk3566-vop
>        - rockchip,rk3568-vop
> +      - rockchip,rk3576-vop
>        - rockchip,rk3588-vop
>  
>    reg:
> @@ -37,10 +39,21 @@ properties:
>        - const: gamma-lut
>  
>    interrupts:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 4
>      description:
> -      The VOP interrupt is shared by several interrupt sources, such as
> -      frame start (VSYNC), line flag and other status interrupts.
> +      For VOP version under rk3576, the interrupt is shared by several interrupt
> +      sources, such as frame start (VSYNC), line flag and other interrupt status.
> +      For VOP version from rk3576 there is a system interrupt for bus error, and
> +      every video port has it's independent interrupts for vsync and other video
> +      port related error interrupts.
> +
> +  interrupt-names:
> +    items:
> +      - const: sys
> +      - const: vp0
> +      - const: vp1
> +      - const: vp2
>  
>    # See compatible-specific constraints below.
>    clocks:
> @@ -120,43 +133,102 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            const: rockchip,rk3588-vop
> +            enum:
> +              - rockchip,rk3566-vop
> +              - rockchip,rk3568-vop
>      then:
>        properties:
>          clocks:
> -          minItems: 7
> +          minItems: 5
> +
>          clock-names:
> -          minItems: 7
> +          minItems: 5
> +
> +        interrupts:
> +          minItems: 1
> +          maxItems: 1
> +
> +        interrupt-names: false
>  
>          ports:
>            required:
>              - port@0
>              - port@1
>              - port@2
> -            - port@3
> +
> +        rockchip,vo1-grf: false
> +        rockchip,vop-grf: false
> +        rockchip,pmu: false
>  
>        required:
>          - rockchip,grf
> -        - rockchip,vo1-grf
> -        - rockchip,vop-grf
> -        - rockchip,pmu
>  
> -    else:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3576-vop
> +    then:
>        properties:
> +        clocks:
> +          minItems: 5
> +
> +        clock-names:
> +          minItems: 5
> +
> +        interrupts:
> +          minItems: 4
> +          maxItems: 4

max is already 4, so drop.

> +
> +        interrupt-names:
> +          minItems: 4
> +          maxItems: 4

same here.

> +
> +        ports:
> +          required:
> +            - port@0
> +            - port@1
> +            - port@2
> +
>          rockchip,vo1-grf: false
>          rockchip,vop-grf: false
> -        rockchip,pmu: false
>  
> +      required:
> +        - rockchip,grf
> +        - rockchip,pmu
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3588-vop
> +    then:
> +      properties:
>          clocks:
> -          maxItems: 5
> +          minItems: 7
> +
>          clock-names:
> -          maxItems: 5
> +          minItems: 7
> +
> +        interrupts:
> +          minItems: 1

min is already 1, so drop.

> +          maxItems: 1
> +
> +        interrupt-names: false
>  
>          ports:
>            required:
>              - port@0
>              - port@1
>              - port@2
> +            - port@3
> +
> +      required:
> +        - rockchip,grf
> +        - rockchip,vo1-grf
> +        - rockchip,vop-grf
> +        - rockchip,pmu
>  
>  additionalProperties: false
>  
> @@ -184,6 +256,7 @@ examples:
>                                "dclk_vp1",
>                                "dclk_vp2";
>                  power-domains = <&power RK3568_PD_VO>;
> +                rockchip,grf = <&grf>;
>                  iommus = <&vop_mmu>;
>                  vop_out: ports {
>                      #address-cells = <1>;
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
