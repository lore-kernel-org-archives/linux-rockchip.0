Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 936FB606A319
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 03:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=A6sxVjdk;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=CMv2JSWj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=89PMh5EXGP6+OI0wVXOwTjZg92p3z26LrlM+odd5EhA=; b=A6sxVjdkYwvfaD
	imzx+6Ies+P8ZiJwBRacAZQxX4mLHSawbhhKJHlQctgr214lG7NvCzalYvwkjZbbub1sUpOOdMbbF
	qiuIkzNcHB1QCHkQzVHSAhkmyyBSDiicxKbTl99SfRDiBCJr5KzYHM7vRrX5qJkbp/3ecbUrnH8H9
	qtZ2i0fmGyUMxGqqfQZIZgGvNce9QPsXmNA/nTNMl3zf7YN4pSktym6X+6OoidtxrGBSPYj5MnioE
	wuQ3AfZgE1ilo5AgpDIxrdFwWVWxafUX7FkvAmEKsxzS+3Hp6KY5aWh4TQCnc+EyC+xs7SuyNV1xy
	dNLXv1Wsq6uNfIHiWB1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJMeS-0000000Aykc-0rBy;
	Wed, 21 Oct 2026 03:06:04 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJMeQ-0000000AykL-1acN;
	Wed, 21 Oct 2026 03:06:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 44CAF60416;
	Wed, 21 Oct 2026 03:06:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C873A1F000C9;
	Wed, 21 Oct 2026 03:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792551961;
	bh=YWCBZA77zc/p/5rLcj2aumPqvMgt4N1QGO7iyPGLOqs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=CMv2JSWjRnAZ2/m4AEei3NrqIExmFUjFGQ1RY/thuH7p1SGY1bj5GCd14enqm6Ef7
	 Sf65nQBJlLmx6elbTPwkhB/IxYoD6bdGI1ZkYIBdzJM9kZpL2T0lDQ84f1E4kOiyqN
	 MY2UEqCt82KT7NTkTlqjviUzZrtr7tI3nWRAwJ0S1HwTjn4AaUcpFFstAvhm35Ob8q
	 Gdx2kqBn5wdbxhPpCHdjLV854oQD1H9q2ocTp4HVU1zdiJZxGw7SmBZN6xqKTzMhkk
	 KnRyuHFxmOxH7kgh3pMf9v9O2ehLKl2yKSjivHPvR+SzLgKV0eq092neBf+owZFfAg
	 CvstQOvSTwohg==
Date: Tue, 20 Oct 2026 22:06:00 -0500
From: Rob Herring <robh@kernel.org>
To: Yaozhong Li <yaozhonguwl@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	Joseph Chen <chenjh@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	mfd@lists.linux.dev, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: mfd: rk8xx: add board level power
 hold GPIOs
Message-ID: <20261021030600.GA3816650-robh@kernel.org>
References: <20261020140127.720-1-yaozhonguwl@gmail.com>
 <20261020140127.720-2-yaozhonguwl@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261020140127.720-2-yaozhonguwl@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Oct 20, 2026 at 10:01:12PM +0800, Yaozhong Li wrote:
