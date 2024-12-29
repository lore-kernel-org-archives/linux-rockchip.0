Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50520E7718B
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Dec 2024 10:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EFaF30QzvecWijpx9TPcoK9De+gX75Hqo1gb24LXWAc=; b=DgHpMXFwaP/jfR
	eDW2cwZXigOdYKiuRhZa3S9f4sCe+vQfS0oTpxKAEep7AXPBnZXK5oFJhRNoKAiNtxilQ0uIDF+Jg
	01h9qU29da4j64AQtW6YsNq4QbrP4UvgSqMTIYzwS81msc0qI3fmksoQMATO7Xl7ZQcb9bEegMwPo
	3wwH7th4afweA59UY+kSm0ZTsP5DPRFs3s4sPrKcYrn/TTXiYebs8F6mWkrLwDNAwYJE58Wnmh9sy
	VzRd+BRCzUIu+xFZO6bMbX8X8q53895ueYANyMBCHwT8+JYA+oIBN8tmj/qsIEKHEFu1NBqsYYvu2
	lPa0QkGqgHDIVPLLbJ7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRqM4-00000003FcB-2JEY;
	Sun, 29 Dec 2024 10:17:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRqIq-00000003F5h-0l8V;
	Sun, 29 Dec 2024 10:13:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4B5745C55FE;
	Sun, 29 Dec 2024 10:13:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9A45C4CED7;
	Sun, 29 Dec 2024 10:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735467222;
	bh=NlqLtU37r1XG0IgHPwMy4frz80Jlp1bKAGpkHbUnyXk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EYUUz7KbakQWAduLPLZpPfKAw0zp7Chn4RWyHuhb5R2UOX6eOEVMrAmh61gg9EUGf
	 xZS+fu1oK4e9KBzP3jRUBOSbx/5OSjZKYmSCYH6xSpS1aXZZUR1+EnelbVI81IZDfm
	 WyowfbLqx16SJ5k6LkShsjZXVaI/u7DY4RNtT4lSkY2RMdJ6qC09pJUxWD0HnbuUQn
	 FEEjF8MrmcpT7ULqKXA7f5hZNtn/Ev0qv0cipNpxiolTfU7VQnPxCbl2OwdSnJ/pXD
	 JhWHuT1EqTGLEkbdSkU3LZE3D3i3919LV7WDc3gx1IPxKVykdrI44JUu6Dv9WlLnKI
	 irQ271wgWebVA==
Date: Sun, 29 Dec 2024 11:13:39 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v2 5/8] dt-bindings: display: vop2: Add rk3576 support
Message-ID: <ihvrdnntfuvvycnlhysnm43wylotovvnivu4wxcne3bwc6etpj@n2rq6n77lmma>
References: <20241228122155.646957-1-andyshrk@163.com>
 <20241228122155.646957-6-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241228122155.646957-6-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241229_021344_270641_9322D6E9 
X-CRM114-Status: GOOD (  16.10  )
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
Cc: robh@kernel.org, iommu@lists.linux.dev, heiko@sntech.de, devicetree@vger.kernel.org, joro@8bytes.org, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, detlev.casanova@collabora.com, linux-arm-kernel@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, cl@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, Dec 28, 2024 at 08:21:48PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add vop found on rk3576, the main difference between rk3576 and the
> previous vop is that each VP has its own interrupt line.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - describe constraint SOC by SOC, as interrupts of rk3576 is very
>   different from others
> - Drop Krzysztof's Reviewed-by, as this version changed a lot.
> 
> Changes in v1:
> - ordered by soc name
> - Add description for newly added interrupt
> 
>  .../display/rockchip/rockchip-vop2.yaml       | 70 +++++++++++++++----
>  1 file changed, 56 insertions(+), 14 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> index 2531726af306..f28cea4a6d82 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> @@ -20,6 +20,7 @@ properties:
>      enum:
>        - rockchip,rk3566-vop
>        - rockchip,rk3568-vop
> +      - rockchip,rk3576-vop
>        - rockchip,rk3588-vop
>  
>    reg:
> @@ -37,10 +38,22 @@ properties:
>        - const: gamma-lut
>  
>    interrupts:
> -    maxItems: 1
> -    description:
> -      The VOP interrupt is shared by several interrupt sources, such as
> -      frame start (VSYNC), line flag and other status interrupts.
> +    minItems: 1
> +    maxItems: 4
> +    items:
> +      - description:

That's contradictory. min/max say 1-4, but here you list two interrupts.

> +          vop system interrupt, such as bus error, and vsync for vop version under
> +          rk3576.
> +      - description:
> +          independent interrupts for each video port, such as vsync and other video
> +          port related error interrupts.
> +
> +  interrupt-names:
> +    items:
> +      - const: vop-sys
> +      - const: vop-vp0
> +      - const: vop-vp1
> +      - const: vop-vp2

And this says exactly 4.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
