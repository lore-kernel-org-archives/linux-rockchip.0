Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34D40D29DFE
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 10:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PziP4aXwdmawUgePmppztEM+uEBzkvJG/jVNTMn1bCM=; b=UvvZBcvhG0x8Bn
	Q7kzmhDgaBT2NwnWGvdUVKXecreK6LjsypTlp9Dcirl6qoi+fTKu+KbJFYsp0ZMsZbzUgG2oUGCVx
	+DkEmokkENEVm4AaI0oSO1fz23bqPZwzXln1sPrNMxJrIrX70B039ypvj+/6w4+vhxK6by6R0VLE8
	6TdUo8or8XGDwn2cKJdsek081rBFU0F1fEC8yxE+Zjo5QugyWIwd0B++DLlALsJlNrxELIYMf8p4i
	zzhd1xCGr+VboAdZQgyjpr/3dOgDUhZHB72fzPMcRWkdIk+w1k/OeQLZiiL85IODorsr7MpwgKY+m
	dBOU5Fl8O/mkzaDR1XrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfbTV-00000006tOd-2V2o;
	Tue, 13 Jan 2026 10:18:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfbTR-00000006tOU-2oCb;
	Tue, 13 Jan 2026 10:18:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9FFCB6000A;
	Tue, 13 Jan 2026 10:18:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EE25C116C6;
	Tue, 13 Jan 2026 10:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768299484;
	bh=0fpbeQGAJF9xjq5Byej/gkDKIoAX4CGtzrNcpesJoYY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SRp9YMANteq690cw3Tc7KijMkA6B5f5vSRAv1KYS88CI6bYfRan3AunIB+7E3+4Zf
	 mH6JR+bx1yw1zxCxKPf3N1DLKskJu82uTfBstubAf28agXhdqU772iiBJkM5LgXEpy
	 plOKWgaX4KN/pF6w30vo35DCBordFKJeLgvSIIfExlQb5H2XThPtbweNqsw40BnW02
	 gumS3q0YECyjFfZOW1nnxfwdEnGYxO1CC4ikdXYnd7c3XwQmF7m/5skQdCXx7sdxre
	 E0Rgup+mH27I+3bpVVUf7q1WahO6w+oqQMKt64/Evzkesa8eBewcfSH5ATrS9liPkS
	 BVWMV4ydfdzuQ==
Date: Tue, 13 Jan 2026 11:17:51 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Koichiro Den <den@valinux.co.jp>
Cc: jingoohan1@gmail.com, mani@kernel.org, lpieralisi@kernel.org,
	kwilczynski@kernel.org, robh@kernel.org, bhelgaas@google.com,
	vigneshr@ti.com, s-vadapalli@ti.com, hongxing.zhu@nxp.com,
	l.stach@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com, minghuan.Lian@nxp.com,
	mingkai.hu@nxp.com, roy.zang@nxp.com, jesper.nilsson@axis.com,
	heiko@sntech.de, srikanth.thokala@intel.com,
	marek.vasut+renesas@gmail.com, yoshihiro.shimoda.uh@renesas.com,
	geert+renesas@glider.be, magnus.damm@gmail.com,
	christian.bruel@foss.st.com, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, thierry.reding@gmail.com,
	jonathanh@nvidia.com, hayashi.kunihiko@socionext.com,
	mhiramat@kernel.org, kishon@kernel.org, jirislaby@kernel.org,
	rongqianfeng@vivo.com, 18255117159@163.com,
	shawn.lin@rock-chips.com, nicolas.frattaroli@collabora.com,
	linux.amoon@gmail.com, vidyas@nvidia.com, Frank.Li@nxp.com,
	linux-omap@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH v6 5/5] Documentation: PCI: endpoint: Clarify
 pci_epc_set_bar() usage
Message-ID: <aWYbzzAeDSLYJJcB@ryzen>
References: <20260113023715.3463724-1-den@valinux.co.jp>
 <20260113023715.3463724-6-den@valinux.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260113023715.3463724-6-den@valinux.co.jp>
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

On Tue, Jan 13, 2026 at 11:37:15AM +0900, Koichiro Den wrote:
> The current documentation implies that pci_epc_set_bar() is only used
> before the host enumerates the endpoint.
> 
> In practice, some Endpoint Controllers support calling pci_epc_set_bar()
> multiple times for the same BAR (without clearing it) in order to update
> inbound address translations after the host has programmed the BAR base
> address, which some Endpoint Functions such as vNTB already relies on.
> Add document text for that.
> 
> Also document the expected call flow for BAR subrange mapping
> (pci_epf_bar.use_submap / pci_epf_bar.submap), which may require
> a second pci_epc_set_bar() call after the host has programmed the BAR base
> address.
> 
> Signed-off-by: Koichiro Den <den@valinux.co.jp>
> ---
>  Documentation/PCI/endpoint/pci-endpoint.rst | 22 +++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/Documentation/PCI/endpoint/pci-endpoint.rst b/Documentation/PCI/endpoint/pci-endpoint.rst
> index 0741c8cbd74e..d3d9abbbc71e 100644
> --- a/Documentation/PCI/endpoint/pci-endpoint.rst
> +++ b/Documentation/PCI/endpoint/pci-endpoint.rst
> @@ -95,6 +95,28 @@ by the PCI endpoint function driver.
>     Register space of the function driver is usually configured
>     using this API.
>  
> +   Some endpoint controllers also support calling pci_epc_set_bar() again
> +   for the same BAR (without calling pci_epc_clear_bar()) to update inbound
> +   address translations after the host has programmed the BAR base address.
> +   Endpoint function drivers can check this capability via the
> +   dynamic_inbound_mapping EPC feature bit.
> +
> +   When pci_epf_bar.use_submap is set, the endpoint function driver is
> +   requesting BAR subrange mapping using pci_epf_bar.submap. This requires
> +   the EPC to advertise support via the subrange_mapping EPC feature bit.
> +
> +   If the EPF driver wants to program inbound subrange mappings that are
> +   based on the BAR base address programmed by the host during enumeration,
> +   it needs to call pci_epc_set_bar() twice for the same BAR (requires
> +   dynamic_inbound_mapping): first with use_submap cleared to configure the
> +   BAR size, then after the PCIe link is up and the host enumerates the
> +   endpoint and programs the BAR base address, again with use_submap set.

"If the EPF driver wants to ..."

Here you have phrased it in a way where it almost seems like this is an
alternative way that you could use this feature.

But in reality, dw_pcie_ep_ib_atu_addr() will return an error if
dw_pcie_ep_read_bar_assigned() does not return an assigned PCI address.

So perhaps write it something like:
"When an EPF driver wants to make use of the inbound subrange mapping
feature, it requires that the BAR base address has been programmed by
the host during enumeration. Thus, it needs to ..."


> +
> +   Note that in this flow, the EPF driver must not call pci_epc_clear_bar()
> +   between the two pci_epc_set_bar() calls, because clearing the BAR can
> +   clear/disable the BAR register or BAR decode on the endpoint while the
> +   host still expects the assigned BAR address to remain valid.

"Note that in this flow, ..."

This also somehow sounds like this is an alternative way, when it is the
only way.

Perhaps simply something like:
"Note that when making use of the inbound subrange mapping feature,
the EPF driver must not call pci_epc_clear_bar() ..."


With that fixed, this looks good to me:
Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
