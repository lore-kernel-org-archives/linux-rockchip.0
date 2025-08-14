Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC6D0CA0EE4
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Aug 2025 17:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=AngJ/JIawjS0QSxDKaSEXWTUnCtB6YKy3SxJNh1yudE=; b=Y4Ddf3A86GZteT
	BU/W5wAl7Gdp/TGMQU0BFwb3OlTbx3QRatuOJHjkPjJpwSPr4w2rdoqnixI7dgAHGLUHHjbvWnd16
	sKV6XfUx7fb5k4kD9MtA05KOYxbyCKV1rMBjN7PoMn0YCG8EX+Ywiut6pKR7EdctLEWD4h9cAfIXJ
	fGlzznx6teA/ESIkV+FCq8bbVxY/2Y8ORADzFwM+5zgrVo2BIOTki+aSPBkd2G3RDzAVB80XJBNvx
	6t6mda9BBd1daoLBCmrucJjxnINLr1rm9Do2bjSoMJOtCw/yRq1Es75l2B2Dy69C8CPVHUQphwj8i
	tWs3OlH2ucy1yy2nF0YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umbnp-00000000DJZ-0EfN;
	Thu, 14 Aug 2025 17:31:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umaDh-0000000HXL7-2r1w;
	Thu, 14 Aug 2025 15:50:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D4432601D8;
	Thu, 14 Aug 2025 15:50:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E2B0C4CEED;
	Thu, 14 Aug 2025 15:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755186624;
	bh=o/MgtG1g9Rt5y/lAK6YBxZs06Pfqhy/MN+PlW0TT6zY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=hABxWo7/m8RV9cAcTZtZaUIEUqgl9tHzY7MAGXzXDi1h0HabiSaR90DAXzp67TWmF
	 U3o8bL2bFI98VWHbFSMyxlAy5TQYdtR2G++O6l0KliRJs2EbeJld/7OKWkDfcUrOIl
	 0xfAtz3yLkvtpi30XW37DeWsUbSGKgPUVUF1P58XR0gVgs+MNLqpsZkmYgs1ejou9W
	 tY4ezf6uWOrDwNRmSPTAgviF31BJxxVYx8W6JUSiBTOxeiGycaYA1eFU5Svy0kBjRr
	 wz6cEmKiiWTFycFptGV5EwGACSMjHnViMm8H+4C69Ai0v2gBl7/LC2WW2nqaMiqePg
	 NuaZILW4rT3jg==
Date: Thu, 14 Aug 2025 10:50:23 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Jingoo Han <jingoohan1@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
	Srikanth Thokala <srikanth.thokala@intel.com>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Shawn Lin <shawn.lin@rock-chips.com>, linux-pci@vger.kernel.org,
	linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev, linux-arm-kernel@axis.com,
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH 00/13] PCI: Drop superfluous pci_epc_features
 initialization
Message-ID: <20250814155023.GA330705@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250814152119.1562063-15-cassel@kernel.org>
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

On Thu, Aug 14, 2025 at 05:21:19PM +0200, Niklas Cassel wrote:
> Hello all,
> 
> struct pci_epc_features has static storage duration, so all struct members
> are zero initialized implicitly. Thus, remove explicit zero initialization
> of struct members.
> 
> Series is based on pci/next.
> 
> Feel free to squash to a single commit if that is preferable.
> 
> Kind regards,
> Niklas
> 
> 
> Niklas Cassel (13):
>   PCI: cadence-ep: Drop superfluous pci_epc_features initialization
>   PCI: rcar-ep: Drop superfluous pci_epc_features initialization
>   PCI: rockchip-ep: Drop superfluous pci_epc_features initialization
>   PCI: dra7xx: Drop superfluous pci_epc_features initialization
>   PCI: imx6: Drop superfluous pci_epc_features initialization
>   PCI: keystone: Drop superfluous pci_epc_features initialization
>   PCI: artpec6: Drop superfluous pci_epc_features initialization
>   PCI: designware-plat: Drop superfluous pci_epc_features initialization
>   PCI: dw-rockchip: Drop superfluous pci_epc_features initialization
>   PCI: keembay: Drop superfluous pci_epc_features initialization
>   PCI: qcom-ep: Drop superfluous pci_epc_features initialization
>   PCI: rcar-gen4: Drop superfluous pci_epc_features initialization
>   PCI: tegra194: Drop superfluous pci_epc_features initialization
> 
>  drivers/pci/controller/cadence/pcie-cadence-ep.c  | 2 --
>  drivers/pci/controller/dwc/pci-dra7xx.c           | 1 -
>  drivers/pci/controller/dwc/pci-imx6.c             | 4 ----
>  drivers/pci/controller/dwc/pci-keystone.c         | 1 -
>  drivers/pci/controller/dwc/pcie-artpec6.c         | 2 --
>  drivers/pci/controller/dwc/pcie-designware-plat.c | 1 -
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c     | 2 --
>  drivers/pci/controller/dwc/pcie-keembay.c         | 1 -
>  drivers/pci/controller/dwc/pcie-qcom-ep.c         | 1 -
>  drivers/pci/controller/dwc/pcie-rcar-gen4.c       | 2 --
>  drivers/pci/controller/dwc/pcie-tegra194.c        | 2 --
>  drivers/pci/controller/pcie-rcar-ep.c             | 2 --
>  drivers/pci/controller/pcie-rockchip-ep.c         | 1 -
>  13 files changed, 22 deletions(-)

Squashed into one, added "remove explicit zero initialization for
features that are *not* supported so we don't have to touch existing
drivers as new features are added" to commit log, and applied to
pci/endpoint for v6.18, thanks, Niklas!


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
