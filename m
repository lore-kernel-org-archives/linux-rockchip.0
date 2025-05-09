Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F2D1C3ABC3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 06:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZVlj6Pjlnj22r949luUTUBM+VXTqGuk9dX5JGhRO3vk=; b=FDrJhMURW/LYOG
	fdWE3MAQ2M31pXfYbJgd/BdpcSX8pWNHvIA8R9l3zf6RejEaoPVT9YdEs2fvBJ80jObXPYi3a4JdD
	cUplJIA4uBHYEQWVVj5KiDZuPyoNAgt5bjtjkBOC1JOeuQX23IM3SIGK81kUPPXsdAL1treJayt0/
	z8N0b8Kd0zpvoFoH6DrZ2Lr4T0qa9kOEU/7/GfAeHto6ZsDrEJIgrca87ZXehaMd13KWNCOWDfKul
	Usdy+9rsRrLIkYuDVu7nUQOQus+C3UaJsez2g0vR/bLd5GbEKsW5dUS8d2/Hnz61n4//AoAgptt1J
	CgcaA4fOBV4s45wfbF2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDGrK-00000002Zm3-043n;
	Fri, 09 May 2025 06:05:22 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDGpH-00000002ZYC-2b7G;
	Fri, 09 May 2025 06:03:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 4E211A4C5EA;
	Fri,  9 May 2025 06:03:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51685C4CEE4;
	Fri,  9 May 2025 06:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746770593;
	bh=miqYtWyTKqalmWH/MGZunXZc53zAHSRNBQvWm45NGQ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cDvfscBnFjzX5lYFVRWG6HqIvO2BmUHXP4zFLn5QBcuK2I4fgvV0Gqf+PjThAc0cx
	 dtRc+LWiQv87umLgJ78pVfk0qpIROY64IG+qnWyNx4HlqTEQnUO+EyibIMB4bo/jOW
	 RuM27JQIdkhpEXtKDmJot+11r9jRUXeM2f1Odv1r6JQTWkW/Xh/sdFnzlo68WpO92H
	 Ro4xSyi7MCUWh2ikYungCMBqbZJaM0v6HxtY7MGie6Fz4Uv3r3VkcFOECk19h4lGKG
	 eUeq4ceJoisr4sYDZ/6e3W8WD8FG20XVrGBoIUFSSG1rWws+U2kT4gc0cN7Xn01ztv
	 ZrhXtKYGV+a5A==
Date: Fri, 9 May 2025 08:03:11 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH v2 2/5] dt-bindings: phy: rockchip: naneng-combphy: Add
 RK3528 variant
Message-ID: <20250509-secret-smart-kangaroo-fd3b58@kuoka>
References: <20250509004121.36058-2-ziyao@disroot.org>
 <20250509004121.36058-4-ziyao@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250509004121.36058-4-ziyao@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_230315_733239_2958CB9D 
X-CRM114-Status: GOOD (  13.46  )
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
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova <detlev.casanova@collabora.com>, Frank Wang <frank.wang@rock-chips.com>, linux-rockchip@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>, Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Shresth Prasad <shresthprasad7@gmail.com>, Vinod Koul <vkoul@kernel.org>, Chukun Pan <amadeus@jmu.edu.cn>, linux-arm-kernel@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, May 09, 2025 at 12:41:19AM GMT, Yao Zi wrote:
> Rockchip RK3528 ships one naneng-combphy which operates in either PCIe
> or USB 3 mode. Document its compatible string.
> 
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> ---

Eh, no...

>  .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> index 888e6b2aac5a..bd064754e537 100644
> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> @@ -12,6 +12,7 @@ maintainers:
>  properties:
>    compatible:
>      enum:
> +      - rockchip,rk3528-naneng-combphy
>        - rockchip,rk3562-naneng-combphy
>        - rockchip,rk3568-naneng-combphy
>        - rockchip,rk3576-naneng-combphy
> @@ -102,7 +103,9 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            const: rockchip,rk3588-naneng-combphy
> +            enum:
> +             - rockchip,rk3528-naneng-combphy

Still not tested. Neither v1 nor v2 was ever tested.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
