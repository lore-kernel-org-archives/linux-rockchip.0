Return-Path: <SRS0=7z7M=P3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4054CC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Nov 2021 10:38:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 081F361105
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Nov 2021 10:38:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 081F361105
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbZo7MMU2U0cDvauLvOwZx6pitoQsSltfKMCIs2dfbQ=; b=lKnpVACWvcOYWJ
	mIuI4AfvZHkwE3u3y+wMo2R++TXHHJlKHJ3gARvkxxtbOxPCkZ0IEGpiGpwBjfbEI7YT4bwg9iMX4
	lJ6/aSwqS8wOgBDg9aAuPx7dRUnSeXme9KHU32gA7MMwcrDkEa/DPWvQNd6Qkz6arN68G5NTfudC4
	U4ay0ZexlNstn8g0TpmQUkw6C44oqL+cCdna9dKLfvqsKmG8oezaWRZ839BixT1Ns1QV4NjypyNdC
	OPXag2OCG/ZIP9xZmMvT3B5wq1VnWVyrf6pdQRd5m06SAXfW+dnPo0XP+Ch2svutn1F1b9cFVbnlg
	8gmqrKNtjwhC5PtuEqkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mk22Y-00G6Ov-Uh; Mon, 08 Nov 2021 10:38:14 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mk22E-00G6F4-7I; Mon, 08 Nov 2021 10:37:56 +0000
Received: (Authenticated sender: gregory.clement@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 084A024000C;
 Mon,  8 Nov 2021 10:37:46 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Jianqun Xu <jay.xu@rock-chips.com>, Linus Walleij
 <linus.walleij@linaro.org>, Sai Krishna Potthuri
 <lakshmi.sai.krishna.potthuri@xilinx.com>, Andrew Morton
 <akpm@linux-foundation.org>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Bamvor Jian Zhang <bamv2005@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Heiko Stuebner
 <heiko@sntech.de>, Patrice Chotard <patrice.chotard@foss.st.com>, Michal
 Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
Subject: Re: [PATCH v1 08/19] pinctrl: armada-37xx: Fix function name in the
 kernel doc
In-Reply-To: <20211105124242.27288-8-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-8-andriy.shevchenko@linux.intel.com>
Date: Mon, 08 Nov 2021 11:37:46 +0100
Message-ID: <877ddjszk5.fsf@BL-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211108_023754_441689_D5E81A3F 
X-CRM114-Status: GOOD (  14.93  )
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

Andy Shevchenko <andriy.shevchenko@linux.intel.com> writes:

> Kernel doc validator is not happy:
>
>   .../pinctrl-armada-37xx.c:926: warning: expecting prototype for armada_37xx_fill_funcs(). Prototype was for armada_37xx_fill_func() instead
>
> Fix this by updating function name in the kernel doc.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>


Reviewed-by: Gregory CLEMENT <gregory.clement@bootlin.com>

Thanks,

Gregory

> ---
>  drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> index 5cb018f98800..5615cb7a1209 100644
> --- a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> +++ b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> @@ -913,7 +913,7 @@ static int armada_37xx_fill_group(struct armada_37xx_pinctrl *info)
>  }
>  
>  /**
> - * armada_37xx_fill_funcs() - complete the funcs array
> + * armada_37xx_fill_func() - complete the funcs array
>   * @info: info driver instance
>   *
>   * Based on the data available from the armada_37xx_pin_group array
> -- 
> 2.33.0
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
