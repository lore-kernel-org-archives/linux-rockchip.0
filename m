Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24D8CC46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Dec 2023 23:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfCnjSMhqr6CguftJ6zlNQTNcOImL2PNlEZxuOemhTA=; b=hPK0V8/5WDeMKb
	8+ZkELCTjXRe6mFzrBbtPwB3ERjO1La4Ng0w355MrCrIO3S2BsBMW2wNkNyIRNj2QRrwkgCM6fVGP
	T5cSa6kJcV0jxvcRbwOaFX56JPIESbSumIKegMTynoQpXwN8ZY4K/O3T9Lr+llDGdx00gFeD4bPNn
	PhGtE8yJ9kLm/RkRREYQbIr+K1LGvMKJJPs4KtyRbOM/tQPdRoD0vh/g+MTHstNU4jEilxDl9QW3H
	El6BcpRPFFkcit53VhD0ftu/PDjEzkMO9/yFsz6kRH/5sz4HLAEo8n0qqKIsRho3MkzN1+iM5Gyn2
	j9WBPrVUOVjG31J58x8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJMFZ-001lX6-0A;
	Fri, 29 Dec 2023 23:26:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJMFV-001lVc-0Y;
	Fri, 29 Dec 2023 23:26:42 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rJMFD-0004hv-JM; Sat, 30 Dec 2023 00:26:23 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alex Bee <knaerzche@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Alex Bee <knaerzche@gmail.com>,
 Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 01/29] dt-bindings: display: rockchip,inno-hdmi: Document
 RK3128 compatible
Date: Sat, 30 Dec 2023 00:26:22 +0100
Message-ID: <18743278.sWSEgdgrri@diego>
In-Reply-To: <20231222174220.55249-2-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
 <20231222174220.55249-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231229_152641_218190_053B25FA 
X-CRM114-Status: GOOD (  19.29  )
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

Am Freitag, 22. Dezember 2023, 18:41:52 CET schrieb Alex Bee:
> The integration for this SoC is different from the currently existing: It
> needs it's PHY's reference clock rate to calculate the DDC bus frequency
> correctly. The controller is also part of a powerdomain, so this gets added
> as an mandatory property for this variant.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

this is just a note to myself:

The binding conversion to yaml was picked by Rob in [0], so will most 
likely be part of 6.8-rc1, so this will need to wait until 6.8-rc1 gets into
drm-misc-next .


Heiko


[0] https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?h=for-next&id=7048708fec3a401f9a70e4a74e2e12aa7f88c132

> ---
> changes in v2:
>  - clarify that the controller itself is part of the powerdomain
>  - simplify clock-names
>  - made power-domains property only allowed (and required) for new variant
> 
> changes in v3:
>  - collect RB
> 
> changes in v4:
>  - none
> 
>  .../display/rockchip/rockchip,inno-hdmi.yaml  | 40 ++++++++++++++++++-
>  1 file changed, 38 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
> index 96889c86849a..be78dcfa1c76 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
> @@ -14,6 +14,7 @@ properties:
>    compatible:
>      enum:
>        - rockchip,rk3036-inno-hdmi
> +      - rockchip,rk3128-inno-hdmi
>  
>    reg:
>      maxItems: 1
> @@ -22,10 +23,19 @@ properties:
>      maxItems: 1
>  
>    clocks:
> -    maxItems: 1
> +    minItems: 1
> +    items:
> +      - description: The HDMI controller main clock
> +      - description: The HDMI PHY reference clock
>  
>    clock-names:
> -    const: pclk
> +    minItems: 1
> +    items:
> +      - const: pclk
> +      - const: ref
> +
> +  power-domains:
> +    maxItems: 1
>  
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
> @@ -55,6 +65,32 @@ required:
>    - pinctrl-names
>    - ports
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3036-inno-hdmi
> +
> +    then:
> +      properties:
> +        power-domains: false
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3128-inno-hdmi
> +
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +        clock-names:
> +          minItems: 2
> +      required:
> +        - power-domains
> +
>  additionalProperties: false
>  
>  examples:
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
