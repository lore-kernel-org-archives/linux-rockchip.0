Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1F63C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 10:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfss5fd1eTGzyXIVf/T7trFxxmfYRkUqXGuBlMyW2Dc=; b=VKLR/22Lg4jyJ8
	II7gwO2eF8Ak7doqHSq4VF2qTQ2OreAeWZSrTftt/o8KwtP4vhXRU3oqjyhYSyHVQKasrFzlMFKW0
	AkDhqxuw5bGvwjEkXqFGbzdK0v/USBFHT0kzSs8Bu5q8FQsfQuBB1oJ7kF1SQDtIW6DCCRbw7Xm4/
	zourm+PoUM+gcNV0vpFVVpkjwOlxIIc+/8DI4E78EQuIqJJZAWwLrlDcuwxx/1fGLo+RPoBGxSFDo
	bxHOqBF5kJlfWGOVKoMIuBSmYkc8AoFgSeHYRGpkatXlLv/0gk9zklfPdRni4Efh+XavmUOPqzwcn
	bmgg/dPp5ICm9P2qHBxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nD1pG-00F6m9-LX; Thu, 27 Jan 2022 10:16:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nD1oZ-00F6PI-KH; Thu, 27 Jan 2022 10:15:42 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nD1oC-0007hK-D1; Thu, 27 Jan 2022 11:15:16 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add Quartz64-A sdmmc1 node
Date: Thu, 27 Jan 2022 11:15:13 +0100
Message-ID: <3859424.JUeRptVaKW@diego>
In-Reply-To: <CAMdYzYrKq==Bs0aonrJBC+W2c4nQ8cUn2dn_Se4WDaRCkT6SYg@mail.gmail.com>
References: <20220127010023.3169415-1-pgwipeout@gmail.com>
 <07281029-0efd-0a74-0d96-92e3dcf5bbb7@gmail.com>
 <CAMdYzYrKq==Bs0aonrJBC+W2c4nQ8cUn2dn_Se4WDaRCkT6SYg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_021539_727387_4E1C761B 
X-CRM114-Status: GOOD (  22.90  )
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

Am Donnerstag, 27. Januar 2022, 10:55:13 CET schrieb Peter Geis:
> On Thu, Jan 27, 2022 at 1:18 AM Johan Jonker <jbx6244@gmail.com> wrote:
> >
> >
> >
> > On 1/27/22 02:00, Peter Geis wrote:
> > > The sdmmc1 node on Quartz64-A supports the optional wifi module from
> > > Pine64.
> > > Add the sdmmc1 node and requisite sdio_pwrseq to enable wifi support on
> > > the Quartz64-A.
> > >
> > > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > > ---
> > >  .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 45 +++++++++++++++++++
> > >  1 file changed, 45 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > > index 33c2c18caaa9..1d73ac6557c5 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > > @@ -91,6 +91,18 @@ simple-audio-card,codec {
> > >               };
> > >       };
> > >
> > > +     sdio_pwrseq: sdio-pwrseq {
> >
> > > +             status = "okay";
> >
> > When a node is not previously disabled, then there's no need for "okay".
> 
> Thanks, this is here in case an end user wants to easily hack the
> board to use this for other purposes.

but please drop it here as well.

A user "hacking" a devicetree should be able to also just _add_
a status "disabled" :-) .



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
