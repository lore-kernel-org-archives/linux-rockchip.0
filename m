Return-Path: <SRS0=4of/=MZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8CB9C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Aug 2021 19:26:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 448A560EFF
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Aug 2021 19:26:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 448A560EFF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krrjGFOGdojyGqVk1AyMlaFheWxnPrBNcyZVwf1n+/c=; b=40V8GVIJiiFXsu
	8FaQBJgj9Ig5oKPDJAmLhAn+2VVTX/hFRgMGMyKhhWhua3Hv1MCuHbOR5kyPvcOvYPL6x6z+EnsSx
	7e3GIUcnMqscnu9At1CXvKEYVd7Vt81mSg9znSXoiqyeQjWxpRt1Ua34mjIh089GXPhHbnvdc4TuR
	j3DHYmoNr2UYtV+nPaigEPA9Lsfooly2SSX9d3dgy7Dg7JCDarM3/sP/I3WjZLJjLgZo1TyJvm49o
	vK0HcnGxtFqeG5fJEQsQO02m2W0zgo84fDk1ykTB+jk2IHf/ufuK+eWoJkeO4MbBB+uW7e6mexJcX
	M5KCg7HSWmBA1NhCGlmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAdZs-0001Dm-Be; Mon, 02 Aug 2021 19:26:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAdZf-0001Bn-1w; Mon, 02 Aug 2021 19:26:09 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mAdZY-000515-2w; Mon, 02 Aug 2021 21:26:00 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Stephen Boyd <sboyd@kernel.org>, Saravana Kannan <saravanak@google.com>
Cc: Yunhao Tian <t123yh@outlook.com>, t123yh.xyz@gmail.com,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] clk: rk3308: make ddrphy4x clock critical
Date: Mon, 02 Aug 2021 21:25:59 +0200
Message-ID: <16392318.geO5KgaWL5@diego>
In-Reply-To: <CAGETcx8YYrkCV0UObtOqHUnS29Q-raC54KUh14wqyBDMJ4e46g@mail.gmail.com>
References: <BYAPR20MB24886765F888A9705CBEB70789E39@BYAPR20MB2488.namprd20.prod.outlook.com>
 <162758560739.714452.5782743329332725952@swboyd.mtv.corp.google.com>
 <CAGETcx8YYrkCV0UObtOqHUnS29Q-raC54KUh14wqyBDMJ4e46g@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210802_122607_137576_23FE97A4 
X-CRM114-Status: GOOD (  42.54  )
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

Hi Saravana,

Am Montag, 2. August 2021, 20:24:56 CEST schrieb Saravana Kannan:
> On Thu, Jul 29, 2021 at 12:06 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Heiko St=FCbner (2021-07-28 02:53:54)
> > > Am Dienstag, 27. Juli 2021, 03:08:10 CEST schrieb Stephen Boyd:
> > > > Quoting Yunhao Tian (2021-07-21 05:48:16)
> > > > > Currently, no driver support for DDR memory controller (DMC) is p=
resent,
> > > > > as a result, no driver is explicitly consuming the ddrphy clock. =
This means
> > > > > that VPLL1 (parent of ddr clock) will be shutdown if we enable
> > > > > and then disable any child clock of VPLL1 (e.g. SCLK_I2S0_8CH_TX).
> > > > > If VPLL1 is disabled, the whole system will freeze, because the D=
DR
> > > > > controller will lose its clock. So, it's necessary to prevent VPL=
L1 from
> > > > > shutting down, by marking the ddrphy4x CLK_IS_CRITICAL.
> > > > >
> > > > > This bug was discovered when I was porting rockchip_i2s_tdm drive=
r to
> > > > > mainline kernel from Rockchip 4.4 kernel. I guess that other Rock=
chip
> > > > > SoCs without DMC driver may need the same patch. If this applies =
to
> > > > > other devices, please let us know.
> > > > >
> > > > > Signed-off-by: Yunhao Tian <t123yh@outlook.com>
> > > > > ---
> > > > >  drivers/clk/rockchip/clk-rk3308.c | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/drivers/clk/rockchip/clk-rk3308.c b/drivers/clk/rock=
chip/clk-rk3308.c
> > > > > index 2c3bd0c749f2..6be077166330 100644
> > > > > --- a/drivers/clk/rockchip/clk-rk3308.c
> > > > > +++ b/drivers/clk/rockchip/clk-rk3308.c
> > > > > @@ -564,7 +564,7 @@ static struct rockchip_clk_branch rk3308_clk_=
branches[] __initdata =3D {
> > > > >         COMPOSITE(SCLK_DDRCLK, "clk_ddrphy4x_src", mux_dpll_vpll0=
_vpll1_p, CLK_IGNORE_UNUSED,
> > > > >                         RK3308_CLKSEL_CON(1), 6, 2, MFLAGS, 0, 3,=
 DFLAGS,
> > > > >                         RK3308_CLKGATE_CON(0), 10, GFLAGS),
> > > > > -       GATE(0, "clk_ddrphy4x", "clk_ddrphy4x_src", CLK_IGNORE_UN=
USED,
> > > > > +       GATE(0, "clk_ddrphy4x", "clk_ddrphy4x_src", CLK_IGNORE_UN=
USED | CLK_IS_CRITICAL,
> > > >
> > > > Is it not enabled by default?
> > >
> > > All gates are enabled by default, but this gate shares a common parent
> > > tree down to a pll, so if another leaf-user is disabling their part, =
this
> > > untracked clock would get disabled as well.
> >
> > Right, this problem is cropping up in different places for various
> > drivers.
> >
> > >
> > > On that note, I remember a sort of CLK_HANDOFF was planned way back
> > > in the past, meaning clock is critical until a driver picks it up, af=
ter this the
> > > driver is responsible for it. Did that get any momentum?
> > >
> >
> > Last I saw Saravana sent a patch to sort of connect CLK_HANDOFF to
> > device driver sync_state() callback. I think we need to at least stash
> > away that a clk is enabled at boot and then figure out how to tie in
> > sync_state and/or something else.
> =

> Yeah, my clk_sync_state() series should do that. I'll get back on that
> patch this week or next.
> =

> Yunhao,
> =

> Is there at least some DT device that consumes the DDR phy clock? Can
> you point me to the DT for this board (not the SoC) so I can take a
> look at it later?

Not for the rk3308. If you're looking for live-examples of handoff clocks,
I can provide another examples though:


rockchip/clk-rk3288.c - pclk_rkpwm (in the separate critical clock list) ..=
. with
arch/arm/boot/dts/rk3288.dtsi - clock is supplying pwm nodes.

As the comment in the clock driver suggests (line 850), some boards use
pwm-regulators for central components. The pwm-regulators are configured
at boot already, so the clock shouldn't be disabled till the pwm-regulator =
takes
over.


The whole memory handling is a blank slate on the kernel side for Rockchip
boards still. The bootloader sets up the memory and nobody has found the
time to modell things like memory scaling in a nice way yet.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
