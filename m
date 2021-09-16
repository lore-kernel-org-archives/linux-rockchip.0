Return-Path: <SRS0=2I9J=OG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.9 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1456C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 18:45:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5CA81610A6
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 18:45:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5CA81610A6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=hotmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/xulCRGTGpiydzUqpx5BKSBWzit4tsIj8tV+lwNkRc=; b=KhMczOmvZyqwYo
	e2BAgyX0H4c/WWwLtbCSdGVYveYkYwPToooqKttmkEGcalf8O72kvFs0J4NPLd/LCjFYX2bOWVGH3
	3f3jSt5m8PR7hFJ+BXKMIZp6Td3Z7KGKLaGcOHsWbJb5Z4ORET8i+J5u00HkqQc7igdFa+ziLySXi
	zgOFZzb4773a0L8VXvrRGEvtrjMTwiinv5W+exI7LLL1ssnVdG4ffwZmrp8/AEfkyLnTeA8snLzxK
	J59PkucqZKXwdcHf2Zfk2liqRI1rDLBgeehuh2AEKRC9ZLQkEtl/1DQWMD4+gFC0YG0Uci+WuV3Cm
	y6VTCixxtVgBJsNdz7AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQwO6-00CD19-4n; Thu, 16 Sep 2021 18:45:34 +0000
