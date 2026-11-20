Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0983606A326
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 08:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vwZ6oMXk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9ZD9bDHX5BDmRV3YNJR01QirCQEMtTcTR/OKmdWn/C8=; b=vwZ6oMXkyInCJSCU3SB7GzyVGa
	sj17dvkw1nongnc8/kNUvJD3Fd+uAoJ4UDVRHt+6d7bhMu+jcGshgQtbp5q4VILEVKXuXs4fXw29J
	nFPZLY4qbKq1C/HUNdfyD6sjBBTD9xs/DMNbnKL5I3E4vGquJXZrb53sZPznlKJ7zYqK0IBw7Ngt3
	14nrOzi48KAXWXqLsnGmwEUsdKm0H4mmYRtMKrdntOTbKA8aC4TPQ/pRtx3sIP96fKFjYhJZE1dc5
	pn7vI+hZx74VHzfaYckfmcM4YApLdUan6tMurEfC3vqEzG1bSWZuaiSWUpCbm7ZdS6gUJbAuw2f4+
	ElSLxXxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUKJi-0000000EOL6-3udq;
	Fri, 20 Nov 2026 08:49:58 +0000
Received: from mail-ua1-f47.google.com ([209.85.222.47])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUKJd-0000000EOJn-1zxz
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 08:49:54 +0000
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-99075306daaso288805241.3
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 00:49:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795164592; x=1795769392;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=slnLzkdmpwFbnxdOJOf8j6Mw1PiHOu2DMR+OPWGMV3g=;
        b=QyvZFqaI/BFyFrmzRyd84q4s0xbcqFjTW6ppf3ZiQ2GG1QINpi0HS1jjeWqE5khbC7
         eBB/xQlGR7gVZ3gydeY1/otAC7mtn5BxKRdBvi9rdVrYa7DC8SpruCJOfDlkv8r7kl8M
         2xmfexCLXZtLFWJQ4Ua5jTGV7XNVBsUYUHCqORMkVrw6eX5eE/gt3S48Ly2cTlGWTTc4
         QqhrBNzq9Gd8UIf0dNbYHYH8fgPNb46JMqsqUlPkBA1NPXvQStBIcwAI2gj5GCXr+rLQ
         yQUkpOySz53Hk/A0P9KzZYLo8Qh11ieLI+PHRMXEMueAYIwv56PFUGaVuEqO3XmBgyqW
         yr8w==
X-Forwarded-Encrypted: i=1; AL+hErHNoPAwtaEEUPbB2Dnwh19rAU04x+k7ATP1Kfv0UGc4Zkf/oQaWRuLgH97cJM6yFMi1/yTh9I/eH2hCc7WZ4g==@lists.infradead.org
X-Gm-Message-State: APuU4Z8i3cLPcn3bCytRRLSNo9StEC4aNy4pzYZn0fH2gywEioQbni1G
	NgALPCg4MIr8pLjvOqDW62f/5ZbU74v3os7hgNtdwsBPmnq6ysaszWLy6dbjVWGt
X-Gm-Gg: AZFdTZeyT5Jo5r/fsLx5lYLWFTI9vcn7P1pjZUoIMg3aGWmCD4Aynqy3KOIlNz7siPb
	4jfKNAD+ccnkOdxi7AJeIIOwKgbcyteJJ8xN0p+tnyrONSnC7gETCXzai1c5pypPf3G8dIocG4g
	547LbCPwtc/tb1T6P0eKPyYH5/aObw7iMJIwXZGLY5DqkByJmh+01BeRQDKMUa532sEa0AxQdXc
	KjlLyiFGjM0rzF13Z2XSPerNZAEyOfhiVwwkJA2ZVMFzLElzo1Ky6mGjwQ7qbVNE8Gte8Sf3Atq
	fm6HzeshW4jlq8OSmHFhGCaGLD/mbEl99GQCL8Wf2/ixyz5E5M2+FbrALBL26d61dgx6Apy+rrr
	c4y2nseGDV7DMUvvcAwMTcuuBnfgXrYAPMMIVMQimhswfCqi53Cm7mTncqeBpBZ5Qfl+ea7KWl8
	NhLqoiDoQ6e4u2zNVNbkz/XZZfQy+yp3q2td4EcuK6mAxgHKMmGJbdcvFO3SRYqVaIJ7VF4QJl+
	oNdn+9cDSqaO+MaAisjF/P9/6ULkTo/G3EbywBNoauus+oZYOumyRFku4xg5AsmQK/6xBq7jRic
	8oE+89CsTdSYSdH/GWwhxwTL9jRUsQxPQfC/fcg2zufoZ7v09II4EhsA9fsgoatsXr4=
