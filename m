Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A5CDCCD1BF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Oct 2025 20:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=93rneBDbYgWwijsO/uiFsWrkbVXOHJ1uTMYA8UQJsSY=; b=jr1nSIInonnIOR
	QI1/CzOti5HTrLisw7NFu3NKYboTYn6DZ0o4ElyuPid50Tmp8w/LFQts+34T2ik7VZFJ1dvsQ2pDv
	3DDfWQ4MaLx6MGw0o19SK960nD9/7102Tfh5bhdQZ+wygHdnXFokcGvPsdCj7ndvpVETCDG2vEakg
	V4LkJ4nA1dD4ScFr2CrQOHaNbZj+czBAHEnqlOOZ5IHyE5ypp9YsIjgkAwwxT0PcxLNdpzMwuq7P5
	SN7aVxw4OGxgiiXBb9b6kOu+HsXAQyhbOq1bQGfo1HkB47T1uZKx8YuiTbHkCY0D5msh6vFNpbl2V
	JiVNdXURXdAvPnavf89w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCOZM-0000000AUH4-2zq9;
	Fri, 24 Oct 2025 20:39:28 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCOZL-0000000AUGy-1DHp
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Oct 2025 20:39:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4FD2A601D4;
	Fri, 24 Oct 2025 20:39:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCEE4C4CEF1;
	Fri, 24 Oct 2025 20:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761338366;
	bh=nnTnBDGKXvWU3WYDEB3L7PEM0B9KPYgfbjggQZcxrE0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=Z2zGaHcxF2LNrnLMJqLPWZhzVV1wDDWav76HGV8HAS8LukB473viCusYP/EP83vly
	 1DroxzbJfkKukObqkqh/VIchMmfMCsGcGOs8S0WFGZeWJquceY27S98gwfz3oLOz9q
	 I/a9HhY4p6syTcqdnMUD6iLTTVC5nt3NBKm0GK06BpSIKBw7wy0lHl1agr5xY3V3fw
	 vxmhhR93W0NkYvZx/YxK9CgB0CCV1eHmVA3MvQf3wpxtcAkzn0Km6HM4o8sNav8mL9
	 28wyXwQe7xUwFSpcvE8iU0PwPhdUZ7mY7IbUJgH0KEeawoOMtl/O/YorTMehiBheqt
	 Z9DnFkl/JlhAA==
Date: Fri, 24 Oct 2025 15:39:24 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: linux-pci@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Christian Zigotzky <chzigotzky@xenosoft.de>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dragan Simic <dsimic@manjaro.org>, linuxppc-dev@lists.ozlabs.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Bjorn Helgaas <bhelgaas@google.com>,
	Shawn Lin <shawn.lin@rock-chips.com>, Frank Li <Frank.li@nxp.com>
Subject: Re: [PATCH] PCI/ASPM: Enable only L0s and L1 for devicetree platforms
Message-ID: <20251024203924.GA1361677@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aPuZQRaTN2tAwkb5@hovoldconsulting.com>
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

[+cc Shawn, Frank]

On Fri, Oct 24, 2025 at 05:20:33PM +0200, Johan Hovold wrote:
> On Fri, Oct 24, 2025 at 05:12:38PM +0200, Johan Hovold wrote:
> > On Thu, Oct 23, 2025 at 01:06:26PM -0500, Bjorn Helgaas wrote:
> > > From: Bjorn Helgaas <bhelgaas@google.com>
> > > 
> > > f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for
> > > devicetree platforms") enabled Clock Power Management and L1 PM
> > > Substates, but those features depend on CLKREQ# and possibly
> > > other device-specific configuration.  We don't know whether
> > > CLKREQ# is supported, so we shouldn't blindly enable Clock PM
> > > and L1 PM Substates.
> > > 
> > > Enable only ASPM L0s and L1, and only when both ends of the link
> > > advertise support for them.
> > > 
> > > Fixes: f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree platforms")
> ...

> > > ---
> > > I intend this for v6.18-rc3.
> > 
> > Note that this will regress ASPM on Qualcomm platforms further by
> > disabling L1SS for devices that do not use pwrctrl (e.g. NVMe). ASPM
> > with pwrctrl is already broken since 6.15. [1]
> 
> Actually, the 6.15 regression was fixed in 6.18-rc1 by the offending
> commit, but pwrctrl devices will now also regress again.
> 
> > Reverting also a729c1664619 ("PCI: qcom: Remove custom ASPM enablement
> > code") should avoid the new regression until a proper fix for the 6.15
> > regression is in place.

Help me think through this.  I just sent a pull request [2] that
includes df5192d9bb0e ("PCI/ASPM: Enable only L0s and L1 for
devicetree platforms").  If all goes well, v6.18-rc3 will enable L0s
and L1 (but not L1SS) on Qualcomm platforms.

IIUC, if we then revert a729c1664619 ("PCI: qcom: Remove custom ASPM
enablement code"), it will enable L1SS again, but since this is done
in a dw_pcie_host_ops .post_init() hook, L1SS will only be enabled for
devices powered on at qcom-pcie probe time.  It will *not* be enabled
for pwrctrl devices because .post_init() was run when those devices
were powered off.

I think this is the same as in v6.17.  v6.18-rc1 enabled L1SS for
everything, including pwrctrl devices, because it was done in the PCI
enumeration path, not the host controller probe path.  I think that
enumeration is the right place to do this, but we need to figure out
how to do it in a generic way.  At a minimum, we need to know that
CLKREQ# is supported, and some platforms like dw-rockchip also need
device-specific configuration [3].

Bottom line, I think we need to revert a729c1664619 for v6.18 to get
all ASPM states including L1SS enabled on Qualcomm platforms for
non-pwrctrl devices.  I'll post a patch for this.

Then try to figure out how to make this work for pwrctrl devices for
v6.19.  Does this sound right?

Bjorn

> > [1] https://lore.kernel.org/lkml/aH4JPBIk_GEoAezy@hovoldconsulting.com/

[2] https://lore.kernel.org/r/20251024192903.GA1360890@bhelgaas
[3] https://lore.kernel.org/r/1761187883-150120-1-git-send-email-shawn.lin@rock-chips.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
