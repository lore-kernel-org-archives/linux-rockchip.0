Return-Path: <SRS0=5KZ+=PZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA8F6C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 17:01:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2673D60F9E
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 17:01:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2673D60F9E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BhhZHB9Btpr+znyOCAOq24yGs6+SIu34/TLfp985MD8=; b=ecN3IXoT4Rp0YR
	miW5eNplioI/p2izPjuKAV1ML+HMvk2/+jSa7EAp7EkeXqJRjX5c80GVe75Mu4jgrbVvCgvcnzS9N
	QuFIifUAmk476XQrkwEF64Beoh9rZtVbMzSlo5t8/x7ULwDLuxhSVYFCMaHRhm6MhTjYhArpoWb9w
	wnWWf1ETrveFvNBXDlMAzHPkjtMtYNSjI/GRvhFe1ZfSkVJNU2t60Wk1CXIOb4EzUOpvx1T2CLYcs
	Svo8V/8RG8IesR0hQMpW1QP3NmeiYXUjUvO7jAXr4CGL5yS7vsQ6hZrTeb44j/ZLWI6dvHmLufBES
	+btNFSEkULgVc3y54Fkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjP4A-00DDVT-Qe; Sat, 06 Nov 2021 17:01:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjOdR-00D6Ih-GW
 for linux-rockchip@bombadil.infradead.org; Sat, 06 Nov 2021 16:33:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
 :MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=XKCP+MleqMlqzKUwHENk609cO3a3n0nHk0jERbpJ2Js=; b=Gmlxo3w2tuNCjgrQVkdbBy29vW
 CfLqzA6Paz+d++ZmC/j+S6KfksKYR0sN9d30dSQ0LJRfLHv0kpLq8Q5S5aNFwjuwnx1GS2Dgiia1r
 fLLsPvKb0u+7zChl96VwLCC+OUXmJcrnPaM7nU6WTa67lYId9n88cuiQVeJUhFCYM7die6/mOB1WP
 Tne09qUdkEankq3GkaZhg7wl19MSW3K7WdOvoVCXP5V3KHRwmxmODgLGgl6kdwJ45jtv1BIF/7NsT
 iJlY6MUVK4a17LooBMfa/y6vPzs58bst+XyOdqW6A66BLBOS2Pgh1Ml9Bx+0EYrgFP7uNorGZ0nHB
 1LtjtCSA==;
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjOdO-00EXqK-22
 for linux-rockchip@lists.infradead.org; Sat, 06 Nov 2021 16:33:40 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mjObq-0008E6-R1; Sat, 06 Nov 2021 17:32:02 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Jianqun Xu <jay.xu@rock-chips.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Bamvor Jian Zhang <bamv2005@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Michal Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
Subject: Re: [PATCH v1 03/19] pinctrl/rockchip: Drop wrong kernel doc
 annotation
Date: Sat, 06 Nov 2021 17:32:01 +0100
Message-ID: <1844978.gOY4SzdxhB@diego>
In-Reply-To: <20211105124242.27288-3-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-3-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211106_163338_296826_CDEBB86D 
X-CRM114-Status: GOOD (  17.01  )
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

Am Freitag, 5. November 2021, 13:42:26 CET schrieb Andy Shevchenko:
> Kernel doc validator is not happy:
> 
>   .../pinctrl-rockchip.c:45: warning: This comment starts with '/**', but isn't a kernel-doc comment.
> 
> Drop it as it's indeed not a kernel doc comment.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index 5ce260f152ce..6031d98d9849 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -39,7 +39,7 @@
>  #include "pinconf.h"
>  #include "pinctrl-rockchip.h"
>  
> -/**
> +/*
>   * Generate a bitmask for setting a value (v) with a write mask bit in hiword
>   * register 31:16 area.
>   */
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
