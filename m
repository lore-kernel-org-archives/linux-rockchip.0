Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BE0CC67861
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Apr 2024 15:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVS4SlUOLzaUFfoDEmnNJScNbPmL1FZmVjxonXC9NL0=; b=EYqc2YMS7gWKnc
	cvBkOvFhJsf/AXDFN8TUeMjVBXLG4g5Qujz5sLDL+Zb0XHoT1Ecp9Nv16fDjNRZOkaZVnrTWRbUF6
	OJtXXsuclhWfw0y86cKb7CIN3qo+ph4MQX+ms8Vbzo4nxZ9wct+HI596HFbDbBOtNImqrnvSoOWEo
	+qfiuLbEQP2giIQtkRKTLaJJ078enAmw5OUNPQjlWVyun9OXjKUoyndWzB/zMfPicEWqV2OHMrEBC
	WxYesf6g8AgTzF0/dtErzbZRbCIxqMj5qPkJbe0wAqn76/x5NuRUC6mUaiIYZIjAlDUl6kt8UA5pX
	Vu7RR6Q7njpPZQG9HcVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtqZJ-0000000FyUp-27kJ;
	Mon, 08 Apr 2024 15:05:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtqZF-0000000FyT5-1WDM;
	Mon, 08 Apr 2024 15:05:54 +0000
Received: from i5e8616c3.versanet.de ([94.134.22.195] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rtqZ4-0007Yf-1a; Mon, 08 Apr 2024 17:05:42 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, David Wu <david.wu@rock-chips.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH] dt-bindings: net: rockchip-dwmac: use rgmii-id in example
Date: Mon, 08 Apr 2024 17:05:40 +0200
Message-ID: <12148577.zAa99ISigo@diego>
In-Reply-To: <20240408-rockchip-dwmac-rgmii-id-binding-v1-1-3886d1a8bd54@pengutronix.de>
References: <20240408-rockchip-dwmac-rgmii-id-binding-v1-1-3886d1a8bd54@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_080553_467519_4C15734F 
X-CRM114-Status: GOOD (  17.35  )
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

Am Montag, 8. April 2024, 08:44:10 CEST schrieb Sascha Hauer:
> The dwmac supports specifying the RGMII clock delays, but it is
> recommended to use rgmii-id and to specify the delays in the phy node
> instead [1].
> 
> Change the example accordingly to no longer promote this undesired
> setting.
> 
> [1] https://lore.kernel.org/all/1a0de7b4-f0f7-4080-ae48-f5ffa9e76be3@lunn.ch/
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
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
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
