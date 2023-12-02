Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9E32C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 12:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TcaTV75S4tD/5ZwP3Ud9DEuH3uuZqyxDxTnvmpLxPXo=; b=fcifdomRVOJGYL
	ffMqrdu/4Rs6VgYXh/eNep+FHMkfnVqGGKL5+kEm7H1kz9WPUzC3jkSjsAOEEQ3Kgt3rRp/zQS1wn
	eBcUX7fko/EymV4yC7WTnv7U/KC4/ljVqoaMPLxBte6+HnC5M5IRP+WV/WoA/ykj9/gDoaJlfelfi
	uMFo+EGo2maMyzyQvOIIUgflFF01nvpsfDfQDkf9QXBLD5SyGEINxZpll59mGcLay0xia0vQkVhp7
	Scc7239wBSCC/0OZn0I71yJLL1iTIdOzw4xCWPVxbB8gOQo3KjMonRsZHYXAMgXkkuToD251qU3WG
	vS3nmYjrseRIlkbW5zRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9OrV-00Ff2l-1k;
	Sat, 02 Dec 2023 12:12:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9OrS-00Ff24-0b;
	Sat, 02 Dec 2023 12:12:43 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r9OrJ-0000o3-J1; Sat, 02 Dec 2023 13:12:33 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Francesco Dolcini <francesco@dolcini.it>, linux-rockchip@lists.infradead.org,
 Francesco Dolcini <francesco.dolcini@toradex.com>,
 linux-arm-kernel@lists.infradead.org, quentin.schulz@theobroma-systems.com,
 Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH] arm64: defconfig: Increase SERIAL_8250_NR_UARTS to 10
Date: Sat, 02 Dec 2023 13:12:32 +0100
Message-ID: <3898725.Zkmt1EvEu4@diego>
In-Reply-To: <ZWsaJ-3bWZbjtFiz@livingston.pivistrello.it>
References: <20231201191228.343230-1-heiko@sntech.de> <4075500.2IRrRt1zHL@diego>
 <ZWsaJ-3bWZbjtFiz@livingston.pivistrello.it>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_041242_225613_09EF6FCD 
X-CRM114-Status: GOOD (  32.65  )
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

Am Samstag, 2. Dezember 2023, 12:51:03 CET schrieb Francesco Dolcini:
> On Fri, Dec 01, 2023 at 09:56:27PM +0100, Heiko St=FCbner wrote:
> > Hi,
> > =

> > Am Freitag, 1. Dezember 2023, 21:09:29 CET schrieb Francesco Dolcini:
> > > On Fri, Dec 01, 2023 at 11:57:53AM -0800, Florian Fainelli wrote:
> > > > +Francesco,
> > > > =

> > > > On 12/1/23 11:12, Heiko Stuebner wrote:
> > > > > From: Heiko Stuebner <heiko.stuebner@cherry.de>
> > > > > =

> > > > > Boards using socs like the rk3588 can use up to 10 uarts, so the =
default
> > > > > of 4 is way too low. Therefore increase the maximum number to 10.
> > > Do you have an actual need of 10, e.g. an existing board with 10 uarts
> > > enabled supported by the mainline kernel? Just thinking at the last a=
rm64 SoC I
> > > am working with it should be 12 if we use this as a metric.
> > =

> > The rk3588 can do 10 (0-9), the board I'm working on is using up to uar=
t7 (aka 8 uarts).
> > Reasoning below in the 3rd paragraph.
> > =

> > =

> > > > > SERIAL_8250_RUNTIME_UARTS on the other hand describes the number =
of uart
> > > > > data structures to prepare before registering them. This option c=
an stay
> > > > > at its default value of 4 since for one it can be changed via a b=
oot
> > > > > parameter 8250.nr_uarts but also since
> > > > > commit 9d86719f8769 ("serial: 8250: Allow using ports higher than=
 SERIAL_8250_RUNTIME_UARTS")
> > > > > =

> > > > > the kernel can register uarts dynamically that are above the
> > > > > SERIAL_8250_RUNTIME_UARTS threshold.
> > > > > =

> > > > > Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> > > > =

> > > > There is a competing patch set from Francesco being submitted as we=
ll:
> > > > https://lore.kernel.org/all/20231201171544.1901-1-francesco@dolcini=
.it/
> > > >
> > > > looks like some coordination is necessary.
> > =

> > =

> > So TL;DR:
> > I could live with the 8 from your original patch, but I guess would pre=
fer
> > going with a safer value, so the 10 or your 12 from above.
> > =

> > Because I guess if a controller is present, someone will use it
> > eventually ;-).
> =

> There was an explicit push back on this approach from Arnd, see
> https://lore.kernel.org/all/CAK8P3a2VSBvOn1o+q1PYZaQ6LS9U4cz+DZGuDbisHkwN=
s2dAAw@mail.gmail.com/

aliases really are a matter of difficult discussions ;-)
I.e. Krzysztof's argument some days ago was

	"No, this should be per-board to match board labeling/schematics."

https://lore.kernel.org/all/813224c2-398d-4c2d-8909-1839ce63be60@linaro.org/

And on Rockchip socs everyting from soc manual, board schematics down to
the description of pin headers use the uart controller number so people will
expect uart9 to be ttyS9 on the system as well.


> I would propose that we stay with my current proposal of 8.

But ok we can go this route, simply as the current board I'm working on
only use 8, so I can leave that "fight" to someone else ;-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
