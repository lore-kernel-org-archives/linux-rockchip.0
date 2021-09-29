Return-Path: <SRS0=t/9b=OT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C7D3C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 21:03:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0FE6C61502
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 21:03:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0FE6C61502
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJHHTqJ01H9PfFuKl7I7mjMOtzZGC+BUq+l3AdDprgw=; b=ul4szTuMJWHbkR
	uZfQJlQ/r30IadIF27yIuxJIGj4bAJ2X0YaT58KOCKgQbCTNh6gYvQRxPFfJqHiQER1E/qJfNm4GM
	7OqyMy42TCNGQJEfjXo2ZJCEXzZAPbqLYvaB1ZeOABVITnxZluyELqKBhA8W6yYuTvCtyGTsoDF02
	6mlcQ8rACpyzwb10vH5WgLL/Ks9NzhEHN68nLgZsFX1s6ipDWZE/o2YvGav0VMFfijdY6aKJ9KTLk
	43k0Hp10IEz6Kiz55SqNBvjojLNeGctV1lFR4R4t43pf3/DCz6jOEOcxGpJwtnUx9a1fbYND89u4h
	iiLasfbeUzZkL+Q7bhxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVgje-00CM0Q-Ii; Wed, 29 Sep 2021 21:03:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVgjc-00CM01-Lb; Wed, 29 Sep 2021 21:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
 :MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=2fSCF9HM1AWXtEOSPPclZiu56RSKEWRFZ5+KY29TPg8=; b=rZGJ2zPAAS4u6h5Ik2u6t2ktVQ
 VtqSO3OLiqomtbiy8UAgvXMLywkSkW/+APcN9d2FyOjL3DATHPYuhkXUUAqywoaldk8MmqLNJdD2i
 wPwEwrJ4BBC985l1jHxsV8SKAIAyO/RrqWjTtCVKp83svjpkFsFcMyrudWjnpMAbKV0u+t5H/kMHT
 XL6bdeQoUdo0Ql4nf8bZrNP2zQ4wKnxy6LP004OJsi6azfJZFpb3bJs9kwFtVIgWh7ILrpPuk/Ncw
 DmZKLrBZuBxzLX1vXrTx1VeZ2TC62jq2z9m1rigsMVxRrqdDqnyb1VcUIe/bKDwaPa1XEjVHtQp5S
 kOC4sEGA==;
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVgjZ-006oOT-AO; Wed, 29 Sep 2021 21:03:23 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mVgir-0000Wl-UD; Wed, 29 Sep 2021 23:02:37 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: netdev@vger.kernel.org, Punit Agrawal <punitagrawal@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 davem@davemloft.net, peppe.cavallaro@st.com, alexandre.torgue@foss.st.com,
 kuba@kernel.org, Punit Agrawal <punitagrawal@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH] net: stmmac: dwmac-rk: Fix ethernet on rk3399 based
 devices
Date: Wed, 29 Sep 2021 23:02:35 +0200
Message-ID: <12744188.XEzkDOsqEc@diego>
In-Reply-To: <20210929135049.3426058-1-punitagrawal@gmail.com>
References: <20210929135049.3426058-1-punitagrawal@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210929_220321_462914_C4C58422 
X-CRM114-Status: GOOD (  23.58  )
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

Am Mittwoch, 29. September 2021, 15:50:49 CEST schrieb Punit Agrawal:
> Commit 2d26f6e39afb ("net: stmmac: dwmac-rk: fix unbalanced pm_runtime_enable warnings")
> while getting rid of a runtime PM warning ended up breaking ethernet
> on rk3399 based devices. By dropping an extra reference to the device,
> the commit ends up enabling suspend / resume of the ethernet device -
> which appears to be broken.
> 
> While the issue with runtime pm is being investigated, partially
> revert commit 2d26f6e39afb to restore the network on rk3399.
> 
> Fixes: 2d26f6e39afb ("net: stmmac: dwmac-rk: fix unbalanced pm_runtime_enable warnings")
> Suggested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
> Cc: Michael Riesch <michael.riesch@wolfvision.net>

On a rk3399-puma which has the described issue,
Tested-by: Heiko Stuebner <heiko@sntech.de>


> ---
> Hi,
> 
> There's been a few reports of broken ethernet on rk3399 based
> boards. The issue got introduced due to a late commit in the 5.14
> cycle.
> 
> It would be great if this commit can be taken as a fix for the next rc
> as well as applied to the 5.14 stable releases.
> 
> Thanks,
> Punit
> 
>  drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> index ed817011a94a..6924a6aacbd5 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> @@ -21,6 +21,7 @@
>  #include <linux/delay.h>
>  #include <linux/mfd/syscon.h>
>  #include <linux/regmap.h>
> +#include <linux/pm_runtime.h>
>  
>  #include "stmmac_platform.h"
>  
> @@ -1528,6 +1529,8 @@ static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
>  		return ret;
>  	}
>  
> +	pm_runtime_get_sync(dev);
> +
>  	if (bsp_priv->integrated_phy)
>  		rk_gmac_integrated_phy_powerup(bsp_priv);
>  
> @@ -1539,6 +1542,8 @@ static void rk_gmac_powerdown(struct rk_priv_data *gmac)
>  	if (gmac->integrated_phy)
>  		rk_gmac_integrated_phy_powerdown(gmac);
>  
> +	pm_runtime_put_sync(&gmac->pdev->dev);
> +
>  	phy_power_on(gmac, false);
>  	gmac_clk_enable(gmac, false);
>  }
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
