Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DCC6C19776
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 07:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTTUhqhBkUc8FOrCz/ClrznTPDD8Lio1ucQ5e1UX5Ws=; b=muiknXbjIlfoOE
	S8lN4OuSIGGRkM25XUn8TV72P+bYaPfp46zwCBwxXvkaKxCJ3upTQ82Qc+Gz0Dgz848Oyz6HHYhzl
	QRKAhfgRMCUfbffsB62NFMUct7AE8Tddklon4Aog8jy06Exg9aY56gCmeR9WViooMMitk4iHModbG
	K0DF/nE+1t7+zgnaqeSYFc82jQy1SucNWYVnSGRhWtcZ+L8zAFC7gDRDDcPk+QH9qr7nuYqyA0FXl
	aycj8KShyTudFI89w3vGtXKFFwxxg9Xl68seOOh4snCJ+zKSGBOqSnPX2vETlMEyDbyzI5Mnh14hB
	bI2THikKj1IVpVK524QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnvBe-0000000A3VM-0SLD;
	Fri, 28 Feb 2025 07:53:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnvBa-0000000A3TQ-3lQS;
	Fri, 28 Feb 2025 07:53:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=F+JzjQxRNFL6yDNf9+7cJLcCGEom5mmTMhziYT1IXJM=; b=M36+h/1W2S0DYGTc6rbsLXw8jq
	EcXI1tKGOGxAGW/eebzYTorjwGwTrVzsOwSQQNsB+MJAnd7xsE0MDjzel/cbK3ppft++P2TZJnk6O
	xy56vOwsKsAWvTL4+fc9nNidH2IZw7Lmy7dv/U1Akb6mSfd9yS4O7i/p+GvXe6CaiPB9wPYMtd8h3
	et4xXv5E88NOCku21rX1X8T1HBxLFcwud4y26eqbvpRFYCOqSEN6nAtd5H7hEgM5X47IcsyuLcXp8
	28S3ByUVbsOWLtZPjqiitBwZifc1sOrQn2AYTn4X5HXphmjgpBLnjOclGxts8TACa8FIsYnHTX5d1
	8DPgpYLw==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tnvBV-0007Zk-Qn; Fri, 28 Feb 2025 08:53:25 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>
Cc: Yao Zi <ziyao@disroot.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 2/7] dt-bindings: pinctrl: Add pinctrl support for RK3528
Date: Fri, 28 Feb 2025 08:53:24 +0100
Message-ID: <13293325.ZYm5mLc6kN@diego>
In-Reply-To: <20250228064024.3200000-3-jonas@kwiboo.se>
References: <20250228064024.3200000-1-jonas@kwiboo.se>
 <20250228064024.3200000-3-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_235330_958124_833F7F37 
X-CRM114-Status: GOOD (  13.64  )
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

Am Freitag, 28. Februar 2025, 07:40:08 MEZ schrieb Jonas Karlman:
> Add compatible string for RK3528 pin controller.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> index 80a2b1934849..960758dc417f 100644
> --- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> @@ -44,6 +44,7 @@ properties:
>        - rockchip,rk3328-pinctrl
>        - rockchip,rk3368-pinctrl
>        - rockchip,rk3399-pinctrl
> +      - rockchip,rk3528-pinctrl
>        - rockchip,rk3562-pinctrl
>        - rockchip,rk3568-pinctrl
>        - rockchip,rk3576-pinctrl
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
