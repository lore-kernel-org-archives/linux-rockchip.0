Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5672C25B75
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jun 2024 15:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9MbXT/pjqi/S1KIjeNmlXjEFN+6xCvUB9W6vldyl3Z0=; b=puqV//v6+ARmt/
	M/xIrBEHk5UdH4NApDn+SvFclnhkGuMcE2PWRQPuxvizoY11zpRcgFxFVKSnZPA74W2m1UZXguitR
	FYSC0aevfXjMyrwxYbkN/7BoBJyQ0qZLymcz+GvjmL9y/R5SpzKwQfe3/z795C22dbkFcT1okACZE
	ALS9b/3Yxjp2vD8AD/sXsl/2ZwC4gAN8J+7w7+BjEt9j2wpdCS2Vzcb6KFAw6VQmbLvQfrWuI7dE3
	VJHcIs9Dqsim39nBGTyLOWmGinPF54Yu40pjcd5ugHrj3kba412lyaZz1lnrM0EkIa6VH/cnXa3z4
	SD0qUT77hv0cqTXETlBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE9x5-0000000HHV2-0wC1;
	Mon, 03 Jun 2024 15:50:27 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE9x1-0000000HHUD-0LGD;
	Mon, 03 Jun 2024 15:50:24 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 7E50EE0007;
	Mon,  3 Jun 2024 15:50:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1717429817;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GwTcq4IedeHLQXBXk1rloGqIPerrvErDu7RrUmu96H8=;
	b=QEERog173eXk5OmgCX0zfGMBQMH3arOVasSjUWavLnk15brrZBeEFC8Oz8XDZQjNCkHsjR
	sehVeAFHi50SOMGY1ea9upKz1box4M7r2hc5W/y6lx0PVzZiaBem4vgk8nLXlR3PjYKVvO
	amy7jNuAtd8FPrH9koat0csVnxFiYiEEWXTMv/Sihxm/3y188V+Ntp+IkrBkWnbIcZkjGr
	SUmsSY1MzbRPp5V1W09OKcHTsKdriPH2aOdFUw/Z0NB5dZgr+BTLncObHzBoZf6N7iATxp
	BmN0CbyEQtYfnKT1LU4Mo1pS+rJF+sCWSNsRX5ZjNu3p605utwp2CfqYcqQJ5A==
Date: Mon, 3 Jun 2024 17:50:14 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Jianqun Xu <jay.xu@rock-chips.com>, Jonas Karlman
 <jonas@kwiboo.se>, devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] pinctrl: rockchip: add rk3308b SoC support
Message-ID: <20240603175014.6a41d3d8@booty>
In-Reply-To: <20240529143534.32402-3-dmt.yashin@gmail.com>
References: <20240529143534.32402-1-dmt.yashin@gmail.com>
	<20240529143534.32402-3-dmt.yashin@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_085023_298666_A6BBAD52 
X-CRM114-Status: GOOD (  11.89  )
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

Hello Dmitry,

On Wed, 29 May 2024 19:35:34 +0500
Dmitry Yashin <dmt.yashin@gmail.com> wrote:

> Add pinctrl support for rk3308b. This pin controller much the same as
> rk3308's, but with additional iomux routes and 3bit iomuxes selected
> via gpio##_sel_src_ctrl registers. Set them up in the function
> rk3308b_soc_sel_src_init to use new 3bit iomuxes over some 2bit old
> ones and update iomux_recalced and iomux_routes for the new SoC's.
> 
> Fixes: 1f3e25a06883 ("pinctrl: rockchip: fix RK3308 pinmux bits")
> Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>

Thank you for adding runtime chip ID detection!

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
