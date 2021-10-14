Return-Path: <SRS0=Ggyc=PC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1572EC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 12:12:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D04B860E96
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 12:12:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D04B860E96
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kHtktHt3rymB9bGcajgvgAPv6dBVTru1meba3+THbUs=; b=s/n0JTdnojiPqI
	ULrvGCvualvXOddyzaUqnEpyGMbh8BoxGdwDMbgwYvAMRWw7hEthzBf1yCSUvJRyZ8+FYXDMnl4sG
	TdKdJth/Dr+3ZhHIOSMtNZH/TTBoI8XD4sHuVj4Ymt1Rh4UXjrkdesSZ22vdXDK80PxRphfIodPPR
	bPbecutPLpvOWNz05rfMlPbUP5rjzxbEHLIyyLm3MmNx0NjZEqJct7T6gwudrBTGcYoEtb8MAE/r8
	sZZ9eUmUDQHrmo+lSn7wxVs/bik0oicHNuR6rEfPR9yj7XIfIITF/teuwf/XsadSThxG3Xo7mNxAW
	6uhIRuKazUhzMA4kcwvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mazat-0032Vb-6d; Thu, 14 Oct 2021 12:12:19 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mazaR-0032Li-P1; Thu, 14 Oct 2021 12:11:53 +0000
Received: by mail-ed1-x534.google.com with SMTP id d3so23288244edp.3;
 Thu, 14 Oct 2021 05:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PjunbPmLmTCHaDr1XFmiTYq62IyZTicb7wJjyiRmRZA=;
 b=k1g+ewsT6tZT2k2DdXFuBV0VAEJGyoHMGjBtx7czRNjnlPd/iszs9Aq/bkgzSrBQfa
 SOqtaUQ4uJrIubsrV6GCgYJo9KIi3OidljseX927z53EparhoxN72stIaB6KMiq2qd05
 tGcDgySBBWS3uClbplw13TlwP2H9LYQUTRQwQYGWikyi8X5QqgiK0BZlYzrUTJlRFFoF
 +/66BaVVku+6EnxMnFqmspWmFZe5nxz9P5qFTPu1uc9SYqukZyFZcfDXpJ7msHkYsN7v
 nPbzVwV6znvHtPvqm+zRCGBTwkp/E8JylSYrwAlfSsFXgzltDPDi4HXOnuJI6D2Tww+r
 x9Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PjunbPmLmTCHaDr1XFmiTYq62IyZTicb7wJjyiRmRZA=;
 b=FvDS2D5DPpRaHGB7hMW8x9NbA+2Enr0/4Qlh3skkVMQDdiXr1fTJbSNwrSOT5hGhOc
 fYGNdx57Q94GFoye4DLHXgMb0jH1XFxeWElQHj852Jzqp2bxRsEnqaEHjD8HR+/XtBQ2
 qnUuw31NTfaAGbT83mApptvRWVsjj4Qh/gmxNQwswOIBL0Q/wGQh0yHYXMdZJWr1MW7P
 K185hqUefHhbnf/Wox9r69dfYr5hYpem8r1K+a6fBhek6UJfsBLkKs6gBK8c2+IHeUsB
 74ocYN49vEbzZ9mfP2tU4PVTKip1yPz04ZaTPjVKlG7uwJeipwLRsN1yp6IkugKj8Eqg
 16wg==
X-Gm-Message-State: AOAM533PS5aHsim0t2wwD4JWrckXQtK3SaHqtMJEDdV/F94iYpWvJnMZ
 LCNKharlbfysjPeE0d9Z5wceF+Nvm/DCxq5OcKU=
X-Google-Smtp-Source: ABdhPJx5EU+lmleEWQbrw1JraAtpjBxu2zDOu7TUNMfV09yvsoCuePUhiHL65M9Jh8js7gQxOyToclWUSYEw2GFi+xA=
X-Received: by 2002:a05:6402:3186:: with SMTP id
 di6mr8028114edb.225.1634213508002; 
 Thu, 14 Oct 2021 05:11:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210702225145.2643303-1-martin.blumenstingl@googlemail.com>
 <20210702225145.2643303-2-martin.blumenstingl@googlemail.com>
 <4eb964ac-4fff-b59d-2660-2f84d8af5901@gmail.com>
In-Reply-To: <4eb964ac-4fff-b59d-2660-2f84d8af5901@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 14 Oct 2021 14:11:37 +0200
Message-ID: <CAFBinCAVtd8gmcuvGU79-85CqhSU8a3mBCa_jweeZBd59u+amQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/6] clk: divider: Implement and wire up
 .determine_rate by default
To: Alex Bee <knaerzche@gmail.com>
Cc: linux-clk@vger.kernel.org, sboyd@kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211014_051151_865438_B1325AD9 
X-CRM114-Status: GOOD (  23.56  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Alex,

On Thu, Oct 14, 2021 at 11:55 AM Alex Bee <knaerzche@gmail.com> wrote:
[...]
> This breaks lot of clocks for Rockchip which intensively uses
> composites,  i.e. those clocks will always stay at the initial parent,
> which in some cases  is the XTAL clock and I strongly guess it is the
> same for other platforms,  which use composite clocks having more than
> one parent (e.g. mediatek, ti ...)
Sorry for that and thanks for bisecting this!

> Example (RK3399)
> clk_sdio is set (initialized) with XTAL (24 MHz) as parent in u-boot.
> It will always stay at this parent, even if the mmc driver sets a rate
> of  200 MHz (fails, as the nature of things), which should switch it to
> any of its possible parent PLLs defined in
> mux_pll_src_cpll_gpll_npll_ppll_upll_24m_p (see clk-rk3399.c)  - which
> never happens.
My question to Stephen et. al. is: where is the correct place to solve this?
What I came up with so far (in no particular order):
1) not using clk-composite from clock drivers and letting CCF take
care of re-parenting clocks as needed (and as specified with
CLK_SET_RATE_NO_REPARENT)
2) clk-composite.c: extending the logic so "rate" clocks with
.determine_rate include the existing logic which only applies to
.round_rate (which means clk-composite.c is then responsible for
finding the best possible parent clock)
3) clk-divider.c: extending the logic here to account for clk_hws with
multiple parents

For 3) I am wondering whether this would even work because it seems
that clk-composite uses multiple struct clk_hw.
Letting the divider handle multiple parents means it would need to
know about the information which is only available in mux_hw - whereas
clk-composite currently passes rate_hw (struct clk_hw for the
divider).

I am happy to work on a patch for this if I can get some help with
testing (since I don't have any board with Rockchip SoC).

> Reverting this commit makes it work again: Unless there is a quick and
> obvious fix for that, I guess this should be done for 5.15 - even if the
> real issue is somewhere else.
Reverting this patch is fine from the Amlogic SoC point of view.
The main goal was to clean up / improve the CCF code.
Nothing (that I am aware of) is going to break in Amlogic land if we
revert this.



Best regards,
Martin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
