Return-Path: <SRS0=QbJo=OL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8432AC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 14:34:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D722761183
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 14:34:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D722761183
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayCop5oqLDj6i6Y6khqvKqcxSohkvg5ud1yxPaU/9fA=; b=o4i5DwHq8pBJXL
	jzBYCdCvAuU/rf6Zw8avB7buCH/3XzqP41b8fb+ulTiQ9V2RwvXRhg7yRVRQhf+UAG6EqAlTW45kI
	BEwq5aUVn78LYHsO52S2IAg39LtFTnz2ekGuxGLG4iUYh1lnLBNIP3+JJ8vBQp3SFxtfboMNIphaa
	RqXh6yG342QH8ccF4sLQiJ1opW9bPqGCTO/bBYEh96yMthOUI4F/qijGM5ylj7VVHGL6JXymZTWRT
	BymF+StUvuer+lLh3HbrAssxbu5GiKrsEQ2CdawnLywhnZTa3ZWV5Ryw/zma4D2ffhVHEiTOnJm/w
	Y3jYJFCwNFZnzy9hHZFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSgqW-004m0V-8E; Tue, 21 Sep 2021 14:34:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSgqT-004lzY-Fl
 for linux-rockchip@lists.infradead.org; Tue, 21 Sep 2021 14:34:06 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1mSgqQ-00035D-PE; Tue, 21 Sep 2021 16:34:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: ivan@ivan.computer, punitagrawal@gmail.com,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [RFC PATCH 2/3] net: stmmac: dwmac-rk: clean up includes
Date: Tue, 21 Sep 2021 16:34:02 +0200
Message-ID: <3129085.aeNJFYEL58@phil>
In-Reply-To: <20210915170255.30561-3-michael.riesch@wolfvision.net>
References: <20210915170255.30561-1-michael.riesch@wolfvision.net>
 <20210915170255.30561-3-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_073405_605258_62D881AB 
X-CRM114-Status: GOOD (  11.85  )
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

Am Mittwoch, 15. September 2021, 19:02:54 CEST schrieb Michael Riesch:
> Sort includes alphabetically and remove unused includes.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>

This is nice in its own right
Reviewed-by: Heiko Stuebner <heiko@sntech.de>


> ---
>  drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 14 +++++---------
>  1 file changed, 5 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> index 0db8be543ee1..96ec7d73a74a 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> @@ -7,20 +7,16 @@
>   * Chen-Zhi (Roger Chen)  <roger.chen@rock-chips.com>
>   */
>  
> -#include <linux/stmmac.h>
> -#include <linux/bitops.h>
>  #include <linux/clk.h>
> -#include <linux/phy.h>
> -#include <linux/of_net.h>
> -#include <linux/gpio.h>
> +#include <linux/mfd/syscon.h>
>  #include <linux/module.h>
> -#include <linux/of_gpio.h>
>  #include <linux/of_device.h>
> +#include <linux/of_net.h>
> +#include <linux/phy.h>
>  #include <linux/platform_device.h>
> -#include <linux/regulator/consumer.h>
> -#include <linux/delay.h>
> -#include <linux/mfd/syscon.h>
>  #include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/stmmac.h>
>  
>  #include "stmmac_platform.h"
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
