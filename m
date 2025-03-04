Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E77EC282D0
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 20:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sr5qr/vxdxD3LTplLZWKz5s7xjGVcZB1gnueNSEad5Q=; b=uuo5Rjw/HLec1nPCf8HFxV2oAN
	vJLGjW+81XfjMcTp757UkR4hcOa2IBuQL7MH2zcDmOxSDtDun2MilKOMc/+pm5E7CvWGmvVu4sp33
	xb1iytpFfvrxCoJcMIp+AOrKKGX1dMOfnLzJc7vZuTzjqwECXk3aJ/Opdiudnp0F/GnHZL4+StmXg
	p32rUEedZ1O1KxOY2pDtNTo39d7joh3Wl8ceVGENIZgwjyhHjgPhLI+MPkwofHIc/C26k8YF7Avga
	jNQMAD1f4nw1uh8mz+v/L7GbFssGnNPT5BBNIuP3U4JBr7N6ze8tV6k94qg9fTuIYZUoQigdISMo1
	BNmBRDrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpYp4-00000006BMA-2ZVx;
	Tue, 04 Mar 2025 20:25:02 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpYnU-00000006BCU-3hw8;
	Tue, 04 Mar 2025 20:23:26 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1741119802;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=U2sqEAxGJv2uGZqDwGrSnxcuM3qMt5QnCoz/T7iEsGY=;
	b=WNPh3e5psK966rm8ClScI8cegZulUjpiLwARCd4gpgUwa6Zx6B1/pufdZQy6A+HJHxL2vI
	dRT/9TzI6o24gv79nwK6r6q4uEhck3xgSAzyO15jYeukAy2cwig1FWFJfRV8Lp64xwLJF+
	miqoRz6zokio8gKJzZFyQhlPKPyTLr9JUkWAF8goplg75vvp+q7piNvWsxCoHoSviskbVe
	4U0fUGu2Sp3NVOpcETTE/39mSmEu3REBFj9EGJ5Qu/biUJaHkYMJoEFpgSmps3Nrf453nF
	s1GDjeIDJbNheYF8ATNdjkCLHZDCDBc2/5XKEP4pVcR0PLiwTn/naS1h3cp0dQ==
Date: Tue, 04 Mar 2025 21:23:21 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, Arnd Bergmann
 <arnd@arndb.de>, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] pmdomain: rockchip: add regulator dependency
In-Reply-To: <20250304142803.689201-1-arnd@kernel.org>
References: <20250304142803.689201-1-arnd@kernel.org>
Message-ID: <57dc1e1b8a3f1134c5eed050a81de1b7@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_122325_073602_13D897C8 
X-CRM114-Status: GOOD (  15.45  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Arnd,

On 2025-03-04 15:27, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When CONFIG_REGULATOR is disabled, this pmdomain driver fails to build:
> 
> drivers/pmdomain/rockchip/pm-domains.c:653:30: error: implicit
> declaration of function 'devm_of_regulator_get'; did you mean
> 'devm_regulator_get'? [-Wimplicit-function-declaration]
>   653 |                 pd->supply = devm_of_regulator_get(pmu->dev,
> pd->node, "domain");
>       |                              ^~~~~~~~~~~~~~~~~~~~~
>       |                              devm_regulator_get
> drivers/pmdomain/rockchip/pm-domains.c:653:28: error: assignment to
> 'struct regulator *' from 'int' makes pointer from integer without a
> cast [-Wint-conversion]
>   653 |                 pd->supply = devm_of_regulator_get(pmu->dev,
> pd->node, "domain");
>       |                            ^
> 
> Add a Kconfig dependency.
> 
> Fixes: db6df2e3fc16 ("pmdomain: rockchip: add regulator support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/pmdomain/rockchip/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pmdomain/rockchip/Kconfig
> b/drivers/pmdomain/rockchip/Kconfig
> index 7e4f9b628f0b..218d43186e5b 100644
> --- a/drivers/pmdomain/rockchip/Kconfig
> +++ b/drivers/pmdomain/rockchip/Kconfig
> @@ -5,6 +5,7 @@ config ROCKCHIP_PM_DOMAINS
>  	bool "Rockchip generic power domain"
>  	depends on PM
>  	depends on HAVE_ARM_SMCCC_DISCOVERY
> +	depends on REGULATOR
>  	select PM_GENERIC_DOMAINS
>  	help
>  	  Say y here to enable power domain support.

Looking good to me, thanks for this patch.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
