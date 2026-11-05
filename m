Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F66B606A31B
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 09:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3NB1iASj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pYGWZv59zCoJgbumKvJUhC+g8ZWW/2+FUPtCC33CmnQ=; b=3NB1iASj1cYan90iiSssyGQxc7
	dg9s/ErjqQ9EKp+8+KBiq9v8gU4tZQ3KbSWa663grIulrvNli8bJ3qp/ramEl+/JkhdE2EirWltqe
	ls9CMwrE3F+F/MYQ6cQokdIDVMI73X7KZLMFkzUD8nyoHqeOh9ysJu5qi/x+N3Is851fSuVFWB3+z
	5V+hfQ2ng2dHfM8c8Gh8oQpZwz6LIEMw5hpc7Zxsw26uUcH6Iye2m9dr3jF5k33UU1eY8iJHc7B7W
	y9lmtGEOEM2gQ8/aDM/pMVUGwKyFAOP+Ona8x9TZdCQnIhJMuM8/Qo4hr7s3u8M3BtrfRa0j1HOED
	d8S1OA7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOtiL-00000008IMX-1Io3;
	Thu, 05 Nov 2026 09:24:57 +0000
Received: from mail-pg1-f173.google.com ([209.85.215.173])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOthy-00000008IEk-3mRg
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 09:24:40 +0000
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-cdaefe02d5dso1010864a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 01:24:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793870674; x=1794475474;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=pdLSFARJtZZaOSy89wvFfnir+tkCHpND5r/hzAKJUn0=;
        b=tgm0IGn1mYqxQBYzyBcR0JPL2J9fpb1gBDCezHPiWshwRowFJKyUUGs3zkSLaLZJmv
         PRpMOB48VsEFA3j3Tj6xXkvMBrRc9EnfvuP1bPJPwhtgePwz6SX1hg9KWGgsDDFTw8ya
         uZplGldkYr7ftf4yt9xOSSQ/QZ9Bey8x64IX7XrUgJf5KfaYE9jtp2kFvk4ToP5uo7yO
         TtG9n/MsVJt4byKNLm8uITNioKfPN3spSoV4+idneCKOVrRR78UikXUoky/xv74Y1qNq
         Kso7i78fNr2efd+wbLRILB3XV79HV+zsCpS8NR/w11Dhgg8A8wAxZRS50/dqAuOgkjGd
         Jfpg==
X-Forwarded-Encrypted: i=1; AKwUvBxT/vV7+p7L16sayHu+UjVelRPTIjwDKuAuKWP4hxHMl9CX6HwuW2XCIK4UOe5z4+DIOs/UdYlYrNXalkq3qA==@lists.infradead.org
X-Gm-Message-State: APuU4Z8JziErtCTLyOi1XDoV6lU4qC7djEx+b3Rd9trZnZznnacrsyH8
	KSVGb/G3/2YNCqP8dvGMQjsdj11nwbJmWVQcpTPsU4bLNngNL0LrIbMu6gOKXVsQLL0=
X-Gm-Gg: AYBFou3Ofe906SK6PNAUBB+GGek1OH4vhlL/37rlGrLrOQNiK8pgG7DpNccXoh3Z5tz
	p6CREq4+jvVwJ61eSicnR6eon7IeDd0yyIl9+osiZqhpkr0sVl6qaNCoIxvqNbiRG/qj4AGVQzm
	0kU3488P7QqWC/VuAPCMEpYbIc9/YP77QxK5/GlD1irzU9CsCI/yK25eH774eI0J4Ven0+zrdP8
	Otvi43MMCb96oCe1Q92VVHNVVBxE+9pMfrAiBvZT3exyUPet0j4qf4Dbwl45I7IH+n/o9SM35Fw
	5hl3cZ2mYfTjrtEgj7FJ7tV1ech58f8abp6hhp29hLPUJxbgwnrwg2abSeQ5uqRn/x0KMFV7L4R
	Oa5k3BisiWR1vKicOgUzZbjz9xC675KCnQ0frgfIfwkuri70uK1w0fKVM8zGMo6GTo3h9DnTG4s
	dmTvtjMv/3CKGWUZfTnZSVH8HV9eSlvCUQx1PHYtbDCfAAUamH8IbKu4zFS2MV/Y5utXzW1T79K
	RMwuXq+y/NdPBZKvNIFwFSSUJW9/PujymyMdu3aRZe4r3nxDqPXYUxDB6mfD1gv6bD2JVpbIrQO
	MM1c+2K0BuFUmJOhVgFjGcoebWbUfWNWY1CaqNyyFWRvojLWpa/tcr6N0hBUtutq
X-Received: by 2002:a17:90b:1d44:b0:3ac:9d83:885e with SMTP id 98e67ed59e1d1-3ae898392a1mr15316912a91.52.1793870673853;
        Thu, 05 Nov 2026 01:24:33 -0800 (PST)
