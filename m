Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E050E606A32A
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 09:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SixF0SMX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.a=rsa-sha256 header.s=20220719 header.b=eCxEdtwB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=E0V7POVKNrjzB/L/YKTh5XXvDgFT9zH2QxWQPuR1VmY=; b=SixF0SMXxu7li3G0aeQgcGH/sf
	W4mAuwN2iTtGbQuwa9urte7WlgX4V5lrDrS0fLoylMDwaDg5Mp13pFpxVIzSIuy2Tp3CQ3b1+rprp
	1SHklsAy8AJhP/lI2MnkHGl0lQ3djGasVMwd7i5k0lZ3CIbH74ObO74/IbA8etZG8gl+ihAbe4Baw
	kRdPM2VJ1ypBcCS85OYff+Pugy/cgrHlkfkU+ZazaI10A5CRW+N1IuHiEXXlTYqY/1ymumMHWzCy+
	QQGRB/rOZDdYGpO6xdCEfR9tis+bK3gFn16sVJGRKhbAAxRdwHZJX4yISVGhaMDf7/sTtclwezKMG
	uLuSlbkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xULJN-0000000EWqw-3vff;
	Fri, 20 Nov 2026 09:53:41 +0000
Received: from mail.andi.de1.cc ([2a02:c205:3004:2154::1])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xULJL-0000000EWqK-11Zw;
	Fri, 20 Nov 2026 09:53:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description;
	bh=/XR8mwGEvCfQ40OFBdbL3peozsc+De8DLZuvdd7EMf8=; t=1795168419; x=1796378019; 
	b=eCxEdtwBHqYcQanEqe0NutHhkIB8YR2ZHlto+1l79wuGHsMqACl0Yx6+Ri3ZgSad0048c7Y3nN8
	SR2+ModPybzsaHkz8j2R7FpW9fxQbo1l4BFNSxwusrHgBmg1DhVXwV2nK8/vZg950tjSqw3joOach
	dyCIpnfvEfeoiIY6MC/p6gfimVXOt8B5w1x5x5MEATGQZnj5hk0+cLeFfCpM7QiQFxELbzdcdM7u+
	6xTBpZqtlBH5RW4MhgWsJlaxoR9ZBykTY4V3NcQDJihmnj6bX7QG5JqcTPImQ6prOBqZHtSoWxqMK
	ehOC8h65pTsUkWSefcNLhZt+RzNFozZs1a6w==;
Date: Fri, 20 Nov 2026 10:53:14 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: ettore.chimenti@linaro.org, Aaro Koskinen <aaro.koskinen@iki.fi>, Kevin
 Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, Tony
 Lindgren <tony@atomide.com>, Russell King <linux@armlinux.org.uk>, Paul
 Walmsley <paul@pwsan.com>, Stephen Boyd <sboyd@kernel.org>, Brian Masney
 <bmasney+clk@redhat.com>, Jerome Brunet <jbrunet+clk@baylibre.com>, Sandy
 Huang <hjc@rock-chips.com>, Heiko =?UTF-8?B?U3TDvGJuZXI=?=
 <heiko@sntech.de>, Andy Yan <andyshrk@163.com>, Ulf Hansson
 <ulfh@kernel.org>, linux-clk@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 5/6] [RFT] ARM: OMAP2+: Convert to
 dev_clk_get_from_provider()
Message-ID: <20261120105314.57a13a83@kemnade.info>
In-Reply-To: <CAMuHMdWiCODz6RC9Q9-xMM5_k3grHztiLuR+-ikOZYoBawVvZg@mail.gmail.com>
References: <cover.1795094688.git.geert+renesas@glider.be>
	<683b5b189409e5ee04100044fb615b01cb877f3d.1795094688.git.geert+renesas@glider.be>
	<20261119225017.15a7b5cc@kemnade.info>
	<CAMuHMdVbgGV_6yjOip4xT3YhBgaOveHzSRbw9e_cHen9NRZqmw@mail.gmail.com>
	<20261120094320.442d064b@kemnade.info>
	<CAMuHMdWiCODz6RC9Q9-xMM5_k3grHztiLuR+-ikOZYoBawVvZg@mail.gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; aarch64-unknown-linux-gnu)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_015339_330883_EA7F929C 
X-CRM114-Status: GOOD (  24.51  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, 20 Nov 2026 09:49:39 +0100
Geert Uytterhoeven <geert@linux-m68k.org> wrote:

> Hi Andreas,
> 
> On Fri, 20 Nov 2026 at 09:44, Andreas Kemnade <andreas@kemnade.info> wrote:
> > On Fri, 20 Nov 2026 08:49:05 +0100
> > Geert Uytterhoeven <geert@linux-m68k.org> wrote:  
> > > On Thu, 19 Nov 2026 at 22:50, Andreas Kemnade <andreas@kemnade.info> wrote:  
> > > > On Thu, 19 Nov 2026 14:40:38 +0100
> > > > Geert Uytterhoeven <geert+renesas@glider.be> wrote:
> > > >  
> > > > > OMAP2+ clock handling uses of_clk_get_from_provider() to obtain clocks
> > > > > used for power management, so the latter show up as "deviceless" in the
> > > > > consumer column of the clk_summary file in debugfs.
> > > > >
> > > > > Fix this by using dev_clk_get_from_provider() instead, letting us pass
> > > > > the consumer device, too.
> > > > >
> > > > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > > > ---
> > > > > Compile-tested only.
> > > > >
> > > > > The first change is probably OK.  The second change may fail if anything
> > > > > in the oh->od->pdev->dev chain is not available yet at this point.  
> > > >
> > > > Test on OMAP3:  
> > >
> > > Thanks for testing!
> > >  
> > > > --- clk-old     2026-11-19 22:44:59.810807920 +0100
> > > > +++ clk-new     2026-11-19 22:26:52.862531880 +0100
> > > > @@ -1,17 +1,17 @@
> > > >                                   enable  prepare  protect                                duty  hardware                            connection
> > > >     clock                          count    count    count        rate   accuracy phase  cycle    enable   consumer                         id
> > > >  ---------------------------------------------------------------------------------------------------------------------------------------------
> > > > - oscillator                          0       0        0        26000000    0          0     50000      Y   deviceless                      of_clk_get_from_provider
> > > > + oscillator                          0       0        0        26000000    0          0     50000      Y   deviceless                      dev_clk_get_from_provider
> > > >                                                                                                             deviceless                      no_connection_id  
> 
>                                 deviceless
> mcbsp_clks
> > >
> > > Hmm, so the passed device is always NULL, and thus there is no point
> > > in making the change.
> > > Do you know if these come from the first or second change in my patch
> > > (I guess the second)?
> > >  
> > From the first change, The second piece is nowadys only used by the dm81*
> > devices.  
> 
> Interesting.  So that means all/some of the existing use of
> &od->pdev->dev in _add_clkdev() is futile, as it may be NULL?
> 
I was wrong, it comes from neither. So lets start ftrace via cmdline...
ftrace=function ftrace_filter=dev_clk_get_from_provider

Piping the result through uniq -c 
      8           <idle>-0       [000] d....     0.000000: dev_clk_get_from_provider <-ti_dt_clocks_register
     66           <idle>-0       [000] d....     0.000000: dev_clk_get_from_provider <-ti_clk_add_aliases
      1           <idle>-0       [000] d....     0.004913: dev_clk_get_from_provider <-of_clk_set_defaults
      1           <idle>-0       [000] d....     0.004974: dev_clk_get_from_provider <-of_clk_set_defaults


Regards,
Andreas



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
