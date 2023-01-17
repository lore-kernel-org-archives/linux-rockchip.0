Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FBDAC54E76
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 17:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fT3kvVtmWUoV8jzaLT/flZ4IxSuqtK5txH5vnFtLRRE=; b=Zbs5Di/XtbfCQR
	xQEHnEUa6lsWEj3yymEt7G5GS8RqC5tc88R/IG7nWuZC56zW054WWf2bWJ+KjAIjLT94+pyIL1FGV
	7+SiQhMuYa1w7nbJJhBWAHvAmFuCweMmRL0pZ++daohYjhyGXKw8Z0q26WkPivMFmu39211dvgtp+
	tS/5aWmv9HjgtQ4+9cBOl08LOUIjvE0t6DEndi5il6jETQ4gLuRltYuedg5AGhpJBxeunzb/kvCoZ
	9OE82/sswD3mv/AloTVqe0Mg6+x+ts9tyKivbHMPiexEVwmTPKw8zSeFp0xdJF4/QLhJRb+FYAzIv
	cw0TyAFv2xY/xdKmtTGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHpkm-00FGJN-96; Tue, 17 Jan 2023 17:28:08 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHpkj-00FGI5-Be
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 17:28:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=metanate.com; s=stronger; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-ID:Content-Description;
	bh=FUQAy2s7dHxTxQIflnaMFOQzA6Y9z8buboU3GpqDujg=; b=qZfgnA0ENHbBEG4FNnkxu8a8uW
	2rBzymK3M5lnvJMGEx+3njrCMGGzIUUjlgQq8mCQ89BGuhGNCcslj4LOaTEcn9d8xBaamVrZVYQWp
	xOh6GO7lOXPEu5H2Qzw2YIpGBDhoq3xmlDOBIcD8X10MT4qB6iFp8Lei/aIgzvkZIX8NnXFbJQGJf
	KuQ9ztCMiHiGnBaORCTtagiM3WcJ9/+IHXGrJgYR7ZyvjR9uEwjusI0PBZT1Kgj+67n9XtJZIBoEN
	/lRYpIjtzMIJ6P2k856KGspiShPv6bUI3liqxUOORH1UdkBvN5Cqd4RzXKSaSeqv+4ZzzCeOOvVpz
	5WWz0gAA==;
Received: from [81.174.171.191] (helo=donbot)
	by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <john@metanate.com>)
	id 1pHpkX-0001C1-Ok;
	Tue, 17 Jan 2023 17:27:53 +0000
Date: Tue, 17 Jan 2023 17:27:52 +0000
From: John Keeping <john@metanate.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Johan Jonker <jbx6244@gmail.com>, kever.yang@rock-chips.com,
	sjg@chromium.org, philipp.tomsich@vrull.eu, u-boot@lists.denx.de,
	Heiko Stuebner <heiko@sntech.de>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH v1] arm: dts: rockchip: sync rk3066/rk3188 DT files from
 linux-next v6.2-rc4
Message-ID: <Y8bamLo1CTsAKJ8v@donbot>
References: <48680512-0312-6342-ba0a-f2411463099a@gmail.com>
 <31883268-dedf-6e3c-8647-0b7955c1ff16@theobroma-systems.com>
 <a5943bfb-8d7b-6ed4-bbb4-0f018b921564@gmail.com>
 <Y8a8ywAzHaUQbQca@donbot>
 <eada6801-bb15-0b0b-500a-cae55f0f29e8@theobroma-systems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eada6801-bb15-0b0b-500a-cae55f0f29e8@theobroma-systems.com>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_092805_418178_9B14DD7D 
X-CRM114-Status: GOOD (  30.90  )
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

Hi Quentin,

On Tue, Jan 17, 2023 at 04:58:54PM +0100, Quentin Schulz wrote:
> On 1/17/23 16:20, John Keeping wrote:
> > Hi Johan,
> > =

