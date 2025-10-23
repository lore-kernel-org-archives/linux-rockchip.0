Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 075C6CCD193
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 20:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=gP169haGbwNsdP09P4+XeuG0so7DUn8hNPsa5oUMn3Y=; b=NttcRMptEBeZ/u
	Lw09q6nCodh0u6HZxhfmCgLshNMTmqPqqP3sjp0ELPmLXEFL76fM0VRsEIFKxemqXuSBELhHkAFfh
	QD4EDz0PV4ES8u/sanpyJ1kM0LdTObTvNZ57bXyWhcHy+rpFKC8u9rfiUW7EJH+r7cu01nI4Xle5R
	k7yj/6udlqKoJwEshXX++v4M7oGOOzt8TAB1CgnOufkDtBeSqjHbhLNwcdCWmAgi8/ZelzeNpMecc
	69OfQCbYApK7pLPEqPZhoUAh3C55w3jk52P1OnP5vodBBxSkEmd7wOx34Kdxi2C8AFbGRamcNXMXw
	STChgx9Ila7bfev4Y9Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC25X-00000007Y3Y-2ipd;
	Thu, 23 Oct 2025 20:39:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC25W-00000007Y3S-2uyc
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Oct 2025 20:39:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 22BF360052;
	Thu, 23 Oct 2025 20:39:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A54ECC4CEE7;
	Thu, 23 Oct 2025 20:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761251949;
	bh=Iifi+VbV963RwdpYbf2ljnl0AJ421iOJ11fymH6RoHM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=FPGgIEa2tcCqmJ6crL47tJjlXDlazTRrJVHvyevCAimVX0h63+mCMT2vecNCsIhnp
	 8CWWHyJhr0778CXW9/vnLFOIuRmoZYHri9IZ4esCTVuVAZ/8diIGKk86aaJCPuLX37
	 FSIuNxRgonsLUllGN7CGgXzzQUmHsw24RfydNgWz8Mpvon5HpYuGTajd+P4Suot8kU
	 TqU1EW518gKJmt2+rH7jjuIS2FO9UHwGE/ajoB3B0R66pYunD9PW8en+k5BrazM8Vx
	 WiMfKerWzbFgGJAuDBzVhRXqCP8UDLdjlLznC7/kkfBvWZrvmhzy8GqrnNl1CQZQHs
	 i7NryYntI+n+g==
Date: Thu, 23 Oct 2025 15:39:08 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: linux-pci@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Christian Zigotzky <chzigotzky@xenosoft.de>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Dragan Simic <dsimic@manjaro.org>, linuxppc-dev@lists.ozlabs.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH] PCI/ASPM: Enable only L0s and L1 for devicetree platforms
Message-ID: <20251023203908.GA1314564@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DDPYVBSYR01V.1OSGKL2X8LT82@cknow-tech.com>
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

On Thu, Oct 23, 2025 at 09:59:41PM +0200, Diederik de Haas wrote:
> Hi Bjorn,
> 
> Thanks for the patch :-)
> 
> On Thu Oct 23, 2025 at 8:25 PM CEST, Bjorn Helgaas wrote:
> > On Thu, Oct 23, 2025 at 01:06:26PM -0500, Bjorn Helgaas wrote:
> >> From: Bjorn Helgaas <bhelgaas@google.com>
> >> 
> >> f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree
> >> platforms") enabled Clock Power Management and L1 PM Substates, but those
> >> features depend on CLKREQ# and possibly other device-specific
> >> configuration.  We don't know whether CLKREQ# is supported, so we shouldn't
> >> blindly enable Clock PM and L1 PM Substates.
> >> 
> >> Enable only ASPM L0s and L1, and only when both ends of the link advertise
> >> support for them.
> >> 
> >> Fixes: f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree platforms")
> >> Reported-by: Christian Zigotzky <chzigotzky@xenosoft.de>
> >> Link: https://lore.kernel.org/r/db5c95a1-cf3e-46f9-8045-a1b04908051a@xenosoft.de/
> >> Reported-by: FUKAUMI Naoki <naoki@radxa.com>
> >> Closes: https://lore.kernel.org/r/22594781424C5C98+22cb5d61-19b1-4353-9818-3bb2b311da0b@radxa.com/
> >> Reported-by: Herve Codina <herve.codina@bootlin.com>
> >> Link: https://lore.kernel.org/r/20251015101304.3ec03e6b@bootlin.com/
> >> Reported-by: Diederik de Haas <diederik@cknow-tech.com>
> >> Link: https://lore.kernel.org/r/DDJXHRIRGTW9.GYC2ULZ5WQAL@cknow-tech.com/
> >> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> >> Tested-by: FUKAUMI Naoki <naoki@radxa.com>
> >
> > Provisionally applied to pci/for-linus, hoping to make v6.18-rc3.
> >
> > Happy to add any testing reports or amend as needed.
> 
> My build with your patch (on top of 6.18-rc2) just finished, so I
> installed it and rebooted into it.
> Happy to report that everything seems to be working fine and I can't
> find any errors, warnings or other messages with 'nvme' in dmesg that
> indicate sth could be wrong. IOW: it does indeed fix the issue I
> reported earlier. So feel free to add my:
> 
> Tested-by: Diederik de Haas <diederik@cknow-tech.com>

That's tremendous, thank you for all your help and testing!  I know 
it's frustrating and time consuming when things break, and I really
appreciate your reports and help.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
