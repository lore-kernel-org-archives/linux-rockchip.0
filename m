Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D8CBC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 18:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xsMJBGh2JIv2QSSLYym2fq0DRFuMrXIy/eWOUEvbgz8=; b=NDtmR6Q45J4qC7
	+wgqN6dv2NvWsMdqdQj0UYdJoqUlg7ccSMi7rNNQuJRO5QBb6MgkKnBjwf53K4/h/wzwzB7uUjtPo
	/068jNQ6V94WjStwQpjFLZiWHXfamVwgKYrE9WW9wvwxH6U8q/6iEdRV+QxCYwVjAEPzsSioWhoKh
	+QNwTzN765GUBTkZZpKhn5bKhpazO+Ao17a4dIgNDD+8ibWiSCp1tzpjC9hXBrBGoM9QOGzNRIxvM
	0J/6Z/Ypp4UZqJCZu94BU8Ty6osTDbsoG4N7NrXc5m7beDUWScvm9v8UfpDg6VjV1/29ZkwcFaSbN
	4vQoYeUghya3M6lRk6aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj3A1-00Anqa-Bf; Mon, 25 Apr 2022 18:10:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj39y-00AnpS-NB
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 18:10:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 68A901FB;
 Mon, 25 Apr 2022 11:10:01 -0700 (PDT)
Received: from [10.57.80.98] (unknown [10.57.80.98])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 32C1A3F5A1;
 Mon, 25 Apr 2022 11:10:00 -0700 (PDT)
Message-ID: <7660044a-17ec-740f-0595-7765bf7e74bc@arm.com>
Date: Mon, 25 Apr 2022 19:09:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 2/2] soc: rockchip: Fix compile-testing SoC drivers
Content-Language: en-GB
To: Brian Norris <briannorris@chromium.org>, Heiko Stuebner
 <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>
Cc: linux-kernel@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 linux-rockchip@lists.infradead.org
References: <20220425171737.321813-1-briannorris@chromium.org>
 <20220425101646.v2.2.Id5f16dec920f620120c0a143a97a12e16d401760@changeid>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220425101646.v2.2.Id5f16dec920f620120c0a143a97a12e16d401760@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_111006_901081_6C1EFFC9 
X-CRM114-Status: GOOD (  23.06  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2022-04-25 18:17, Brian Norris wrote:
> Similar to commit 7f94b69ece51 ("ARM: ixp4xx: fix compile-testing soc
> drivers").
> 
> drivers/soc/rockchip/Kconfig makes plenty of provision for configuring
> drivers either for ARCH_ROCKCHIP or for COMPILE_TEST. But
> drivers/soc/Makefile pulls the rug out from under us, by refusing to
> build anything if we specified COMPILE_TEST but not ARCH_ROCKCHIP.
> 
> Currently, I'm not aware of anything that breaks without this patch, but
> it certainly makes for confusing builds (CONFIG_ROCKCHIP_PM_DOMAINS=y,
> but we didn't actually compile the driver?) and leaves room for future
> error (I have pending patches that break confusingly with COMPILE_TEST=y
> even though their Kconfig dependencies seem correct [1]).
> 
> Defer to drivers/soc/rockchip/{Makefile,Kconfig} to do the right thing.
> 
> We also need to force ARM/ARM64 dependencies for ROCKCHIP_PM_DOMAINS,
> because it uses ARM-specific macros (dsb()).

FWIW, those dsb()s could be replaced with generic wmb()s, assuming their 
purpose is to complete the previous write before polling for the result 
(TBH it's questionable whether that serves any practical purpose given 
the ordering rules for Device memory, but I doubt these are critical 
performance bottlenecks so there doesn't seem to be any real harm in 
being super-conservative). At worst they could be swapped for generic 
mb() with no functional change at all, but it seems even harder to 
justify why that might need to be.

Robin.

> [1] e.g.,
> https://lore.kernel.org/linux-rockchip/20220405184816.RFC.2.I2d73b403944f0b8b5871a77585b73f31ccc62999@changeid/
> [RFC PATCH 2/2] PM / devfreq: rk3399_dmc: Block PMU during transitions
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
> Changes in v2:
>   * Depend on ARM||ARM64
> 
>   drivers/soc/Makefile         | 2 +-
>   drivers/soc/rockchip/Kconfig | 1 +
>   2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
> index fd7717d597fc..4c91705a8bb3 100644
> --- a/drivers/soc/Makefile
> +++ b/drivers/soc/Makefile
> @@ -23,7 +23,7 @@ obj-y				+= pxa/
>   obj-y				+= amlogic/
>   obj-y				+= qcom/
>   obj-y				+= renesas/
> -obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
> +obj-y				+= rockchip/
>   obj-$(CONFIG_SOC_SAMSUNG)	+= samsung/
>   obj-$(CONFIG_SOC_SIFIVE)	+= sifive/
>   obj-y				+= sunxi/
> diff --git a/drivers/soc/rockchip/Kconfig b/drivers/soc/rockchip/Kconfig
> index aff2f7e95237..785e1798d286 100644
> --- a/drivers/soc/rockchip/Kconfig
> +++ b/drivers/soc/rockchip/Kconfig
> @@ -25,6 +25,7 @@ config ROCKCHIP_IODOMAIN
>   config ROCKCHIP_PM_DOMAINS
>   	bool "Rockchip generic power domain"
>   	depends on PM
> +	depends on ARM || ARM64
>   	select PM_GENERIC_DOMAINS
>   	help
>   	  Say y here to enable power domain support.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
