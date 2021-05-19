Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CE53C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 13:12:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0C08E60FF1
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 13:12:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0C08E60FF1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C0QISRnapmMlWIvS7jbAkFs3ni3xis5b21Dfmm3RIZM=; b=lNSEs8CT2RgW7fvV6bjj/db1W
	atmEDKJqOvik42Oyjy4dB/NBNJLeNjOH8246Wo2a5P6JDtNdSy9xoCiEnJv8GzwBu5J3UueDmr5YF
	/Wrh4vY2JgoFrlUl9tc0E7DyFHEIer8G49K/Vupqm0aSiIzEFBmPwFD1NxFJAW9RCPir4rYhyYU5V
	UbQc0OiIVfNkhoXQE2twyFLZCrxQotmwF/S/x+2u0UrGAylEdI+FXpVfWJpwrZBvu6Ta3l0Kz9hvL
	yXpi7L251r4Be2K1LDYN4nS7l+XbQoMchyfszS1e1Id6ME4XLwmA4hO5L1S9xdbCKDixmrOBf1sMj
	ZWBnJDfig==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljLzx-0044A7-2V; Wed, 19 May 2021 13:12:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljLkP-003zDe-Tg
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 12:56:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=iPJX7n32ZqUihk3cs9bEttHAe7eWM5NFJjTzqpkn35A=; b=r/ghxOnEz72/SJZFpI1hbuqIHX
 AwOgmIVOClOJHif9CR0ME0B5KSNgGkpOuQ1p2mez15RulatMBm8aK0rhIi2ysuxgE5E+uxxJyjF2w
 8U1yPUv0LLmX+vNJXHvV/ZfkVELDH8GcCvTxOu6Dre80PQqmCls4wOmJGLkBtbGyU30Hw6wQmvLUo
 zN/EkHZnONPOwen+OYymbyXujGdCzLONopBw6e7kHeiW5KGE2sQ/ARjQ3hIct+wz6zsPkSSlN3fmt
 0ueeIB1hK9AC0zXO0bPiD1C1JnG3lq+96YnUOhECWRptolhTOkmrrxpfMGssh1l6I+sndlbz0Hfs0
 nfMzqs8w==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljLkN-00FTaU-2C
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 12:56:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C0EAA6124C;
 Wed, 19 May 2021 12:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621428982;
 bh=uHLg5icCC3xpZyJI1+jRahgAtowPa/rbAim0BxR6NR8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pCNyEIxV9y1+0VGujexB6B/CDIPzVD7OZ2RN9jpzcgqUbSqVs+425K63NnxyeOLiW
 qroY126NCh4zhx0dBonpOioJ4PUpLAtkTx/MuCYzEE/vgSK+FJLumLjCbLsAK3ngtb
 krIDkJgejF5SVLTmDqZGp85NLbINqcabNg4YyxjCS6IA5KodCRWo4m6J2rEOQBvdfy
 COwpEt0BJLSbTDVM2q+BcT5CYUkCnt1q7+H61v5J+0+4RQCLvUX6VapzcjN7y9XWsF
 zBSYjeg+0RX8+U8hfz8qVTrO8CC0BOTlux96NksmCBL5/jBLEhSaWz94k1TLcs+2l6
 gYaUSm3zE1CiA==
Date: Wed, 19 May 2021 15:56:18 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] net: phy: add driver for Motorcomm yt8511 phy
Message-ID: <YKUK8hBImIUFV35I@unreal>
References: <20210511214605.2937099-1-pgwipeout@gmail.com>
 <YKOB7y/9IptUvo4k@unreal>
 <CAMdYzYrV0T9H1soxSVpQv=jLCR9k9tuJddo1Kw-c3O5GJvg92A@mail.gmail.com>
 <YKTJwscaV1WaK98z@unreal>
 <cbfecaf2-2991-c79e-ba80-c805d119ac2f@gmail.com>
 <YKT7bLjzucl/QEo2@unreal>
 <CAMdYzYpVYuNuYgZp-sNj4QFbgHH+SoFpffbdCNJST2_KZEhSug@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYpVYuNuYgZp-sNj4QFbgHH+SoFpffbdCNJST2_KZEhSug@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_055623_167915_C5D29348 
X-CRM114-Status: GOOD (  34.55  )
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

