Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6EBAC44500
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jan 2026 09:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NI9j5qNHQwqgQKnAAqj9/NAv/0VZ0TOkA2qzXCBQg9M=; b=J7Nvk4x4I3nEhy
	hH6BWtolrTnjOOd1nNZNmKIOtiFPS2zjbEPN9Dm+BOnX8/JCbRiJq2nL7fI/njZBL4HZ0RpACW6x4
	7SoNNxZZxUtU81wjGtCL8+mP3MM1Zq6RHImx4xOpVr7CUi4phRecbsvcahPEQEChMt83UpjczlzV9
	WZ92kVClinxui1FXjEaz3KL0NQaqmnExvDtBAXlC6k7mE3R4OkTTmRnxT7u7hJJuH3ji0B5EIthN3
	qYmoC1CEqseRQ+nOA3uHXvVrV20YKXYfFOTZIAsEmOsk0qsPeHuUiuzSYuyIsb1IFpkJTeIVBQabB
	zfKOQGENL56KEmFIlgKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viqYH-00000006hIA-30YJ;
	Thu, 22 Jan 2026 09:00:29 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viqYF-00000006hHG-2DlF;
	Thu, 22 Jan 2026 09:00:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6449A4189B;
	Thu, 22 Jan 2026 09:00:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06C6BC116C6;
	Thu, 22 Jan 2026 09:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769072425;
	bh=AZFYl95tZw83k2fEE48wfdvR4CXEcLULoc8pMv1G/Bo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Mp8ENmYQVtJ1EMYz0X8bkcVxWU+gCr8Fgt+QaEj8GkJ+34FS+nBT+LQC9OkGsQezu
	 5MApqwdB08KOLxvl+IburfuHXNQwD8Hy3mGkN83wSQCKFWXy8QOF21LPMxQAnImFrV
	 SkRbS529Iy5egC5SypGHdJ0kyuctrmmCIyqot1zcplQxuH6Qlu5SFF+stcyxOJXr5c
	 uzdOee9LlPwxuBMCk/ODtg5TSEF4vV4AqMSBKNX0vNQbRYxGG7YWc/VADSk+i4tTdb
	 9OPXRV7NVJwsOJhuvpYlIs4O+x+cHQX67sgm2Pis2uH67qGA4dAmdBaLXIBiD1b50T
	 DVt46F3Vf1GSg==
Date: Thu, 22 Jan 2026 10:00:11 +0100
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
Subject: Re: [PATCH v9 3/5] PCI: dwc: Advertise dynamic inbound mapping
 support
Message-ID: <aXHnFskw9InGNuuR@ryzen>
References: <20260122084909.2390865-1-den@valinux.co.jp>
 <20260122084909.2390865-4-den@valinux.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260122084909.2390865-4-den@valinux.co.jp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_010027_593616_B1DDE654 
X-CRM114-Status: GOOD (  11.31  )
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

On Thu, Jan 22, 2026 at 05:49:07PM +0900, Koichiro Den wrote:
> The DesignWare EP core has supported updating the inbound iATU mapping
> for an already configured BAR (i.e. allowing pci_epc_set_bar() to be
> called again without a prior pci_epc_clear_bar()) since commit
> 4284c88fff0e ("PCI: designware-ep: Allow pci_epc_set_bar() update
> inbound map address").
> 
> Now that this capability is exposed via the dynamic_inbound_mapping EPC
> feature bit, set it for DWC-based EP glue drivers using a common
> initializer macro to avoid duplicating the same flag in each driver.
> 
> Note that pci-layerscape-ep.c is untouched. It currently constructs the
> feature struct dynamically in ls_pcie_ep_init(). Once converted to a
> static feature definition, it will use DWC_EPC_COMMON_FEATURES as well.
> 
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> Signed-off-by: Koichiro Den <den@valinux.co.jp>
> ---

Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
