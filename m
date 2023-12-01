Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DAD9C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 20:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8lmB4aUGZU4y4kDKx8CJNBKNwV1VhY6kRN5As9y1FNA=; b=k0FF3hIMOJWKqO
	vSjjqPRWhlwDiFAaJ+6oH/WLf2MpkjcLa8TJUlQQq49pohxkttiWHb7OF5sGmgXUr3wEltV2lQcsU
	jctyWbGrNb3kyOX/CAZ2lOTDQxVk3q1WXzvNX4llOwnKpnzCMDXT+p9brK0j7xQs3nGDc2LRkUvVy
	VEWRhejT9IJ8Mhj/biJC7OrmABH5M6F/gLIwR7Gz7PXpxVGuA2sYMAv+YIAMePYHqaGSjM0tVZawR
	DdOsmvlN5YF+3EMW6EYiG43mX7AoSTDThLfVcV0nzYcB32dXfG760Z8tmysCQ+o1LoHsRLNEjCtBF
	99Alabe+jpykp32JwQHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9AYt-00EdLU-3A;
	Fri, 01 Dec 2023 20:56:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9AYq-00EdKn-30;
	Fri, 01 Dec 2023 20:56:34 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r9AYm-0002zg-6h; Fri, 01 Dec 2023 21:56:28 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Francesco Dolcini <francesco@dolcini.it>
Cc: linux-rockchip@lists.infradead.org,
 Francesco Dolcini <francesco.dolcini@toradex.com>,
 linux-arm-kernel@lists.infradead.org, quentin.schulz@theobroma-systems.com,
 Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH] arm64: defconfig: Increase SERIAL_8250_NR_UARTS to 10
Date: Fri, 01 Dec 2023 21:56:27 +0100
Message-ID: <4075500.2IRrRt1zHL@diego>
In-Reply-To: <ZWo9ecC45DZaqVJJ@livingston.pivistrello.it>
References: <20231201191228.343230-1-heiko@sntech.de>
 <bf5c7806-7405-4728-bb10-7913368f62a0@gmail.com>
 <ZWo9ecC45DZaqVJJ@livingston.pivistrello.it>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_125632_973013_706E5546 
X-CRM114-Status: GOOD (  28.27  )
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

Hi,

Am Freitag, 1. Dezember 2023, 21:09:29 CET schrieb Francesco Dolcini:
> On Fri, Dec 01, 2023 at 11:57:53AM -0800, Florian Fainelli wrote:
> > +Francesco,
> > 
> > On 12/1/23 11:12, Heiko Stuebner wrote:
> > > From: Heiko Stuebner <heiko.stuebner@cherry.de>
> > > 
> > > Boards using socs like the rk3588 can use up to 10 uarts, so the default
> > > of 4 is way too low. Therefore increase the maximum number to 10.
> Do you have an actual need of 10, e.g. an existing board with 10 uarts
> enabled supported by the mainline kernel? Just thinking at the last arm64 SoC I
> am working with it should be 12 if we use this as a metric.

The rk3588 can do 10 (0-9), the board I'm working on is using up to uart7 (aka 8 uarts).
Reasoning below in the 3rd paragraph.


> > > SERIAL_8250_RUNTIME_UARTS on the other hand describes the number of uart
> > > data structures to prepare before registering them. This option can stay
> > > at its default value of 4 since for one it can be changed via a boot
> > > parameter 8250.nr_uarts but also since
> > > commit 9d86719f8769 ("serial: 8250: Allow using ports higher than SERIAL_8250_RUNTIME_UARTS")
> > > 
> > > the kernel can register uarts dynamically that are above the
> > > SERIAL_8250_RUNTIME_UARTS threshold.
> > > 
> > > Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> > 
> > There is a competing patch set from Francesco being submitted as well:
> > https://lore.kernel.org/all/20231201171544.1901-1-francesco@dolcini.it/
> >
> > looks like some coordination is necessary.

Thanks Florian for catching this coincidence.


> Yep, thanks Florian.
> 
> Heiko: should I include your needs in my patch? It looks like these are the
> days of the 8250 uart, I sent my patch just one day before yours.

yeah, I was surprised by the time overlap as well.

After reading up on NR_UARTS and NR_RUNTIME_UARTS I opted for going with
the maximum possible.

From what I understood, increasing the runtime-uart-number would incur
overhead in terms of prepared data structures. But the core NR_UARTS
only seems to limit the actual maximum number of uarts in the system.

With the somewhat recent patch named above, even those can still be
registered without bad effects, so I opted with increasing the NR_UARTS
to the maximum to expect at some point, least the next board then needs
yet another patch.
But left the runtime number alone to not create overhead.


So TL;DR:
I could live with the 8 from your original patch, but I guess would prefer
going with a safer value, so the 10 or your 12 from above.

Because I guess if a controller is present, someone will use it
eventually ;-).


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
