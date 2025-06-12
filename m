Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE7CBC71136
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 13:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YuwPwXzT/kMserzG5xcFZV896/XQbMSlVoNvJcK1emo=; b=NmDIpPqltWgn3L
	45KtYSMvPXkexwOSCVOtO3Nm7wxe0Qca2GwhZlTqKZ79Tq4RnwyjcFHG6YqO39q7d+dR9P0J3i8OO
	XaYI+cIRFZh/PD56qW/93BNhbJW/IHlkaWF9hV2sIzRX9lwDIdjrn4AML6exT4JG0rZ+axsQRztF0
	uxYqp2TNJKVdtjDu2N3Mm8nZEl3Gg1qR/qg33N/b56Lf6Fmnj4tpx8FWsm87So3Hkjg8c/YJqyvoS
	oYZx/Cx4WDW9NgSF2U9H6dhyM09QEYWoccOfluhBrKFgLgBsdDyJEYZVkgiK5MkgrUnGi/B1gfwNG
	qL75Cy/ZJjDcmLAmsphA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPhqE-0000000DNkQ-2RfI;
	Thu, 12 Jun 2025 13:19:38 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPgIH-0000000DADC-26h3;
	Thu, 12 Jun 2025 11:40:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id BE65AA519F9;
	Thu, 12 Jun 2025 11:40:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6783C4CEEA;
	Thu, 12 Jun 2025 11:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749728428;
	bh=eP6kQwyfpfqMWt9WSHDrI/JTr30d77aJcDyT3/Xn1/I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D46JWsakhRB5k/BPS9uJJunPPFbQ930TCx8CYfMB9003RqEMmtJ5B64IFBas1iBwu
	 /4MMzXuy3gcjbfwxuRN1REHLQjet6gnn3zam2RSYu94JY6jQoOMoTjCgC/cGTRVENw
	 Jk96kMZL8U6IRhu1kUBOgXcvvJwKKML0uMwA4RGb6oOqOyc6LaI4K8mGVLtc5RZSfn
	 fP8++qibyKX6FfBf6IkgzDNOL/YbFflMphTM+nU5r8hnwGBFB5ZAFIMmFbKMp6aNxw
	 4Z3ZtmApILBsclnJq/GP5zWsYByLTUfVOBE7IGAlczKybny3okkzk82aCgDLNvzwmX
	 GNZ/SVcjjhUMg==
Date: Thu, 12 Jun 2025 13:40:23 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Laszlo Fiat <laszlo.fiat@proton.me>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/4] PCI: dw-rockchip: Do not enumerate bus before
 endpoint devices are ready
Message-ID: <aEq8pxE45PmeXN_W@ryzen>
References: <aEq30a7vJmKyYWYT@ryzen>
 <20250612113827.GA894522@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250612113827.GA894522@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_044029_606304_A00F33AE 
X-CRM114-Status: GOOD (  22.48  )
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

On Thu, Jun 12, 2025 at 06:38:27AM -0500, Bjorn Helgaas wrote:
> On Thu, Jun 12, 2025 at 01:19:45PM +0200, Niklas Cassel wrote:
> > On Wed, Jun 11, 2025 at 04:14:56PM -0500, Bjorn Helgaas wrote:
> > > On Wed, Jun 11, 2025 at 12:51:42PM +0200, Niklas Cassel wrote:
> > > > Commit ec9fd499b9c6 ("PCI: dw-rockchip: Don't wait for link since we can
> > > > detect Link Up") changed so that we no longer call dw_pcie_wait_for_link(),
> > > > and instead enumerate the bus directly after receiving the Link Up IRQ.
> > > > 
> > > > This means that there is no longer any delay between link up and the bus
> > > > getting enumerated.
> 
> > > I think the comment at the PCIE_T_RRS_READY_MS definition should be
> > > enough (although it might need to be updated to mention link-up).
> > > This delay is going to be a standard piece of every driver, so it
> > > won't require special notice.
> > 
> > Looking at pci.h, we already have a comment mentioning exactly this
> > (link-up):
> > https://github.com/torvalds/linux/blob/v6.16-rc1/drivers/pci/pci.h#L51-L63
> > 
> > I will change the patches to use PCIE_RESET_CONFIG_DEVICE_WAIT_MS instead.
> 
> I'll more closely later, but I think PCIE_T_RRS_READY_MS and
> PCIE_RESET_CONFIG_DEVICE_WAIT_MS are duplicates and only one should
> exist.  It looks like they got merged at about the same time by
> different people, so we didn't notice.

I came to the same conclusion, I will send a patch to remove
PCIE_T_RRS_READY_MS and convert the only existing user to use
PCIE_RESET_CONFIG_DEVICE_WAIT_MS.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
