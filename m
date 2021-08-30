Return-Path: <SRS0=TPHQ=NV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2532EC432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 16:03:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E542C60F46
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 16:03:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E542C60F46
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZUsErwXTbRfR0S9AiOwpzwZJrSx8vAPWN3fDzTk2kM=; b=KM+9SbjJ8VmDpS
	2ZYpgx3IDYS/HPkRWAnOFy3j6dSCrB8w4AxYfGkMiRxYkCy1gjPOmoUC0KQwRh/f0yACFNkfa2gzB
	Th/niyDkfdIAxC45dKaVZpAUMcG9hHFGFCSSZPV3WveSCVSDeWxoxxMdzLmSGzK4a2auyYB+SrNW0
	6A22wGsXzKP2wJ6FGSietFAk7Spi3D8LUooCW/Q3KjR8lDjcp0ZW1nnLyz79J2wGKOBtbHa93ZxbK
	D3U9m1yFtjGtRQh+EZFyerx+kJ+2RYiV2nDzigDz/103dVemgNXioFd1Zk89OH+kpPCabqKXdJZYC
	35IgHR+8w7HoWxCC+BXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKjlH-0000IJ-6N; Mon, 30 Aug 2021 16:03:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKjkg-00Hb3e-DX; Mon, 30 Aug 2021 16:03:15 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0BD556102A;
 Mon, 30 Aug 2021 16:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630339394;
 bh=aFevs/gSxbU10OD2HhmBmIy8lmlTrmGWeunJfZ8GXV4=;
 h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
 b=m2lWo3rrUt4CKtf+9F2RHi0LAvLDR2zr+nYw2qOLlFROMfazIHJUSBQ2RODMcrLCi
 pzQfitkSgwP1WJXPln2v8dn1uQJ2q+wfRUhgZJyRm18qEuds8+mYdqTboqvIdf+Gnc
 a4BTUmXO4/SkaUc8+GXU4aMi98MQ5kPd44a91lz4zWw+p2pitv8uVrAWtF7RFPapUA
 Eh/XkXZl59kLXE08NC8R2cnWZ8rufzCkM91fA3nPSBvo8tqYJDlSgUOZao+EXWjy15
 EboYQuQ5LkUOuRCJeXe7cq3/kwZ4dIFQnaekndyfxpXBsHJR1xjP87pkNRjPJsdOjz
 2AC5wSIaP7m9g==
Received: by mail-lf1-f46.google.com with SMTP id l2so24140038lfp.2;
 Mon, 30 Aug 2021 09:03:13 -0700 (PDT)
X-Gm-Message-State: AOAM530tc4Q6MDQv6mlg/c1PHbusJ8WGVSQvjWZMNNZBPi5lHpZGeSyW
 DIx40nSZsow2qRF8lVsid6pkjEPnQqJo5hyRuPU=
X-Google-Smtp-Source: ABdhPJx2X93KAB+EVeQrnZM2DurW5sWa6kSM/wqlVkgAZbsxt9UtjBf99dzVD1xur/X4iU/kpcebwmpmAENY8zMU9po=
X-Received: by 2002:a05:6512:3f89:: with SMTP id
 x9mr18217622lfa.233.1630339392410; 
 Mon, 30 Aug 2021 09:03:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210823143754.14294-1-michael.riesch@wolfvision.net>
 <CAGb2v67Duk_56fOKVwZsYn2HKJ99o8WJ+d4jetD2UjDsAt9BcA@mail.gmail.com>
 <568a0825-ed65-58d7-9c9c-cecb481cf9d9@wolfvision.net>
In-Reply-To: <568a0825-ed65-58d7-9c9c-cecb481cf9d9@wolfvision.net>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 31 Aug 2021 00:03:00 +0800
X-Gmail-Original-Message-ID: <CAGb2v658bD91LereM-Mc-2usEq-RH=pn_8bR9fEgmDUqpi5OoQ@mail.gmail.com>
Message-ID: <CAGb2v658bD91LereM-Mc-2usEq-RH=pn_8bR9fEgmDUqpi5OoQ@mail.gmail.com>
Subject: Re: [PATCH] net: stmmac: dwmac-rk: fix unbalanced pm_runtime_enable
 warnings
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: netdev <netdev@vger.kernel.org>, "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>, 
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Sasha Levin <sashal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_090314_529179_48FFCD47 
X-CRM114-Status: GOOD (  31.25  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Mon, Aug 30, 2021 at 3:57 PM Michael Riesch
<michael.riesch@wolfvision.net> wrote:
>
> Hi ChenYu,
>
> On 8/29/21 7:48 PM, Chen-Yu Tsai wrote:
> > Hi,
> >
> > On Mon, Aug 23, 2021 at 10:39 PM Michael Riesch
> > <michael.riesch@wolfvision.net> wrote:
> >>
> >> This reverts commit 2c896fb02e7f65299646f295a007bda043e0f382
> >> "net: stmmac: dwmac-rk: add pd_gmac support for rk3399" and fixes
> >> unbalanced pm_runtime_enable warnings.
> >>
> >> In the commit to be reverted, support for power management was
> >> introduced to the Rockchip glue code. Later, power management support
> >> was introduced to the stmmac core code, resulting in multiple
> >> invocations of pm_runtime_{enable,disable,get_sync,put_sync}.
> >>
> >> The multiple invocations happen in rk_gmac_powerup and
> >> stmmac_{dvr_probe, resume} as well as in rk_gmac_powerdown and
> >> stmmac_{dvr_remove, suspend}, respectively, which are always called
> >> in conjunction.
> >>
> >> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> >
> > I just found that Ethernet stopped working on my RK3399 devices,
> > and I bisected it down to this patch.
>
> Oh dear. First patch in a kernel release for a while and I already break
> things.
>
> Cc: Sasha as this patch has just been applied to 5.13-stable.
>
> > The symptom I see is no DHCP responses, either because the request
> > isn't getting sent over the wire, or the response isn't getting
> > received. The PHY seems to be working correctly.
>
> Unfortunately I don't have any RK3399 hardware. Is this a custom
> board/special hardware or something that is readily available in the
> shops? Maybe this is a good reason to buy a RK3399 based single-board
> computer :-)

I hit this on an ROC-RK3399-PC first, then bisected it on a NanoPi M4V2.
They both should be easy to get from their respective vendors. AFAIK
all the RK3399 devices have pretty much the same setup for Ethernet.

BTW, Don't get the Nanopi in the M4V2 variant. Get the original M4, or
the M4B (but the WiFi on the M4B doesn't seem to work lately).

> I am working on the RK3568 EVB1 and have not encountered faulty
> behavior. DHCP works fine and I can boot via NFS. Therefore, not sure
> whether I can be much of help in this matter, but in case you want to
> discuss this further please do not hesitate to contact me off-list.

My gut is telling me (without looking at the code) that maybe the GRF
access was not going through, and so the RGMII delays and stuff weren't
set properly, hence no traffic getting to/from the PHY. Otherwise there
were no error messages. I don't think I'll be able to squeeze out more
cycles to track down what actually went wrong though.


Regards
ChenYu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
