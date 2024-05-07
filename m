Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33AA0C19F4F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 23:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38JqXo10KSNpojK4ljbIjiw1gsZbxCEt1vjxy5Riy9M=; b=hWG6smJ+FKEsoG
	wq4Vwg2JVPuJeCirhmygcLngdDC9qBJVYFXKi5tsepcDiN0fCjpwakpHvW9Qinqre6rqAbT5dUcBE
	gbNUM3/ub7boowb8S53rlxblmK8+47EYJa/DT+sVGMV2iFqKZUm8RJvkR4PmQonFEAx6VsVT1b92d
	mbvvz+J4GnX/IpNDpwTaVHnw2XMQ2Br4HCkT2ZWAjYMnXQtRPDvfVXsve4B6A+686OR0B9PpLB7Vt
	cdnkd2dZS05ZwsRMwA0U4Z0ICKXPFQJ0GyRKh5iX622yrhjlvkAUu1C6OkLk5LVIkrhIkoHCUvHOG
	v4SrOTTIULvvIukgy9Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4UYV-0000000DONF-0aD2;
	Tue, 07 May 2024 23:49:07 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4UYR-0000000DOLV-3h61
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 23:49:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E0731CE12F2;
	Tue,  7 May 2024 23:49:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F5C1C2BBFC;
	Tue,  7 May 2024 23:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715125740;
	bh=noVNgvWjzAT0Hiwx4C0UMc3fu1gXKLlhnK+/oON4fBg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PPH4ucDhv4ZX/JyqUyq9R/QxhYRa1e5eDijcrK4DpNHrMSpsqfnLlWPAU/QSZS1VG
	 Cz551IMTUFtu8kQhE54Xkp3RRWwhUJRwZyEVlJ0s9+Hj6b+wvP5tTSEYZScaXQasAo
	 /fRsOXMjjvbriUxX0qYT/a9G5ub6USYADmMSwOwxD1K/oQSGfJF+LX1byrKjUY/xUS
	 gukVTkqNEIMK18Twypr8FXDLFDsy34uRX2Otw1UbUJrVu/fR/SRPoRCNnZAMHFLa+1
	 ECDODpcuLdFVud7/Y9fasVd5n70zGfWAH550ZATQeR8ReAHe6T0LeNWmiMC4Z4bkMF
	 u1pV70A2xmLjg==
Date: Wed, 8 May 2024 01:48:53 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 00/14] PCI: dw-rockchip: Add endpoint mode support
Message-ID: <Zjq95dc1odHpNRn7@ryzen.lan>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240504170537.GC4315@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240504170537.GC4315@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_164904_300998_7680EFDF 
X-CRM114-Status: GOOD (  25.31  )
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

Hello Mani,

On Sat, May 04, 2024 at 10:35:37PM +0530, Manivannan Sadhasivam wrote:
> On Tue, Apr 30, 2024 at 02:00:57PM +0200, Niklas Cassel wrote:
> > Hello all,
> > 
> > This series adds PCIe endpoint mode support for the rockchip rk3588 and
> > rk3568 SoCs.
> > 
> > This series is based on: pci/next
> > (git://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git)
> > 
> > This series has the following dependencies:
> > 1) https://lore.kernel.org/linux-pci/20240430-pci-epf-rework-v4-0-22832d0d456f@linaro.org/
> > The series in 1) has not been merged to pci/next yet.
> > 
> > 2) https://lore.kernel.org/linux-phy/20240412125818.17052-1-cassel@kernel.org/
> > The series in 2) has already been merged to phy/next.
> > 
> > Even though this series (the series in $subject) has a runtime dependency
> > on the changes that are currently queued in the PHY tree, there is no need
> > to coordinate between the PCI tree and the PHY tree (i.e. this series can
> > be merged via the PCI tree even for the coming merge window (v6.10-rc1)).
> > 
> > This is because there is no compile time dependency between the changes in
> > the PHY tree and this series. Likewise, the device tree overlays in this
> > series passes "make CHECK_DTBS=y" even without the changes in the PHY tree.
> > 
> > This series (including dependencies) can also be found in git:
> > https://github.com/floatious/linux/commits/rockchip-pcie-ep-v2
> > 
> > Testing done:
> > This series has been tested with two rock5b:s, one running in RC mode and
> > one running in EP mode. This series has also been tested with an Intel x86
> > host and rock5b running in EP mode.
> > 
> > BAR4 exposes the ATU Port Logic Structure and the DMA Port Logic Structure
> 
> Is this for configuring the EP from host? Just curious.

That is what I assume as well.
(As I cannot come up with any other reason why they have done this.)


> > pci_epf_test pci_epf_test.0: READ => Size: 1024 B, DMA: YES, Time: 0.000177625 s, Rate: 5764 KB/s
> > pci_epf_test pci_epf_test.0: READ => Size: 1025 B, DMA: YES, Time: 0.000171208 s, Rate: 5986 KB/s
> > pci_epf_test pci_epf_test.0: READ => Size: 1024000 B, DMA: YES, Time: 0.000701167 s, Rate: 1460422 KB/s
> > pci_epf_test pci_epf_test.0: READ => Size: 1024001 B, DMA: YES, Time: 0.000702625 s, Rate: 1457393 KB/s
> > 
> 
> Thanks a lot for sharing the pcitest results in the cover letter.

Thank you for the review!


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
