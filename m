Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C8E7C4741F
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 23:49:32 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1EB5B20B1F
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 23:49:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Ljjy8c8+";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ragnatech-se.20150623.gappssmtp.com header.i=@ragnatech-se.20150623.gappssmtp.com header.b="tRyeEN3n"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1EB5B20B1F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ragnatech.se
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TGXVBN6G1vFyN52du9N4xNHtYyE08hF0BXJGzRgeojk=; b=Ljjy8c8+tCEDCq/bupu/bv5MM
	g8jvbnxvNmJvU/9g+miKjouU7ntkq+dTSH2LDk/G6cLQMrNCT7EtttHaHhBkJ4KZIB5AlWm2FdQMy
	mVOm6/ScUyZXn/YlxtNtIsh7vtATM9YHe+PogfP5iWopKKu4h3/Vy/0ZfU2VWUT566A00sRB2JJVI
	KUkDutUYh4SJjtz0lZM9ugOB3LosNVF7NnfCWfDG7FE3yMmow81+ifUal9CqUv8JHq0TqvN871ARv
	RfJimp7UnyfVYW+felsZO8Jchu9uGJ0os+MR656ySWqyrVVjQ47v2BsaZ16AIyl77D8fH6cNiCl40
	iNHJ/gzOg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNlqf-00014N-2p; Wed, 30 Sep 2020 23:49:25 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNlqG-0000qH-E1
 for linux-rockchip@lists.infradead.org; Wed, 30 Sep 2020 23:49:02 +0000
Received: by mail-lj1-x242.google.com with SMTP id c2so3056285ljj.12
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Sep 2020 16:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=1K6GZ5cts7m5+dPoKFk/BNjOtI5JoHWgjjAufBHq48Y=;
 b=tRyeEN3nhgw2RRiORdqa8mpKabxwtR2R8hUhmoETiBpNETmt2SnVpE5e0nP7yROGy9
 tMHSmwiXfQxTXWC44UEShc2AgHdCjJS5UaQCxQi9+e7M5Ga5b0iOtCt7qjgRkMxxBPfH
 3rJCakAOPi3yqMGC+Dp6OUPQBUNmhzbPk0YHNp7nTvYw5jQZX8GU1fAh4CfMPrViGxmb
 kzUaTEpstRZnM9P6CEIfcsWNvfaEdZVwRQWg1L2EvrHPobqfO0VfvBAf/oyFuTzlyW4Z
 DrqR/BYHu+yofs46Dxey5ewEqwVuVeyADzoGUH208xPIe160j3zc+ebPnE3YNFuxcUhv
 c8ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=1K6GZ5cts7m5+dPoKFk/BNjOtI5JoHWgjjAufBHq48Y=;
 b=H/diEuvlGTCj0eIWfeRHgd2UJBtWenSwcpSQ1+05wbQW2C9l1/je0SLcM3C4kp/aZn
 bzOBejQlvydSHN9Z9XxzhWVekx88d0FtQztE/n/Hc6vpMR+cEUBVqeesm7JljcT1tTmY
 516grzs5iL7WZIeLINGwxZ2b8d+vG7Yt2nZiqKUvaULCY38+t1+mK5uXAiEkNjb7zrMR
 JtbG8FM8Pvjti2dne56GMRdij9q8gdFWO9t2YskVxgEXvykvgSA0c81Dhl/m7edv0CWz
 kSbsWiVN272i4HXdAOzFyS0n6dg61YRdyEm8TawQQ27QBIiRCSARZzDcwmoLQHub9e1J
 IHLg==
X-Gm-Message-State: AOAM531bJr/LlpD51Rg7vjtoFhXBuJ0C5/7L+c7iqSvdlwL5XkQpPC4a
 HMlMBgjU00moExRfizpxBHmi6w==
