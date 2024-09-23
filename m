Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AB59CF9C5B
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Sep 2024 09:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vsKQpUkEjhwkns2hGfAzIGIdUmL60unmHSH94QccY2E=; b=hSF+Prs9COvxrF
	htW8V0ooxPrBN3eQkBA48CtAikawtKlcTDdVivVySqJn6RTHAcxbSDVxAIk32uIYv7yQ8RJaiePJF
	qcnqFMPiWe9ckYj2+Urc1YDwCL8PXo7UXq6XSac34kD4RDZQCdap+CDrN2Ae1RF+/vwTI9oF3YOXt
	Y6ip7miBnyMB8qMFGuuRv3eq9lm5d0wX/966h2SSGLhMwP5qQ89fgdTkMsrJWUpvoY/5wXlfUubX7
	eNcH8BXBQ+1QVkYldBpFhEQCMBiD5dAzXTJvBroPYjidENPMsHDXfFs7mkFBv1tYiKhpHjtk00Buv
	dxmflcQG4ZzIlELEdzeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssfQe-0000000Gq7b-09Rc;
	Mon, 23 Sep 2024 09:32:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssfPV-0000000Gpzg-0GUW;
	Mon, 23 Sep 2024 09:31:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 58EE75C3F69;
	Mon, 23 Sep 2024 09:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE056C4CEC4;
	Mon, 23 Sep 2024 09:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727083871;
	bh=b4o15KHRrP7eUWmz7hmE5pW+X7JxqTAywAB5EhIEuAA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=awA5lsEkDZFpaofCD/CcAcMlFtcVwR97wCkFpUR08+GMJr2cHAEA0lWPx/vzw4Jn7
	 0nxuD6VhstBY6jYyvbHWQLtst7ZOqnb4NSvnCXhjp8MaVI6dP4NT6t8oQEEm1mfOQF
	 JHzdD9Huv1fLxiR0gZoWFN+1HuA4/1pd8xv7BeOhQ51hDM0qOW06AMpqpN+cgzQ54U
	 DX/0LV+j0g+nbTV5nATm1ULfNYtsP7or/hAMQP4mmcDhikaRyM/z3DEVZIM7cbUfWs
	 p6+KGAhIgRneZ/hs24beE5yrCGSdIoq+IVZQ8EgQ5xDqRdh9pkyXaaWB7JCNbSlo0r
	 wOnf0ghRP4f5Q==
Date: Mon, 23 Sep 2024 11:31:06 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Frank Wang <frank.wang@rock-chips.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, william.wu@rock-chips.com, 
	tim.chen@rock-chips.com, wmc@rock-chips.com
Subject: Re: [RESEND PATCH 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
Message-ID: <snccizbw6thn3lhwad4xppp7vqii4p56ttl2gufwc3ke7vfckf@e4b7nvwwtdfr>
References: <20240923025326.10467-1-frank.wang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240923025326.10467-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240923_023113_188971_6826BE8F 
X-CRM114-Status: GOOD (  13.81  )
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

On Mon, Sep 23, 2024 at 10:53:25AM +0800, Frank Wang wrote:
> Add compatible for the USB2 phy in the Rockchip RK3576 SoC.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
>  .../devicetree/bindings/phy/rockchip,inno-usb2phy.yaml | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> index 5254413137c64..214917e55c0b6 100644
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
> @@ -34,10 +35,16 @@ properties:
>      const: 0
>  
>    clocks:
> -    maxItems: 1
> +    minItems: 1
> +    items:
> +      - description: phyclk - PHY input reference clocks.
> +      - description: aclk and aclk_slv are optional and used for USB MMU.
>  
>    clock-names:
> +    minItems: 1
>      const: phyclk
> +    const: aclk
> +    const: aclk_slv

Please test... Not sure what you wanted to achieve here, but maybe
oneOf?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
