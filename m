Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4902CC3DA5D
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jul 2024 11:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLsohQ1+69wMz3hX36hS6L80EQ0ImyJxeYyk2F0KffE=; b=Pyzq1fqUhhacZM
	piKB6NueNUomn2CQFNqWXl23PwPfuxWbCr/qHWce47MlOPf7+j5sVOhQtTh2PGj3KPEkhN+HYLHds
	ppzxx5DgWCD/j942IsPztnYexS8U3eMdkac4joS6ZwgAVnr7394BkPMRGms+VzOVyPukSqaCiUEuZ
	9EiQBD8cgWjvqNZCrg4Sk12vupq+JOstikAeb789g1PcAF9MS6M/fK6PrBuCIbHBe0t0OHqVGcZ6K
	CFJy5a3nq0nNSLVcZYw7x9Fm/icGnQ0QYeDNUquSURIag2XuZ1L94nCILIuLVu6KxgGqXG3sWgdbV
	aixk/AK2UyxgquRMZIlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTJR9-00000006nN8-0fds;
	Mon, 15 Jul 2024 11:00:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTJQp-00000006nGa-23q5;
	Mon, 15 Jul 2024 10:59:49 +0000
Received: from i5e860d09.versanet.de ([94.134.13.9] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sTJQU-0006Em-K0; Mon, 15 Jul 2024 12:59:26 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>,
 Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 quentin.schulz@cherry.de, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/6] dt-bindings: clocks: add binding for generic clock-generators
Date: Mon, 15 Jul 2024 12:59:25 +0200
Message-ID: <3268030.0WQXIW03uk@diego>
In-Reply-To: <1899010.tdWV9SEqCh@steina-w>
References: <20240709123121.1452394-1-heiko@sntech.de>
 <68f6dc44a8202fd83792e58aea137632.sboyd@kernel.org>
 <1899010.tdWV9SEqCh@steina-w>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_035947_551542_7ED6B667 
X-CRM114-Status: GOOD (  24.07  )
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

Am Donnerstag, 11. Juli 2024, 07:27:40 CEST schrieb Alexander Stein:
> Am Donnerstag, 11. Juli 2024, 01:21:15 CEST schrieb Stephen Boyd:
> > Quoting Heiko St=FCbner (2024-07-10 00:45:17)
> > > Am Mittwoch, 10. Juli 2024, 09:02:34 CEST schrieb Alexander Stein:
> > > > =

> > > > So essentially only enable-gpios and vdd-supply is added in compari=
son to
> > > > fixed-clock. Does it make sense to add that to the fixed-clocks ins=
tead?
> > > > Similar to fixed-regulator.
> > > =

> > > I wasn't that sure which way to go in the first place.
> > > The deciding point was reading that line about the fixed clock not
> > > being gateable, so I opted to not touch the fixed-clock.
> > > =

> > > But you're definitly right, this _could_ live inside the fixed-clock
> > > as well, if we decide to get rid of the not-gateable thing above.
> > =

> > It's probably more complicated to combine it with the fixed-clock
> > binding after making properties required like vdd-supply. I'd just make
> > a new binding and look at combining later.
> =

> Maybe I am missing something IMHO adding optional vdd-supply and
> enable-gpios doesn't seem a big deal.
> Anyway I don't have a hard opinion here. To me fixed-clocks still
> seems very appropriate for having a controlling GPIO and power supply.
> I just would get rid of the (comment only) hint they are ungatable.

I think the main issue is that the fixed-rate code is not limited to the
actual fixed-rate clock.

The clk_fixed_rate_ops is exported and used itself in a number of
completely different clock drivers. The same is true for the
clk_register_fixed_rate function, also exported and used in even more
places throughout the kernel while implicitly using clk_fixed_rate_ops.

For just being a simple always-on fixed rate clock, the clk-fixed-rate.c is
already pretty complex and adding supply handling will entail modifying
the shared clk-ops, or defining a separate clk-ops and clk-register
function, which is what we're doing here already.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
