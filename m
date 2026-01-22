Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 019A7D62602
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jan 2026 09:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1IkQOgYrNi7vxydVSE5/Fw6HVghGqter1YtJZWnwZAA=; b=eQrUq5LGcHWYAY
	8vbO7hvclODAEQ3P2PzUuLSVZD83NUs4MH4qkv294UI3WgXThCNOglBDUiCAF44Jq5f0h1IWxV/GF
	4CDyULrKasCG9q5tDlmzmAlPHpyptejlaaoooFRo1RAH+8QNQyi2YcA8Dxm0CbHdiKaSlarZ/JR4y
	MjWgafUQZ5VdZFtAWJ7a/xC9rI4wZInWqmsJ9Nvp4WNs4bxZYCPE55OspKu4baT+00F66IetTk18b
	YX0F9WVb0Lm9+TpEVcTU+l0hD2INJAvoRd7rGJ26WnKwi+mnx3OUoWrn2vbUy5zOzGem9peShQnn/
	c3iN+p+/4zLpPJ3uZ5+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viqfT-00000006iR4-0HdP;
	Thu, 22 Jan 2026 09:07:55 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viqfR-00000006iQl-08Np;
	Thu, 22 Jan 2026 09:07:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 034DC600C4;
	Thu, 22 Jan 2026 09:07:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 850BEC116C6;
	Thu, 22 Jan 2026 09:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769072871;
	bh=AgonMyAfa9uiPAYfh9C/Bgq2TL9WZTm/OGzex9FWfw4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hgCpabng6JJHn8xRpFIZe3jTHR9hU+5UBwyWFBOynni6OUUO5/1LoqwoNeWABlfHH
	 gFmvsu+Ub6HroBHFQTsKy+WnxPMz/gQd32yzv35wwosxYpo/r5KPPNHf3S8poDZQ1t
	 HISyuOKpUtPye2gQr26v0sinjWCgnIQYxi5rUZ8wg/pqcqs5ipg8mXkbJumpMhnWR7
	 EXBy2GsYM/M4JjzUfFP3ECw10Z7D8Bfohlp4OSOeSOPVyRSQRir/Lo2mT1CUbha70Z
	 A3+ca+pqctDTrEzrRZ1OKIfJYqzm2ukB26n/6MxUMKSJjmcRWe9D5UpYHAncWnxW3r
	 TwSzrWaOtE4jA==
Date: Thu, 22 Jan 2026 10:07:37 +0100
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
Subject: Re: [PATCH v9 5/5] Documentation: PCI: endpoint: Clarify
 pci_epc_set_bar() usage
Message-ID: <aXHo2YDMkMnFb2LI@ryzen>
References: <20260122084909.2390865-1-den@valinux.co.jp>
 <20260122084909.2390865-6-den@valinux.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260122084909.2390865-6-den@valinux.co.jp>
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

On Thu, Jan 22, 2026 at 05:49:09PM +0900, Koichiro Den wrote:
> The current documentation implies that pci_epc_set_bar() is only used
> before the host enumerates the endpoint.
> 
> In practice, some Endpoint Controllers support calling pci_epc_set_bar()
> multiple times for the same BAR (without clearing it) in order to update
> inbound address translations after the host has programmed the BAR base
> address, which some Endpoint Functions such as vNTB already rely on.
> Add document text for that.
> 
> Also document the expected call flow for BAR subrange mapping
> (pci_epf_bar.num_submap / pci_epf_bar.submap), which may require a
> second pci_epc_set_bar() call after the host has programmed the BAR base
> address.
> 
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> Signed-off-by: Koichiro Den <den@valinux.co.jp>
> ---

Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
