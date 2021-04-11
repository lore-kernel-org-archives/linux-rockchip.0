Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04444C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 07:55:38 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 37B2D61007
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 07:55:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 37B2D61007
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oINugfuL2AZ5R2BJOvxTlwyp+U21x4RlUdmYOVUilaY=; b=VdsG0JCPD445k20YY2SegbpeP
	JBAbrAzrlbc2NdAN96x2+1wU9ugBgEAAnFo67itBgBN05uGkIBb/+1XrKTS1pfzX9+/fiMHpMROIu
	lNHeViJgxgIXd/Q42qUbO1u7h15gk5jMJq9lfEvIlre18tR4CX/hCdxP3dO0fw6WxqI61CW4wOrmJ
	k1BA1qSa5FeWf7puQ7Y9glw7wxfYIbivzbjJ6VftONGIwKJKwbSQ6wv6tvPoKUOTV+ZOBRuKtWnJp
	CuVJ7+xwEZmDNJxjccAEFBHui4eE8/3CV5Z/30ld+IBPcIIGQihD4dbsxNGZj6WID0cW6op+SMQlZ
	hxk+csLZQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVUwJ-0048dT-J9; Sun, 11 Apr 2021 07:55:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVUwH-0048dN-CX
 for linux-rockchip@desiato.infradead.org; Sun, 11 Apr 2021 07:55:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=ti5daQUL+c+2p6A3XcbxWsY9ZXv7wDQr7CBYtYa8QbE=; b=zTWtdU2yatrv+DcsUoH2LdegHb
 IYYhKRm3spNWAt3T4nArhzHB3eI0vEDA15+/y1444Z20f/UYjXhVnUZTHWvsXG0e1H59g/rhkWkP7
 UtDajbtTKMAKvMhcuV6eGm5I1dakmXLu7vlWbZV+JGt8fz3662thg8g6A3Ns4UxQV3qzOx8TGoLNd
 eU+d6AsjjoPL89Y7mZl67i2oL0p7ypr3ZfZKT68oZ6FV4N8tzIkWmW5/s6ax+cfuFvw/KxCsfZQB5
 Rutj8H0fcnIkXuZgAszAAUs2aPyJnG18PO1OSD6j+dLNSWGV2lOrCTetp1o4jSe+VRVjoovBsLWwr
 tv0w0l5w==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVUwE-005P6c-O4
 for linux-rockchip@lists.infradead.org; Sun, 11 Apr 2021 07:55:24 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lVUw3-0003jc-Rs; Sun, 11 Apr 2021 09:55:11 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, Peter Geis <pgwipeout@gmail.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Jianqun Xu <jay.xu@rock-chips.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v4] pinctrl: rockchip: add support for rk3568
Date: Sun, 11 Apr 2021 09:55:11 +0200
Message-ID: <6488150.4vTCxPXJkl@diego>
In-Reply-To: <CAMdYzYp80DdEp8LM7YkEUqmu-7WwhyTvFU4QAfGu9uimsE6rYg@mail.gmail.com>
References: <20210304013342.1106361-1-jay.xu@rock-chips.com>
 <CACRpkdZeZuHe9kFywrdQxcNMfAcBCJVAhJjfyD6ahLinT0hvmg@mail.gmail.com>
 <CAMdYzYp80DdEp8LM7YkEUqmu-7WwhyTvFU4QAfGu9uimsE6rYg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_005522_801555_B4D3E197 
X-CRM114-Status: GOOD (  32.41  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Peter,

Am Sonntag, 11. April 2021, 05:40:05 CEST schrieb Peter Geis:
> On Sat, Apr 10, 2021 at 8:40 PM Linus Walleij <linus.walleij@linaro.org> =
wrote:
> >
> > On Sat, Apr 10, 2021 at 11:10 PM Heiko St=FCbner <heiko@sntech.de> wrot=
e:
> > > Am Samstag, 10. April 2021, 20:30:52 CEST schrieb Peter Geis:
> > > > Good Afternoon,
> > > >
> > > > I'm currently working on the rk3566 early bringup support in mainli=
ne
> > > > and encountered an issue with this patch set.
> > > > Unfortunately in the rk3568/rk3566 the gpio registers switched to t=
he
> > > > (16 bits write enable / 16 bits config) register format that other
> > > > rockchip registers use.
> > > > This differs from previous chips where all 32 bits were used for gp=
io
> > > > configuration.
> > > > The patch fails to account for this, which causes all gpios to fail=
 to function.
> > > >
> > > > For clarity, this only affects GPIO_SWPORT_DR and GPIO_SWPORT_DDR.
> > > >
> > > > I'm currently working on a patch to fix this issue, but I know that
> > > > you are planning on breaking out the gpio functions into a separate
> > > > driver and wanted to make you aware of this immediately.
> > >
> > > just pointing to Jianqun's series providing the gpio controller suppo=
rt:
> > >
> > > https://lore.kernel.org/r/20210324064704.950104-1-jay.xu@rock-chips.c=
om
> > >
> > > which introduces the necessary writemask-handling but seems to need an
> > > update, judging by Ezequiel's reply to it.
> >
> > Does this mean that if we get a speedy and nice looking respin of the
> > GPIO series we probably got this problem covered?
> >
> > The merge window is getting close but it would be nice to get this in.
> =

> Thank you for the responses!
> With a bit of effort and a quick build fix, I've successfully rebased
> the gpio patch set to the latest linux-next.
> I now have functional gpio control on the rk3566.
> I haven't tested them on older devices yet though.
> =

> With your blessing I can send in the rebased patches in the morning,
> unless Jianqun wants to handle it.

I don't know which blessing you need, but from my POV - please do that :-D
Especially as Jianqun already submitted where he wants to go with that
and you just rebased it there shouldn't be any opposing directions here.

I can give it a test on other platforms when you submit if needed.


Heiko

> =

> >
> > Yours,
> > Linus Walleij
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
