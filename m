Return-Path: <SRS0=3L0h=CL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28607C433E2
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 16:03:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CDFE7207EA
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 16:03:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="LiMGKGnK"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CDFE7207EA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SW0JSN/72/CnB9kmv4BjO+r1D4Ev5IaD3vvSzaK3bk0=; b=LiMGKGnKJY6RSBHe3Dvi591nJ
	Nk5kAoSs7b+vKGZ0N/qzBH2Jl/efxPlbdEpVqU60BwUjqHUossZELs6uU/bDzeNcOtPyilZ18JpSx
	O7LmL2J7lec0NMsUYX1vkbv0VKk3vsBIh1qIgMKObwumhOfzyT41wZ345Qt2iyUrVZwMYQLjF52dc
	mOYeIlLa9NpFVVdApvqMmvM1BaLekFuz/tprGJVmeF05cAY5VVgJzzx0wwu538N/FntZOmAqy1wxQ
	xHvd50rW2MzbZFWzZ0mCd5nPreldkumkMZWb4KYblHf8sEpjjDMjLWIL6Z076TH9Vlrw297Og8FVj
	KtqGCCWaA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDVEb-00034Q-QK; Wed, 02 Sep 2020 16:03:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDVEZ-00033m-R2
 for linux-rockchip@lists.infradead.org; Wed, 02 Sep 2020 16:03:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 494FD101E;
 Wed,  2 Sep 2020 09:03:35 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 99D0F3F66F;
 Wed,  2 Sep 2020 09:03:33 -0700 (PDT)
Subject: Re: [PATCH v1 6/6] clk: rockchip: rk3399: Support module build
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de
References: <20200902064847.18881-1-zhangqing@rock-chips.com>
 <20200902065000.18996-1-zhangqing@rock-chips.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6568dae9-4910-6525-d424-98a3fec2cae3@arm.com>
Date: Wed, 2 Sep 2020 17:03:33 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200902065000.18996-1-zhangqing@rock-chips.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200902_120339_919220_65C2BE8E 
X-CRM114-Status: GOOD (  22.83  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: huangtao@rock-chips.com, xxx@rock-chips.com, xf@rock-chips.com,
 sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020-09-02 07:50, Elaine Zhang wrote:
> support CLK_OF_DECLARE and builtin_platform_driver_probe
> double clk init method.
> add module author, description and license to support building
> Soc Rk3399 clock driver as module.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>   drivers/clk/rockchip/clk-rk3399.c | 40 +++++++++++++++++++++++++++++++
>   1 file changed, 40 insertions(+)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
> index ce1d2446f142..a1d5704b9ba2 100644
> --- a/drivers/clk/rockchip/clk-rk3399.c
> +++ b/drivers/clk/rockchip/clk-rk3399.c
> @@ -5,9 +5,11 @@
>    */
>   
>   #include <linux/clk-provider.h>
> +#include <linux/module.h>
>   #include <linux/io.h>
>   #include <linux/of.h>
>   #include <linux/of_address.h>
> +#include <linux/of_device.h>
>   #include <linux/platform_device.h>
>   #include <linux/regmap.h>
>   #include <dt-bindings/clock/rk3399-cru.h>
> @@ -1600,3 +1602,41 @@ static void __init rk3399_pmu_clk_init(struct device_node *np)
>   	rockchip_clk_of_add_provider(np, ctx);
>   }
>   CLK_OF_DECLARE(rk3399_cru_pmu, "rockchip,rk3399-pmucru", rk3399_pmu_clk_init);
> +
> +static int __init clk_rk3399_probe(struct platform_device *pdev)
> +{
> +	struct device_node *np = pdev->dev.of_node;
> +	unsigned long data;
> +
> +	data = (unsigned long)of_device_get_match_data(&pdev->dev);
> +	if (data)
> +		rk3399_pmu_clk_init(np);
> +	else
> +		rk3399_clk_init(np);

It might be clearer and simpler to just store a function pointer in the 
match data directly - there's already precedent for that elsewhere.

Robin.

> +
> +	return 0;
> +}
> +
> +static const struct of_device_id clk_rk3399_match_table[] = {
> +	{
> +		.compatible = "rockchip,rk3399-cru",
> +		.data = (void *)0
> +	},  {
> +		.compatible = "rockchip,rk3399-pmucru",
> +		.data = (void *)1,
> +	},
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, clk_rk3399_match_table);
> +
> +static struct platform_driver clk_rk3399_driver = {
> +	.driver		= {
> +		.name	= "clk-rk3399",
> +		.of_match_table = clk_rk3399_match_table,
> +	},
> +};
> +builtin_platform_driver_probe(clk_rk3399_driver, clk_rk3399_probe);
> +
> +MODULE_DESCRIPTION("Rockchip RK3399 Clock Driver");
> +MODULE_LICENSE("GPL");
> +MODULE_ALIAS("platform:clk-rk3399");
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
