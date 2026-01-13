Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D97AD2F352
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 18:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvgVslhQewOBaDjKEtIAEi5rixyPwd3+mi8SpFLiAqc=; b=iX+kpgC7iW8Ham
	ab7d14oydL8LP5i3+JejplyUl+gBBfTJfn643EXkiewjLZAlG13U9jjXTYiU5sJ9IYg22deKcpAtr
	mKCt1bfthSVNnBf64YkZ+LYP7ZclKTAxgwWYz9k6dNEj4AT3pQ6df59tH0YPmZ85JU2Cbm78sOlFx
	cvaRA5VXj7ucgIyDKklXdF0bESjUjrmeofLisF1XqIRVd7fsI98Axx7ZRvXOstPVUCHelwYOe7nNt
	LvuXI87JpJ3aggBcB7du06tRL2YLVonmaaaBgJKkdv3S/D/jzHxaoyIB0joGOJHOk906J/nLl8nY2
	fNuWpg8/6ZW5wEJYXB+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfjNh-00000007atG-2jmO;
	Tue, 13 Jan 2026 18:44:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfjNg-00000007at7-2Ajb;
	Tue, 13 Jan 2026 18:44:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2A8F76000A;
	Tue, 13 Jan 2026 18:44:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC54FC116C6;
	Tue, 13 Jan 2026 18:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768329878;
	bh=guH+X5X5Zw5RK4+z7WReUiSq/PEpKm6VSIBaw1TF1Wk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mJ/epLMx61KYA6qPjpRXqerwQQ3NcjyRncy5NLUppRcvNbs2ALyBM6FjEhD9uCvW2
	 eg+DxvUNeugL74YCHEYOOv4VS+A/BfA6G/dMZqmg4UIxaOswYQMpqwbpy7mH2VJssd
	 pryhg1yTNddK0bWY9Uq9gE7ggwr1D0Kf4ak8pCyjAuuQxjtChOyO00kugpRuZ29n40
	 WzTS8Cd0E4qQJrBcO9qMgrhYRyavxl9eWt+/iAY5yX2qEdebOKThI+hfkrhzfqh5HQ
	 VQ0q4gLY53Z/GZ66GOvRjkXfxIKgJEY7/T6uorHk2QfWRmmEUeUhwAT/SFYMOSF+KF
	 80DfzL+JVf/oA==
Date: Tue, 13 Jan 2026 19:44:25 +0100
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
Subject: Re: [PATCH v7 4/6] PCI: dwc: Advertise dynamic inbound mapping
 support
Message-ID: <aWaSggUJpnxjAPA_@ryzen>
References: <20260113162719.3710268-1-den@valinux.co.jp>
 <20260113162719.3710268-5-den@valinux.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260113162719.3710268-5-den@valinux.co.jp>
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

On Wed, Jan 14, 2026 at 01:27:17AM +0900, Koichiro Den wrote:
> The DesignWare EP core has supported updating the inbound iATU mapping
> for an already configured BAR (i.e. allowing pci_epc_set_bar() to be
> called again without a prior pci_epc_clear_bar()) since
> commit 4284c88fff0e ("PCI: designware-ep: Allow pci_epc_set_bar() update
> inbound map address").
> 
> Now that the EPC layer exposes this capability via the
> dynamic_inbound_mapping feature bit, set the bit centrally in the
> DesignWare EP layer so that all DWC-based EP glue drivers report it
> consistently, without duplicating the same flag in each individual
> driver.
> 
> No functional change intended. This only advertises existing behavior to
> EPF drivers.
> 
> Suggested-by: Niklas Cassel <cassel@kernel.org>
> Signed-off-by: Koichiro Den <den@valinux.co.jp>
> ---

Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
