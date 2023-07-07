Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83E31EB64DA
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jul 2023 14:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QvJpvdjDcKSnZM9bakh1FHhPD+yuuBpQyXfQSVI9m/w=; b=EFzVucNnzWPJUD
	x+JdrYQMVlhlVuCw22n2cdQJ1Jilcg603j3A48103x1ADJumJItNJLIkFK5dYH1Esj/1hyNQZcNIE
	GrOwTFMRWvCnmxztQr6qFFTrXSTGgI3iBJwgKelJBfLPIFyAXoqumrpJhLY9ad6/KbVt4f6agSX2t
	pvLgHWL5npVwyb4AHwGmFWUNcytsa0+PcOYVsZ+SYVhODaZVIPDzOrr5daTip1wL9cUdoL+CQSLmM
	H8GARwzJLJqpKfBZQ/mASexXZzppoWLoAh92NcHYwlBEJyeOHqJHs9zPAfTyZE5rfaSiG1kDWzSGS
	aHFF0HNH755ruVURQXCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHmDR-004qpk-3C;
	Fri, 07 Jul 2023 14:13:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHmDP-004qoT-0f;
	Fri, 07 Jul 2023 14:13:44 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qHmDG-0000Sg-8C; Fri, 07 Jul 2023 16:13:34 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 10/18] soc: rockchip: Mover power-domain driver to the genpd dir
Date: Fri, 07 Jul 2023 16:13:33 +0200
Message-ID: <4517610.cEBGB3zze1@diego>
In-Reply-To: <20230707140434.723349-11-ulf.hansson@linaro.org>
References: <20230707140434.723349-1-ulf.hansson@linaro.org>
 <20230707140434.723349-11-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230707_071343_248140_70FC1FB6 
X-CRM114-Status: GOOD (  17.37  )
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

Am Freitag, 7. Juli 2023, 16:04:26 CEST schrieb Ulf Hansson:
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: <linux-rockchip@lists.infradead.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>

I guess this is part of a bigger series moving these things around, so
Acked-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/genpd/Makefile                                          | 1 +
>  drivers/genpd/rockchip/Makefile                                 | 2 ++
>  .../{soc/rockchip/pm_domains.c => genpd/rockchip/pm-domains.c}  | 0
>  drivers/soc/rockchip/Makefile                                   | 1 -
>  4 files changed, 3 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/genpd/rockchip/Makefile
>  rename drivers/{soc/rockchip/pm_domains.c => genpd/rockchip/pm-domains.c} (100%)
> 
> diff --git a/drivers/genpd/Makefile b/drivers/genpd/Makefile
> index 286598ce7620..c178421e0cbc 100644
> --- a/drivers/genpd/Makefile
> +++ b/drivers/genpd/Makefile
> @@ -6,3 +6,4 @@ obj-y					+= bcm/
>  obj-y					+= mediatek/
>  obj-y					+= qcom/
>  obj-y					+= renesas/
> +obj-y					+= rockchip/
> diff --git a/drivers/genpd/rockchip/Makefile b/drivers/genpd/rockchip/Makefile
> new file mode 100644
> index 000000000000..8fb9d88a3492
> --- /dev/null
> +++ b/drivers/genpd/rockchip/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +obj-$(CONFIG_ROCKCHIP_PM_DOMAINS)	+= pm-domains.o
> diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/genpd/rockchip/pm-domains.c
> similarity index 100%
> rename from drivers/soc/rockchip/pm_domains.c
> rename to drivers/genpd/rockchip/pm-domains.c
> diff --git a/drivers/soc/rockchip/Makefile b/drivers/soc/rockchip/Makefile
> index 05f31a4e743c..23d414433c8c 100644
> --- a/drivers/soc/rockchip/Makefile
> +++ b/drivers/soc/rockchip/Makefile
> @@ -4,5 +4,4 @@
>  #
>  obj-$(CONFIG_ROCKCHIP_GRF) += grf.o
>  obj-$(CONFIG_ROCKCHIP_IODOMAIN) += io-domain.o
> -obj-$(CONFIG_ROCKCHIP_PM_DOMAINS) += pm_domains.o
>  obj-$(CONFIG_ROCKCHIP_DTPM) += dtpm.o
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
