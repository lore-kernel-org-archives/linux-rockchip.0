Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E243C04A95
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 18:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tyi5MbMl/MIRiesOlB65pW0bqjpxIvd/kO1OnuzXdFg=; b=P1BgYIFCoXx714
	XBqzkwjM/oTJNsNpP13HuOi9fLyj0NGhtZ9LpYzX49g45D0i9Zdjmt4oe/cs/34zxJbcYs9qjogox
	0nNotK207DLaWhYFon0PjuEBMxmMLo0/6gih7QMvdX327HljL83DsdopmeRfcm8h6qeKRHf3Dz7So
	oFsBHVB21pNO8kdx45gQ0MLJSXHrWxPDQiLNUyTIvNF7VDXPgBK7QsiPGzZVQL85TQTU8RevtSIKn
	YMT8IpeFSOwFMNvQVdfbbzKElUzT7ZmVwQFXtZ2bQed5Nu6mh/jo1oWMaTY2dev6VUmMWByzZKjZw
	NUu6GIRfDG+bljdsmHPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obncA-005NCC-1v; Fri, 23 Sep 2022 18:41:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obnbz-005NAa-Vl; Fri, 23 Sep 2022 18:41:21 +0000
Received: from p508fdd76.dip0.t-ipconnect.de ([80.143.221.118] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1obnbw-0000Sm-AL; Fri, 23 Sep 2022 20:41:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, jay.xu@rock-chips.com, linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, foss+kernel@0leil.net, Quentin Schulz <quentin.schulz@theobroma-systems.com>, stable@vger.kernel.org
Subject: Re: [PATCH 2/2] gpio: rockchip: request GPIO mux to pinctrl when setting direction
Date: Fri, 23 Sep 2022 20:41:15 +0200
Message-ID: <3292995.CbtlEUcBR6@phil>
In-Reply-To: <20220923145141.3463754-3-foss+kernel@0leil.net>
References: <20220923145141.3463754-1-foss+kernel@0leil.net> <20220923145141.3463754-3-foss+kernel@0leil.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_114120_044051_A1E3BE7A 
X-CRM114-Status: GOOD (  13.49  )
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

Am Freitag, 23. September 2022, 16:51:41 CEST schrieb Quentin Schulz:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> Before the split of gpio and pinctrl sections in their own driver,
> rockchip_set_mux was called in pinmux_ops.gpio_set_direction for
> configuring a pin in its GPIO function.
> 
> This is essential for cases where pinctrl is "bypassed" by gpio
> consumers otherwise the GPIO function is not configured for the pin and
> it does not work. Such was the case for the sysfs/libgpiod userspace
> GPIO handling.
> 
> Let's call pinctrl_gpio_direction_input/output when setting the
> direction of a GPIO so that the pinctrl core requests from the rockchip
> pinctrl driver to put the pin in its GPIO function.
> 
> Fixes: 9ce9a02039de ("pinctrl/rockchip: drop the gpio related codes")
> Fixes: 936ee2675eee ("gpio/rockchip: add driver for rockchip gpio")
> Cc: stable@vger.kernel.org
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

cool, thanks a lot for reimplementing this

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
