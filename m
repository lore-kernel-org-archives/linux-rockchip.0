Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A547ACF65D0
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jan 2026 10:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+53YT7AdUXZlA+Cs35KijQVLS6LQi1a3UpiVeG1D3IA=; b=W5ctKVuBWRjaqX
	/GWB1C/kpOYei9I50Q2lT/Gk6o34202q6rEjnjYRfexTa1YKXtGid7zRbfKDgOg1gBE/w66HOJ1ev
	WVrrzB/6vSppKtxE7xQK/G+Q9IRhXBwOcXI3qCTlX4jifjrVRtcMk+PccjAfGhtO9FI9te1eOn5xg
	QdqDQbVTFyMfRWz1AoJPnjn0fD7VL2Ux2rPxYk30Q4u+ltkpnIcYtAxrCK8vtPYn9cyhPxHwbd5rc
	afNqrHYlWqFVTFwQB2h9Rs3G/FhQnwGexCbGG+neVH5KE5LV9+ulb2HoAcV3tP8cYVPfYCQlqxSqv
	NnOxSaYeeuTgNzd8xzfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkJmZ-0000000CHde-0tJn;
	Mon, 26 Jan 2026 10:25:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkJmX-0000000CHd2-0XSM;
	Mon, 26 Jan 2026 10:25:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 43EE4600B0;
	Mon, 26 Jan 2026 10:25:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CABA5C116C6;
	Mon, 26 Jan 2026 10:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769423116;
	bh=X15mCfB1eLkM+Q70lpbeFtmKLy3xRRhtPt0DJGPJd1I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kigC4KnPkwuten2W4vry7/Q7uLnx5jkxhwNDPy0SmE0+vvbSCHF02ake/mqQ6lpDx
	 k3o+5GdnskVWEhwFv+soH8UL3BFwTStxAXpVkb7npdZKtA0UMIAzg1tVPsbpFK6Rg6
	 4I1DwGLJocJGNLwVtaDzP5qs/IXjbThjudzizPR9NNoCayirZ5zFwD+EhinoKSrkqO
	 FEa8FbY08hWJdyw1ez2QCO5ymgyh4sujmDe9gD6sM5qhEicDEJ9FfhMQgnchnA1N6u
	 xE9gTZtR5iqv2+uoDoCPjx2r7bV7yVpvWCG0stjTBpjqqoqt2A+mm+zAfNOJhw0pf0
	 WqfejPPvWWhng==
Date: Mon, 26 Jan 2026 11:25:03 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Koichiro Den <den@valinux.co.jp>
Cc: jingoohan1@gmail.com, mani@kernel.org, lpieralisi@kernel.org,
	kwilczynski@kernel.org, robh@kernel.org, bhelgaas@google.com,
	Frank.Li@nxp.com, vigneshr@ti.com, s-vadapalli@ti.com,
	hongxing.zhu@nxp.com, l.stach@pengutronix.de, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	minghuan.Lian@nxp.com, mingkai.hu@nxp.com, roy.zang@nxp.com,
	jesper.nilsson@axis.com, heiko@sntech.de,
	srikanth.thokala@intel.com, marek.vasut+renesas@gmail.com,
	yoshihiro.shimoda.uh@renesas.com, geert+renesas@glider.be,
	magnus.damm@gmail.com, christian.bruel@foss.st.com,
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
	thierry.reding@gmail.com, jonathanh@nvidia.com,
	hayashi.kunihiko@socionext.com, mhiramat@kernel.org,
	kishon@kernel.org, jirislaby@kernel.org, rongqianfeng@vivo.com,
	18255117159@163.com, shawn.lin@rock-chips.com,
	nicolas.frattaroli@collabora.com, linux.amoon@gmail.com,
	vidyas@nvidia.com, shuah@kernel.org, linux-omap@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@axis.com,
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-tegra@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v10 4/8] PCI: dwc: ep: Support BAR subrange inbound
 mapping via Address Match Mode iATU
Message-ID: <aXdA_6shI23JBswI@ryzen>
References: <20260124145012.2794108-1-den@valinux.co.jp>
 <20260124145012.2794108-5-den@valinux.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260124145012.2794108-5-den@valinux.co.jp>
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

On Sat, Jan 24, 2026 at 11:50:08PM +0900, Koichiro Den wrote:
> Extend dw_pcie_ep_set_bar() to support inbound mappings for BAR
> subranges using Address Match Mode IB iATU when pci_epf_bar.num_submap
> is non-zero.
> 
> Rename the existing BAR-match helper into dw_pcie_ep_ib_atu_bar() and
> introduce dw_pcie_ep_ib_atu_addr() for Address Match Mode. When
> num_submap is non-zero, read the assigned BAR base address and program
> one inbound iATU window per subrange. Validate the submap array before
> programming:
> - each subrange is aligned to pci->region_align
> - subranges cover the whole BAR (no gaps and no overlaps)
> 
> Track Address Match Mode mappings and tear them down on clear_bar() and
> on set_bar() error paths to avoid leaving half-programmed state or
> untranslated BAR holes.
> 
> Advertise this capability by extending the common feature bit
> initializer macro (DWC_EPC_COMMON_FEATURES).
> 
> This enables multiple inbound windows within a single BAR, which is
> useful on platforms where usable BARs are scarce but EPFs need multiple
> inbound regions.
> 
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> Signed-off-by: Koichiro Den <den@valinux.co.jp>
> ---

Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
