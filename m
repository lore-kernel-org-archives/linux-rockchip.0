Return-Path: <SRS0=MDEE=CV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550D4C433E2
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2020 11:41:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2BF4921548
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2020 11:41:29 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="oK8sKzcQ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2BF4921548
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yifxAlZNNqpNHNk0kUuEztWAmkq8pEYjXDM7fPKv13c=; b=oK8sKzcQeFoDnmVhPbfzG4bMy
	d1LL3Byy1ZrRHicq1bth9GNaTiDr33oQtk2kjl61zgE5zBEvJurqHqoUQDzRT5ODsR0PY3pVnggkv
	8XbsVQ7Issuq3YmUlxmEPX453/KH/RMiipQedaM0uLcjlgt/POKR0uVzXJ/skIyb5FQvAo1YLCXEO
	0rVhqJthCmFZJMESWvfjDaiMdQLxgrEXzSkczoh+nvQ/Hi+eIMdt8VszAtzZANloMr2H2RqH+P66P
	nDRT6z8fbW/aS5TrYgagJpa7kbgfwj40iI4UYg7Km8cSk/cZ/3QvVRmLZWYBGX6iiw/uxZczhrczp
	YAgdoHLUA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kH3uH-0001Y6-Ny; Sat, 12 Sep 2020 11:41:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kH3uF-0001Xg-Ni
 for linux-rockchip@lists.infradead.org; Sat, 12 Sep 2020 11:41:25 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kH3uA-00005p-Db; Sat, 12 Sep 2020 13:41:18 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linus.walleij@linaro.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH 2/5] pinctrl: rockchip: make driver be tristate module
Date: Sat, 12 Sep 2020 13:41:17 +0200
Message-ID: <1714777.5MuWvkDkrY@diego>
In-Reply-To: <20200907025927.9713-3-jay.xu@rock-chips.com>
References: <20200831084753.7115-1-jay.xu@rock-chips.com>
 <20200907025927.9713-1-jay.xu@rock-chips.com>
 <20200907025927.9713-3-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200912_074123_780300_5B3A76F8 
X-CRM114-Status: GOOD (  18.08  )
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
Cc: linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am Montag, 7. September 2020, 04:59:24 CEST schrieb Jianqun Xu:
> Make pinctrl-rockchip driver to be tristate module, support to build as
> a module, this is useful for GKI.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
>  drivers/pinctrl/Kconfig            |  2 +-
>  drivers/pinctrl/pinctrl-rockchip.c | 18 ++++++++++++++++++
>  2 files changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
> index 4284f39a5c61..743eb2bb8709 100644
> --- a/drivers/pinctrl/Kconfig
> +++ b/drivers/pinctrl/Kconfig
> @@ -207,7 +207,7 @@ config PINCTRL_OXNAS
>  	select MFD_SYSCON
>  
>  config PINCTRL_ROCKCHIP
> -	bool
> +	tristate "Rockchip gpio and pinctrl driver"
>  	depends on OF
>  	select PINMUX
>  	select GENERIC_PINCONF
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index 0401c1da79dd..cc7512acfc5f 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -16,10 +16,12 @@
>   */
>  
>  #include <linux/init.h>
> +#include <linux/module.h>
>  #include <linux/platform_device.h>
>  #include <linux/io.h>
>  #include <linux/bitops.h>
>  #include <linux/gpio/driver.h>
> +#include <linux/of_device.h>

of_device.h below of_address.h please


>  #include <linux/of_address.h>
>  #include <linux/of_irq.h>
>  #include <linux/pinctrl/machine.h>
> @@ -4257,4 +4259,20 @@ static int __init rockchip_pinctrl_drv_register(void)
>  {
>  	return platform_driver_register(&rockchip_pinctrl_driver);
>  }
> +
> +static void __exit rockchip_pinctrl_drv_unregister(void)
> +{
> +	platform_driver_unregister(&rockchip_pinctrl_driver);
> +}
> +
> +#ifdef CONFIG_PINCTRL_ROCKCHIP_MODULE
> +module_init(rockchip_pinctrl_drv_register);
> +#else
>  postcore_initcall(rockchip_pinctrl_drv_register);
> +#endif

You definitly don't need this hack. For modules postcore_initcall
already points to module_init ... see

https://elixir.bootlin.com/linux/latest/source/include/linux/module.h#L114


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
