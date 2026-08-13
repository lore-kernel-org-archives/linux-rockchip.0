Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77C0DC5CFEB
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2026 07:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d0ZQJjubOn/MjsthTyyfA5x9yhFba1Sds85aN5gUPMc=; b=vTlkVH3MDO7qSc
	UAGKEsy63yVzrFDC9lwaswgMBnKU6zfAVbwqxUAGzvqFq9DrAh0G8wcdROZS8OVrZcB3JWZ9UcNf6
	usjf4lpwkiZr9qgCYd84m2+QShMzDIMMWltoS34Z0HKqU6+p5/InIalm1E6kJE5C3Vc+BlvTCD9Ux
	uSAdZCYtF6I3ALFYK0CaELPUalA2CBQgzq6ix1/UM6yr38QMG4AxAOKo0GMEuYYbzDwZQQLdwWHkp
	aFnVfgUWS3MV17NHH5uOIR741K/Pr77CTYlXCZnKfBqJIeSyvcjD77Hx631i+9tkP6g18AM7B7Jeo
	BkrUPFEg+UWd4YnHMHgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuPWQ-0000000HYrG-0cbE;
	Thu, 13 Aug 2026 07:06:38 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuPWO-0000000HYqx-0TxP;
	Thu, 13 Aug 2026 07:06:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 79D8840562;
	Thu, 13 Aug 2026 07:06:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77E071F000E9;
	Thu, 13 Aug 2026 07:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786604795;
	bh=5gkzFo2+VnKiba/m6QDHWuLmIQSEjcsqyeD9BtdYCdE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LO7XnNmksRdPGuuVUvy4uIp1TNqnss+bW1hz0raYz9RVLB9K2Msgsgwbi+S77PMen
	 EU929j5yne48ccdwHerg5SVsXmfM/l/6Fsc13FOojuYOe4cA+efThVEz/GwEjv+U7g
	 bEUZuO4PJZ0PxH6thkO1thO+J+W63uADRHQ7BT64/Yjc3vPSNeCe1n4zJaSG47bJHR
	 /Plvnr6vRz1KaNK4XkEp1In1rN3T/LC5p7IJcb7XUmYuq1E4rA6o95MXLnlu675/Y8
	 ptXQEUJYFoSiQ8eJSCg0y24KdXivFsYdEEdgPRfs5Mkf3vnB6kIHeAKCl95shEvTqW
	 XPXivBMAj9aAA==
Date: Thu, 13 Aug 2026 09:06:24 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net, heiko@sntech.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, 
	robin.murphy@arm.com, ulfh@kernel.org, p.zabel@pengutronix.de, ogabbay@kernel.org, 
	zhangqing@rock-chips.com, royalnet026@gmail.com, alchark@flipper.net, 
	chaoyi.chen@rock-chips.com, diederik@cknow-tech.com, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, iommu@lists.linux.dev, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 03/10] dt-bindings: power: rockchip: allow resets in a
 power domain node
Message-ID: <20260813-squid-of-splendid-hail-d968bf@quoll>
References: <20260812094106.1391698-1-gahing@gahingwoo.com>
 <20260812094106.1391698-4-gahing@gahingwoo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260812094106.1391698-4-gahing@gahingwoo.com>
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

On Wed, Aug 12, 2026 at 09:40:58PM +1200, Jiaxing Hu wrote:
> Some domains do not come up in a usable state on their own and need
> their resets cycled once power is on. The RK3576 NPU domains are one
> case: without it the first access after power-on takes an async SError.
> 
> pd-node has no resets property and every nesting level is
> unevaluatedProperties: false, so describing that in DT is rejected
> today. Add it alongside clocks.

This paragraph is redundant. Why are you explaining correct syntax?

> 
> Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
> ---
>  .../bindings/power/rockchip,power-controller.yaml         | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> index b41db576f..f23c1a118 100644
> --- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> @@ -136,6 +136,14 @@ $defs:
>            A number of phandles to clocks that need to be enabled
>            while power domain switches state.
>  
> +      resets:
> +        minItems: 1
> +        maxItems: 30

30 resets per one power domain? and none got to the example in this
file?

> +        description: |

Do not need '|' unless you need to preserve formatting.

> +          A number of phandles to resets that need to be cycled once the power
> +          domain has been switched on, for domains whose logic does not come up
> +          in a usable state by itself.
> +
>        domain-supply:
>          description: domain regulator supply.
>  
> -- 
> 2.43.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
