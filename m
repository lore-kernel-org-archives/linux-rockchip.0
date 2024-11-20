Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8346D6E2DE
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Nov 2024 08:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGImLZizDH+EtLmT0nC23NUDapI6Krba2YgYRQ3DyVo=; b=HUJgquuwA42GpP
	n8o+zCy9PzhNY7yPxjC62Q3SJLibA1/D/Rw0dPvVfIvXZwksy3vNwiZOSnIvbC6YgEvryrgbJXFeB
	THP3HCvb624MM7H+tqv+eXr4PMuXY4R3Q0w3ksWocQbolyDpPrGEnkqBXAug5csZOJilPoCu+/Y2L
	p1l0DbrVFwo5V6KA2kQwCvxGPOZhe3a8f3+AcxO8lBl2ewtwfQBcfHOF92bIbd4ohaEQy7jr4PU1U
	taF5ueF5NcRSEeUAEyIpj2eMbYwtlTEW9FkGoGbsevG/oc4pROyhbvfm544Bel6aC0ZcQJOi95c1i
	CWMmjnuqdHKB9o82xg0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDgXS-0000000EpKf-0sRA;
	Wed, 20 Nov 2024 08:58:18 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDgWV-0000000EpBD-1WDf;
	Wed, 20 Nov 2024 08:57:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 20241A42DF8;
	Wed, 20 Nov 2024 08:55:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A7FBC4CED0;
	Wed, 20 Nov 2024 08:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732093038;
	bh=NZWLHSmz7z/5yxwdahzySA58S6IipEOZgQkNj1QBZoE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OoeKGvDaprjf76dmMdBAlNpU2M7hSfpNcB5GHqeXIhiwgROPYsijW1r9yn1ZsskmX
	 Dp9fDygOYV+8xnJjV4FeWiYbxU7msG4gezmHvRp0lNnO+0KGOgi0GPiARxcjImLFeD
	 xzIhOxZAodkRSgmNRd96bh6ohyUJhFp5A2o+P++4uWN1lfwU7ea7yRQ1vkta2/xWXp
	 oCFEvEDmhzykOLJr/hg7erK2Gll0nlHkDrDPPEUI52IU9YhhtNaT/XVLZIIRqfFhJr
	 uZgo8HFuJ9rVup/zWjbBi9f34Gd+BxHk769dtF98lzFaaLWQ5HuyBvxXRAOGXKRIMs
	 7tpgsjKfUwhlw==
Date: Wed, 20 Nov 2024 09:57:14 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: srinivas.kandagatla@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, detlev.casanova@collabora.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, sebastian.reichel@collabora.com
Subject: Re: [PATCH 3/5] dt-bindings: nvmem: rockchip,otp: Add compatible for
 RK3576
Message-ID: <uzqdch4xiesvc3wq6fcpv7ulw3g7olvyxed7s5payhlddgubiq@apnlq7xgzrjo>
References: <20241119132916.1057797-1-heiko@sntech.de>
 <20241119132916.1057797-4-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241119132916.1057797-4-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241120_005719_460463_999CD58C 
X-CRM114-Status: GOOD (  14.27  )
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

On Tue, Nov 19, 2024 at 02:29:14PM +0100, Heiko Stuebner wrote:
> Document the OTP memory found on Rockchip RK3576 SoC.
> 
> The RK3576 uses the same set of clocks as the px30/rk3308
> but has one reset more, so adapt the binding to handle this
> variant as well.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../bindings/nvmem/rockchip,otp.yaml           | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
> index a44d44b32809..dae7543a0179 100644
> --- a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
> @@ -14,6 +14,7 @@ properties:
>      enum:
>        - rockchip,px30-otp
>        - rockchip,rk3308-otp
> +      - rockchip,rk3576-otp
>        - rockchip,rk3588-otp
>  
>    reg:
> @@ -68,6 +69,23 @@ allOf:
>            items:
>              - const: phy
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3576-otp
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 3

That's redundant. 3 is there already. You wanted maxItems?

Missing constraint on clock-names (existing binding should be fixed as
well, separate patch).

> +        resets:
> +          minItems: 2

missing maxItems

> +        reset-names:
> +          items:
> +            - const: otp
> +            - const: apb

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