X-Received: by 2002:a05:6102:3f45:b0:7c3:2f13:d905 with SMTP id ada2fe7eead31-7d72b3731efmr1027596137.3.1795164591916;
        Fri, 20 Nov 2026 00:49:51 -0800 (PST)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-99e6e08a02asm2314725241.11.2026.11.20.00.49.51
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2026 00:49:51 -0800 (PST)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-7cc53938a8fso505264137.2
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 00:49:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErGAp9AYF10VKFAsqj98m5BL2Dru+6RTH6fyDplmB1fyxapILozfoAzWeWT9hs7JLsUJo1a0FvuggWYs/hBFvw==@lists.infradead.org
X-Received: by 2002:a05:6102:a49:b0:7c3:7286:c291 with SMTP id
 ada2fe7eead31-7d739587805mr971622137.19.1795164590827; Fri, 20 Nov 2026
 00:49:50 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <cover.1795094688.git.geert+renesas@glider.be> <683b5b189409e5ee04100044fb615b01cb877f3d.1795094688.git.geert+renesas@glider.be>
 <20261119225017.15a7b5cc@kemnade.info> <CAMuHMdVbgGV_6yjOip4xT3YhBgaOveHzSRbw9e_cHen9NRZqmw@mail.gmail.com>
 <20261120094320.442d064b@kemnade.info>
In-Reply-To: <20261120094320.442d064b@kemnade.info>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 20 Nov 2026 09:49:39 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWiCODz6RC9Q9-xMM5_k3grHztiLuR+-ikOZYoBawVvZg@mail.gmail.com>
X-Gm-Features: Aa3M54pnWIgbseGoLAFGMXWb1P8DBLFzk6LU-uNSdaE_BgKhwLT8uPsc_3uFT5k
Message-ID: <CAMuHMdWiCODz6RC9Q9-xMM5_k3grHztiLuR+-ikOZYoBawVvZg@mail.gmail.com>
Subject: Re: [PATCH 5/6] [RFT] ARM: OMAP2+: Convert to dev_clk_get_from_provider()
To: Andreas Kemnade <andreas@kemnade.info>
Cc: ettore.chimenti@linaro.org, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Russell King <linux@armlinux.org.uk>, Paul Walmsley <paul@pwsan.com>, 
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
	Jerome Brunet <jbrunet+clk@baylibre.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andyshrk@163.com>, 
	Ulf Hansson <ulfh@kernel.org>, linux-clk@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_004953_611152_91A9A4DB 
X-CRM114-Status: GOOD (  32.34  )
X-Spam-Score: -0.8 (/)
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Andreas,

On Fri, 20 Nov 2026 at 09:44, Andreas Kemnade <andreas@kemnade.info> wrote:
> On Fri, 20 Nov 2026 08:49:05 +0100
> Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Thu, 19 Nov 2026 at 22:50, Andreas Kemnade <andreas@kemnade.info> wrote:
> > > On Thu, 19 Nov 2026 14:40:38 +0100
> > > Geert Uytterhoeven <geert+renesas@glider.be> wrote:
> > >
> > > > OMAP2+ clock handling uses of_clk_get_from_provider() to obtain clocks
> > > > used for power management, so the latter show up as "deviceless" in the
> > > > consumer column of the clk_summary file in debugfs.
> > > >
> > > > Fix this by using dev_clk_get_from_provider() instead, letting us pass
> > > > the consumer device, too.
> > > >
> > > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > > ---
> > > > Compile-tested only.
> > > >
> > > > The first change is probably OK.  The second change may fail if anything
> > > > in the oh->od->pdev->dev chain is not available yet at this point.
> > >
> > > Test on OMAP3:
> >
> > Thanks for testing!
> >
> > > --- clk-old     2026-11-19 22:44:59.810807920 +0100
> > > +++ clk-new     2026-11-19 22:26:52.862531880 +0100
> > > @@ -1,17 +1,17 @@
> > >                                   enable  prepare  protect                                duty  hardware                            connection
> > >     clock                          count    count    count        rate   accuracy phase  cycle    enable   consumer                         id
> > >  ---------------------------------------------------------------------------------------------------------------------------------------------
> > > - oscillator                          0       0        0        26000000    0          0     50000      Y   deviceless                      of_clk_get_from_provider
> > > + oscillator                          0       0        0        26000000    0          0     50000      Y   deviceless                      dev_clk_get_from_provider
> > >                                                                                                             deviceless                      no_connection_id

                                deviceless
mcbsp_clks
> >
> > Hmm, so the passed device is always NULL, and thus there is no point
> > in making the change.
> > Do you know if these come from the first or second change in my patch
> > (I guess the second)?
> >
> From the first change, The second piece is nowadys only used by the dm81*
> devices.

Interesting.  So that means all/some of the existing use of
&od->pdev->dev in _add_clkdev() is futile, as it may be NULL?

> I would prefer to have this tested on dm81* too.

Agreed.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
