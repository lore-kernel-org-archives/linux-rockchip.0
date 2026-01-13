Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EC29C9EC8C
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 10:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ieolfluRO2kG1MLNdaZHM5gCOtv2xsph872LE8Wqm5k=; b=rZOewm7vBLyLR4
	MAbO+YrNPnxkJ5rAM8pQjEANQJMd8WDQQYCstsUoAn1p51gSS4RKfVUjsqo31oNcrjA9rGBENVWpC
	N5mm+AIEzOud1Rng18uIQ74QXdcMU2CZo9zte4Dp5XPxyjRX3STuW+dls5oJ8HJBxn4I/gTVwjJ+a
	gQth0weaBMlLXaCf/beRmxa6lD1hI2QZ/n1k0+dpCeqC25U6xZ+cco2CSBZgUk4JvHKDzDHIww4gC
	ur00zjU+pnAqemaPCN6XRN7q2hzZthKO7fGgTCxp+r3U+32Ob6mWCOTvIxzNuiyTYEYDMyydX5UXo
	TuXDihN6XXiA4y2h6Hzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfbQB-00000006t1C-48pE;
	Tue, 13 Jan 2026 10:14:43 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfbQ5-00000006t0t-29tk;
	Tue, 13 Jan 2026 10:14:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8FBCB6000A;
	Tue, 13 Jan 2026 10:14:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44057C116C6;
	Tue, 13 Jan 2026 10:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768299276;
	bh=noH2csNYttkzJximg2DkOMRq7PSZu8QvD26YdxlPYIk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DnCo48+itSv/Z28wMZQtVhh0fd455MaYSuLbQW6msp/bVpo2RGKM7v01FABDcC/+U
	 6APVMBzTSQbuUc6AhL7BcTRAI4Ixf+UFQNB4/DHAQArlAsgjubbi6i5acb75Au4E4Z
	 8MjbpNxoc3ojtcQwW/hR8ZT+dxKkJ/RRMJ9g2rkV08Nhf4bobolIcGJsMuW5IoG60K
	 YqIaDSdymp+dxdHtZ30GCRkvvFqg2To2vhn47htFBg2/y6fikSE3Nm9wqjNn2PzWHB
	 BK4d/7sUcf70yGB9PUsgJE4SbBD1cX2dV7Oe2O9HSgpZl83MYSX/dmIyJNVoc2FGPw
	 PN58GnzLcopoA==
Date: Tue, 13 Jan 2026 11:14:23 +0100
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
Subject: Re: [PATCH v6 2/5] PCI: dwc: Allow glue drivers to return mutable
 EPC features
Message-ID: <aWYa_9mlWu-A2uCN@ryzen>
References: <20260113023715.3463724-1-den@valinux.co.jp>
 <20260113023715.3463724-3-den@valinux.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260113023715.3463724-3-den@valinux.co.jp>
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

On Tue, Jan 13, 2026 at 11:37:12AM +0900, Koichiro Den wrote:
> The DesignWare EP midlayer needs to advertise additional capabilities at
> the DWC layer (e.g. subrange_mapping) without duplicating the same bit
> in every DWC-based glue driver and without copying feature structures.
> 
> Change dw_pcie_ep_ops.get_features() to return a mutable
> struct pci_epc_features * and update all DWC-based glue drivers
> accordingly. The DWC midlayer can then adjust/augment the returned
> features while still exposing a const struct pci_epc_features * to the
> PCI EPC core.
> 
> No functional change on its own.
> 
> Suggested-by: Niklas Cassel <cassel@kernel.org>
> Signed-off-by: Koichiro Den <den@valinux.co.jp>
> ---

Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
