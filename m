Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5B54C3DA5D
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jul 2024 01:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNXaMSipHiNnDmI4AWg2VH53G0uIqWksfj2R9oklnI8=; b=CCS3D/TN9ikSQs
	E4EzrkiWS8Fw9mwYyrOUzHY4WN+np6P/kzovh1Ap2ov2shyI5EJGE/CnDE7Zy2AcvIr21nycDLh2u
	TsMUFy1rSEXtD2KUux/KH9W5m7BH44x4piLlKliIx6e6XA5qQ8jtxuGMi4nd4jh1OA4H+djQ2ymSh
	S/Oqg97MvHkAjqu09/RLxRubJXilha0O8s3rD7ABArS6rhAR2+k0DYzSlgAmL7cD3qp13uRqjX98J
	oonjPMPozyyWfWKaho+ujb5BxZpiMeonyPEmtIWKv9JH4jcbrqolOOfrPm3WKoIl6s2lIvOE4PFo5
	JRUuFfVM9TDz8e+bWVow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVheV-00000007yXL-304V;
	Mon, 22 Jul 2024 01:15:47 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVhe7-00000007yPn-0fZw;
	Mon, 22 Jul 2024 01:15:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id BF2E3CE0AB5;
	Mon, 22 Jul 2024 01:15:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 940B8C116B1;
	Mon, 22 Jul 2024 01:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721610920;
	bh=aobF+UkeWrx3ppzGnDAWwY8QvfrDJ5/qVY+DYcIeGFo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=VWlypUHiNZ9LuCURWQJ+2ncdv9C1K6aV9ZD/ydW3AMCw911jD/6vnnKCV0btxIDhQ
	 HEp4Dij8xTZOrf3Leyeme2fZGA3F36ci7KRCpeM5Le9CPfd/XthDjUJd97q5UUApkb
	 n/6k9RMOanm+GaM+IbpdwR411urHeLZr70Xa4nYQzaOfxnk1rWfIJHYs6eySLdK53q
	 lmupJ8rSGrZoJ2HvRfUfEdd4wFUFV7SJm5i7zyd8BaszjAbAQ9m8LgGiTIrjNFMst5
	 JDtS1ay/bjDez4+KWyuVlygROdfSCGwwLkpBYdwELux0vjno2WsF5a1ryt2gMdjmJ1
	 UkcAE//Ms5/Xg==
Message-ID: <c0e65581-0f05-4143-bc45-0b681ef2bff6@kernel.org>
Date: Mon, 22 Jul 2024 10:15:17 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: ata: rockchip-dwc-ahci: add missing
 power-domains
To: Heiko Stuebner <heiko@sntech.de>, cassel@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 sebastian.reichel@collabora.com, linux-ide@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 u.kleine-koenig@baylibre.com
References: <20240720205705.776384-1-heiko@sntech.de>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20240720205705.776384-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240721_181523_412949_DEC4CE58 
X-CRM114-Status: GOOD (  13.76  )
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

On 7/21/24 05:57, Heiko Stuebner wrote:
> The Rockchip variant of the dwc-ahci controller does have and need power-
> domains to work, though the binding does not mention them, making dtccheck
> quite unhappy:
> 
>   DTC_CHK arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dtb
> /home/devel/hstuebner/00_git-repos/linux-rockchip/_build-arm64/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dtb: sata@fc800000: Unevaluated properties are not allowed ('power-domains' was unexpected)
>         from schema $id: http://devicetree.org/schemas/ata/rockchip,dwc-ahci.yaml#
> 
> Fix that by adding the missing power-domain property to the binding.
> 
> Fixes: 85b0e13b19c2 ("dt-bindings: ata: dwc-ahci: add Rockchip RK3588")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

I queued this as a fix for 6.11. Will send it out once rc1 is out. Thanks !

> ---
>  Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml b/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
> index b5e5767d86988..13eaa8d9a16e5 100644
> --- a/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
> +++ b/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
> @@ -35,6 +35,9 @@ properties:
>    ports-implemented:
>      const: 1
>  
> +  power-domains:
> +    maxItems: 1
> +
>    sata-port@0:
>      $ref: /schemas/ata/snps,dwc-ahci-common.yaml#/$defs/dwc-ahci-port
>  

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
