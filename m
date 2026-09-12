Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CDB6C88E59
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2026 14:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=MMFpLbrYW3ADXBif17tgUiRLcMsWsiD1A2IH1zwdzDc=; b=xDXBKfQCfErff1
	9ehIFhqhenAUMkiAdUyrssLR0BdCrYLuIkLaVDiGKHaU9zcwUaHEZ9k0ZQuIUTza198+eDiMMHCr6
	d/ETKS87QldZf+dvkSoT1Ap+CP3aGT4w4eEqxQdfzHSt0xzCSheWTCyHWWeiGkW2/7ix4u0f6eFJu
	gUAPg22yc83PO+akDSlKswmRCQcX4JOXdCb5lc5lcDF8gOBLX4PEb1Si1oJ5YgJ0Q0tbZr9/RLD6Z
	gfCKR64WE+wwYAHmIu0J1c6cNB7ysqoEGpyxUWlRex+kklWvHDRPEmcCcUTJ7IAboTLqoish+Oj8n
	NeelbipwqYQVXG/wRCCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5OJ0-00000000vJ0-43sa;
	Sat, 12 Sep 2026 14:02:10 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5OIz-00000000vIg-2QLD;
	Sat, 12 Sep 2026 14:02:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B732A601F1;
	Sat, 12 Sep 2026 14:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 424521F00898;
	Sat, 12 Sep 2026 14:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789221728;
	bh=HhkQLlPB59P0XClAYNcVy9iMiNOvmVp4sSejcGpryII=;
	h=Date:From:To:Cc:Subject:In-Reply-To;
	b=eQxmc4al0/OBE1frFyBPWrBQeC8rqLIOOFpOZ1Eh0/sVTb5pVrusuo+fUb3jR1S8c
	 iCeDUxE85eohxy69nT/S7tpQcSvSegbQ7TprbePLCJf5w+afOkgXJ++9Eip5QKqaJX
	 40VWN89atDSA/gAiV6anwIQO2gV/tE2mcF2kHChHcQK7Q2WkKbOcex/5hjNYo68t6N
	 Kb+HgNFEg+MlUa5SI2CIPu8He30HwygovEJqDyRaZr0EAjXTpUZYg+cK/aMk73Cbmv
	 zA/ZzF4MzI+qos/s6ZWYyX4HuuJkO2t/a5rvFBuT7uWS6oZjx0povsrmy32HQuvVNn
	 KfqOnvm9pDI4Q==
Date: Sat, 12 Sep 2026 09:02:07 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-tegra@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Felix Gu <ustc.gu@gmail.com>
Subject: Re: [PATCH v9 3/3] PCI: Remove device links to PHY
Message-ID: <20260912140207.GA655851@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260912113944.cfs6tebsv2eqctvw@skbuf>
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

On Sat, Sep 12, 2026 at 02:39:44PM +0300, Vladimir Oltean wrote:
> Hi Bjorn,
> 
> On Fri, Sep 11, 2026 at 05:12:09PM -0500, Bjorn Helgaas wrote:
> > [+cc Felix, author of device link leak fixes]
> > 
> > On Mon, Aug 10, 2026 at 03:43:15PM +0300, Vladimir Oltean wrote:
> > > This is practically a full revert of commit
> > > 7a4db656a635 ("PCI: dra7xx: Create functional dependency between PCIe and PHY")
> > > and a partial revert of the device link pieces from commits
> > > dfb80534692d ("PCI: cadence: Add generic PHY support to host and EP drivers")
> > > 49229238ab47 ("PCI: keystone: Cleanup PHY handling")
> > 
> > Can we split this into three commits (dra7xx, cadence, keystone)?
> > This combined commit is applied on the pci/controller/misc branch, and
> > then we have conflicts between that branch and
> > pci/controller/dwc-dra7xx.
> > 
> > I think if we split this into three separate commits, we can apply the
> > dra7xx one on pci/controller/dwc-dra7xx and drop Felix's device link
> > leak fixes below so we don't clutter the git history with conflict
> > resolutions or irrelevant commits:
> > 
> >   https://git.kernel.org/cgit/linux/kernel/git/pci/pci.git/commit/?id=2b9a036b568c ("PCI: dra7xx: Fix device link leak when devm_phy_get() fails")
> > 
> >   https://git.kernel.org/cgit/linux/kernel/git/pci/pci.git/commit/?id=bdfdf654b4b2 ("PCI: dra7xx: Fix device links leak when dra7xx_pcie_enable_phy() fails")
> 
> Isn't this patch already merged in pci/next as
> https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git/commit/?id=9a9d18547ddc97a73d5d90cff4d5aef90bd8c15d
> ?

Yes, it is, but until Linus pulls it, the PCI tree is a draft subject
to revision.  IMO the git history will be much cleaner.  The end
result will be the same but we won't have conflict resolutions and
fixes to code that was removed.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