X-Google-Smtp-Source: ABdhPJxf7ZY83Qyw/h83m+REyH2P0HviHDKEwswK3B/J5Q6hMpcTf1FtPONgOIKku3H2miUH7CQbUg==
X-Received: by 2002:a2e:80d2:: with SMTP id r18mr1585556ljg.98.1601509738794; 
 Wed, 30 Sep 2020 16:48:58 -0700 (PDT)
Received: from localhost (h-209-203.A463.priv.bahnhof.se. [155.4.209.203])
 by smtp.gmail.com with ESMTPSA id q18sm346450lfr.138.2020.09.30.16.48.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Sep 2020 16:48:58 -0700 (PDT)
Date: Thu, 1 Oct 2020 01:48:57 +0200
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v2] of: address: Work around missing device_type property
 in pcie nodes
Message-ID: <20200930234857.g2gxdablzaewvwfq@oden.dyn.berto.se>
References: <CAL_Jsq+xBKbYXWipwmZ=ZidorsMUFDw2NpUyxobx4FCTn+8Hmg@mail.gmail.com>
 <20200930225154.GA2631019@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930225154.GA2631019@bjorn-Precision-5520>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200930_194900_657929_A769C6A9 
X-CRM114-Status: GOOD (  31.31  )
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 Samuel Dionne-Riel <samuel@dionne-riel.com>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Marc Zyngier <maz@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Android Kernel Team <kernel-team@android.com>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Bjorn,

On 2020-09-30 17:51:54 -0500, Bjorn Helgaas wrote:
> On Wed, Sep 30, 2020 at 03:34:10PM -0500, Rob Herring wrote:
> > On Wed, Sep 30, 2020 at 12:37 PM Niklas S=F6derlund
> > <niklas.soderlund@ragnatech.se> wrote:
> > >
> > > Hi Marc,
> > >
> > > On 2020-09-30 18:23:21 +0100, Marc Zyngier wrote:
> > > > Hi Niklas,
> > > >
> > > > [+ Samuel]
> > > >
> > > > On 2020-09-30 17:27, Niklas S=F6derlund wrote:
> > > > > Hi Marc,
> > > > >
> > > > > I'm afraid this commit breaks booting my rk3399 device.
> > > > >
> > > > > I bisected the problem to this patch merged as [1]. I'm testing o=
n a
> > > > > Scarlet device and I'm using the unmodified upstream
> > > > > rk3399-gru-scarlet-inx.dtb for my tests.
> > > > >
> > > > > The problem I'm experience is a black screen after the bootloader=
 and
> > > > > the device is none responsive over the network. I have no serial =
console
> > > > > to this device so I'm afraid I can't tell you if there is anything
> > > > > useful on to aid debugging there.
> > > > >
> > > > > If I try to test one commit earlier [2] the system boots as expec=
ted and
> > > > > everything works as it did for me in v5.8 and earlier. I have wor=
ked
> > > > > little with this device and have no clue about what is really on =
the PCI
> > > > > buss. But running from [2] I have this info about PCI if it's hel=
pful,
> > > > > please ask if somethings missing.
> > > >
> > > > Please see the thread at [1]. The problem was reported a few weeks =
back
> > > > by Samuel, and I was expecting Rob and Lorenzo to push a fix for th=
is.
> > >
> > > Thanks for providing a solution.
> > >
> > > >
> > > > Rob, Lorenzo, any update on this?
> > =

> > The fix is in Bjorn's tree[1].
> > =

> > Bjorn, going to send this to Linus before v5.9 is out?
> =

> Definitely, thanks for the reminder.  I'm assuming the fix in question
> is https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git/commit=
/?h=3Dfor-linus&id=3De338eecf3fe79054e8a31b8c39a1234b5acfdabe

That patch solves my boot problem.

Cherry-picked and tested directly on-top of v5.9-rc7 (which fails to =

boot without the patch in question).

> =

> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git/log=
/?h=3Dfor-linus

-- =

Regards,
Niklas S=F6derlund

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
