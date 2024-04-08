Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD803CD1296
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Apr 2024 14:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0TyOcB4HT8KIp65bXIb+kjNjHag2pF//02jjNiy4hQM=; b=YgRVTdgK3o8kRAYsFv+jWN9X0U
	CULKuO/NK6SpAsN54yebmY8msJPS/T6/rV9btSvEWjpwU5Vwm8ukl22QI7Wioj/btWwd2oG5CL/v8
	M6MpxiT4gSXdpNMKq5F75lwUSs54JhXeCizY4mJw0Ly2ZmyhUROAkmnDzCr42uABUAdJxAGvhWsWA
	wyzrNIyC1G3Xrp8j8XWWcyY2WukA5oypbHXNv3Rhas01fuMME1cWYPDSgDIkWAq29QJ0os+WztcyR
	wzW+dSX1rVWrYsAhSXRp0p4Ua7UgbIfqtRPB3dvFNZmtehp2ILqBY+INfPO1eAkE3Prt1uWASCXTc
	jIhMWNaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtplA-0000000FpsW-2yDv;
	Mon, 08 Apr 2024 14:14:08 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtpkg-0000000Fpmy-0CUX;
	Mon, 08 Apr 2024 14:13:58 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1712585611;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SHS6uqBrOTBI5KsbzQzo9xNfjnvV1fyVq/BSuRh+mhA=;
	b=DNK1tnJ0vcDT/7vE5fbelUYIRr4NcVehjQRk/vhVFQEQ4nKScZVebfGcGI2xLWf9NyV8JE
	2g+j1dFx7ldSSQNViXIxjoLKQ/INonNVN47sl16mrZ6khJx33KOrFhGCWR9p1cIci6b14N
	hy2tX6ZSF1qisr7kgPFfsUzh/Ajpyp1mW4z6qi0mnEkPFo/AiULzrP6pKGN9a1bWn9DfH3
	bvr/hgHZQHnNROuFRQoziq1XGVCRWCibMMICzsz5GzMWEygsFf7XSOp9/4pdmsNs+kBPW3
	1Cffz6DUFmyQ8CjdTS/AXHQY4YN0jv2LDpJV78V5LRhDHFX6OadH2Pp1GgDVfQ==
Date: Mon, 08 Apr 2024 16:13:29 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, David Wu <david.wu@rock-chips.com>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] dt-bindings: net: rockchip-dwmac: use rgmii-id in example
In-Reply-To: <20240408-rockchip-dwmac-rgmii-id-binding-v1-1-3886d1a8bd54@pengutronix.de>
References: <20240408-rockchip-dwmac-rgmii-id-binding-v1-1-3886d1a8bd54@pengutronix.de>
Message-ID: <6d06c3e3f59f26e16fe1f02dc3225d9e@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_071346_344644_1F283386 
X-CRM114-Status: GOOD (  14.25  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Sascha,

On 2024-04-08 08:44, Sascha Hauer wrote:
> The dwmac supports specifying the RGMII clock delays, but it is
> recommended to use rgmii-id and to specify the delays in the phy node
> instead [1].
> 
> Change the example accordingly to no longer promote this undesired
> setting.
> 
> [1] 
> https://lore.kernel.org/all/1a0de7b4-f0f7-4080-ae48-f5ffa9e76be3@lunn.ch/
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

I'd suggest that the following link is also added to the patch
description as a reference, because it contains rather useful
information:

https://lore.kernel.org/linux-rockchip/2973a2cb1f478031ae6d478c853c33ae@manjaro.org/

Otherwise,

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> index 70bbc4220e2ac..6bbe96e352509 100644
> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> @@ -137,8 +137,6 @@ examples:
>          assigned-clock-parents = <&ext_gmac>;
> 
>          rockchip,grf = <&grf>;
> -        phy-mode = "rgmii";
> +        phy-mode = "rgmii-id";
>          clock_in_out = "input";
> -        tx_delay = <0x30>;
> -        rx_delay = <0x10>;
>      };
> 
> ---
> base-commit: 39cd87c4eb2b893354f3b850f916353f2658ae6f
> change-id: 20240408-rockchip-dwmac-rgmii-id-binding-6166af659845
> 
> Best regards,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
