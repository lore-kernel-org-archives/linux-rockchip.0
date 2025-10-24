Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50A8ACCD1BF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Oct 2025 15:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kc2oLAvs8dSMPDxnwqvMMhF1oezrazFOZtbSCXwYYV8=; b=pptUejKdwPrD/n
	1xjEfxUyANgDJLzRM0A28Db3u9pRjsmeY8JlLw3VSfXZSIfURfzjUQduI5drKq8kdVX8ZTQv7TAKX
	ZF3vOp32ssuZzLnnXzwu8ezn25t45AOTEvRJfXX5BlYwSIzSIwfc1lxDQogKGthLsddecuSkCDmWX
	CMHzq0P6ROxtXyNj4xP4sQxmCfcYLNNSXppwnP+Dz9jHititRA8WJceeZMATRtXudf2FqkxAFcqFr
	s3RnnlXKT7i6R1Vgyfjx7C+rStQ/72gJUM3U4/Pvu7K4QUmpxhtCdtzkjca+w7UyVcFMWGn1EYtXG
	3ry/lJ2brjUXnnug5W2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCJag-00000009nML-0aqK;
	Fri, 24 Oct 2025 15:20:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCJad-00000009nM0-3ovO
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Oct 2025 15:20:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EDA59456F2;
	Fri, 24 Oct 2025 15:20:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE237C4CEF1;
	Fri, 24 Oct 2025 15:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761319226;
	bh=n5BEv7tANXuEeHLRiXCQjQbiBaE91Lb87LGC2gdxV0I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NGUsf/VbMr2BwAimYh6NTwmgavBP72r0G6D+vLaMYigU+2+nH7MUlivK4RJuChuZp
	 xZ12OeBKaEElwRy34Dw9eaPIER0IgnB3Ai9vo3FnbQBwIZIFGG7WCcpxQakNobzlhz
	 NNcngL+ZI2dqWBAh5mHGIrWPsVvX51zKYDn2lWq3nlbMQAfXOIf2fXSbD4niC42B7a
	 CSNwxQqgVIuGpGB0WfwT3RBQGiFs3w46Pd2KmSG2lBuH3CzkpY0eWICQYg4Sh6qoSv
	 jaFQaAM1sR76uspjFTfjnmC6LtQJdc24DiF1O7zcgnxDcKw3lND5+3j5P5wiT4OeUx
	 Ga8L3Iu/gwg4Q==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vCJaj-000000004RQ-3bNr;
	Fri, 24 Oct 2025 17:20:33 +0200
Date: Fri, 24 Oct 2025 17:20:33 +0200
From: Johan Hovold <johan@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linux-pci@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Christian Zigotzky <chzigotzky@xenosoft.de>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dragan Simic <dsimic@manjaro.org>, linuxppc-dev@lists.ozlabs.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH] PCI/ASPM: Enable only L0s and L1 for devicetree platforms
Message-ID: <aPuZQRaTN2tAwkb5@hovoldconsulting.com>
References: <20251023180645.1304701-1-helgaas@kernel.org>
 <aPuXZlaawFmmsLmX@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aPuXZlaawFmmsLmX@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_082027_988271_EA5FB80C 
X-CRM114-Status: GOOD (  16.16  )
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

On Fri, Oct 24, 2025 at 05:12:38PM +0200, Johan Hovold wrote:
> On Thu, Oct 23, 2025 at 01:06:26PM -0500, Bjorn Helgaas wrote:
> > From: Bjorn Helgaas <bhelgaas@google.com>
> > 
> > f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree
> > platforms") enabled Clock Power Management and L1 PM Substates, but those
> > features depend on CLKREQ# and possibly other device-specific
> > configuration.  We don't know whether CLKREQ# is supported, so we shouldn't
> > blindly enable Clock PM and L1 PM Substates.
> > 
> > Enable only ASPM L0s and L1, and only when both ends of the link advertise
> > support for them.
> > 
> > Fixes: f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree platforms")
> > Reported-by: Christian Zigotzky <chzigotzky@xenosoft.de>
> > Link: https://lore.kernel.org/r/db5c95a1-cf3e-46f9-8045-a1b04908051a@xenosoft.de/
> > Reported-by: FUKAUMI Naoki <naoki@radxa.com>
> > Closes: https://lore.kernel.org/r/22594781424C5C98+22cb5d61-19b1-4353-9818-3bb2b311da0b@radxa.com/
> > Reported-by: Herve Codina <herve.codina@bootlin.com>
> > Link: https://lore.kernel.org/r/20251015101304.3ec03e6b@bootlin.com/
> > Reported-by: Diederik de Haas <diederik@cknow-tech.com>
> > Link: https://lore.kernel.org/r/DDJXHRIRGTW9.GYC2ULZ5WQAL@cknow-tech.com/
> > Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> > Tested-by: FUKAUMI Naoki <naoki@radxa.com>
> > ---
> > I intend this for v6.18-rc3.
> 
> Note that this will regress ASPM on Qualcomm platforms further by
> disabling L1SS for devices that do not use pwrctrl (e.g. NVMe). ASPM
> with pwrctrl is already broken since 6.15. [1]

Actually, the 6.15 regression was fixed in 6.18-rc1 by the offending
commit, but pwrctrl devices will now also regress again.

> Reverting also a729c1664619 ("PCI: qcom: Remove custom ASPM enablement
> code") should avoid the new regression until a proper fix for the 6.15
> regression is in place.
 
Johan

> [1] https://lore.kernel.org/lkml/aH4JPBIk_GEoAezy@hovoldconsulting.com/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
