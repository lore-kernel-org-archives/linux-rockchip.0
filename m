Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84B86C8303F
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Aug 2025 22:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZIPxVdOb/x6QNkdKifOtEYZOCRdHFs47USSzKrXAudI=; b=lMCS0vCrMVFdbd
	kcXBSqkE8l/9ZkB7kyRHZchHvTYQzfb7xnh7prR0Qx7LuHkVUyaHIYy4iRoCV3Blr7Lj195RZBjD1
	q1FSnAO6lPKdnethhArx+76xgMoniP1QymgxdzXhELTiUiW10dW5q74d4EbFDvFpsdIcBsjHyh4UD
	p2b6vf9kxYPZqbM7rGpHY7qaEVEI5wqA6kIZFqu4nXG3obtJpWIDuQnUQj/uVGaI4MUBSfbU0Jnky
	X/o1yHZiGPHlSmFoJQpfSEiZ76mhpaAMq8ky1sk7ibq294dVXAN04dXZJ7w665sczsoaGG/iSLaNM
	PafkUPT/oh8PCVufdXTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqfux-0000000A0ob-467I;
	Mon, 25 Aug 2025 22:43:59 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqfsE-0000000A09M-0Vop;
	Mon, 25 Aug 2025 22:41:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7B3375C6563;
	Mon, 25 Aug 2025 22:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1F71C4CEED;
	Mon, 25 Aug 2025 22:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756161669;
	bh=hcgh5oqMsvEek9C9auiVRt+yT8DF3gRRdz8vIwAO460=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TuzhpasJSKONwmodl29hxEeu1B+jNP9tEnNDVUu5J+c2hP06IPu8smtAiAy/paA5D
	 nQ7OpGab4minbAOsbjXXcQSkH/TI61SiMOxo7linJiZDbP6Jo2Fh2gtIHiIiZjiP/N
	 mf9A26nzWQ+DOGu7DynGHvPP7N0ZHQU2sT68opCJns/zJBs6HWbEVSHmxXzvpyh5pp
	 xl3cWCdgAOSNlciX9GaNuWSCTfhoxsI0v3bx0ke0VA8L3vRNHy/ALm9wKcVRs/LBDI
	 Jfa0gF4IsoAKqhjqPYzyz0kQSIj32X8rbLnBzfg2E6cmQXIvI3A4c5qKxfv4HGvFMC
	 zijfQ4ECgtsWA==
Date: Mon, 25 Aug 2025 17:41:08 -0500
From: Rob Herring <robh@kernel.org>
To: Michael Riesch <michael.riesch@collabora.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Collabora Kernel Team <kernel@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 3/7] dt-bindings: phy: rockchip-inno-csi-dphy: add
 rk3588 variant
Message-ID: <20250825224108.GA766877-robh@kernel.org>
References: <20250616-rk3588-csi-dphy-v2-0-7a94f079b712@collabora.com>
 <20250616-rk3588-csi-dphy-v2-3-7a94f079b712@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250616-rk3588-csi-dphy-v2-3-7a94f079b712@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_154110_249139_18B9AFA4 
X-CRM114-Status: GOOD (  17.27  )
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

On Tue, Aug 19, 2025 at 01:00:37AM +0200, Michael Riesch wrote:
> The Rockchip RK3588 variant of the CSI-2 DPHY features two reset lines.
> Add the variant and allow for the additional reset.
> 
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>  .../bindings/phy/rockchip-inno-csi-dphy.yaml       | 60 ++++++++++++++++++++--
>  1 file changed, 56 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> index 42da616ae2e3..10197cc9dc47 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> @@ -21,6 +21,7 @@ properties:
>        - rockchip,rk3326-csi-dphy
>        - rockchip,rk3368-csi-dphy
>        - rockchip,rk3568-csi-dphy
> +      - rockchip,rk3588-csi-dphy
>  
>    reg:
>      maxItems: 1
> @@ -39,18 +40,50 @@ properties:
>      maxItems: 1
>  
>    resets:
> -    items:
> -      - description: exclusive PHY reset line
> +    minItems: 1
> +    maxItems: 2

Add a description for the 2nd reset here.

>  
>    reset-names:
> -    items:
> -      - const: apb
> +    minItems: 1
> +    maxItems: 2

Add 'phy' to the list here and just minItems.

>  
>    rockchip,grf:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description:
>        Some additional phy settings are access through GRF regs.
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,px30-csi-dphy
> +              - rockchip,rk1808-csi-dphy
> +              - rockchip,rk3326-csi-dphy
> +              - rockchip,rk3368-csi-dphy
> +              - rockchip,rk3568-csi-dphy
> +    then:
> +      properties:
> +        resets:
> +          items:
> +            - description: exclusive PHY reset line
> +
> +        reset-names:
> +          items:
> +            - const: apb

Then just 'maxItems: 1' here.

> +    else:
> +      properties:
> +        resets:
> +          items:
> +            - description: APB reset line
> +            - description: PHY reset line
> +
> +        reset-names:
> +          items:
> +            - const: apb
> +            - const: phy

And 'minItems: 2' here.

> +
>  required:
>    - compatible
>    - reg
> @@ -77,3 +110,22 @@ examples:
>          reset-names = "apb";
>          rockchip,grf = <&grf>;
>      };
> +  - |
> +    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
> +    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        phy@fedc0000 {
> +            compatible = "rockchip,rk3588-csi-dphy";
> +            reg = <0x0 0xfedc0000 0x0 0x8000>;
> +            clocks = <&cru PCLK_CSIPHY0>;
> +            clock-names = "pclk";
> +            #phy-cells = <0>;
> +            resets = <&cru SRST_P_CSIPHY0>, <&cru SRST_CSIPHY0>;
> +            reset-names = "apb", "phy";
> +            rockchip,grf = <&csidphy0_grf>;
> +        };
> +    };
> 
> -- 
> 2.39.5
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
