Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36C7ECF9C6B
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Sep 2024 10:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aU0We2pTxsz82a9uhG6EvmrF+R2IXyLhmxOOLVMkoL4=; b=Uh43Wq9kBA1Dg/
	kLR1ijbclQRGD2ZfZBWTxc3+4Yf83MOeIiJE6XXsjf+Znb/DjdVaDtMHjjGkmuETrhOQ6AL/qyKEh
	/94Ynx4nNKXXqZXSCDpdk14NNsyNGcgUnMKPf6H0eO11q3DRH/LAo1OQX87lVhX4NPf0a+ChvMivX
	pgf1aIXYDxEKMe4xzeHtnDwMYCJnI9cBMl7Ismbd+F8X2ajF5GT/7IN3Kp2DrrLt64TOlkR2N2sFp
	AMOkybwi0mDh741aelbdN7QDd+kCID39D2gqYPOT8SrS693jYA2eUQ+FMQpD4q4tAghYH+8WtVG72
	Ooeg3BLF8JJDJPB74vjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st2Ta-00000001wta-3R5Z;
	Tue, 24 Sep 2024 10:08:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st2Mm-00000001v4X-3CuB;
	Tue, 24 Sep 2024 10:01:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=wN/DSRtcF/OkDmxb5zcG6ZVuHGTbBxm343M7VReWfF4=; b=gOBbkaIxnKeGaa4VMW7yPSofTB
	AeivSJXFIh1j+NcL670mDJ2AsoQGTruQoBnl/yJb8q/HW15I0NtncLLvDiceTx1AJrNCQraSSE5MU
	dVtWrbjfxc0JdsTlgbtn99aFbV1W+nvKthwSDmpgDuKqo0e4Jm+P8uzOd05VGqX0cAvy5B7PiKFqu
	Js3GN0L1jzrDImKXcwZEWVBY2+6LewRc4HdoaXm0CPudnLPjtrGkRQagI9++y9GAy5rRDTJlrRkvd
	VXn7dkroEVjvQr4aqw5yO6P7Re0Eca5HvnrbdBjxy+4tiQr5arTwULQJ22QLJAyafz8irpcdQOBkZ
	Xllim9Ww==;
Received: from 90-177-212-167.rck.o2.cz ([90.177.212.167] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1st2Mi-0000xb-76; Tue, 24 Sep 2024 12:01:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, Frank Wang <frawang.cn@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, wmc@rock-chips.com,
 Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add rk3576
Date: Tue, 24 Sep 2024 12:01:51 +0200
Message-ID: <11146778.5MRjnR8RnV@phil>
In-Reply-To: <20240924085510.20863-1-frawang.cn@gmail.com>
References: <20240924085510.20863-1-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_030156_914108_E2FE662E 
X-CRM114-Status: GOOD (  15.39  )
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

Hi Frank,

Am Dienstag, 24. September 2024, 10:55:09 CEST schrieb Frank Wang:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> Add compatible for the USB2 phy in the Rockchip RK3576 SoC.

can you please add some details to the commit message, about those
new clocks. I.e. what they do.

Thanks
Heiko

> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
> Changelog:
> v2:
>  - Categorize clock names by oneOf keyword.
> 
> v1:
>  - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10467-1-frank.wang@rock-chips.com/
> 
>  .../bindings/phy/rockchip,inno-usb2phy.yaml      | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> index 5254413137c64..8af4e0f8637fc 100644
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
> @@ -34,10 +35,20 @@ properties:
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
> +    items:
> +      oneOf:
> +        - description: aclk for USB MMU.
> +          const: aclk
> +        - description: aclk_slv for USB MMU.
> +          const: aclk_slv
> +        - description: PHY input reference clocks.
> +          const: phyclk
>  
>    assigned-clocks:
>      description:
> @@ -143,6 +154,7 @@ allOf:
>            contains:
>              enum:
>                - rockchip,rk3568-usb2phy
> +              - rockchip,rk3576-usb2phy
>                - rockchip,rk3588-usb2phy
>  
>      then:
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
