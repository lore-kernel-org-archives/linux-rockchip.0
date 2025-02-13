Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6796C0219D
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Feb 2025 13:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=otbTgSY9osiqG7B5ce6MnjNa9tBq80Q5r1PuYXP1JJI=; b=Ruq+mDkkVnWnpQ
	OTSg/9aPdFRkzOiwvL2d9qnTdIZB/wCEySC0nRDES1RGCQQexCI24P03zdxWJ+LXfKG5TQH6OPT79
	Ik1v3hLRX6OGAgd7twUlxq84iBLYwE1vTws3zhOxq73kQZpeCVnamAPOqKg/cSTPhWrRiII1LJb16
	z1PhorD2lv/rkplYBQgf6WcKJc2iXyk77a+lrCaSi6DPBxnAd6mMj+jN5yFnaVziroiwCsdC+7iwD
	8mQs1K3aZnLGqg5nzxesJU9k0ONMocdlEqA0NGV3iXjEMWBj7GD+o9Hf9VJ2rNNMM8uvyilhZ0WG8
	npRQsf9l+mKH4S8ccqrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiZMr-0000000BAYn-3LeR;
	Thu, 13 Feb 2025 13:35:01 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiZLQ-0000000BAMH-1frr;
	Thu, 13 Feb 2025 13:33:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B53E0A42515;
	Thu, 13 Feb 2025 13:31:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1373C4CED1;
	Thu, 13 Feb 2025 13:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739453609;
	bh=kgYYi5gE9XFIXtE+llwT6I0YU7Locvddc9D9m9nyYkw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EoMJvc9JuIEYgOOkNrD41jfgfLWkX2fVT+syW5KYDYOaw8ZYAsngR5ReQ6HDZRttl
	 iwJokiaisOLsxlbHPaXmx2zxtnF7yRnFYgYUpS9QxliBfm98Av8OgUSIR24Xh6yo8y
	 KOPts531v597Wc7amfy1I+NZQBX0zcizlSmcDDuJrgMplriivbduXrqeUNCHfDdHuZ
	 ylShMUAeSW9FOnwPVZbPPPATHw3rhWKvI1WfL+By6JPqIbvZ/6F0CGxL0SBjt+6qpK
	 kEi+iPlsIY0mLzH1wCGJ7B38YsZKA+LXjxM02DpGPdCK0PGXVp9AHKPPpvqPN46jvt
	 gjXdKeO6qyQEg==
Date: Thu, 13 Feb 2025 14:33:24 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Udit Kumar <u-kumar1@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 0/7] PCI: endpoint: Allow EPF drivers to configure the
 size of Resizable BARs
Message-ID: <Z630pORpGSqwcYxo@ryzen>
References: <20250131182949.465530-9-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250131182949.465530-9-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_053332_570169_1EFCB913 
X-CRM114-Status: GOOD (  22.71  )
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

On Fri, Jan 31, 2025 at 07:29:49PM +0100, Niklas Cassel wrote:
> The PCI endpoint framework currently does not support resizable BARs.
> 
> Add a new BAR type BAR_RESIZABLE, so that EPC drivers can support resizable
> BARs properly.
> 
> For a resizable BAR, we will only allow a single supported size.
> This is by design, as we do not need/want the complexity of the host side
> resizing our resizable BAR.
> 
> In the DWC driver specifically, the DWC driver currently handles resizable
> BARs using an ugly hack where a resizable BAR is force set to a fixed size
> BAR with 1 MB size if detected. This is bogus, as a resizable BAR can be
> configured to sizes other than 1 MB.
> 
> With these changes, an EPF driver will be able to call pci_epc_set_bar()
> to configure a resizable BAR to an arbitrary size, just like for
> BAR_PROGRAMMABLE. Thus, DWC based EPF drivers will no longer be forced to
> a bogus 1 MB forced size for resizable BARs.
> 
> 
> Tested/verified on a Radxa Rock 5b (rk3588) by:
> -Modifying pci-epf-test.c to request BAR sizes that are larger than 1 MB:
>  -static size_t bar_size[] = { 512, 512, 1024, 16384, 131072, 1048576 };
>  +static size_t bar_size[] = { SZ_1M, SZ_1M, SZ_2M, SZ_2M, SZ_4M, SZ_4M };
>  (Make sure to set CONFIG_CMA_ALIGNMENT=10 such that dma_alloc_coherent()
>   calls are aligned even for allocations larger than 1 MB.)
> -Rebooting the host to make sure that the DWC EP driver configures the BARs
>  correctly after receiving a link down event.
> -Modifying EPC features to configure a BAR as 64-bit, to make sure that we
>  handle 64-bit BARs correctly.
> -Modifying the DWC EP driver to set a size larger than 2 GB, to make sure
>  we handle BAR sizes larger than 2 GB (for 64-bit BARs) correctly.
> -Running the consecutive BAR test in pci_endpoint_test.c to make sure that
>  the address translation works correctly.
> 
> 
> Changes since V3:
> -Picked up tags.
> -Addressed comments from Mani.
> 
> 
> Kind regards,
> Niklas
> 
> Niklas Cassel (7):
>   PCI: endpoint: Allow EPF drivers to configure the size of Resizable
>     BARs
>   PCI: endpoint: Add pci_epc_bar_size_to_rebar_cap()
>   PCI: dwc: ep: Move dw_pcie_ep_find_ext_capability()
>   PCI: dwc: endpoint: Allow EPF drivers to configure the size of
>     Resizable BARs
>   PCI: keystone: Describe Resizable BARs as Resizable BARs
>   PCI: keystone: Specify correct alignment requirement
>   PCI: dw-rockchip: Describe Resizable BARs as Resizable BARs
> 
>  drivers/pci/controller/dwc/pci-keystone.c     |   6 +-
>  .../pci/controller/dwc/pcie-designware-ep.c   | 218 +++++++++++++++---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c |  22 +-
>  drivers/pci/endpoint/pci-epc-core.c           |  31 +++
>  drivers/pci/endpoint/pci-epf-core.c           |   4 +
>  include/linux/pci-epc.h                       |   5 +
>  6 files changed, 239 insertions(+), 47 deletions(-)
> 
> -- 
> 2.48.1
> 

Considering that all patches are have at least one R-b tag,
any chance this series could get picked up?


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