> > On Tue, Jan 17, 2023 at 03:44:07PM +0100, Johan Jonker wrote:
> > > On 1/17/23 10:46, Quentin Schulz wrote:
> > > > On 1/16/23 20:45, Johan Jonker wrote:
> > > > > Sync rk3066/rk3188 DT files from Linux.
> > > > > This is the state as of linux-next v6.2-rc4.
> > > > > New nfc node for MK808 rk3066a.
> > > > > CRU nodes now have a clock property.
> > > > > To prefend dtoc errors a fixed clock must also be
> > > > > included for tpl/spl in the rk3xxx-u-boot.dtsi file.
> > > > > =

> > > > > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > > > > ---
> > > =

> > > [..]
> > > =

> > > > > @@ -223,7 +224,7 @@
> > > > >  =A0=A0=A0=A0=A0=A0=A0=A0=A0 #size-cells =3D <1>;
> > > > >  =A0=A0=A0=A0=A0=A0=A0=A0=A0 ranges;
> > > > > =

> > > > > -=A0=A0=A0=A0=A0=A0=A0 gpio0: gpio0@2000a000 {
> > > > > +=A0=A0=A0=A0=A0=A0=A0 gpio0: gpio@2000a000 {
> > > > >  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 compatible =3D "rockchip=
,rk3188-gpio-bank0";
> > > > >  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg =3D <0x2000a000 0x10=
0>;
> > > > >  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 interrupts =3D <GIC_SPI =
54 IRQ_TYPE_LEVEL_HIGH>;
> > > > > @@ -236,7 +237,7 @@
> > > > >  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #interrupt-cells =3D <2>;
> > > > >  =A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> > > > > =

> > > > > -=A0=A0=A0=A0=A0=A0=A0 gpio1: gpio1@2003c000 {
> > > =

> > > > > +=A0=A0=A0=A0=A0=A0=A0 gpio1: gpio@2003c000 {
> > > =

> > > Hi,
> > > =

> > > LOL: I made that binding change on request from Linux DT maintainers.
> > > Node names should generic.
> > > =

> > > =3D=3D=3D
> > > =

> > > My full u-boot is able to boot a Linux kernel for rk3066a.
> > > Only when I give the command below it crashes:
> > > =

> > > gpio status -a
> > > =

> > > Could you confirm what other parts are effected?
> > > =

> > > If it's boots then it's good enough for me and move forward, so pleas=
e merge.(Kever)
> > > =

> > > Driver fixes for u-boot depending on Linux DT changes is already very=
 time consuming enough!
> > =

> > This reminded me of a patch that I never followed up with:
> > =

> > 	https://urldefense.com/v3/__https://lore.kernel.org/u-boot/20220726162=
509.1304234-1-john@metanate.com/__;!!OOPJP91ZZw!lmqsst1SAzm_NO-LfRooukeMJOc=
5jP-Tqsm_DdWmyjnQc2VsP0D4TWJakw0qh5K-ENTe96HCtGp-MjKZtVrDM4Y8Tlg$
> > =

> > Can you test if that fixes `gpio status -a` for you?
> > =

> =

> That's not enough I believe. You need CONFIG_DM_SEQ_ALIAS enabled, which
> isn't a given and we shouldn't rely on it. Also, there are currently no
> aliases for gpio controllers. And we shouldn't rely on u-boot.dtsi for
> those, because upstream might decide to have an alias gpio2 for gpio0 for=
 a
> board.

If the aliases are set up in a non-standard way, then I think changing
the name here may be the right thing to do.

Any GPIOs referenced in the device tree will be by handle so the name is
irrelevant.  GPIO names are only used by board code or by the `gpio`
command, both of which are tightly tied to the device tree anyway.

If a stable name for a GPIO is needed, then the gpio-line-names DT
property exists and is supported by Linux.  The names here are purely a
U-Boot construction and effectively part of a "userspace" interface.

Just using dev_seq() unconditionally as Simon suggested in response to
my patch seems like the right answer (and then there is no dependency on
CONFIG_DM_SEQ_ALIAS although boards can require it and use aliases if
necessary).


John

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
