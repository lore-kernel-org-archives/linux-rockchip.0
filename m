Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5CC9C00528
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 20:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0SGTteHevmFjKLn7YDmrDXFP/nAV/qgcuF8s8tsiD/I=; b=D3/Xx3OxTBD0Ez
	Ag1/fYyRqngvLwI/iwpJ+uVgaQvZCs0XPcyVcjUdGTwUlSZEc4BTOinEiYS40jRJKUqgBO7xi3O0X
	o59dlXaLGG5AxSUicNOqH4KSxwiek55BySyqB1qYF7j2XVHOu9XgSX5QSgvcpS2NWrEP6+fo09Mmm
	o3YVdwmo0FXweLu3L4p4ClxILn07jOZ+0gRaI1lyJXDnT+NvhBqMNYow4rQXS/NSO5FUG4oK5gcpt
	nAR9ym6rbPUYZlTCMshGEw9jRyz71O6AUW70pAaUGXj/7k8pQxXXYk/Cp4C76OYlwq8ReHqYt3wJq
	ChtfXGiVLnvG3Y2KCZLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQZp2-00HJye-0g;
	Mon, 31 Jul 2023 20:48:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQZoz-00HJxE-0Y;
	Mon, 31 Jul 2023 20:48:54 +0000
Received: from i53875aa8.versanet.de ([83.135.90.168] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qQZot-0008UV-QH; Mon, 31 Jul 2023 22:48:47 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@edgeble.ai>
Cc: Jagan Teki <jagan@edgeble.ai>, linux-pm@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 01/14] genpd: rockchip: Add PD_VO entry for rv1126
Date: Mon, 31 Jul 2023 22:48:45 +0200
Message-ID: <5699457.DvuYhMxLoT@diego>
In-Reply-To: <20230731110012.2913742-2-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
 <20230731110012.2913742-2-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_134853_227829_D00BE75C 
X-CRM114-Status: GOOD (  18.97  )
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

Am Montag, 31. Juli 2023, 12:59:59 CEST schrieb Jagan Teki:
> PD_VO power-domain entry in RV1126 are connected to
> - BIU_VO
> - VOP
> - RGA
> - IEP
> - DSIHOST
> 
> Add an entry for it.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

@Ulf: now that we have a genpd subsystem, I assume you're going
to pick up this patch, right?

Thanks
Heiko

> ---
> Cc: linux-pm@vger.kernel.org
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> 
>  drivers/genpd/rockchip/pm-domains.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/genpd/rockchip/pm-domains.c b/drivers/genpd/rockchip/pm-domains.c
> index e3de49e671dc..d5d3ecb38283 100644
> --- a/drivers/genpd/rockchip/pm-domains.c
> +++ b/drivers/genpd/rockchip/pm-domains.c
> @@ -976,6 +976,7 @@ static const struct rockchip_domain_info px30_pm_domains[] = {
>  static const struct rockchip_domain_info rv1126_pm_domains[] = {
>  	[RV1126_PD_VEPU]	= DOMAIN_RV1126("vepu", BIT(2),  BIT(9),  BIT(9), false),
>  	[RV1126_PD_VI]		= DOMAIN_RV1126("vi", BIT(4),  BIT(6),  BIT(6),  false),
> +	[RV1126_PD_VO]		= DOMAIN_RV1126("vo", BIT(5),  BIT(7),  BIT(7),  false),
>  	[RV1126_PD_ISPP]	= DOMAIN_RV1126("ispp", BIT(1), BIT(8), BIT(8),  false),
>  	[RV1126_PD_VDPU]	= DOMAIN_RV1126("vdpu", BIT(3), BIT(10), BIT(10), false),
>  	[RV1126_PD_NVM]		= DOMAIN_RV1126("nvm", BIT(7), BIT(11), BIT(11),  false),
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
