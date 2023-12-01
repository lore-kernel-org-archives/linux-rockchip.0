Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36940C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 21:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ejhRid4KkFSfpPiI+Uw535eRPUzVuXRzDEkYeEdQhc=; b=P2fsQSWxGi9WPY
	exZBYPnkFTaoEgzarolCQ2Rr7hrsrTHxk7rnfCGZQjQ/HPvfdMahsef4JxaFk+HJTWhNFQwOb+4fu
	w3L60/9VOijAfmPfGTfGOJ9lXeCo4jkLi0KCiR0m3Hmey9X3Z6QSn2KrEQInBOIQOIpZlxNZZy54Z
	mgfekRuRZ/NfNflxOrrE+6Q2AZ9MSnPAjwERAFtFRA5oIWVz1O2jq/tDR/Jnfxk9892woebXnH8Eg
	Y2yOCpYRHgYmmERjgjzqe5QQqF7MChlI/cyZLdM3asnSNwuLDFDZOf4505K1XG8LagXb/+XXFScBa
	1CWqA6DaM58o1CZX68wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9Aok-00EeB0-2l;
	Fri, 01 Dec 2023 21:12:58 +0000
Received: from mail11.truemail.it ([217.194.8.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9Aoh-00EeAY-0F;
	Fri, 01 Dec 2023 21:12:56 +0000
Received: from gaggiata.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id EEA78206C3;
	Fri,  1 Dec 2023 22:12:51 +0100 (CET)
Received: from livingston (unknown [192.168.42.11])
	by gaggiata.pivistrello.it (Postfix) with ESMTP id A8D997F9DD;
	Fri,  1 Dec 2023 22:12:51 +0100 (CET)
Received: from pivi by livingston with local (Exim 4.96)
	(envelope-from <francesco@dolcini.it>)
	id 1r9Aod-0001ot-1m;
	Fri, 01 Dec 2023 22:12:51 +0100
Date: Fri, 1 Dec 2023 22:12:51 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Francesco Dolcini <francesco@dolcini.it>,
	linux-rockchip@lists.infradead.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	quentin.schulz@theobroma-systems.com,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH] arm64: defconfig: Increase SERIAL_8250_NR_UARTS to 10
Message-ID: <ZWpMU0fA8OYmcqdq@livingston.pivistrello.it>
References: <20231201191228.343230-1-heiko@sntech.de>
 <ZWo9ecC45DZaqVJJ@livingston.pivistrello.it>
 <4075500.2IRrRt1zHL@diego>
 <3923943.BzM5BlMlMQ@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3923943.BzM5BlMlMQ@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_131255_285177_B3129C3C 
X-CRM114-Status: GOOD (  36.31  )
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

On Fri, Dec 01, 2023 at 10:03:07PM +0100, Heiko St=FCbner wrote:
> Am Freitag, 1. Dezember 2023, 21:56:27 CET schrieb Heiko St=FCbner:
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

> > Thanks Florian for catching this coincidence.
> > =

> > =

> > > Yep, thanks Florian.
> > > =

> > > Heiko: should I include your needs in my patch? It looks like these a=
re the
> > > days of the 8250 uart, I sent my patch just one day before yours.
> > =

> > yeah, I was surprised by the time overlap as well.
> > =

> > After reading up on NR_UARTS and NR_RUNTIME_UARTS I opted for going with
> > the maximum possible.
> > =

> > From what I understood, increasing the runtime-uart-number would incur
> > overhead in terms of prepared data structures. But the core NR_UARTS
> > only seems to limit the actual maximum number of uarts in the system.
> > =

> > With the somewhat recent patch named above, even those can still be
> > registered without bad effects, so I opted with increasing the NR_UARTS
> > to the maximum to expect at some point, least the next board then needs
> > yet another patch.
> > But left the runtime number alone to not create overhead.
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

> and looking at other rk3588 boards the indiedroid-nova actually
> uses the uart9 (aka the 10th uart) ;-)

I think this is not relevant. It uses only 2 uart in total, it should just
works with the actual config.

Francesco


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
