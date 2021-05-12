Return-Path: <SRS0=3kgl=KH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD11FC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 01:45:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3CE4161625
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 01:45:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3CE4161625
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6EPO8r8BBDMzDUdm6ppyo3mshpZkPuVfh6Wt0FvlUyA=; b=cVjDpuGB5LKL0JFEbH3fSW3DY
	jR1sAsp2NpYUrQr2nxxfOFl+C9d4csCdEdBDNGa8Zd5g8D076EJ65Pkc6rkKPbm9jt8gRUjZBaDsU
	NS01Wt1k4xlhtd/D8kxzK3xTN0b6/DhPxmzwt4OHdDPzy5J2US7RCYOqXVtgNvih7p2LLvx0R6TaR
	+OEwMDzEGVkMw+E1wMY6PHXYx7YjNe+Fnv+rF5Y6MIhR4CiiylXRMm4w+70yyoOb0uNb41Wfn4wfk
	/uDHO49pYJGzIusYdZssdreVFW6x2HE8bIHk0/hRGrlqVnPSS0r1+h6gA6EM36azE0FE67EnOQDHL
	urQ/9zXYg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgdwd-001j29-P4; Wed, 12 May 2021 01:45:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgdwV-001j0t-GK
 for linux-rockchip@desiato.infradead.org; Wed, 12 May 2021 01:45:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=RY0FbXeciXf+eRiGZwpaJiiBkIF1cUE9AZQITZCXRqc=; b=4CRwEHmVzko4L4h5qSe2ugtjLc
 NrtM0XuK06fevP23WKDFVD3yc2pTj4YbdxLp534TFQxa3H6zjw4h/K+Wyrhl7K9dW+Zij0pn13k0h
 p4Zi6PUKPoznCjpHe0e+T4NbFaXjHnEWBMsfU/t91eiuHMmdU5sreXrSsUgFsHtxQvzPZnoqpoVsG
 FqsXohU5CiITzJSJ5ysC4bdRGkSrr1c4c0+g+XDtfm61qpgD7gWPbmtMIiVppWvH/Tpfni0ha8ytx
 nF6X+Yct5cVlCRmNCss6UFw8wXH6+AljktYcrfKs0jYxGpyxIHgwxUANszjfUajoZpCQ7g9snvQig
 vqrQIbKQ==;
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgdwS-00A2Xd-LA
 for linux-rockchip@lists.infradead.org; Wed, 12 May 2021 01:45:42 +0000
Received: by mail-yb1-xb31.google.com with SMTP id 82so28825793yby.7
 for <linux-rockchip@lists.infradead.org>; Tue, 11 May 2021 18:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RY0FbXeciXf+eRiGZwpaJiiBkIF1cUE9AZQITZCXRqc=;
 b=hqsmcTeyhcB4qkRP0Ook5eInotR55pdtCp+QGsKkpEjTqe4jLjUpoX7qLLxfegbIvs
 4VBRvZVTsfOWZNDuP4Eefm6Ef7MngT82TWzcQcPIO+wMvFijt9oS/xhOwRtFHnGstSs1
 dRfWkiadpVYncRDA1TLKc5EPL3fCbmPKGePfD6Qn8Cd4ZVPb9+C28uYSJJ1NQDkPzryl
 VcKOtWWnTCg28WvdRJxSUkcXtSZNYCFEtuvlI541LH8PuREDpBrDdk/myw1K+H8USp+C
 SGoWp8vpDZdI7Hr8H0rulwOGKfwLje7UASQCqzrpTloYSkVB9qL/amrAU+5lTICaujT1
 dlnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RY0FbXeciXf+eRiGZwpaJiiBkIF1cUE9AZQITZCXRqc=;
 b=kJggrZDvHBXRP34EVUFuAbkBwpgDtO6zMiCTx71L8ubPSbSmLNWMbyJIjDaOSeHaFg
 YQUvUhXm7k96+mf5yPYn2y8QlWau7/sW/HpmXR0XAT8+Zd0EWud7oLHi1zH7s6uAMEmt
 Nb7yic1PV83KeMiEKELVeVzD2YFIYSj6o0OoVsShP3q8vP/TMT6cikjqEWLbfsAZE958
 KMA4PKf3nGyHyMqdM/dzb+DQkfSLndsG51W+r3A4YaEZdkWFJqUICv51dD0JoTWkTVrc
 aSL3yV18o+4d2G/9SFB3xLU9YIWDc3+Fmr7pzZXStREi0CD6pUTuSeVwS72D5ctM3rRm
 l60w==
X-Gm-Message-State: AOAM533LOOEYM82hb78c5NUlU7+Kvz4YyGjCgKgqOa8O/oekUsdt4CGZ
 8BnSAFSwE+EvRmqNCwINsUuoE41R5QhlF1bcxhk=
X-Google-Smtp-Source: ABdhPJxcsE174J00MC05n2r68fpE8bueRLTGQX26HZgYtE78lnMjDKuJzY3CWaeKVJVUv0VjqpYk4G5IWPREEuR0+m0=
X-Received: by 2002:a5b:3c2:: with SMTP id t2mr44069877ybp.39.1620783939211;
 Tue, 11 May 2021 18:45:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210511225913.2951922-1-pgwipeout@gmail.com>
 <YJsl7rLVI6ShqZvI@lunn.ch>
In-Reply-To: <YJsl7rLVI6ShqZvI@lunn.ch>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 11 May 2021 21:45:27 -0400
Message-ID: <CAMdYzYrbzk60=XvU4dEeb9QriKDXD1bDEbL86nD+yZjbik-E3g@mail.gmail.com>
Subject: Re: [PATCH v2] net: phy: add driver for Motorcomm yt8511 phy
To: Andrew Lunn <andrew@lunn.ch>
Cc: Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>, 
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux Kernel Network Developers <netdev@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_184540_736902_AFC04922 
X-CRM114-Status: GOOD (  20.68  )
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

On Tue, May 11, 2021 at 8:48 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Tue, May 11, 2021 at 06:59:13PM -0400, Peter Geis wrote:
> > Add a driver for the Motorcomm yt8511 phy that will be used in the
> > production Pine64 rk3566-quartz64 development board.
> > It supports gigabit transfer speeds, rgmii, and 125mhz clk output.
>
> Hi Peter
>
> Please can you add minimal RGMII delay support. Trying to add it later
> generally end up in backwards compatibility problems.

It should be possible, yes.
I experimented a bit with it but it just broke things.
I'm still digging through the datasheet to find what is possible for this PHY.
A lot of items should be set up via the device tree, though it seems
this is a relatively unused concept in the net phy subsystem.
As I'm relatively new to this subsystem I'm still learning as well.

>
> Do you know which one of the four RGMII modes your setup needs? Is the
> PHY adding the Rx and Tx delays? So "rgmii-id"?

By default it implements a 500ps delay internally on the txd clock and
a 1.2 ns delay on the rx clock.
The controller is the snps,dwmac-4.20a, and it implements a default
delay as well.

I'd like to eventually support as much as possible.
For instance it seems to support cable testing.
What I've done so far has been through trial and error, but I'd prefer
a more scientific approach.
I need to be able to test that functions work and would need someone
who's experienced with network phys to assist.

>
>        Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