> Some boards route "power hold" lines from the SoC into the board's power
> circuitry. Those lines have to be held asserted while the system is
> running and released before the PMIC shutdown request is written,
> otherwise the rails can drop and come back up instead of staying off.
> 
> Add power-hold-gpios to describe those lines and power-hold-delay-ms for
> the settle time. The driver reads them for every RK8xx variant that is
> the system power controller, so add them to all seven RK8xx schemas.
> 
> The array is bounded at two entries. Firefly's vendor kernel handles
> exactly two such lines, pmic,hold-gpio and pmic,stby-gpio, and its board
> files use one or both of them, with an RK808 and with an RK818.
> 
> The lines are released from the PMIC's power-off path, so they are only
> meaningful when the PMIC is the system power controller. Require that,
> accepting whichever spellings of the property each schema allows.
> 
> Assisted-by: LLM
> Signed-off-by: Yaozhong Li <yaozhonguwl@gmail.com>
> ---
>  .../bindings/mfd/rockchip,rk801.yaml          | 23 +++++++++++++++
>  .../bindings/mfd/rockchip,rk805.yaml          | 29 +++++++++++++++++++
>  .../bindings/mfd/rockchip,rk806.yaml          | 23 +++++++++++++++
>  .../bindings/mfd/rockchip,rk808.yaml          | 29 +++++++++++++++++++
>  .../bindings/mfd/rockchip,rk816.yaml          | 23 +++++++++++++++
>  .../bindings/mfd/rockchip,rk817.yaml          | 29 +++++++++++++++++++
>  .../bindings/mfd/rockchip,rk818.yaml          | 29 +++++++++++++++++++
>  7 files changed, 185 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml
> index 7c71447..2f9554d 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml
> @@ -29,6 +29,25 @@ properties:
>      description:
>        Telling whether or not this PMIC is controlling the system power.
>  
> +  power-hold-gpios:
> +    minItems: 1
> +    maxItems: 2
> +    description:
> +      Board level power hold lines driven by the SoC. They have to be held
> +      asserted while the system is running and released before the PMIC
> +      shutdown request is written, otherwise the rails can drop and come
> +      back up instead of staying off. Only meaningful when this PMIC is the
> +      system power controller, as the lines are released as part of its
> +      power-off path.
> +      The lines are released in the order listed, and power-hold-delay-ms
> +      elapses once, after the last of them.
> +
> +  power-hold-delay-ms:
> +    default: 0
> +    description:
> +      Time to wait after releasing power-hold-gpios before the shutdown
> +      request is written, to let the lines settle.
> +
>    wakeup-source:
>      type: boolean
>      description:
> @@ -71,6 +90,10 @@ properties:
>          unevaluatedProperties: false
>      additionalProperties: false
>  
> +dependencies:
> +  power-hold-delay-ms: [ power-hold-gpios ]
> +  power-hold-gpios: [ system-power-controller ]
> +
>  required:
>    - compatible
>    - reg
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> index da23915..1a11c98 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> @@ -48,6 +48,26 @@ properties:
>  
>    system-power-controller: true
>  
> +  power-hold-gpios:
> +    minItems: 1
> +    maxItems: 2
> +    description:
> +      Board level power hold lines driven by the SoC. They have to be held
> +      asserted while the system is running and released before the PMIC
> +      shutdown request is written, otherwise the rails can drop and come
> +      back up instead of staying off. Only meaningful when this PMIC is the
> +      system power controller, through either system-power-controller or
> +      the deprecated rockchip,system-power-controller, as the lines are
> +      released as part of its power-off path.
> +      The lines are released in the order listed, and power-hold-delay-ms
> +      elapses once, after the last of them.

If you have paragraphs, you need a '>' modifier and blank line between 
paragraphs.

> +
> +  power-hold-delay-ms:
> +    default: 0
> +    description:
> +      Time to wait after releasing power-hold-gpios before the shutdown
> +      request is written, to let the lines settle.
> +
>    wakeup-source:
>      type: boolean
>      description:
> @@ -102,6 +122,15 @@ allOf:
>          clock-output-names:
>            maxItems: 2
>  
> +dependencies:

If you are going to use dependentSchemas, then use dependentRequired 
here.

> +  power-hold-delay-ms: [ power-hold-gpios ]
> +
> +dependentSchemas:
> +  power-hold-gpios:
> +    anyOf:
> +      - required: [ system-power-controller ]
> +      - required: [ 'rockchip,system-power-controller' ]

Presumably the latter is deprecated. If you are updating a DT to use 
power-hold-gpios, then replace 'rockchip,system-power-controller' with 
'system-power-controller' while you are doing that. Then this can be 
just a dependentRequired entry.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
