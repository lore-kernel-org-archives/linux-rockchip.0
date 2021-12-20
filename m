Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63780C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 09:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VD63U4HK9LdX1HDxnLfsmnOc0soYA7dPnJmFlmQAT04=; b=yRD38bnXTopLMw
	98dpSrWtrtawE3z1LZQRgDh2V4NRqhvlAtDc5k/U2J1n/S9D3epMsDMPKcyjEEsQebNzJClwBMIXk
	p5WVGQ8OctyxgJmR+2uvsUPBafmUBSPqjBYEh+GX1T+Ho+DsdNVypxhq7IzGtc1gA/8NDsZeW4WrY
	aJaG0l4S8RzUe6w12CuacpnZWtC3oDCp+JVm0ishA8u8koKddNbVahR+nVkVRxWqNyBBswAE6Mp3J
	mpG3snwqAsssoKsdQx1QnuERJnjj/ru4o7usQJCRuM5W3fgDfdIb1Ousis55KyZ0vfvoSs1ukeD7E
	1FuqqHgiw6YAIv9oETQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzFEI-001Ts7-9n; Mon, 20 Dec 2021 09:45:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzFDl-001TgA-1C
 for linux-rockchip@lists.infradead.org; Mon, 20 Dec 2021 09:44:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mzFDg-0006PX-R9; Mon, 20 Dec 2021 10:44:36 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mzFDf-0004u1-NI; Mon, 20 Dec 2021 10:44:35 +0100
Date: Mon, 20 Dec 2021 10:44:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 kernel@pengutronix.de, Robin Murphy <robin.murphy@arm.com>,
 Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 3/4] soc: rockchip: power-domain: Add regulator support
Message-ID: <20211220094435.GU6003@pengutronix.de>
References: <20211217130919.3035788-1-s.hauer@pengutronix.de>
 <20211217130919.3035788-4-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211217130919.3035788-4-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:33:04 up 9 days, 18:18, 53 users, load average: 1.53, 1.58, 1.38
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_014441_194328_209B125D 
X-CRM114-Status: GOOD (  28.34  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Fri, Dec 17, 2021 at 02:09:18PM +0100, Sascha Hauer wrote:
> This patch allows to let a domain be supplied by a regulator which
> is needed for the GPU on the rk3568-EVB board.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/soc/rockchip/pm_domains.c | 24 +++++++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)
> 
> +
> +	regulator_disable(pd->regulator);
> +
> +	return 0;
>  }
>  
>  static int rockchip_pd_attach_dev(struct generic_pm_domain *genpd,
> @@ -500,6 +517,11 @@ static int rockchip_domain_probe(struct platform_device *pdev)
>  	pd->info = pd_info;
>  	pd->pmu = pd_info->pmu;
>  
> +	pd->regulator = devm_regulator_get(&pdev->dev, "power");

I was told that I should use this function instead of
devm_regulator_get_optional() when the regulator is not optional and
also I can drop the if (pd->regulator) dance when enabling the regulator
because I get a dummy regulator here when using devm_regulator_get().

Well, all true and on one specific board the regulator is indeed not
optional. However, on all other power domains that don't need a
regulator and all other boards and all other SoCs this driver is used we
now get:

[    0.185588] rk-power-domain rk-power-domain.8: supply power not found, using dummy regulator
[    0.186036] rk-power-domain rk-power-domain.9: supply power not found, using dummy regulator
[    0.186459] rk-power-domain rk-power-domain.10: supply power not found, using dummy regulator
[    0.187039] rk-power-domain rk-power-domain.11: supply power not found, using dummy regulator
[    0.187333] rk-power-domain rk-power-domain.13: supply power not found, using dummy regulator
[    0.187644] rk-power-domain rk-power-domain.14: supply power not found, using dummy regulator
[    0.188042] rk-power-domain rk-power-domain.15: supply power not found, using dummy regulator

I wonder if devm_regulator_get() is really the right function here. Or
should the message be dropped?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