Received: from mail-dl1-f49.google.com (mail-dl1-f49.google.com. [74.125.82.49])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b0b312ccf1sm3082565a91.4.2026.11.05.01.24.33
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2026 01:24:33 -0800 (PST)
Received: by mail-dl1-f49.google.com with SMTP id a92af1059eb24-1931ff67a29so427659c88.1
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 01:24:33 -0800 (PST)
X-Forwarded-Encrypted: i=1; AKwUvByjyrfVkd/dbLFhcRe7vA6BBJQ5Mz77jTKj0EEOf+9xl0EF0XnqPhLBK6bzYRPLb3khxgOKGrcGIi4JQ2+ROQ==@lists.infradead.org
X-Received: by 2002:a05:6102:3711:b0:7c8:1fd5:82b5 with SMTP id
 ada2fe7eead31-7d072695e4emr7033715137.14.1793870187629; Thu, 05 Nov 2026
 01:16:27 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261104152253.3279052-1-Frank.Li@oss.nxp.com>
 <b656861c-a087-4087-952e-91fd15fadd52@kernel.org> <auuZHTvr5UI9Q9Q4@ashevche-desk.local>
 <fbcb650d-0f60-468d-b1cc-255ea8a93db3@kernel.org> <auxF9RT5aljXkfh7@ashevche-desk.local>
 <auxGdYgJvjq9EBu6@ashevche-desk.local>
In-Reply-To: <auxGdYgJvjq9EBu6@ashevche-desk.local>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Nov 2026 10:16:15 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUkzXMsv_4KHP20qidmH1B4Ew3=VuTJ8jqfqvx4_+pm4Q@mail.gmail.com>
X-Gm-Features: AclHuK9751j09IKd6_4EIkqyFvn0FA5bsvqOYkEgIDax6KzLeXviQYPveqzIsxk
Message-ID: <CAMuHMdUkzXMsv_4KHP20qidmH1B4Ew3=VuTJ8jqfqvx4_+pm4Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] spi: use dmaengine_desc_set_callback()
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Konstantin Ryabitsev <mricon@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Frank.Li@oss.nxp.com, Mark Brown <broonie@kernel.org>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Radu Pirea <radu_nicolae.pirea@upb.ro>, CL Wang <cl634@andestech.com>, 
	Ryan Wanner <ryan.wanner@microchip.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Vladimir Oltean <olteanv@gmail.com>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Han Xu <han.xu@nxp.com>, 
	Haibo Chen <haibo.chen@nxp.com>, Linus Walleij <linusw@kernel.org>, Daniel Mack <daniel@zonque.org>, 
	Haojian Zhuang <haojian.zhuang@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>, 
	Heiko Stuebner <heiko@sntech.de>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Yixun Lan <dlan@kernel.org>, Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Alain Volmat <alain.volmat@foss.st.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Laxman Dewangan <ldewangan@nvidia.com>, Thierry Reding <thierry.reding@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Sowjanya Komatineni <skomatineni@nvidia.com>, 
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	"open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>, 
	"moderated list:ARM/Microchip (AT91) SoC support" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>, 
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>, 
	"open list:FREESCALE DSPI DRIVER" <imx@lists.linux.dev>, 
	"open list:ARM/QUALCOMM MAILING LIST" <linux-arm-msm@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	"open list:RENESAS RZ/V2H(P) RSPI DRIVER" <linux-renesas-soc@vger.kernel.org>, 
	"open list:SAMSUNG SPI DRIVERS" <linux-samsung-soc@vger.kernel.org>, 
	"open list:RISC-V SPACEMIT SoC Support" <linux-riscv@lists.infradead.org>, 
	"open list:RISC-V SPACEMIT SoC Support" <spacemit@lists.linux.dev>, 
	"moderated list:ARM/STM32 ARCHITECTURE" <linux-stm32@st-md-mailman.stormreply.com>, 
	"open list:ARM/Allwinner sunXi SoC support" <linux-sunxi@lists.linux.dev>, 
	"open list:TEGRA ARCHITECTURE SUPPORT" <linux-tegra@vger.kernel.org>, 
	Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Thierry Reding <treding@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_012439_179410_BEFFCFB1 
X-CRM114-Status: GOOD (  36.72  )
X-Spam-Score: -1.6 (-)
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, 5 Nov 2026 at 10:04, Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
> On Thu, Nov 05, 2026 at 11:01:55AM +0200, Andy Shevchenko wrote:
> > On Thu, Nov 05, 2026 at 12:02:21AM +0100, Krzysztof Kozlowski wrote:
> > > On 04/11/2026 21:44, Andy Shevchenko wrote:
> > > >> Andy,
> > > >> These three lines look correct.
> > > >>
> > > >> LGTM:
> > > >>
> > > >> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > >
> > > > As
> > > >
> > > >   Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org> # atmel-quadspi
> > > >
> > > > Note, it's in your power to ask the author to split out what you maintain
> > > > to a separate change. So, it's your choice what to do, Ack the full patch,
> > > > give a partial Rb, ask for a split, ignore reviewing (often means silent
> > > > agreement when maintainer just applies that kind of a patch)
> > >
> > > The "# note" after the tag solves the problem partially, if people were
> > > actually using it. Solves people looking at the Git commit and being
> > > mislead by partial review applying to entire commit. Does not solve
> > > credits, because Rb for three lines is not the same as for 100.
> > >
> > > From v1 of this patch, four people (Alain, Lab, Troy, Kunihiko) did not
> > > use it even though reviewing only part. Only Wolfram, so 20% of partial
> > > reviews, used that syntax. Without that syntax, b4 will pick up Rb tag
> > > like it was for entire commit.
> > >
> > > So I do repeat - if one does not want to use that syntax, then just Ack,
> > > instead of creating false impression of reviewing everything.
> >
> > +Konstantin, then we need to teach `b4` not to break that or convert it to
> > something like
> >
> >   [FirstName: reviewed only ...]
> >   Reviewed-by: FirstName LastName <...>
>
> And Ack is not the same as Rb, when I *reviewed* patch, I have *reviewed* it,
> even if it was partial one.

Exactly.

Ab means I won't take it through my tree, please take it through a
different tree.

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
