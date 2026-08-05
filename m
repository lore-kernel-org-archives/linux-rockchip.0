Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FA41C55ABA
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 12:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ec7fprBR4e5n/L/rzppn7TsokcALSc9RSyhVxWg4S6Q=; b=2z6Rrj9gd7Zy7f
	GL62gDSDj6pYPV0kz0wyU39b2UOTNnHi/MFBhvtPhC3dV9XaW6LTCZxz+vbpktya0KUO8W00fG5RX
	NNC0u14ZuAhF+guYNaLeA0UyBb9TWUOk3zcMFCdb5nVl0lNZ85QqLHM08/Q9qqvBs83uvdj9ZHfGt
	Fdqy5Ee1kRbBJDmdzOZz8HkCH43A4GDNk9QY/sgo8p6UPFOdxtJ/Wg1mTYfF9gGM36JMw4baGOmkU
	S8Mz7vKaXeVgXpFGk1IKX9twp4z1YV2lI4wSPhB3NWLlqV9NJChL3ot3GsdHc+rlB2ZgcviCnLWFf
	PktD0qWbhUzY3FKglNZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wraVI-00000003sVs-1FDL;
	Wed, 05 Aug 2026 12:13:48 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wraVF-00000003sV2-2HO2;
	Wed, 05 Aug 2026 12:13:47 +0000
Received: from [IPv6:2a0a:edc0:0:900:1d::4e] (lupine.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::4e])
	(Authenticated sender: pza@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0AF8D201281;
	Wed, 05 Aug 2026 14:13:41 +0200 (CEST)
Message-ID: <58c85258b5c3aaa4bf26dbcdb7eea01549864a08.camel@pengutronix.de>
Subject: Re: [RFC PATCH v5 v5 5/8] pmdomain/rockchip: cycle optional
 power-domain resets on power-on
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Jiaxing Hu <gahing@gahingwoo.com>, tomeu@tomeuvizoso.net,
 heiko@sntech.de, 	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 joro@8bytes.org, 	will@kernel.org, robin.murphy@arm.com, ulfh@kernel.org,
 ogabbay@kernel.org, 	zhangqing@rock-chips.com
Cc: royalnet026@gmail.com, alchark@flipper.net, chaoyi.chen@rock-chips.com, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	iommu@lists.linux.dev, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Date: Wed, 05 Aug 2026 14:13:40 +0200
In-Reply-To: <20260805063826.95682-6-gahing@gahingwoo.com>
References: <20260805063826.95682-1-gahing@gahingwoo.com>
	 <20260805063826.95682-6-gahing@gahingwoo.com>
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_051345_730670_8229AC36 
X-CRM114-Status: GOOD (  16.94  )
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

On Mi, 2026-08-05 at 18:38 +1200, Jiaxing Hu wrote:
> Some Rockchip domains come out of power-on with their bus interface in
> an undefined state. On the RK3576 NPU this shows up as a hang on the
> first access after a cold power-on; the vendor kernel cycles the
> domain's resets at this point and that clears it.
> 
> Take the domain node's resets if it has any, and pulse them between
> releasing idle and restoring QoS. The resets are optional, so domains
> that do not declare any behave exactly as before.
> 
> Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
> ---
>  drivers/pmdomain/rockchip/pm-domains.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index e1857f878..82051f600 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -19,6 +19,7 @@
>  #include <linux/of_clk.h>
>  #include <linux/clk.h>
>  #include <linux/delay.h>
> +#include <linux/reset.h>
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/mfd/syscon.h>
> @@ -103,6 +104,7 @@ struct rockchip_pm_domain {
>  	struct clk_bulk_data *clks;
>  	struct device_node *node;
>  	struct regulator *supply;
> +	struct reset_control *resets;
>  };
>  
>  struct rockchip_pmu {
> @@ -688,6 +690,13 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
>  		if (pd->info->delay_us)
>  			udelay(pd->info->delay_us);
>  
> +		/* Optional: some domains need their resets cycled after power-on. */
> +		if (pd->resets) {
> +			reset_control_assert(pd->resets);
> +			udelay(10);
> +			reset_control_deassert(pd->resets);
> +		}
> +
>  		rockchip_pmu_restore_qos(pd);
>  	}
>  
> @@ -857,6 +866,14 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
>  	if (error)
>  		goto err_put_clocks;
>  
> +	pd->resets = of_reset_control_array_get_optional_exclusive(node);

Why is this using of_reset_control_array_get_optional_exclusive()
instead of devm_reset_control_array_get_optional_exclusive() when pd is
allocated with devm_kzalloc()?

> +	if (IS_ERR(pd->resets)) {
> +		error = PTR_ERR(pd->resets);
> +		dev_err(pmu->dev, "%pOFn: failed to get resets: %d\n", node, error);

dev_err_probe() to avoid printing on -EPROBE_DEFER.


regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
