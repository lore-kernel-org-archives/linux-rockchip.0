Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87B5ECA5FF0
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2026 13:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NeOXjt7t2PfrQ/8iSDHWHVO2kjEtee1TH58PxMjwK4=; b=uP+oeYAme2hLO5
	kUUdX0CfjzT9WaLsGKvjqoiClqaCnI7zjZ6zFJD9xyARb7x6CsvFZGt7/SketD0yn/jP+NEXYsoMq
	pgtiJ1yFo/TEkFqzdBT9wo0ZXh+vic16szP79q4hdQ3rE51pFDscyPTAv5HIeQFxj4D1XVN66DlnP
	C8FkGHYtMv1AtZ390A8O7TmqrIAYQb4ehCSeJsSneBJQodowL27q4l4LEA8ur/j5YB+5Ajob/rXzM
	RXJ9nEAZVRPfRUSS+IvJxk5ysE+AyxQA4CH7wpeKzolXTEMuSwQ7hbVGbLfnPFRV/dk5w+wqtYpbz
	N3dlhzZfby+L/zjQadOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE5WZ-00000000tNp-432d;
	Tue, 06 Oct 2026 13:48:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE5WV-00000000tMa-1o6K;
	Tue, 06 Oct 2026 13:48:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2991A436CA;
	Tue,  6 Oct 2026 13:48:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D28A71F000FF;
	Tue,  6 Oct 2026 13:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791294483;
	bh=bX8Hd8xkhkvU6LYfv2cR6ForT+o/uR4b+HCuOknf1cA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jtyV5OsLOt5wzeBUdktXowhC6OUd0Le9GyAAD2mp7k00aIDP2WQsS4XcNUOiUb/Qg
	 yOOI7hz2BHk+yUFwewK2BuEKeYX1oU6NJ5e4Omrpz7dBsfvqutBCwYUp/4/+d7fl66
	 XpSFEPggIvj5uNJP4LzqD63xLTS2/RyEukp886nXaYzC30xH2llQPniEyOVTAUdB8A
	 pznpljoMYHUHjd8UnWBWkcEzWlNpWXfvEYLJJG052TkWiMHsAy9mKvlqTO1dh6UHvI
	 Jy/Z4Ml1GKQw5cs+yYpi2ufH9veW70RnmWmfA5gDXVrUunbU5OV9aLe3vb/6HYpAbE
	 2w4jv722onw6A==
Date: Tue, 6 Oct 2026 08:48:02 -0500
From: Rob Herring <robh@kernel.org>
To: Coia Prant <coiaprant@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	David Wu <david.wu@rock-chips.com>, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next v10 4/6] dt-bindings: net: rockchip-dwmac:
 document pcs-handle
Message-ID: <20261006134802.GA1916640-robh@kernel.org>
References: <20261005223011.1124347-1-coiaprant@gmail.com>
 <20261005223011.1124347-5-coiaprant@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261005223011.1124347-5-coiaprant@gmail.com>
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

On Tue, Oct 06, 2026 at 06:30:06AM +0800, Coia Prant wrote:
> The Rockchip GMAC binding needs to describe the PCS reference used by
> the SGMII support added later in this series. The property will be
> parsed by rk_pcs_init(), and a missing phandle fails the probe. Add it
> and require it when phy-mode is "sgmii" on rockchip,rk3568-gmac, the
> only SoC in this binding that has SGMII support.
> 
> Signed-off-by: Coia Prant <coiaprant@gmail.com>
> ---
>  .../bindings/net/rockchip-dwmac.yaml           | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> index 80c252845349c..bb7540e838033 100644
> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> @@ -120,6 +120,12 @@ properties:
>      maximum: 0x7F
>      default: 0x10
>  
> +  pcs-handle:
> +    description:
> +      Specifies a reference to a node representing the PCS device
> +      connected to this GMAC. Required when phy-mode is "sgmii".
> +    maxItems: 1
> +
>    phy-supply:
>      description: PHY regulator
>  
> @@ -159,6 +165,18 @@ allOf:
>          clocks:
>            minItems: 5
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3568-gmac
> +        phy-mode:
> +          contains:
> +            const: sgmii

The 'if' will also be true if 'phy-mode' is not present. Probably not 
what you want? You need 'required: [ phy-mode ]'.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
