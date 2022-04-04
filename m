Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF258C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 11:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=60F7wpD2SM85Rj0hJlSDDl31SRDbF26m8Kc+TYItIgU=; b=jDXmOtwRTCWMRW
	+vrLw3yO/oE9ab4FXBf/MXwe5qC+46ih0XDIK4Cspq1957vWVN/lyMS8/SN+7EGERWvZH2TagOEgg
	zWbQJWtFE1EWvI2+Xs0OevxAS5OtzshubJXsbIm3ZD9VrZxcKqFH12vdBZTGR8Gb/4igZjq+824Ip
	XfeN7ZOPirMsH+ns5CJ+Vhd2BpSd0x7G1A9FSulwctw2uX4VxwAE87AGufjGQYTDuq14NhjiZz1mB
	a3ieQ6ny3IaXWOwgoVaLFtbD4Z/ihUd16JyzNUrRRsExRn0KIDIdWPrO9eOf8axNuoihSMiOpf0eS
	Zl4nYr/XW2ZLbCuc+InA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbL2k-00EjqI-4L; Mon, 04 Apr 2022 11:38:46 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbL2Z-00Ejml-C9; Mon, 04 Apr 2022 11:38:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=In-Reply-To:Content-Type:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description; bh=Zc6VIIFKcy+op7oiVyHdf8N32KwbpWfsc0NuQgZSdH0=; b=A09kS
 4qQJvDZkpFSIawTG5uMZmetjLA+RGO9CsRi4k2sbBzNeWaLiXery34BExS5su42r7muhdvrdM8WIQ
 x9KwpGUfSE2NDatySu4737MPqwRwtNiOED/1x+lPjJHTiOZC/BkXa91DXlY+JYYy5zhu8ZFYtQZ5K
 CuKq69Gq6O6Eg0yCb9motDhMhrLI9LGSQ/yF2UpHd6yHfs/wPEMzplvi2JxUHtACYQEq/XmM5dwv2
 nw+6XDizcBR3gaE7Cilb9BabPVde3A0uq81yV2W12N7qgOBzuxhZn0zo2IkZGnBKwXNCZeZV4OEtp
 +NTMpxJjbuRIvHKTmSLwHnN7KGtqw==;
Received: from [81.174.171.191] (helo=donbot)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1nbL2S-000544-C8; Mon, 04 Apr 2022 12:38:28 +0100
Date: Mon, 4 Apr 2022 12:38:27 +0100
From: John Keeping <john@metanate.com>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 17/33] crypto: rockchip: use read_poll_timeout
Message-ID: <YkrYs87bgWs7+tOm@donbot>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
 <20220401201804.2867154-18-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220401201804.2867154-18-clabbe@baylibre.com>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_043835_445559_52468C1A 
X-CRM114-Status: GOOD (  15.18  )
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

On Fri, Apr 01, 2022 at 08:17:48PM +0000, Corentin Labbe wrote:
> Use read_poll_timeout instead of open coding it
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  drivers/crypto/rockchip/rk3288_crypto_ahash.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
> index 137013bd4410..21c9a0327ddf 100644
> --- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
> +++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
> @@ -10,6 +10,7 @@
>   */
>  #include <linux/device.h>
>  #include <asm/unaligned.h>
> +#include <linux/iopoll.h>
>  #include "rk3288_crypto.h"
>  
>  /*
> @@ -305,8 +306,8 @@ static int rk_hash_run(struct crypto_engine *engine, void *breq)
>  		 * efficiency, and make it response quickly when dma
>  		 * complete.
>  		 */
> -	while (!CRYPTO_READ(tctx->dev, RK_CRYPTO_HASH_STS))
> -		udelay(10);
> +	read_poll_timeout(readl, v, v == 0, 10, 1000, false,
> +			  tctx->dev->dev + RK_CRYPTO_HASH_STS);

This can be simplified to:

	readl_poll_timeout(tctx->dev->dev + RK_CRYPTO_HASH_STS,
			   v, v == 0, 10, 1000);

But shouldn't this be tctx->dev->reg ?!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
