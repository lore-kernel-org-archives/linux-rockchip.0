Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B697C04A95
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 18:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KS5/3DTczne4mQRhY7+CvMRBgmQODvRm1YYQtDY6OgE=; b=dS8nXGLB31ZVw9
	VmAWR7PtwewFr7Bin8EJUQYFh41R8G0HG1TpiQTR4axl2gDbQGL3gal5bUvsKsjC4wvfm0+xUoXrW
	AR8IYGJeAkzrbF1vBNM2LtYK/FgSQoelIgZOIvmJyvasmIghp/LhQrxwiHEjUA0sEOLAVPcV7DDnz
	5LmRt8sTPb1CWUq7QC5IoiedPh7avDXjqkQZcOzkYT0V+3djoI5A5mGkZ6DGTiWdFqY0mOdYvm7eV
	r8XHZuqf9zpPWV9L2HhscL0JIwIE5ZCEtEh8PrZ2HCKdd3+4SFf+pVaeiMxa1Erv7ZmMARWs7Z62U
	LXaswn2mAqHr8Fg/zvaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obnCe-005JBl-9x; Fri, 23 Sep 2022 18:15:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obnCP-005J6F-Oj; Fri, 23 Sep 2022 18:14:55 +0000
Received: from p508fdd76.dip0.t-ipconnect.de ([80.143.221.118] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1obnCL-0000GC-Bj; Fri, 23 Sep 2022 20:14:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, jay.xu@rock-chips.com, linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, foss+kernel@0leil.net, Quentin Schulz <quentin.schulz@theobroma-systems.com>, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] pinctrl: rockchip: add pinmux_ops.gpio_set_direction callback
Date: Fri, 23 Sep 2022 20:14:48 +0200
Message-ID: <2890748.BddDVKsqQX@phil>
In-Reply-To: <20220923145141.3463754-2-foss+kernel@0leil.net>
References: <20220923145141.3463754-1-foss+kernel@0leil.net> <20220923145141.3463754-2-foss+kernel@0leil.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_111453_841474_CA04540E 
X-CRM114-Status: GOOD (  12.52  )
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

Am Freitag, 23. September 2022, 16:51:40 CEST schrieb Quentin Schulz:
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
> Let's re-implement the pinmux_ops.gpio_set_direction callback so that
> the gpio subsystem can request from the pinctrl driver to put the pin in
> its GPIO function.
> 
> Fixes: 9ce9a02039de ("pinctrl/rockchip: drop the gpio related codes")
> Cc: stable@vger.kernel.org
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
