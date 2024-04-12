Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2B24C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 21:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S2ZnjECgikuzao0f0e17IVq8DI3oINmy+MrzT4v0MfM=; b=c8qdPb3Vg7i5p5
	P2KQc49v2WeXnJeQEw8XSGpfgN+MOTcrfYu9rzhn0BMkG0rsmHiGew0DzBIlVkeXlG3B9KlGY2F0C
	tYnJL3jZT3pXMnU58tKkDTUtwXZWMjvlT0oFbJU144lPx5CTdmaRo4jSIcOAc7wg9vB2ahrY0LqpB
	uo5kD2bTXGNXB0H6Mxt+z+F7/W+FN0zaziknfVChDtvND9zufwgV4+fFeZxaYIbhvYnp80M58+Hyb
	VjB15BP3gNPNgQ7uq7RLVwESQ2WKJ+rj2kFz0fDTPgJyEm8cWWefP9A0amcwsiAvn8ksft0d40/Nc
	0/NtDR3ampU2oSopU90Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvOcg-00000001QMU-3LhU;
	Fri, 12 Apr 2024 21:39:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvOcc-00000001QL6-3AsL;
	Fri, 12 Apr 2024 21:39:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AC8CD61A69;
	Fri, 12 Apr 2024 21:39:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 702EBC2BD11;
	Fri, 12 Apr 2024 21:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712957985;
	bh=StRJuGJHX5iauCPjJNLmRUJ//vqsBQy0hLFpKuERmhU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rvlgo99ErNnDhg98e7amVSEoduth588jCU5MZCuerHGA0kFtSFXweE4TU2xp8wuc6
	 kb6SCDGn22VN8VsYxFvOApM1oTjEeioKUoUdCIFsD48l1kN/LCsFzl/anTSrlDnxYi
	 VZbHIr6vPQVpc90WkincsveIGyUhSrhTXoJ/z0FTbOZRgIfPt8j4a/K4LVV9WPdruY
	 Rv3N2pHN0K5WbdN/it06v6dcMCblSwkV4Hst2VehrRWnwEvhJXwpOQHpfhb1AHdl8I
	 YJCfGyHpkuU4if9LVwp9KCTVLmjC82Pa/GJb8y0XGBqVgAC+2kPDDzrEIpYZm3DbwP
	 qP71fwrI9U0eg==
Date: Fri, 12 Apr 2024 23:39:39 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shradha Todi <shradha.t@samsung.com>,
	Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 8/9] PCI: rockchip-ep: Set a 64-bit BAR if requested
Message-ID: <ZhmqG6avmX8ZOtIX@ryzen>
References: <20240313105804.100168-9-cassel@kernel.org>
 <20240412175127.GA8613@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240412175127.GA8613@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_143946_909817_EA4C31EA 
X-CRM114-Status: GOOD (  29.92  )
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

On Fri, Apr 12, 2024 at 12:51:27PM -0500, Bjorn Helgaas wrote:
> On Wed, Mar 13, 2024 at 11:58:00AM +0100, Niklas Cassel wrote:
> > Ever since commit f25b5fae29d4 ("PCI: endpoint: Setting a BAR size > 4 GB
> > is invalid if 64-bit flag is not set") it has been impossible to get the
> > .set_bar() callback with a BAR size > 4 GB, if the BAR was also not
> > requested to be configured as a 64-bit BAR.
> > 
> > It is however possible that an EPF driver configures a BAR as 64-bit,
> > even if the requested size is < 4 GB.
> > 
> > Respect the requested BAR configuration, just like how it is already
> > repected with regards to the prefetchable bit.
> 
> Does this (and the similar cadence patch) need a Fixes: tag for
> f25b5fae29d4?

I don't think so.

Both patches are about respecting the configuration requested by an EPF
driver.

So if an EPF driver requests a 64-bit BAR, the EPC driver should configure
that. (Regardless of the size that the EPF driver requests for the BAR.)

If we really want a Fixes-tag, I would imagine that it will be the respective
initial commits that added these drivers (pcie-cadence-ep.c and
pcie-rockchip-ep.c), as it has been this way since then.

If you look at the EPF drivers we currently have, they will currently only
request a 64-bit BAR if any of the BARs can only be configured as a 64-bit
BAR because of hardware limitiations.

$ git grep only_64bit

Neither of these two drivers have any such hardware limitiations,
so these commits are currently a bit pointless.

However, the drivers should of course do the right thing, because other
EPC drivers might look at them and copy their code.

And who knows, maybe sometime in the future there will be an EPF driver
that will explicitly request a 64-bit BAR, regardless of size.

TL;DR: I don't think these two commits are worth backporting.


> 
> > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> > ---
> >  drivers/pci/controller/pcie-rockchip-ep.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> > index c9046e97a1d2..57472cf48997 100644
> > --- a/drivers/pci/controller/pcie-rockchip-ep.c
> > +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> > @@ -153,7 +153,7 @@ static int rockchip_pcie_ep_set_bar(struct pci_epc *epc, u8 fn, u8 vfn,
> >  		ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_IO_32BITS;
> >  	} else {
> >  		bool is_prefetch = !!(flags & PCI_BASE_ADDRESS_MEM_PREFETCH);
> > -		bool is_64bits = sz > SZ_2G;
> > +		bool is_64bits = !!(flags & PCI_BASE_ADDRESS_MEM_TYPE_64);
> >  
> >  		if (is_64bits && (bar & 1))
> >  			return -EINVAL;
> > -- 
> > 2.44.0
> > 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
