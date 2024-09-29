Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E515CF6497
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Sep 2024 19:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RxpT+3Cz/Dbl2ee/P2xIhAdtXfSRlQIZvetQaUOw8M=; b=MPFVjb0j2ReOew
	NrHvVGRYXt/S54CKtL8OJ4WIW6vSgH5xLsYlDG2pTJQ5syoAxr2C1+qGE60aoRRE82f4qKCyiwdDG
	0nyG8dL0F/nj4GcFsTR2jHphKfUJTx/cGMy+cXBsaoMA4ganU9v6JPM4sW036Nv+pQfDOC7pXjMZ+
	4jR9KqpJysX1OiSTwBKtDnQPefPl2Ryxcn/y+ToeHDbSh52CvZmMX7mGODH6L0olh7qUiZTNQEcSu
	+465wFKYH3PtsYKB/z7tH/t/JaDLYk956672Cg+P7m+6rhSMnUDi7IIiJg6LQT6EqMGcUeqPZoBvB
	7jl+uS9RfmJn3W/oS99Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suzjZ-0000000FFd9-0VZn;
	Sun, 29 Sep 2024 19:37:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suziM-0000000FFXx-1u2h;
	Sun, 29 Sep 2024 19:36:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id ED2D75C370B;
	Sun, 29 Sep 2024 19:36:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDF16C4CEC5;
	Sun, 29 Sep 2024 19:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727638576;
	bh=/EaBVv2a4Fe/hoiGw4sg1HJ8A8Ac1/Nx8XyQX1oMtlQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pdyoV0uRm1LVGn9+OsksAYWNCgMMr1fSt7a2yZlHrbDmhtBDzR8LTQADbJUkiGYOw
	 bles+aF+JoR4NIWTpY2e/4KhgSnnc1f5UqQRDKh4iWJcnmbVIW81b+7LBjXP5umoUb
	 AzmNRHa6L11TL6GjAnZjOLjM6jWDlSkUWaa25eVCYzElJYgAsA2ge+2kmTI8G1T1Wl
	 KHnwbycgESAPSOfcKdPo5tY9Cg/wTW9hZloVcyl3aki+2tLOvoB957l8WWVMW09sWS
	 HbaLtnyKyPgsKjmDb12iDcuh4oJIw0Xo4Ba2Zol6JGK0PU2PCDz/Ky3QYsRJ03FEJG
	 HjhvjxFO32GZA==
Date: Sun, 29 Sep 2024 21:36:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Frank Wang <frawang.cn@gmail.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, william.wu@rock-chips.com, 
	tim.chen@rock-chips.com, frank.wang@rock-chips.com
Subject: Re: [PATCH v4 2/3] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
Message-ID: <4czjtesext2ulsmcym2cpjavni7zuve2sdgyiqxkjkaxrl2gpf@7nqylzgd5f55>
References: <20240929061025.3704-1-frawang.cn@gmail.com>
 <20240929061025.3704-2-frawang.cn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240929061025.3704-2-frawang.cn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240929_123618_605547_ACD63535 
X-CRM114-Status: GOOD (  16.57  )
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

On Sun, Sep 29, 2024 at 02:10:24PM +0800, Frank Wang wrote:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> Add compatible for the USB2 phy in the Rockchip RK3576 SoC.
> 
> This change also refactor the clocks list as there are new clocks
> adding used for the USB MMU in RK3576 SoC.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
> Changelog:
> v4:
>  - refactor the clocks list used if:then:
> 
> v3:
>  - narrowed rk3576 clocks by compatible property.
> 
> v2:
>  - Categorize clock names by oneOf keyword.
> 
> v1:
>  - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10467-1-frank.wang@rock-chips.com/
> 
>  .../bindings/phy/rockchip,inno-usb2phy.yaml   | 46 ++++++++++++++++++-
>  1 file changed, 44 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> index 5254413137c6..fc2c03d01a20 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> @@ -20,6 +20,7 @@ properties:
>        - rockchip,rk3366-usb2phy
>        - rockchip,rk3399-usb2phy
>        - rockchip,rk3568-usb2phy
> +      - rockchip,rk3576-usb2phy
>        - rockchip,rk3588-usb2phy
>        - rockchip,rv1108-usb2phy
>  
> @@ -34,10 +35,12 @@ properties:
>      const: 0
>  
>    clocks:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 3
>  
>    clock-names:
> -    const: phyclk
> +    minItems: 1
> +    maxItems: 3
>  
>    assigned-clocks:
>      description:
> @@ -172,6 +175,45 @@ allOf:
>              - interrupts
>              - interrupt-names
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,px30-usb2phy
> +              - rockchip,rk3128-usb2phy
> +              - rockchip,rk3228-usb2phy
> +              - rockchip,rk3308-usb2phy
> +              - rockchip,rk3328-usb2phy
> +              - rockchip,rk3366-usb2phy
> +              - rockchip,rk3399-usb2phy
> +              - rockchip,rk3568-usb2phy
> +              - rockchip,rk3588-usb2phy
> +              - rockchip,rv1108-usb2phy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 1
> +        clock-names:
> +          const: phyclk

maxItems: 1 instead

> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3576-usb2phy
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 3
> +          maxItems: 3
> +        clock-names:
> +          items:
> +            - const: phyclk
> +            - const: aclk
> +            - const: aclk_slv

This list goes to the top property with minItems: 1. Here you have only
minItems: 3.

This way you have only one definition of entire list with same order of
items between variants.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
