Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9812EC54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 15:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=17Aehmb5y3t9BH4328+gSDC2QRqOEQ1JD4ndx4JrrCk=; b=LJISb/MgNVj5nA
	W1NOmgSDr10ZsDO8txs246Y8eqj1wKpxd4Ull2kDOpxpdbFfITdrycvFoz7vqhs3KhWtHjcWDpPhm
	Z4ms2qoLQYR193l4ofN4o1EyJYFKmBMVl9zi/9nToW5HMYgHN5gaZrSX4a+oSsy+2Ou6Cxl7Y7oVo
	kLIY5cEX4xnB0Lnk6NZeJdqO6cHV2OaOOcY4w4/YxmoiHnrwfQgacZxZlHcKGRiz1e2v29/b1rvY2
	R+bPKJFdqUKkGc++jk3WkVGbE8zISxdJ9856IwfO5zfaKb6YkXM2o6JFwEw+mhDS/0eI4CSDtA6vi
	06/quFftlbpwRRrZyPew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGEH-007Upp-3n; Tue, 10 Jan 2023 15:07:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGEE-007Uo4-F2
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 15:07:55 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFGE8-0005Pf-AS; Tue, 10 Jan 2023 16:07:48 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jagan Teki <jagan@edgeble.ai>, Sebastian Reichel <sebastian.reichel@collabora.com>, Christopher Obbard <chris.obbard@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@collabora.com, Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCHv8 7/7] arm64: dts: rockchip: Add rock-5b board
Date: Tue, 10 Jan 2023 16:07:46 +0100
Message-ID: <37476486.XM6RcZxFsP@diego>
In-Reply-To: <996e39448350d4f6318f7ff59c6a2ca249fb30a7.camel@collabora.com>
References: <20230109155801.51642-1-sebastian.reichel@collabora.com> <CA+VMnFxb1P4tP5sef5ME3jCcCq2Y3rD-0bpv1B0TsUZ3RXXuqg@mail.gmail.com> <996e39448350d4f6318f7ff59c6a2ca249fb30a7.camel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_070754_534102_ED9BF28C 
X-CRM114-Status: GOOD (  28.62  )
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

Am Dienstag, 10. Januar 2023, 15:50:17 CET schrieb Christopher Obbard:
> On Tue, 2023-01-10 at 19:30 +0530, Jagan Teki wrote:
> > On Mon, 9 Jan 2023 at 21:28, Sebastian Reichel
> > <sebastian.reichel@collabora.com> wrote:
> > > 
> > > From: Christopher Obbard <chris.obbard@collabora.com>
> > > 
> > > Add board file for the RK3588 Rock 5B board. This is a basic
> > > implementation which just brings up the eMMC and UART which is
> > > enough to successfully boot Linux.
> > > 
> > > The ethernet controller is connected via PCIe so support will
> > > come in a follow-up patch.
> > > 
> > > Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
> > > Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>
> > > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
> > >  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 44
> > > +++++++++++++++++++
> > >  2 files changed, 45 insertions(+)
> > >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > > 
> > > diff --git a/arch/arm64/boot/dts/rockchip/Makefile
> > > b/arch/arm64/boot/dts/rockchip/Makefile
> > > index 87a853435142..c5bdd0176ce0 100644
> > > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > > @@ -83,4 +83,5 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-
> > > v10.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
> > > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > > b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > > new file mode 100644
> > > index 000000000000..d2f1e963ce06
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > > @@ -0,0 +1,44 @@
> > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > +
> > > +/dts-v1/;
> > > +
> > > +#include "rk3588.dtsi"
> > > +
> > > +/ {
> > > +       model = "Radxa ROCK 5 Model B";
> > > +       compatible = "radxa,rock-5b", "rockchip,rk3588";
> > > +
> > > +       aliases {
> > > +               mmc1 = &sdhci;
> > 
> > I think sdhci - emmc has to be mmc0 due to boot priority.
> 
> Hi Jagan,
> 
> We kept eMMC as mmc1 for both ROCK 5 Model A and B to keep
> compatibility with vendor kernel:
> https://github.com/radxa/kernel/blob/stable-5.10-rock5/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts#L31
> 
> But I am happy to change the alias to mmc0, @Sebastian what do you
> think?

In any case, if you decide to swap things around, please just send a follow
up patch, as I just applied this series :-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
