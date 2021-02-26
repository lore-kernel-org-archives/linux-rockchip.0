Return-Path: <SRS0=dCsk=H4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D3EEC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 09:49:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A2EDB64EB7
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 09:49:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A2EDB64EB7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HEuyw1NxLP4xF+A+OAzYL5vdzDJ7iADIowbzLw40HoM=; b=0wIpe52MCPjwGbzssqBtNIUDe
	CmtvcFrWj1InDQyVkXGQtMvyQxtFVSRWQuBJPH+OupUqXEbClgl0HrUck/UKG4Mo8Le4J7lBaEGPR
	vgiJ7A3IvddPaDbaPc1MBim7LF2htPCIXPEcOZArHLYwrIsGchncE73tOAsR/xMvKdL3f6IOv4r3T
	o5/WA5DiStUt3NDwpDLPI8yDCO6C8Iq8zRnIPXBuVLOk944fhQPMOkKdgNb97wBMN/tVXChPlZiJy
	/3PQKmkLXnXWGxaqp8dr001Q84pauUytRzglGGwl+4LzksKO1YTqXZ+cYIuABCqHS8INy0QJKBJKj
	YZyTfZtfQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFZkU-0006Jv-OV; Fri, 26 Feb 2021 09:49:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFZkQ-0006II-Kq; Fri, 26 Feb 2021 09:49:23 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D953C64EE2;
 Fri, 26 Feb 2021 09:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614332961;
 bh=/p6dOhcOYpFM640Kb6MMyylYPi1RlfxvVA6ObczgEhE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=lzJT/MU0B0CfNk3Od9WEkTaz2n39hSve8tsQ3B51OG+v8C9HX0tRwf4GTLm2dCCru
 bKsQpfIyw5c5iUwmaaAiWiVB4XUYJK7IX1xXZNMtXoYEqWP12xMsiwbl36DmbqVi/z
 ukRr5ZUvCD65qofwYxqx3J3F5TaiqaEYExRVZii1zRWSSWkbSD6iiDRpz0UZmHi2k2
 1qY8kNEjVoIDLeAIKeO/lOI2VWNxQy5RcjPfkj3qP1S29nD+nyPojgBrdM+plQyZi2
 Mg/7MwP2CW7wiCAOeezJLONwGgzqHlkfoUcd84vPXgZCN0e+HTe7MGqxhd03M6Vn/V
 GYzpBWde0OF1Q==
Received: by mail-ot1-f54.google.com with SMTP id x9so4186476otp.8;
 Fri, 26 Feb 2021 01:49:20 -0800 (PST)
X-Gm-Message-State: AOAM533UJUmGj+ZPzyxj8f2NNteOjWF7TNM1qeUOn29SVMt/HGWAv+mW
 kQ98JjwwjS015oUBT9A6NjU7okBls33dWJREwMc=
X-Google-Smtp-Source: ABdhPJz6LMQBQKLqBoeQS8rjpl42H7HBCEzMgMmWlkvE+pUpzvdpGIIYlIPKZf7sKPOWCYww0kyriDgqjAijjzESmdU=
X-Received: by 2002:a9d:4802:: with SMTP id c2mr1608747otf.305.1614332960079; 
 Fri, 26 Feb 2021 01:49:20 -0800 (PST)
MIME-Version: 1.0
References: <20210225125541.1808719-1-arnd@kernel.org>
 <20210226081548.h5ls5fxihunzxjvx@ti.com>
In-Reply-To: <20210226081548.h5ls5fxihunzxjvx@ti.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 26 Feb 2021 10:49:04 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3ep7DFnMYnA7q5b-P8X7nd3TAz=t82011j8=koK3T08A@mail.gmail.com>
Message-ID: <CAK8P3a3ep7DFnMYnA7q5b-P8X7nd3TAz=t82011j8=koK3T08A@mail.gmail.com>
Subject: Re: [PATCH] spi: rockchip: avoid objtool warning
To: Pratyush Yadav <p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210226_044922_837826_55B699E2 
X-CRM114-Status: GOOD (  21.66  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Alexander Kochetkov <al.kochet@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, Jon Lin <jon.lin@rock-chips.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Vincent Pelletier <plr.vincent@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 Chris Ruehl <chris.ruehl@gtsys.com.hk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Emil Renner Berthing <kernel@esmil.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Feb 26, 2021 at 9:16 AM 'Pratyush Yadav' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Hi,
>
> On 25/02/21 01:55PM, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > Building this file with clang leads to a an unreachable code path
> > causing a warning from objtool:
> >
> > drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame
> >
> > Use BUG() instead of unreachable() to avoid the undefined behavior
> > if it does happen.
> >
> > Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  drivers/spi/spi-rockchip.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> > index 936ef54e0903..972beac1169a 100644
> > --- a/drivers/spi/spi-rockchip.c
> > +++ b/drivers/spi/spi-rockchip.c
> > @@ -521,7 +521,7 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
> >                * ctlr->bits_per_word_mask, so this shouldn't
> >                * happen
> >                */
> > -             unreachable();
> > +             BUG();
>
> checkpatch says:
>
>   Avoid crashing the kernel - try using WARN_ON & recovery code rather
>   than BUG() or BUG_ON()
>
> Which makes sense to me. This is not something bad enough to justify
> crashing the kernel.

I thought about rewriting it more thoroughly when I wrote the patch, but
couldn't come up with a good alternative, so I did the simplest change
in this direction, replacing the silent crash with a loud one.

Should we just dev_warn() and return instead, hoping that it won't do
more harm?

The backtrace from WARN_ON() probably doesn't help here.

       Arnd

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
