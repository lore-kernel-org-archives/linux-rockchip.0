Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA8D8ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 10:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPucW9A4wTHs4pqSQWkp2/C8xM1QHNepWLwebu+zNZ4=; b=WmaQfTyn/G0uGo
	87NVwo6s1gUXTXVMjGo6KpUqOS9eRvgquWU2hvOWa2ju957F+/oapAtipSbNxLGkNwvFLVRFM8b/1
	aXuOAcpbk6Bc5zHuzHT4HKHycNnnSyM6PUaUyHtsV1f/lliPoMXvspKlhKDwjxRGr5ezVH7UlDwf3
	cSdKFRcjHpz0KIkY8GfApp7R44qdbC9V2coXoikqeTA/W6jLzBmdcGrvZje03ydxrOP5EFJ5GZyGu
	95hexAo9wjVcNtOSaiB8tIl/ThwhfBk5eUvGVPRTx8dK5aPtwHl6FShxPnfBs7uzTmwxdSmKeko74
	flUrshDBg4cDLPH/VLgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obft2-003dQ5-13; Fri, 23 Sep 2022 10:26:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obfsy-003dPI-U4
	for linux-rockchip@lists.infradead.org; Fri, 23 Sep 2022 10:26:22 +0000
Received: from p508fdb48.dip0.t-ipconnect.de ([80.143.219.72] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1obfsp-0005pO-T2; Fri, 23 Sep 2022 12:26:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jianqun Xu <jay.xu@rock-chips.com>, Linus Walleij <linus.walleij@linaro.org>
Cc: jbx6244@gmail.com, andriy.shevchenko@linux.intel.com, brgl@bgdev.pl, linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 RESEND 0/2] rockchip pinctrl for acpi
Date: Fri, 23 Sep 2022 12:26:06 +0200
Message-ID: <2419940.Icojqenx9y@phil>
In-Reply-To: <CACRpkdanniba+TUAeqei93dmkBT82HY5D95KxTsc8aE7jV+5VQ@mail.gmail.com>
References: <20220917060929.657778-1-jay.xu@rock-chips.com> <CACRpkdanniba+TUAeqei93dmkBT82HY5D95KxTsc8aE7jV+5VQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_032620_993997_C065DD84 
X-CRM114-Status: GOOD (  12.69  )
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

Am Dienstag, 20. September 2022, 11:26:26 CEST schrieb Linus Walleij:
> On Sat, Sep 17, 2022 at 8:09 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:
> 
> > These patch fixes to support acpi by:
> > 1. populate gpio platform before pinctrl to probe
> > 2. get gpiochip by finding from gpiochip list
> > 3. get match data by device api
> >
> > Jianqun Xu (2):
> >   pinctrl: rockchip: find gpiochip by name from gpio module
> >   pinctrl: rockchip: get match data by device_get_match_data
> 
> These look OK to me but I would feel better if Heiko or Andy ACK:ed
> them so I give them a few more days to comment.

Right now I'm actually quite confused as I seem to have a bunch
of pinctrl/gpio-acpi patchsets of varying lengths in my inbox.

There is a "v2", a "v8", a 20-patchset without version.
It's all quite confusing.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
