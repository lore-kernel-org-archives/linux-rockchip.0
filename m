Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CEC0C44536
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jan 2026 09:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oNqlVHW8IpJb0gHFk+1YoU2UxPLPcl2QVJ5P1j/cU7M=; b=gCkG9YefCBSeCi
	hwA/w7xlqUdT1vw+pgrUpcm/tzZ3GqfP+J16T9i/jgHTxUOtwAME1lERhegt6TVvSrQP3ybV2azS5
	ZZtozooIw0ZXEltcusNGnuSk4y18tLOo6VF6UaPvhRtatX2qcImbiOcuv2CMnadUH0SVADH57Trb0
	Wz5GmUwk9PHbiQj3L2l8DvAXDzPe6jSK/TCKXs5Kl2Lh2zoa3OnMNniF8ExqP1n5JpUBYeww5wbbC
	dCZUx2alb3aNvpNOUuGqzTGWN8bw2e8YqRQFGSqYrD0t0EP75JVH2OhOHSkvLiRNXStjv/uonh48M
	xxjp9S0GRQkrQh9OqQ1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viqbW-00000006i9o-2lax;
	Thu, 22 Jan 2026 09:03:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viqbU-00000006i98-26lR;
	Thu, 22 Jan 2026 09:03:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id F2702408EA;
	Thu, 22 Jan 2026 09:03:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84B24C116C6;
	Thu, 22 Jan 2026 09:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769072627;
	bh=/MehKJmORgEwpJF+msBgFBXkm59BZbIQr2N6eBZwaBU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mzS2xZFueyQor31YESEgMROI8UCRsNdNneVBo50jCEGgFSMndbkcVLiq094C9Jgwo
	 35xH5C7NvzIFyWXvYPRYokoInGijcOBS0s7kTSD2rs1/MqN9zduYtpaudJCO+JuAqG
	 qcWHYywg7hKt7GdHjeGmWDOUYJB6iwtmm/ueYCQLgRuZFzV2GbCuKXuU2MXYlJakLG
	 aH44EBU6o0ftXLIKcH4ybHu24Fk6i93FHqusQwGGBCq7PliSXGB5LtBmwErA8ofuSI
	 1bNHoT4dAhRVT8PtymGXeVJ7cNMHyPdS0U6tbkBKYlgKT3Kc03EbDVdYMvih9iEmwv
	 v/QGCAMt1Lw/Q==
Date: Thu, 22 Jan 2026 10:03:33 +0100
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
Subject: Re: [PATCH v9 2/5] PCI: endpoint: Add BAR subrange mapping support
Message-ID: <aXHn3zuxxfBN1yps@ryzen>
References: <20260122084909.2390865-1-den@valinux.co.jp>
 <20260122084909.2390865-3-den@valinux.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260122084909.2390865-3-den@valinux.co.jp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_010348_579581_806B913E 
X-CRM114-Status: GOOD (  11.42  )
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

On Thu, Jan 22, 2026 at 05:49:06PM +0900, Koichiro Den wrote:
> Some endpoint platforms have only a small number of usable BARs. At the
> same time, EPF drivers (e.g. vNTB) may need multiple independent inbound
> regions (control/scratchpad, one or more memory windows, and optionally
> MSI or other feature-related regions). Subrange mapping allows these to
> share a single BAR without consuming additional BARs that may not be
> available, or forcing a fragile layout by aggressively packing into a
> single contiguous memory range.
> 
> Extend the PCI endpoint core to support mapping subranges within a BAR.
> Add an optional 'submap' field in struct pci_epf_bar so an endpoint
> function driver can request inbound mappings that fully cover the BAR.
> 
> Introduce a new EPC feature bit, subrange_mapping, and reject submap
> requests from pci_epc_set_bar() unless the controller advertises both
> subrange_mapping and dynamic_inbound_mapping features.
> 
> The submap array describes the complete BAR layout (no overlaps and no
> gaps are allowed to avoid exposing untranslated address ranges). This
> provides the generic infrastructure needed to map multiple logical
> regions into a single BAR at different offsets, without assuming a
> controller-specific inbound address translation mechanism.
> 
> Signed-off-by: Koichiro Den <den@valinux.co.jp>
> ---

Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
