Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF3DFC4167D
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Nov 2023 21:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tAPS6mcYaz3DCzJtIKaVqOhOiuxTzSIlw5H4jXm5/aQ=; b=sdmGbNRWeytkuv
	MLG/jRAzlCTcHCHvH8gNy6tpvojMIY0nyA3GXwzv4RSl0y73p0VIjxFaEfSOOz7Z1Qv9b377lqP9B
	UNqm/xlx1WxqrIhbjsE5W+zXu4DDx4dsRmRnkaoU6j0uZR6q5GfmWzuc29djCZ2c9xGxqgQPa95+t
	JoMBBycVEfkixjJtdwAgxwOrd9JL61TJQ0dinOkwexuI0tVh5mgPCk2aX/Q2JIwYDgRd0KUpAlCo/
	MnUnIVAfbPKigOYzVTnyD7dEgjBwli35jQeIY6Bzk6kecVOXWqgAb88zAQUfaj4aHReyAj9d5BKhz
	1v39b0CryIs1/pg2gCaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r31NI-00GsRB-0C;
	Tue, 14 Nov 2023 21:55:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r31NF-00GsQA-2d
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Nov 2023 21:55:11 +0000
Received: from i53875a73.versanet.de ([83.135.90.115] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r31N6-0006uH-5s; Tue, 14 Nov 2023 22:55:00 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com,
 s.hauer@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 08/11] dt-bindings: display: vop2: Add rk3588 support
Date: Tue, 14 Nov 2023 22:54:59 +0100
Message-ID: <11331566.rMLUfLXkoz@diego>
In-Reply-To: <20231114112841.1771312-1-andyshrk@163.com>
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112841.1771312-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_135509_939906_AA9E5C42 
X-CRM114-Status: GOOD (  18.25  )
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

Am Dienstag, 14. November 2023, 12:28:41 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The vop2 on rk3588 is similar to which on rk356x
> but with 4 video outputs and need to reference
> more grf modules.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  .../display/rockchip/rockchip-vop2.yaml       | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> index b60b90472d42..c333c651da1a 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> @@ -20,6 +20,7 @@ properties:
>      enum:
>        - rockchip,rk3566-vop
>        - rockchip,rk3568-vop
> +      - rockchip,rk3588-vop
>  
>    reg:
>      items:
> @@ -48,6 +49,8 @@ properties:
>        - description: Pixel clock for video port 0.
>        - description: Pixel clock for video port 1.
>        - description: Pixel clock for video port 2.
> +      - description: Pixel clock for video port 4.
> +      - description: Peripheral clock for vop on rk3588.
>  
>    clock-names:
>      items:
> @@ -56,12 +59,29 @@ properties:
>        - const: dclk_vp0
>        - const: dclk_vp1
>        - const: dclk_vp2
> +      - const: dclk_vp3
> +      - const: pclk_vop

with the error Rob's bot reported, I guess both clocks and clock-names
need a minItems element to mark these new clocks essentially as optional?


>    rockchip,grf:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description:
>        Phandle to GRF regs used for misc control
>  
> +  rockchip,vo-grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to VO GRF regs used for misc control, required for rk3588
> +
> +  rockchip,vop-grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to VOP GRF regs used for misc control, required for rk3588
> +
> +  rockchip,pmu:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to PMU regs used for misc control, required for rk3588
> +
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>  
> @@ -81,6 +101,11 @@ properties:
>          description:
>            Output endpoint of VP2
>  
> +      port@3:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output endpoint of VP3
> +
>    iommus:
>      maxItems: 1
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
