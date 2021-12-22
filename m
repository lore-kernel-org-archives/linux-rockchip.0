Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56489C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 19:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfODp8UYMSjDlnst4P7NR5Nu1IPvkYlB6e6isKM71wM=; b=R53ryMzKsfW+ts
	ucJYALoZ9+zibGtzUwbI0XpuLOMX4kkKi3PffRCqKn27UCRk53iTG2SKYwv5offSOEhTnYzyY2y8Z
	YuYZK+GodYCQisHbNdwZLyOuPrHfxXiC25acgmyl1fQA+HVW98WZ8tYlmhJXLv7wh2stRGxnEUCBy
	1KnCiU3bLsT1G6zJTNXryYIVShPyDqtQ5clhp+fEBZPVDlo8jO6IOud/z+FQPUvtgB0oQw2Wsm8Ug
	AdDwh9w7w+MG7a6D23eLHYDk7qyNBjixL33Bg9YazaryjbbJ6OuMcHdQGnmCRl1JjYy88uC5HUyrU
	tbqcesA29nj3AUB1nxXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n07TH-00BFup-ME; Wed, 22 Dec 2021 19:40:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n07T6-00BFsq-59; Wed, 22 Dec 2021 19:40:09 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1n07Sx-00053n-LH; Wed, 22 Dec 2021 20:39:59 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 08/22] dt-bindings: display: rockchip: dw-hdmi: use "ref"
 as clock name
Date: Wed, 22 Dec 2021 20:39:58 +0100
Message-ID: <8156864.jFcTpQmkuZ@diego>
In-Reply-To: <CAL_Jsq+jhaE7DWNu1=n9JX+oNp8XRW7mNi--8moDU6RYNyBgBw@mail.gmail.com>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <20211222104736.GZ6003@pengutronix.de>
 <CAL_Jsq+jhaE7DWNu1=n9JX+oNp8XRW7mNi--8moDU6RYNyBgBw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_114008_257824_45B96D6E 
X-CRM114-Status: GOOD (  24.22  )
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

Am Mittwoch, 22. Dezember 2021, 14:52:51 CET schrieb Rob Herring:
> On Wed, Dec 22, 2021 at 6:47 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > On Tue, Dec 21, 2021 at 10:31:23AM -0400, Rob Herring wrote:
> > > On Mon, Dec 20, 2021 at 12:06:16PM +0100, Sascha Hauer wrote:
> > > > "vpll" is a misnomer. A clock input to a device should be named after
> > > > the usage in the device, not after the clock that drives it. On the
> > > > rk3568 the same clock is driven by the HPLL.
> > > > To fix that, this patch renames the vpll clock to ref clock.
> > >
> > > The problem with this series is it breaks an old kernel with new dt. You
> > > can partially mitigate that with stable kernel backport, but IMO keeping
> > > the old name is not a burden to maintain.
> >
> > As suggested I only removed vpll from the binding document, but not from
> > the code. The code still handles the old binding as well.
> 
> The problem is updating rk3399.dtsi. That change won't work with old
> kernels because they won't look for 'ref'. Since you shouldn't change
> it, the binding needs to cover both the old and new cases.

is "newer dt with old kernel" really a case these days?

I do understand the new kernel old dt case - for example with the
dtb being provided by firmware.

But which user would get the idea of updating only the devicetree
while staying with an older kernel?




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
