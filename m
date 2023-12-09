Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F348AC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Dec 2023 14:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iIkG5l9U0Yu0j5XHmI2JKd2l+Aipyp4KZc/Z07/1CpI=; b=A+iIDY1AWjs4Vo
	YVi1ANILQF3FGP8f2f+qYZnyiYq6NUzQtexTwEZqtHG6JGEb7/mNsJ9nimmBe4OZRUsRIdrRrN282
	fhrq9AVtZb/iCQczN89cnAyLGLrGAPTwOg81bLqbvykUDes0V5vvpCgyJRQbczvXZCm9SKyBrODmJ
	UlSz8g25p5gOGnkBDK4sVq9OzX8e80SoTNLXt8GXHALjz/SWFthklhW2ElsezDCRTy4M8IUjVNBS4
	meythMv4ez21mxwZ9Xk7sDCh24j88w+dGRUrLSD36adSaH1mdZ3OFL2DheJeym/Pt9aSDx1rczhlb
	qGRcpNEyKLjpwjtSNJfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBxu4-000Ajd-1m;
	Sat, 09 Dec 2023 14:02:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBxu1-000Aj0-24;
	Sat, 09 Dec 2023 14:01:58 +0000
Received: from i5e860d1d.versanet.de ([94.134.13.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rBxtv-0003vt-Qz; Sat, 09 Dec 2023 15:01:51 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Add Cool Pi CM5 EVB
Date: Sat, 09 Dec 2023 15:01:51 +0100
Message-ID: <2595712.Icojqenx9y@diego>
In-Reply-To: <20231209103815.1568614-1-andyshrk@163.com>
References: <20231209103622.1568289-1-andyshrk@163.com>
 <20231209103815.1568614-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231209_060157_681897_08DF24BB 
X-CRM114-Status: GOOD (  13.34  )
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

Am Samstag, 9. Dezember 2023, 11:38:15 CET schrieb Andy Yan:
> Add Cool Pi CM5 EVB, a board powered by RK3588
> 
> Signed-off-by: Andy Yan <andyshrk@163.com>
> ---
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 5de9f3090be1..24dc6dfb8285 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -95,6 +95,11 @@ properties:
>            - const: chipspark,rayeager-px2
>            - const: rockchip,rk3066a
>  
> +      - description: Cool Pi Compute Module 5(CM5) EVB
> +        items:
> +          - const: CoolPi CM5 EVB

similar
- const: coolpi,pi-cm5

from
https://cool-pi.com/category/11/pi-cm5


> +          - const: rockchip,rk3588
> +
>        - description: Cool Pi 4 Model B
>          items:
>            - const: CoolPi 4 Model B
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
