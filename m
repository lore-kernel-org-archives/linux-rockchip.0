Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15527C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jan 2022 10:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sN7Z6izyY0yHVcCxsJAVd6nYVTLh06fTer3vOkiD9xI=; b=soScz3yCv04ERz
	1A/iBPeSB5kOcNtwehC/LMr3qZDCP15685Bii+Sn5k+Yz651BXuqD3A2wml4kkdSEselcehEWPdSo
	r4Ve2j7oRXe+FE08S+RsbCDfbdSVaw2zupHOu41nqIInASg+La3GNVC2RaEvJghdkufRr5XMjRdsh
	DWJKWe1EzsiDXdYBl/yQGl35hZKw4czz0j995HjyBIQmM0CWSXUdSqyax3vuviIRhZDRJZlKcunDi
	niXzcvctZMUCs9FAV1x9IZzXIZXeZp5U4ZyQilvED0LY+rFw2C0xlw8WClUjwsz4CH7DR4wgi93sR
	TgTxEG2anfzUbGnOgggg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDORS-001T01-TE; Fri, 28 Jan 2022 10:25:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDOLt-001R5s-3E; Fri, 28 Jan 2022 10:19:34 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nDOLk-0005uy-4f; Fri, 28 Jan 2022 11:19:24 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: daniel.lezcano@linaro.org, rjw@rjwysocki.net,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: robh@kernel.org, lukasz.luba@arm.com, arnd@linaro.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v7 5/5] rockchip/soc/drivers: Add DTPM description for
 rk3399
Date: Fri, 28 Jan 2022 11:19:22 +0100
Message-ID: <48865702.Mx8J7aE1p6@diego>
In-Reply-To: <20220125171809.1273269-6-daniel.lezcano@linaro.org>
References: <20220125171809.1273269-1-daniel.lezcano@linaro.org>
 <20220125171809.1273269-6-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220128_021933_200172_E781B36D 
X-CRM114-Status: GOOD (  31.79  )
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

Am Dienstag, 25. Januar 2022, 18:18:09 CET schrieb Daniel Lezcano:
> The DTPM framework does support now the hierarchy description.
> 
> The platform specific code can call the hierarchy creation function
> with an array of struct dtpm_node pointing to their parent.
> 
> This patch provides a description of the big / Little CPUs and the
> GPU and tie them together under a virtual 'package' name. Only rk3399 is
> described now.
> 
> The description could be extended in the future with the memory
> controller with devfreq.
> 
> The description is always a module and it describes the soft
> dependencies. The userspace has to load the softdeps module in the
> right order.
> 
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
>  drivers/soc/rockchip/Kconfig  |  8 +++++
>  drivers/soc/rockchip/Makefile |  1 +
>  drivers/soc/rockchip/dtpm.c   | 59 +++++++++++++++++++++++++++++++++++
>  3 files changed, 68 insertions(+)
>  create mode 100644 drivers/soc/rockchip/dtpm.c
> 
> diff --git a/drivers/soc/rockchip/Kconfig b/drivers/soc/rockchip/Kconfig
> index 25eb2c1e31bb..6dc017f02431 100644
> --- a/drivers/soc/rockchip/Kconfig
> +++ b/drivers/soc/rockchip/Kconfig
> @@ -34,4 +34,12 @@ config ROCKCHIP_PM_DOMAINS
>  
>            If unsure, say N.
>  
> +config ROCKCHIP_DTPM
> +	tristate "Rockchip DTPM hierarchy"
> +	depends on DTPM && DRM_PANFROST && m
> +	help
> +	 Describe the hierarchy for the Dynamic Thermal Power
> +	 Management tree on this platform. That will create all the
> +	 power capping capable devices.
> +
>  endif
> diff --git a/drivers/soc/rockchip/Makefile b/drivers/soc/rockchip/Makefile
> index 875032f7344e..05f31a4e743c 100644
> --- a/drivers/soc/rockchip/Makefile
> +++ b/drivers/soc/rockchip/Makefile
> @@ -5,3 +5,4 @@
>  obj-$(CONFIG_ROCKCHIP_GRF) += grf.o
>  obj-$(CONFIG_ROCKCHIP_IODOMAIN) += io-domain.o
>  obj-$(CONFIG_ROCKCHIP_PM_DOMAINS) += pm_domains.o
> +obj-$(CONFIG_ROCKCHIP_DTPM) += dtpm.o
> diff --git a/drivers/soc/rockchip/dtpm.c b/drivers/soc/rockchip/dtpm.c
> new file mode 100644
> index 000000000000..0b73a9cba954
> --- /dev/null
> +++ b/drivers/soc/rockchip/dtpm.c
> @@ -0,0 +1,59 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright 2021 Linaro Limited
> + *
> + * Author: Daniel Lezcano <daniel.lezcano@linaro.org>
> + *
> + * DTPM hierarchy description
> + */
> +#include <linux/dtpm.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +
> +static struct dtpm_node __initdata rk3399_hierarchy[] = {

The driver is tristate so buildable as module but uses __initdata.
As it depends on panfrost (which also can be a module) you
probably want a "__initdata_or_module" here .


> +	[0]{ .name = "rk3399",
> +	     .type = DTPM_NODE_VIRTUAL },
> +	[1]{ .name = "package",
> +	     .type = DTPM_NODE_VIRTUAL,
> +	     .parent = &rk3399_hierarchy[0] },
> +	[2]{ .name = "/cpus/cpu@0",
> +	     .type = DTPM_NODE_DT,
> +	     .parent = &rk3399_hierarchy[1] },
> +	[3]{ .name = "/cpus/cpu@1",
> +	     .type = DTPM_NODE_DT,
> +	     .parent = &rk3399_hierarchy[1] },
> +	[4]{ .name = "/cpus/cpu@2",
> +	     .type = DTPM_NODE_DT,
> +	     .parent = &rk3399_hierarchy[1] },
> +	[5]{ .name = "/cpus/cpu@3",
> +	     .type = DTPM_NODE_DT,
> +	     .parent = &rk3399_hierarchy[1] },
> +	[6]{ .name = "/cpus/cpu@100",
> +	     .type = DTPM_NODE_DT,
> +	     .parent = &rk3399_hierarchy[1] },
> +	[7]{ .name = "/cpus/cpu@101",
> +	     .type = DTPM_NODE_DT,
> +	     .parent = &rk3399_hierarchy[1] },
> +	[8]{ .name = "/gpu@ff9a0000",
> +	     .type = DTPM_NODE_DT,
> +	     .parent = &rk3399_hierarchy[1] },
> +	[9]{ },

hmm, do we want a "/* sentinel */" inside the empty last entry?
I think that is pretty common to denote the "this one is the last entry"
of a dynamic list ;-)

> +};
> +
> +static struct of_device_id __initdata rockchip_dtpm_match_table[] = {
> +        { .compatible = "rockchip,rk3399", .data = rk3399_hierarchy },
> +        {},
> +};
> +
> +static int __init rockchip_dtpm_init(void)
> +{
> +	return dtpm_create_hierarchy(rockchip_dtpm_match_table);
> +}
> +module_init(rockchip_dtpm_init);

Just for my understanding what happens on driver unload?


Thanks
Heiko

> +
> +MODULE_SOFTDEP("pre: panfrost cpufreq-dt");
> +MODULE_DESCRIPTION("Rockchip DTPM driver");
> +MODULE_LICENSE("GPL");
> +MODULE_ALIAS("platform:dtpm");
> +MODULE_AUTHOR("Daniel Lezcano <daniel.lezcano@kernel.org");
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
