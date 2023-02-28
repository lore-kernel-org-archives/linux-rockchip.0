Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 797F7C64EC7
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Feb 2023 12:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=1R5BvYX2DGRN33Vcb6Yk4RcwZGCsHttdJZpzlW4TpTI=; b=Kn1VYKQaCZmy+X
	fwTdKTqGWqu0c3QQVSfa7VizUQ5Ri/yOBPF1CZegwxEyfyF8sggSbdPby5rzIwbE8DBTbdMemTgmJ
	g1B6W71/TUf+ALgY/XjN1yfIvYmIqAlLLHDosfHSrpfCbP3IEJhlU25NSaS1qdNbG88OOHEAUL/v9
	o02AU/jXvqHpEQrqJ3EzbuBYIMAraOSv6xvR61EKXAH3qzFltztceIkMrRDOLZtpyrUOICiZMr6ui
	fyxMsRZp4VU+b2C0M113J9pTY0VltvE7jGuPz6GNXzulMslaCjHbhgJZeg4fxebU8y7rkRb8ITFvw
	Z9Q0K1nVLaYIVj7uzfAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWzLR-00DCXo-Q9; Tue, 28 Feb 2023 12:44:37 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWzLO-00DCXH-So
	for linux-rockchip@lists.infradead.org; Tue, 28 Feb 2023 12:44:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B5EEEB80E25;
	Tue, 28 Feb 2023 12:44:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 345F4C433D2;
	Tue, 28 Feb 2023 12:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677588269;
	bh=5vD8F33+DLmNKEwc0z+5TwyctOD+cWuhRkWhA1uNv9s=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=S2Ad+XD1tABYC74JbEHGqbvaffI+kZpdyJEHABbIWdt5JfdYyS3B4wRIEZdUgx59y
	 JQCRJr45dHdXXvwQ3rVslym2Z02wejotL9G3Vmw2FTZ/eNobiCJETDgBCepVly8Vzz
	 lnQlUjZEga/q/EwHqIBQKBYU+ScppuIwu7n/YmMDTuq061ZBFpLvMAYK6L9wrDSAsc
	 K9PmPw1kgsKGuBv0V1TBBYv+3IZ8ojEcVfhqdJ0Eu9RDGKla/IgqYsq5ccvOHmyAfm
	 TDReu7qBQndYptFDvL8eWNKNC8xymC9IcO1An2SmA/hikFy50mUePqw9A0tLel0AA7
	 q7i7wKJZ0AdtQ==
Date: Tue, 28 Feb 2023 06:44:27 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Simon Xue <xxm@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: smalltalk@swismail.com, Serge Semin <Sergey.Semin@baikalelectronics.ru>,
	Kever Yang <kever.yang@rock-chips.com>,
	Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org
Subject: Re: [Bug 217100] New: Bifurcation between pcie3x1 & pcie3x2 doesn't
 work in RK3568J.
Message-ID: <20230228124427.GA114786@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bug-217100-41252@https.bugzilla.kernel.org/>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_044435_120156_C51D6E8A 
X-CRM114-Status: GOOD (  21.50  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

On Tue, Feb 28, 2023 at 08:53:50AM +0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=217100
> 
>            Summary: Bifurcation between pcie3x1 & pcie3x2 doesn't work in
>                     RK3568J.
> ...

> Hello.
> 
> First, I want to say that pcie3x1 crashes if started before pcie3x2 . Driver
> > pcie-designware.c 
> 
> in function 
> 
> > void dw_pcie_version_detect(struct dw_pcie *pci)
> 
> tries to read parameter from dbi register (PCIE_VERSION_NUMBER) and fails on
> it.
> So I changed sequence of declaration PCIE in rk3568.dtsi: first - pcie3x2 next
> pcie3x1. Now Linux first starts pcie3x2, then successfully starts pcie3x1.
> 
> But main problem is that bifurcation in phy driver 
> > phy-rockchip-snps-pcie3.c 
> 
> doesn't work. I tried add next lines in function
> 
> > static int rockchip_p3phy_probe(struct platform_device *pdev)
> 
> right after block check
> 
> > if (priv->num_lanes == -EINVAL) {
> > }
> 
> > priv->num_lanes = 2;
> > priv->lanes[0] = 1;
> > priv->lanes[1] = 2
> 
> And driver writes during Linux boot process that bifurcation is enabled, but
> 
> lspci
> 
> does't show second device.
> 
> Best regards,
> Anton.

Thanks much for your report, Anton.  People don't really pay attention
to the bugzilla, so I'm forwarding this to the mailing list and to
some folks who've worked on that driver in the past.

MAINTAINERS doesn't list an entry for pcie-dw-rockchip.c; I'm not sure
if that's an oversight or if nobody cares enough to actually maintain
it.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
