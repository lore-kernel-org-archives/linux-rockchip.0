Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADC73C32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 10:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8fcP2lG0500b3LXnjo61UbYQD1rD7/dGgEXQJTK5fg=; b=3+Yp6penx6ugkv
	317UsrSgi4XZgKGAEF8Da8oWfXDL6exB0WuKkPXhouEJCqPH2DcQTJ7StMa35i5QSj8JtvlvQcJYZ
	rTc2JHXpgsJpyXOPJ6EVe9p2nkBGfm15qVFjhpM2G4onXg+7L5SEhsgCSgA4e7MUi5STtYWXmwmfj
	href4t6Ef7asvpIy64t/fWfRCDQaC9q8Wzj6NksUB9b3vZv8F51aTg6dr6uLzWX4Gr03Ilekl9T2Z
	JVTRF7nnF68nm51dQvZvERdIucdcM/dEEpQr6Lpund9/yCtb8cvsalur9WgK61tZP5/qGgOhVNgFi
	JSxJQ3EbPOWUegDFJGYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQQiN-004jUz-8x; Tue, 23 Aug 2022 10:00:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQQiA-004jLO-KY; Tue, 23 Aug 2022 10:00:44 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oQQi4-0003tG-BS; Tue, 23 Aug 2022 12:00:36 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: =?ISO-8859-1?Q?Jo=E3o_H=2E?= Spies <jhlspies@gmail.com>, Linus Walleij <linus.walleij@linaro.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Jianqun Xu <jay.xu@rock-chips.com>, Maya Matuszczyk <maccraft123mc@gmail.com>, linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] pinctrl: rockchip: Enhance support for IRQ_TYPE_EDGE_BOTH
Date: Tue, 23 Aug 2022 12:00:34 +0200
Message-ID: <4242490.iIbC2pHGDl@diego>
In-Reply-To: <CACRpkda6VoNjJfKY3+oCvdB+V6O_4cumKpjVSdBb9e8mEmHF6g@mail.gmail.com>
References: <20220808025121.110223-1-jhlspies@gmail.com> <CACRpkda6VoNjJfKY3+oCvdB+V6O_4cumKpjVSdBb9e8mEmHF6g@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_030042_694778_DE73EE27 
X-CRM114-Status: GOOD (  15.42  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 22. August 2022, 11:03:08 CEST schrieb Linus Walleij:
> On Mon, Aug 8, 2022 at 4:53 AM Jo=E3o H. Spies <jhlspies@gmail.com> wrote:
> =

> > Switching between falling/rising edges for IRQ_TYPE_EDGE_BOTH on pins t=
hat
> > require debounce can cause the device to lose events due to a desync
> > between pin state and irq type.
> >
> > This problem is resolved by switching between IRQ_TYPE_LEVEL_LOW and
> > IRQ_TYPE_LEVEL_HIGH instead.
> >
> > Fixes: 936ee26 ("gpio/rockchip: add driver for rockchip gpio")
> > Signed-off-by: Jo=E3o H. Spies <jhlspies@gmail.com>
> =

> No reaction from maintainers so I'm just gonna assume this fix is
> correct and applied for fixes.

This plays with behavioral peculiarities of the gpio controller
(using the level setting to hopefully prevent missing edge irqs),
so doesn't follow

So I guess it really is more of a wait-and-see. And I guess as Jo=E3o
seems to have experienced that issue, that will hopefully work
for others too.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
