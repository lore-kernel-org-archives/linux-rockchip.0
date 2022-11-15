Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61997C43217
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Nov 2022 11:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqSMvPrxAQFfgySPEXhmK/2nGCm+iuEYBRvNvqV6Npc=; b=1a4+PkVM0iorj7
	81+a0hpH7UQcePOSk84xsqWftr7PN9pVvN915K7ZBAAZmO1vXT7AdS/Gp0WJ0K3Cy4vixiPrcMYcb
	naS4xT1im/bl14NooCAEBjHk9upRkM7hjKBy6wI5TTsEdisqGAH+CKiHNcxAkEGmoHOH+srepMjao
	YJ+7wTsPQFxj1+i1VER4FzrgJJQhFeG/V3h+0ioaaFGM0tMJBDYOT5fF60RphqFvmEhCFG4zN+GQe
	h44XmXGi5ueAdI2K9XrGCG4XcWK2DzZg0pJAvzmCw8fLAFWCqaRbC5a8fkhSXxGwPkamk8Sqd5RZh
	unrmeKz5vpRRrfQ96u0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1outzM-00AW2n-SQ; Tue, 15 Nov 2022 11:20:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1outz4-00AVkA-6y
	for linux-rockchip@lists.infradead.org; Tue, 15 Nov 2022 11:20:08 +0000
Received: from wf0498.dip.tu-dresden.de ([141.76.181.242] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1outyw-0007iM-8s; Tue, 15 Nov 2022 12:19:58 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: "Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>, Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH 1/7] thermal: rockchip: Simplify getting match data
Date: Tue, 15 Nov 2022 12:19:57 +0100
Message-ID: <6623921.lOV4Wx5bFT@phil>
In-Reply-To: <20221031175058.175698-2-sebastian.reichel@collabora.com>
References: <20221031175058.175698-1-sebastian.reichel@collabora.com> <20221031175058.175698-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_032006_317445_56178C11 
X-CRM114-Status: GOOD (  18.28  )
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

Am Montag, 31. Oktober 2022, 18:50:52 CET schrieb Sebastian Reichel:
> It's possible to directly get the match data in a generic
> way nowadays.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/thermal/rockchip_thermal.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
> index 819e059cde71..0a0f38c29842 100644
> --- a/drivers/thermal/rockchip_thermal.c
> +++ b/drivers/thermal/rockchip_thermal.c
> @@ -1353,16 +1353,11 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
>  {
>  	struct device_node *np = pdev->dev.of_node;
>  	struct rockchip_thermal_data *thermal;
> -	const struct of_device_id *match;
>  	struct resource *res;
>  	int irq;
>  	int i;
>  	int error;
>  
> -	match = of_match_node(of_rockchip_thermal_match, np);
> -	if (!match)
> -		return -ENXIO;
> -
>  	irq = platform_get_irq(pdev, 0);
>  	if (irq < 0)
>  		return -EINVAL;
> @@ -1374,7 +1369,7 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
>  
>  	thermal->pdev = pdev;
>  
> -	thermal->chip = (const struct rockchip_tsadc_chip *)match->data;
> +	thermal->chip = (const struct rockchip_tsadc_chip *) device_get_match_data(&pdev->dev);

Nit: This can work without the explicit cast and most users
in the kernel also use it that way - makes reading far easier.

Otherwise
Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Heiko

>  	if (!thermal->chip)
>  		return -EINVAL;
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
