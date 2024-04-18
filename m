Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EC09C04FF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 16:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hBggWA409O+T3cdB3FV1bezTmJ4MsJ5KwN+BqKLLZPQ=; b=o4KSMHe5GvJ9Ah
	NI2IvXnc7EQRRPeyIC257Afx6sjUXeq8b86fQc/4xTc/B3pDTFNkbCPavykgouoPg9qfT/WXonKxS
	GCjuzxighOUtdos4b2ALk47L+OgftC3JF0afL4lGqKs/7RgshhKA2XJDtbCLrhTN0XV8EDEO08avw
	lfGX7PDdYSFxBqx/r4jVDDIFlOdDThL4uAGlYhddXpjZD+mEX7ARmwXR70LbfYu5seEIthWRTUXsA
	r7lbG9OFVrrhsEims+qEJJWQ7JuIKPHv3q/lIEvnOt5cbjgCdwhQqDqJHxy5Rf1CHuyXlioiF6obn
	Y+w0EbSspzwzUE3Gez4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxV74-000000037cM-0zyU;
	Thu, 18 Apr 2024 16:59:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxV70-000000037Zj-2Rh4;
	Thu, 18 Apr 2024 16:59:52 +0000
Received: from i5e861917.versanet.de ([94.134.25.23] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rxV6t-0000pc-I2; Thu, 18 Apr 2024 18:59:43 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Dragan Simic <dsimic@manjaro.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, amadeus@jmu.edu.cn,
 FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Correct the descriptions for
 Radxa boards
Date: Thu, 18 Apr 2024 18:59:42 +0200
Message-ID: <1888572.CQOukoFCf9@diego>
In-Reply-To: <1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org>
References: <1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_095950_656889_6FB9A368 
X-CRM114-Status: GOOD (  14.49  )
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

Hi Dragan,

Am Donnerstag, 18. April 2024, 18:26:19 CEST schrieb Dragan Simic:
> Correct the descriptions of a few Radxa boards, according to the up-to-date
> documentation from Radxa and the detailed explanation from Naoki. [1]  To sum
> it up, the short naming, as specified by Radxa, is preferred.
> 
> [1] https://lore.kernel.org/linux-rockchip/B26C732A4DCEA9B3+282b8775-601b-4d4a-a513-4924b7940076@radxa.com/
> 
> Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index fcf7316ecd74..ae58e25c29ec 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -767,22 +767,22 @@ properties:
>            - const: radxa,rockpis
>            - const: rockchip,rk3308
>  
> -      - description: Radxa Rock2 Square
> +      - description: Radxa Rock 2 Square

I may be just blind, but what changed here?


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