On Wed, May 19, 2021 at 08:45:21AM -0400, Peter Geis wrote:
> On Wed, May 19, 2021 at 7:50 AM Leon Romanovsky <leon@kernel.org> wrote:
> >
> > On Wed, May 19, 2021 at 12:37:43PM +0200, Heiner Kallweit wrote:
> > > On 19.05.2021 10:18, Leon Romanovsky wrote:
> > > > On Tue, May 18, 2021 at 08:20:03PM -0400, Peter Geis wrote:
> > > >> On Tue, May 18, 2021 at 4:59 AM Leon Romanovsky <leon@kernel.org> =
wrote:
> > > >>>
> > > >>> On Tue, May 11, 2021 at 05:46:06PM -0400, Peter Geis wrote:
> > > >>>> Add a driver for the Motorcomm yt8511 phy that will be used in t=
he
> > > >>>> production Pine64 rk3566-quartz64 development board.
> > > >>>> It supports gigabit transfer speeds, rgmii, and 125mhz clk outpu=
t.
> > > >>>>
> > > >>>> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > > >>>> ---
> > > >>>>  MAINTAINERS                 |  6 +++
> > > >>>>  drivers/net/phy/Kconfig     |  6 +++
> > > >>>>  drivers/net/phy/Makefile    |  1 +
> > > >>>>  drivers/net/phy/motorcomm.c | 85 ++++++++++++++++++++++++++++++=
+++++++
> > > >>>>  4 files changed, 98 insertions(+)
> > > >>>>  create mode 100644 drivers/net/phy/motorcomm.c
> > > >>>
> > > >>> <...>
> > > >>>
> > > >>>> +static const struct mdio_device_id __maybe_unused motorcomm_tbl=
[] =3D {
> > > >>>> +     { PHY_ID_MATCH_EXACT(PHY_ID_YT8511) },
> > > >>>> +     { /* sentinal */ }
> > > >>>> +}
> > > >>>
> > > >>> Why is this "__maybe_unused"? This *.c file doesn't have any comp=
ilation option
> > > >>> to compile part of it.
> > > >>>
> > > >>> The "__maybe_unused" is not needed in this case.
> > > >>
> > > >> I was simply following convention, for example the realtek.c,
> > > >> micrel.c, and smsc.c drivers all have this as well.
> > > >
> > > > Maybe they have a reason, but this specific driver doesn't have suc=
h.
> > > >
> > >
> > > It's used like this:
> > > MODULE_DEVICE_TABLE(mdio, <mdio_device_id_tbl>);
> > >
> > > And MODULE_DEVICE_TABLE is a no-op if MODULE isn't defined:
> > >
> > > #ifdef MODULE
> > > /* Creates an alias so file2alias.c can find device table. */
> > > #define MODULE_DEVICE_TABLE(type, name)                              =
         \
> > > extern typeof(name) __mod_##type##__##name##_device_table            =
 \
> > >   __attribute__ ((unused, alias(__stringify(name))))
> > > #else  /* !MODULE */
> > > #define MODULE_DEVICE_TABLE(type, name)
> > > #endif
> > >
> > > In this case the table is unused.
> >
> > Do you see compilation warning for such scenario?
> =

> The issue you are describing has been fixed since 2010:
> =

> commit cf93c94581bab447a5634c6d737c1cf38c080261
> Author: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Date:   Sun Oct 3 23:43:32 2010 +0000
> =

>     net/phy: fix many "defined but unused" warnings
> =

>     MODULE_DEVICE_TABLE only expands to something if it's compiled
>     for a module.  So when building-in support for the phys, the
>     mdio_device_id tables are unused.  Marking them with __maybe_unused
>     fixes the following warnings:
> =

> There is a strong push to fix all warnings during build, including W=3D1 =
warnings.
> For fun I rebuilt without module support and confirmed that removing
> this does trigger a W=3D1 warning.

I'm sorry that I continue to ask, but is net/phy/* usable without MODULE?
If not, the better fix is to require it in Kconfig instead of fixing all dr=
ivers.

Thanks for your answers.

> =

> >
> > Thanks
> >
> > >
> > > > Thanks
> > > >
> > > >>
> > > >>>
> > > >>> Thanks
> > >
> > >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
