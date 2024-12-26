Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3A09E7718E
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Dec 2024 13:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50plBmSGy5etErkbqwIFzJupy8hCEp9GPMdT8quxTbM=; b=a2OZi862t9suDl
	7xTy0IfbVa/QgGwvhz4/kYnNUTdFQ1Y0+0qM6opUzGm90QfvBgp7uCO6F1ubi0AitxqM/z7N2sqdT
	I6BXLO/i49vxVJ1BK4Na2OOX5XPCb+RoyyiNONfnHh1fKAphHCzR/mti//dLzUVpeZwjkSWjTlWKR
	APuT1QvhIRN516j8FS1oyjy99in91MUZkB/kVTYFF/E0qtsHlinN3bqikRKtqcubqNqTGpHiy+As1
	yQmDXNGbPn0m5RkykBZHaDVmKujRxg9Iz/dy/z80Ps5whbqjY9yaaUcz6oH6Rrr4CPz22otPQX/On
	/3wyo069SlO79T2S9mpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQnj8-0000000FoQj-2gMM;
	Thu, 26 Dec 2024 13:16:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQnj6-0000000FoPg-0jRE;
	Thu, 26 Dec 2024 13:16:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=QuJVCoe+jVx4z79HAuyYsWkjoMo2LtRn7644iNoaWLA=; b=GnuPGQvyArjMdrL9VcBZZkB3Vl
	T6JnZ3JyobbLLJ9QJcjl1xR3kcDg8q6HsgtYKJ2KTG8Eo6xICT1Ck3EEjMqcWYbC22DM5kPPMC8b1
	+uviOCiKqpTgF5A3LqvR0CypyVLvbfMcZiLFTxgtqq44gcJd0MwEzEhIerH85eRxx3tsBlcYMX+Yz
	uCMXRRTRoGxBE6QnkYN8S+KJn3d9WXu60TfML0LmYwU6PrDpSpYKTNacF3bOKZVYXuWqgZv1Bz7xo
	6layAcavmEia3Rw/kt0XWtFKBLjLYKYZNRXoQ4a76bfRJCe+aGwg7IHGTo+2NsHRniE5hnecoG4EI
	yY87AfoA==;
Received: from i5e860d12.versanet.de ([94.134.13.18] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tQnj1-00044c-3w; Thu, 26 Dec 2024 14:16:27 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Kever Yang <kever.yang@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Rob Herring <robh@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 David Wu <david.wu@rock-chips.com>, Paolo Abeni <pabeni@redhat.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Eric Dumazet <edumazet@google.com>
Subject: Re: [PATCH 1/3] dt-bindings: net: Add support for rk3562 dwmac
Date: Thu, 26 Dec 2024 14:16:26 +0100
Message-ID: <3453500.5fSG56mABF@phil>
In-Reply-To: <20241224094124.3816698-1-kever.yang@rock-chips.com>
References: <20241224094124.3816698-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_051632_250875_68440C46 
X-CRM114-Status: GOOD (  20.65  )
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

Hi Kever,

Am Dienstag, 24. Dezember 2024, 10:41:22 CET schrieb Kever Yang:
> Add a rockchip,rk3562-gmac compatible for supporting the 2 gmac
> devices on the rk3562.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> index f8a576611d6c..02b7d9e78c40 100644
> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> @@ -24,6 +24,7 @@ select:
>            - rockchip,rk3366-gmac
>            - rockchip,rk3368-gmac
>            - rockchip,rk3399-gmac
> +          - rockchip,rk3562-gmac
>            - rockchip,rk3568-gmac
>            - rockchip,rk3576-gmac
>            - rockchip,rk3588-gmac
> @@ -49,9 +50,11 @@ properties:
>                - rockchip,rk3366-gmac
>                - rockchip,rk3368-gmac
>                - rockchip,rk3399-gmac
> +              - rockchip,rk3562-gmac
>                - rockchip,rv1108-gmac
>        - items:
>            - enum:
> +              - rockchip,rk3562-gmac
>                - rockchip,rk3568-gmac
>                - rockchip,rk3576-gmac
>                - rockchip,rk3588-gmac

You only need to add the rk3562 only to one of those blocks.
The bottom one contains the snps,dwmac-4.20a element and looking at the
soc devicetree, it seems that is the correct one:
	compatible = "rockchip,rk3562-gmac", "snps,dwmac-4.20a";

So you only need the second addition where the newer socs are in the enum.

> @@ -59,7 +62,7 @@ properties:
>            - const: snps,dwmac-4.20a
>  
>    clocks:
> -    minItems: 5
> +    minItems: 4
>      maxItems: 8

This should get mentioned in the commit message


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