Received: from mail-mw2nam12olkn2097.outbound.protection.outlook.com
 ([40.92.23.97] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQwO1-00CCzr-D6
 for linux-rockchip@lists.infradead.org; Thu, 16 Sep 2021 18:45:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cE3ZTFKbvtmU5+rts6PWL2y9vydgO2CxlisZa6DkKDE0tVwrpqB3eJSkD8Sjp90drBRUZjpQRO7BiU+QGLAxCsMMpO4S66Z/dJuNk9yWJi5OeaYh9rKrGMpCeyKTSnqVdHKQdSCaGSFGN8FJBTtsFeGNeqqA2nDu0zjE0kWQKhpuQsfZTkwNftJG9digVVAUcw1E/ACv5gCqu5+gL0TgkjkFF2qdJYdmLYxYOiU8CTebZd52BI4Mt2NcNQOYzN4RR5INYT0JPZNALx0NLnR9bMaRAsBVZN0GUvtK5ndHaADAlgykbWh1PIVdSJ2GHC6zCLQQncuay9YHtYp34h3KbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=Ob71cYrmJVFDSdYAeCu1Y6n3ATv49Wql8gz/khVa6Sg=;
 b=L2bmxgAbtp3xCCrhTieZOZscRssPANsBpeIdLnzwgHZQZek345vldcAiBgi7HpMLO+JsBCeeYPH8KJbr7yDE1FZkVfEP7xm/jlJ4pR0hBWd4gapgblfLWfuA2Jttinf54uZgTFRgKqGo04Q5W4W07PcoV9sNmgGp2xs7RUroR5PVIoP1trqQj2H62VwpTL6F5dHvlC3AhWUtF3duEHzB32yttG/DDlp0iknEeN0QjBF6USgI8lCyOfyqFNShSobuz83jrvbx/NfLAUKI6ZRc532L/hkGipDLzJ1+z/clfdOaNoOJ+y2Nid2VqZGnzYLjBaDhSrzm1wjKluHrhus6yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ob71cYrmJVFDSdYAeCu1Y6n3ATv49Wql8gz/khVa6Sg=;
 b=t3RhUuMTbq28yCXIVGcf+QkFUdSIo2zRX1Dx61Wq068+mp0JwbdR1bVE+KC0mXHMFJYQysHC2/HjOMdJ/wQ0rKRzXz9ooycwso3kCWKnRyun+Bxb2rnO/YeCv7QMWCqhTHnN0q94L/nlDX9yrB061OCtBGGr+tZQf5iOFGFA9hf9EvMTCd/4xbO+Acw+8KrNP+MxQoXadizM5n23Adpr1Nr5QGzmOYbJIkplT4Ni8k3J/4CQlBn/Btgkwsyf9/18nXW+HfKGrjVnx6CvI7D+fo0gKy4KQ1/HGL94ry5b0njFygaqG8LE73g+B52ai/QN6jvwG+6FKHZJq7fTLieamQ==
Received: from DM6PR06MB5337.namprd06.prod.outlook.com (2603:10b6:5:102::19)
 by DM6PR06MB4058.namprd06.prod.outlook.com (2603:10b6:5:87::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Thu, 16 Sep
 2021 18:45:21 +0000
Received: from DM6PR06MB5337.namprd06.prod.outlook.com
 ([fe80::6517:cc73:9b9f:845a]) by DM6PR06MB5337.namprd06.prod.outlook.com
 ([fe80::6517:cc73:9b9f:845a%5]) with mapi id 15.20.4523.015; Thu, 16 Sep 2021
 18:45:21 +0000
Date: Thu, 16 Sep 2021 13:45:17 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Doug Anderson <dianders@chromium.org>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chris Morgan <macroalpha82@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 zhangqing <zhangqing@rock-chips.com>,
 Brian Norris <briannorris@chromium.org>, Chen-Yu Tsai <wenst@chromium.org>
Subject: Re: [PATCH] drm/rockchip: Update crtc fixup to account for
 fractional clk change
Message-ID: <DM6PR06MB53373EF39F1686647BA503F3A5DC9@DM6PR06MB5337.namprd06.prod.outlook.com>
References: <20210908135356.18689-1-macroalpha82@gmail.com>
 <2719341.5nTrVeAVQv@diego>
 <CAD=FV=VhOu7v5s0Jx1ATA62LJbFJgtpHNiPUDo9+sxarsef3dw@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAD=FV=VhOu7v5s0Jx1ATA62LJbFJgtpHNiPUDo9+sxarsef3dw@mail.gmail.com>
X-TMN: [meGjtpQycxzV0jikX/fEHyLlVaSwxDYN]
X-ClientProxiedBy: SN7PR04CA0016.namprd04.prod.outlook.com
 (2603:10b6:806:f2::21) To DM6PR06MB5337.namprd06.prod.outlook.com
 (2603:10b6:5:102::19)
X-Microsoft-Original-Message-ID: <20210916184517.GA5968@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wintermute.localdomain (76.183.134.35) by
 SN7PR04CA0016.namprd04.prod.outlook.com (2603:10b6:806:f2::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.14 via Frontend Transport; Thu, 16 Sep 2021 18:45:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea38d77d-c63f-4bfd-8c88-08d979422278
X-MS-TrafficTypeDiagnostic: DM6PR06MB4058:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2J25FdgsDNaE/iETEHfIDidwGvXOvqpZWgsfxBRr2fIzIR8T0TO/7N+OQU7FnGQ4o1sAKqkNkuaS7CDWBG4FQN5prLWoSj2JMqMWS+B8A6UoHWQh//tvUYvS+npDnaKsQH1T5Njsi9H8Cc5YVIBWDDwQyIBRvPvf3xUy0dOvelTBN+XYAVJyv8/ct4p0CUAWTPBUj90dXk5i4okzxNzSdXhJPimXF9xC64KwbjG29mLRmWuON4dFFm6kPT1J2GXHrp9thtpls1+eWrUw6DZBnEPiyjpHTAfg42cSh2w847EBmNa62yRctwn9+URcfkYTxVAa7btLHSBIrTiizsgJ/0lPRNt4rDn+msa5cP81ctNRodOS+hNrZgkg0BQSy5vp0NHqZ8TTisaGeSz4QlehMsYzHIS+dUzR9kjbel5C4JL3VZP5gqlVJyxrIdaHFGG7
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 7+Mj39l9SokQwJiI2sdLEp6Ckvvi+JI10+TxSQm8TRHK3PYW1fURNp76eyXJu0hQ16DXXBtMIQ/qCaBgXxnG0rKsNGgya6WK8tl0Yft+BIEgdmWilqi61eWRz4WraEmcL8yXpHCjj0bdA4YR5ixiCw==
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-94543.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: ea38d77d-c63f-4bfd-8c88-08d979422278
X-MS-Exchange-CrossTenant-AuthSource: DM6PR06MB5337.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2021 18:45:21.0989 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR06MB4058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_114529_503651_D7EC3A07 
X-CRM114-Status: GOOD (  68.61  )
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

On Thu, Sep 16, 2021 at 10:08:05AM -0700, Doug Anderson wrote:
> Hi,
> =

> On Tue, Sep 14, 2021 at 4:14 AM Heiko St=FCbner <heiko@sntech.de> wrote:
> >
> > Hi,
> >
> > Am Mittwoch, 8. September 2021, 15:53:56 CEST schrieb Chris Morgan:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > >
> > > After commit 928f9e268611 ("clk: fractional-divider: Hide
> > > clk_fractional_divider_ops from wide audience") was merged it appears
> > > that the DSI panel on my Odroid Go Advance stopped working. Upon clos=
er
> > > examination of the problem, it looks like it was the fixup in the
> > > rockchip_drm_vop.c file was causing the issue. The changes made to the
> > > clk driver appear to change some assumptions made in the fixup.
> > >
> > > After debugging the working 5.14 kernel and the no-longer working
> > > 5.15 kernel, it looks like this was broken all along but still
> > > worked, whereas after the fractional clock change it stopped
> > > working despite the issue (it went from sort-of broken to very broken=
).
> > >
> > > In the 5.14 kernel the dclk_vopb_frac was being requested to be set to
> > > 17000999 on my board. The clock driver was taking the value of the
> > > parent clock and attempting to divide the requested value from it
> > > (17000000/17000999 =3D 0), then subtracting 1 from it (making it -1),
> > > and running it through fls_long to get 64. It would then subtract
> > > the value of fd->mwidth from it to get 48, and then bit shift
> > > 17000999 to the left by 48, coming up with a very large number of
> > > 7649082492112076800. This resulted in a numerator of 65535 and a
> > > denominator of 1 from the clk driver. The driver seemingly would
> > > try again and get a correct 1:1 value later, and then move on.
> > >
> > > Output from my 5.14 kernel (with some printfs for good measure):
> > > [    2.830066] rockchip-drm display-subsystem: bound ff460000.vop (op=
s vop_component_ops)
> > > [    2.839431] rockchip-drm display-subsystem: bound ff450000.dsi (op=
s dw_mipi_dsi_rockchip_ops)
> > > [    2.855980] Clock is dclk_vopb_frac
> > > [    2.856004] Scale 64, Rate 7649082492112076800, Oldrate 17000999, =
Parent Rate 17000000, Best Numerator 65535, Best Denominator 1, fd->mwidth =
16
> > > [    2.903529] Clock is dclk_vopb_frac
> > > [    2.903556] Scale 0, Rate 17000000, Oldrate 17000000, Parent Rate =
17000000, Best Numerator 1, Best Denominator 1, fd->mwidth 16
> > > [    2.903579] Clock is dclk_vopb_frac
> > > [    2.903583] Scale 0, Rate 17000000, Oldrate 17000000, Parent Rate =
17000000, Best Numerator 1, Best Denominator 1, fd->mwidth 16
> > >
> > > Contrast this with 5.15 after the clk change where the rate of 170009=
99
> > > was getting passed and resulted in numerators/denomiators of 17001/
> > > 17000.
> > >
> > > Output from my 5.15 kernel (with some printfs added for good measure):
> > > [    2.817571] rockchip-drm display-subsystem: bound ff460000.vop (op=
s vop_component_ops)
> > > [    2.826975] rockchip-drm display-subsystem: bound ff450000.dsi (op=
s dw_mipi_dsi_rockchip_ops)
> > > [    2.843430] Rate 17000999, Parent Rate 17000000, Best Numerator 17=
018, Best Denominator 17017
> > > [    2.891073] Rate 17001000, Parent Rate 17000000, Best Numerator 17=
001, Best Denominator 17000
> > > [    2.891269] Rate 17001000, Parent Rate 17000000, Best Numerator 17=
001, Best Denominator 17000
> > > [    2.891281] Rate 17001000, Parent Rate 17000000, Best Numerator 17=
001, Best Denominator 17000
> > >
> > > After tracing through the code it appeared that this function here was
> > > adding a 999 to the requested frequency because of how the clk driver
> > > was rounding/accepting those frequencies. I believe after the changes
> > > made in the commit listed above the assumptions listed in this driver
> > > are no longer true. When I remove the + 999 from the driver the DSI
> > > panel begins to work again.
> > >
> > > Output from my 5.15 kernel with 999 removed (printfs added):
> > > [    2.852054] rockchip-drm display-subsystem: bound ff460000.vop (op=
s vop_component_ops)
> > > [    2.864483] rockchip-drm display-subsystem: bound ff450000.dsi (op=
s dw_mipi_dsi_rockchip_ops)
> > > [    2.880869] Clock is dclk_vopb_frac
> > > [    2.880892] Rate 17000000, Parent Rate 17000000, Best Numerator 1,=
 Best Denominator 1
> > > [    2.928521] Clock is dclk_vopb_frac
> > > [    2.928551] Rate 17000000, Parent Rate 17000000, Best Numerator 1,=
 Best Denominator 1
> > > [    2.928570] Clock is dclk_vopb_frac
> > > [    2.928574] Rate 17000000, Parent Rate 17000000, Best Numerator 1,=
 Best Denominator 1
> > >
> > > I have tested the change extensively on my Odroid Go Advance (Rockchip
> > > RK3326) and it appears to work well. However, this change will affect
> > > all Rockchip SoCs that use this driver so I believe further testing
> > > is warranted. Please note that without this change I can confirm
> > > at least all PX30s with DSI panels will stop working with the 5.15
> > > kernel.
> > >
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> >
> > With 5.15-rc1 on:
> > - rk3288-pinky+eDP (was working -> still working)
> > - rk3399-kevin+eDP (was working -> still working)
> > - px30-minievb (was broken -> working again)
> >
> > Tested-by: Heiko Stuebner <heiko@sntech.de>
> >
> >
> > I've also added Doug, maybe he remembers some historic artifact
> > to keep in mind about the original patch.
> =

> So when you say "was working" -> "still working", how did you test
> that? Did you just confirm that something was showing up on the
> screen, or did you check debugfs and make sure that the PLLs were all
> being set correctly? Also, I can't quite remember if the problems here
> were related to the internal display (and on which rockchip device) or
> HDMI where we could have a whole lot more possible pixel clocks. I can
> dig if need be. ...but I'm fairly certain that we can't just delete
> the "+ 999" and expect everything to work. All of the stuff in the
> comment above the "+ 999" is still as true today as it was when I
> wrote it. DRM is still in kHz and the Rockchip clock driver still
> rounds down.
> =

> I suspect that the problem here is that the logic I wrote up just
> doesn't work great if your display clock is made by a "frac" clock.
> That's pretty much what I was saying when I wrote the comment:
> =

> > NOTE: if the PLL (maybe through a divider) could actually make
> > a clock rate 999 Hz higher instead of the one we want then this
> > could be a problem.
> =

> Maybe we can come up with a solution, though.
> =

> So one thing is that I'd suspect that the problem is actually a bug
> with the fractional clock driver. "Best Numerator 17001, Best
> Denominator 17000" is probably not a valid thing to set and the clock
> driver should know this and seek out a different rate. I haven't dug
> through your code paths but, for instance, the comments above
> rockchip_fractional_approximation() say that denominator must be 20x
> the numerator if you want a good clock. That's clearly not the case
> here. There could also be maximum values of the numerator /
> denominator that are being ignored. I would sorta bet that if the frac
> clock driver was fixed that a clock anywhere between 17000000 and
> 17000999 would work just fine for you.
> =

> In any case, despite the clock driver being screwy, probably this
> would fix it for you (untested) and is a better solution I think:
> =

> rate =3D clk_round_rate(vop->dclk, adjusted_mode->clock * 1000);
> if (rate / 1000 !=3D adjusted_mode->clock)
>   rate =3D clk_round_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);

This appears to work for me at least. I'll resubmit a patch with this
as the solution. Thank you.

> =

> Basically: if we can happen to make the rate exactly then we're good.
> Otherwise then try bumping up by 999.
> =

> =

> > > ---
> > >  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 21 +++----------------=
--
> > >  1 file changed, 3 insertions(+), 18 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gp=
u/drm/rockchip/rockchip_drm_vop.c
> > > index ba9e14da41b4..bfef4f52dce6 100644
> > > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > > @@ -1169,31 +1169,16 @@ static bool vop_crtc_mode_fixup(struct drm_cr=
tc *crtc,
> > >        *
> > >        * - DRM works in in kHz.
> > >        * - Clock framework works in Hz.
> > > -      * - Rockchip's clock driver picks the clock rate that is the
> > > -      *   same _OR LOWER_ than the one requested.
> > >        *
> > >        * Action plan:
> > >        *
> > > -      * 1. When DRM gives us a mode, we should add 999 Hz to it.  Th=
at way
> > > -      *    if the clock we need is 60000001 Hz (~60 MHz) and DRM tel=
ls us to
> > > -      *    make 60000 kHz then the clock framework will actually giv=
e us
> > > -      *    the right clock.
> > > -      *
> > > -      *    NOTE: if the PLL (maybe through a divider) could actually=
 make
> > > -      *    a clock rate 999 Hz higher instead of the one we want the=
n this
> > > -      *    could be a problem.  Unfortunately there's not much we ca=
n do
> > > -      *    since it's baked into DRM to use kHz.  It shouldn't matte=
r in
> > > -      *    practice since Rockchip PLLs are controlled by tables and
> > > -      *    even if there is a divider in the middle I wouldn't expec=
t PLL
> > > -      *    rates in the table that are just a few kHz different.
> > > -      *
> > > -      * 2. Get the clock framework to round the rate for us to tell =
us
> > > +      * 1. Get the clock framework to round the rate for us to tell =
us
> > >        *    what it will actually make.
> > >        *
> > > -      * 3. Store the rounded up rate so that we don't need to worry =
about
> > > +      * 2. Store the rounded up rate so that we don't need to worry =
about
> > >        *    this in the actual clk_set_rate().
> > >        */
> > > -     rate =3D clk_round_rate(vop->dclk, adjusted_mode->clock * 1000 =
+ 999);
> > > +     rate =3D clk_round_rate(vop->dclk, adjusted_mode->clock * 1000);
> > >       adjusted_mode->clock =3D DIV_ROUND_UP(rate, 1000);
> > >
> > >       return true;
> > >
> >
> >
> >
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
