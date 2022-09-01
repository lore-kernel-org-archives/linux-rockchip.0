Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 489E0ECAAD1
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 18:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vp77GfJ/fRxUgmVPhCQzZebr1a5pSQ3xy3lqrb3IMM=; b=Tg04FyKPCDlfeP
	IAWGeROF8NJGxNrfwvKSIgz6jRTzfNuInVjOiWznihYma+oHp4J5m614PaU6s9wdd3ZmH102C671N
	gPMW0ItFbrARUYfNjiVQHw2SMdIrIX8LvJKMrucc8lP5MNliL6Hi5/EjUL+CHsCXwV71udvcPN40E
	AEKcouxp9VLtRVUpS0wLm7Zs8zeEQiNl1uItF4nr854vYSY/fDBG25vhWdKru1EjiDYmUhIrul76m
	3Qx8rN73q0b03itPYhgf48/rdlgMm02FnhyYF+eCTqXL00FM33fgwwKZkqjSmQeGH2EfFpAqpX0+L
	VfkV6guteyldn8gXkuKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTpFd-00E4Zy-9c; Thu, 01 Sep 2022 18:49:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTpFb-00E4WT-6l
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 18:49:16 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oTpFT-0006qz-AT; Thu, 01 Sep 2022 20:49:07 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Thierry Reding <thierry.reding@gmail.com>, Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>, linux-pwm@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH 1/1] dt-bindings: pwm: rockchip: Add description for rk3588
Date: Thu, 01 Sep 2022 20:49:06 +0200
Message-ID: <2724057.CrzyxZ31qj@diego>
In-Reply-To: <20220901135523.52151-1-sebastian.reichel@collabora.com>
References: <20220901135523.52151-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_114915_282018_363D88FA 
X-CRM114-Status: GOOD (  14.39  )
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

Am Donnerstag, 1. September 2022, 15:55:23 CEST schrieb Sebastian Reichel:
> Add "rockchip,rk3588-pwm" compatible string for PWM nodes found
> on a rk3588 platform.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
> No driver changes required.
> ---
>  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> index a336ff9364a9..f946861e3f8a 100644
> --- a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> +++ b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> @@ -30,6 +30,7 @@ properties:
>                - rockchip,px30-pwm
>                - rockchip,rk3308-pwm
>                - rockchip,rk3568-pwm
> +              - rockchip,rk3588-pwm
>            - const: rockchip,rk3328-pwm
>  
>    reg:
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
