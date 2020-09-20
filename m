Return-Path: <SRS0=htw7=C5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CDC0C43465
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2020 22:14:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5120320758
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2020 22:14:36 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="tJqaa5Gc"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5120320758
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sm9xOnuQGdDsQrFZpEG4wV2k1gzxv3GwUK43kCJJQFo=; b=tJqaa5Gcil9+3murpqKROpDLQ
	NeHz/I2iKJE5UQNl8KTgB60RxxUIUQeRBHVA9JJpnK04+EuS8rMH1GgPJViL7j8NQjld2QEu2kz64
	6nDLNFZpUzfdFr96zWNoaauaThNR1RvwHB8TK+f5ICsVEgi5u3TCaYUOUgnTthHNCTOtpjKsJ9VYD
	RIulRYah7cSYQTt/2IglcPrAnHDBUpdevL/F6AMCj5qgkPILGwfsPHhFUbHFSSMOjCVjFSm3tu9y9
	dcZIgWwiVTjqkNc4iWcRD4xqAAA+U1Wp6Yvj+5NAzHs/VqL3Jh8L3dp0eQGdJDHUQgzHT4CGfdEV9
	mhxwBptOg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kK7bE-0005Kg-I6; Sun, 20 Sep 2020 22:14:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kK7bB-0005K9-BP
 for linux-rockchip@lists.infradead.org; Sun, 20 Sep 2020 22:14:22 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kK7b2-0005lD-9m; Mon, 21 Sep 2020 00:14:12 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linus.walleij@linaro.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH 2/2] pinctrl: rockchip: make driver be tristate module
Date: Mon, 21 Sep 2020 00:14:11 +0200
Message-ID: <5373086.oXRXx9yCqB@diego>
In-Reply-To: <20200914003847.10341-1-jay.xu@rock-chips.com>
References: <20200907025927.9713-3-jay.xu@rock-chips.com>
 <20200914003847.10341-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200920_181421_400573_1E32A56E 
X-CRM114-Status: GOOD (  17.53  )
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

Am Montag, 14. September 2020, 02:38:47 CEST schrieb Jianqun Xu:
> Make pinctrl-rockchip driver to be tristate module, support to build as
> a module, this is useful for GKI.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/pinctrl/Kconfig            |  2 +-
>  drivers/pinctrl/pinctrl-rockchip.c | 13 +++++++++++++
>  2 files changed, 14 insertions(+), 1 deletion(-)
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
> index 0401c1da79dd..927d132d6716 100644
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
>  #include <linux/of_address.h>
>  #include <linux/of_irq.h>
>  #include <linux/pinctrl/machine.h>
> @@ -4258,3 +4260,14 @@ static int __init rockchip_pinctrl_drv_register(void)
>  	return platform_driver_register(&rockchip_pinctrl_driver);
>  }
>  postcore_initcall(rockchip_pinctrl_drv_register);
> +
> +static void __exit rockchip_pinctrl_drv_unregister(void)
> +{
> +	platform_driver_unregister(&rockchip_pinctrl_driver);
> +}
> +module_exit(rockchip_pinctrl_drv_unregister);
> +
> +MODULE_DESCRIPTION("ROCKCHIP Pin Controller Driver");
> +MODULE_LICENSE("GPL");
> +MODULE_ALIAS("platform:pinctrl-rockchip");
> +MODULE_DEVICE_TABLE(of, rockchip_pinctrl_dt_match);
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
