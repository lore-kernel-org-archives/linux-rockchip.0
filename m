Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AF0FC0015E
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 05:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RF28qaq9bXMDJx8Vj/fC1MpZ1Eb5T2g2yez2yLtRamI=; b=W9GwHbczk51rfY
	KzDeizFxTzcgowz5G6KEQzpvXFAMbB3ZP+OdgQeiXleDURu5tDeyL9yhezvjhKMFSBeSrH1/jxX2r
	pmWWAr5WoirLgqds1QYwr7xEftowl260rRVETNk99hcudjAO8sfgjVUpaxSIPse1iBDrk00oMa604
	6wzKataDZ6+QwjWAX5V06rBqKbtJ3X/dhk2YyNy1rZwnVkZAI+9zKP2LAYoGG0NyK0Fdwt0NdjaF/
	qkmeOA+l3vGbVEC8IeusHCwkTnSyTA0A6k9pU6kbiUkrcDc8EBoRzaOO/W6hckXowFg/7zdRpfp3z
	70ylUeAR7G8qkijTwd2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLzfz-005HM0-0V;
	Wed, 19 Jul 2023 05:24:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLzef-005GJW-1T;
	Wed, 19 Jul 2023 05:23:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=uEGocqyhGxe+kLyBaTSQh0Fz6MPrGgnCOCfLp4gY8Ug=; b=g5J02o21sb6Xi+fsq/fN1YvZDt
	jxbG5wjbMY7ulo6jyFYrJfMGAOCmVDJnUXd822TAFw7k3iU7Wz/7WPa1BchG52ZlGHxBMEZShuMAy
	O9AxhORSuA4qSZyK2NZzXHkxcA2nmEPsuIpsdK4sLATwdalH/LDjDe2aj+EU9MJ2vhm5wr6r94IJA
	vsBZqim9QOXsXpOe7Rz1ZHozRyjfj12X25Cat2QDbESHjDUo6EMNG67mZuHFj//5cT+bI8wIUVdQe
	gSThnVesrb+YscP43QeK6zBLfS4384hBp+m54uSSfiSbuWLUz7XZ0jYbHCAYygjahu9m0SkgV9eTF
	zvaMqdWw==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLtNk-00C9u6-1E;
	Tue, 18 Jul 2023 22:41:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 903E361297;
	Tue, 18 Jul 2023 22:41:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36781C433C7;
	Tue, 18 Jul 2023 22:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689720079;
	bh=Pdv6QIpn8FQCnZstZsZ0RQR6Zm2Buc8EqGmX8Albn5c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y4ZhtFF+qm9hkGQO5cHMDfNftjPP3amO9/hgnzAsDWjOzavM8ZMHPBgbvKrvfwcv0
	 4XpAAAPGc1euY9kxCb+2l9kDernTG4hRMoEd3zdGwqpGV8LsSAfBYOkVcGBbnKCxOD
	 u6x70PlWdU2JDqBb+rmulxRPCmLEx3QsYXXn/K+UhKoAbkQXVBPqNrAcpwTXaaAoPM
	 SKVmXf0oUhy2F+2YWFheKBWuPPtSf3rxtSY+bN79+GFOZYF+yxyn5bnUs62z99/4Jc
	 tk15R5bytpam1HqZykgT+eLSsG54NSs388IDZbPiFR8V5+E1wuon/uORgX25FBXLYi
	 1XL4Eag4y10JQ==
Received: (nullmailer pid 2143349 invoked by uid 1000);
	Tue, 18 Jul 2023 22:41:16 -0000
Date: Tue, 18 Jul 2023 16:41:16 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, Serge Semin <fancer.lancer@gmail.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v3 1/5] dt-bindings: PCI: dwc: improve msi handling
Message-ID: <20230718224116.GA2142638-robh@kernel.org>
References: <20230717172651.64324-1-sebastian.reichel@collabora.com>
 <20230717172651.64324-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230717172651.64324-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_234125_067722_67D808C0 
X-CRM114-Status: GOOD (  15.53  )
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

On Mon, Jul 17, 2023 at 07:26:47PM +0200, Sebastian Reichel wrote:
> Allow missing "msi" interrupt, iff the node has a "msi-map" property.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../devicetree/bindings/pci/snps,dw-pcie.yaml        | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
> index 1a83f0f65f19..abc1bcef13ec 100644
> --- a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
> @@ -25,6 +25,15 @@ select:
>  allOf:
>    - $ref: /schemas/pci/pci-bus.yaml#
>    - $ref: /schemas/pci/snps,dw-pcie-common.yaml#
> +  - if:
> +      not:
> +        required:
> +          - msi-map
> +    then:
> +      properties:
> +        interrupt-names:
> +          contains:
> +            const: "msi"

Don't need quotes.

>  
>  properties:
>    reg:
> @@ -193,9 +202,6 @@ properties:
>            oneOf:
>              - description: See native "app" IRQ for details
>                enum: [ intr ]
> -    allOf:
> -      - contains:
> -          const: msi
>  
>  additionalProperties: true
>  
> -- 
> 2.40.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
