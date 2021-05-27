Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1A6C47089
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 08:52:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EFD8E6135F
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 08:52:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EFD8E6135F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=guSr/jJNEt/1PAlzpX0bdunZG9Iq1fJv31gJq7KpA7c=; b=z4CzCdGIwDZ+R9
	fj3AS8SmO08VRec7IPPHj6G8UmRP+u1HYilwcDyFW7e/g6nJdoDnm9DP8iDB8TrZviAZfdWmVsOvw
	j/zSroZDXrpzRfEq9wDMLVsbvjhblv698lIXd01BTig1OzCZG2NFN5FOouCtio8dxdXeSXlYJKs6F
	HNVf/AW8Bs2xuahsXAxHYr1AZarlzcTK3b8rNF8ffDcs9YrvYoer8+REWyRYlcn+J6bGS9KEV8/dl
	/mS4n2H6jY51puFi5JQCMnVyypGvC12dWWIX03yCgjIc/lu8WU/J5y92z1ON+maZaYr+Z/HOD3dO/
	v5RJVJKHn3zQyM9BbWPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmBkK-0042NL-EI; Thu, 27 May 2021 08:52:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmBis-0041S7-5v
 for linux-rockchip@lists.infradead.org; Thu, 27 May 2021 08:50:35 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lmBiq-0006sp-Le; Thu, 27 May 2021 10:50:32 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linus.walleij@linaro.org, robh+dt@kernel.org,
 Jianqun Xu <jay.xu@rock-chips.com>
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH v5 0/7] gpio-rockchip driver
Date: Thu, 27 May 2021 10:50:32 +0200
Message-ID: <3546107.C4sosBPzcN@diego>
In-Reply-To: <20210527071239.1424430-1-jay.xu@rock-chips.com>
References: <20210527071239.1424430-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_015034_281084_769C6CE2 
X-CRM114-Status: GOOD (  12.40  )
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

Hi Jay,

Am Donnerstag, 27. Mai 2021, 09:12:32 CEST schrieb Jianqun Xu:
> Separate gpio driver from pinctrl driver, and support v2 controller.
> 
> Jianqun Xu (7):
>   pinctrl/rockchip: separate struct rockchip_pin_bank to a head file
>   pinctrl/pinctrl-rockchip.h: add pinctrl device to gpio bank struct
>   gpio: separate gpio driver from pinctrl-rockchip driver
>   gpio/rockchip: use struct rockchip_gpio_regs for gpio controller
>   gpio/rockchip: support next version gpio controller
>   gpio/rockchip: always enable clock for gpio controller
>   gpio/rockchip: drop irq_gc_lock/irq_gc_unlock for irq set type

You did want to pick the
	"dt-bindings: gpio: change items restriction of clock for rockchip,gpio-bank"
patch from the rk3568 dt series to here.
The binding is part of the gpio-driver area, so should be part
of this series.

Heiko


> 
>  drivers/gpio/Kconfig               |   8 +
>  drivers/gpio/Makefile              |   1 +
>  drivers/gpio/gpio-rockchip.c       | 758 ++++++++++++++++++++++++
>  drivers/pinctrl/pinctrl-rockchip.c | 910 +----------------------------
>  drivers/pinctrl/pinctrl-rockchip.h | 287 +++++++++
>  5 files changed, 1073 insertions(+), 891 deletions(-)
>  create mode 100644 drivers/gpio/gpio-rockchip.c
>  create mode 100644 drivers/pinctrl/pinctrl-rockchip.h
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
