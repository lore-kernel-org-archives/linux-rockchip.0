Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94283C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 14:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=7SCJ7ZYxAVos4eKNDkCdVKCS4chDhZ++oYwBYkkFwdo=; b=lOJQZb6alL2IvC
	ocpbFb0dev7t0rX3H3PIIbDzvB6yIfjpoWxuV5aF2ou+2Cn5STVZ6nrNKKYpOrVCi72/AvU4Kk++Z
	VIfmxlnrGieji37m8rjsIxEwpAZBEUdSWk66/7RI5gtGl3zdakqyPqAIeefMzYX0O3sRgOc+OwsKU
	PddFw6R3ZKB6dCiexzNTKe9SB+/B5Juy59EUEE2pKiH1zDfpX0NyjsSrK05lGo3oL4gmLMP/Wh6Qf
	EENcSVr1WCxsgMvmHrxVpp4mpEkdt4u1UTkh8KCA6uhnOr0zXa19hjEqtQ8zRYez7zhSVTdXmZfJx
	uge+MD9Za2Rfpz12U+Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwNQO-00000008iTW-364o;
	Mon, 15 Apr 2024 14:35:12 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwNQH-00000008iRM-3rPa;
	Mon, 15 Apr 2024 14:35:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 78965CE0DFC;
	Mon, 15 Apr 2024 14:35:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 707A5C113CC;
	Mon, 15 Apr 2024 14:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713191700;
	bh=iY4lgc0Rhhg0QzocM/HxB+V+JgnIN6Pz/U6ay5f9MVA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=h8ux2kJ9VPc31EUKRstPFxlBtLqgAikyAAiDVJYFMkbo8mtxrOyOOK3NcACc+y8Ud
	 iXpqVF0MEx6sJdy9lY0wvSVKeeW8uxfxRN67mmZIVLth3xLTpCnMe7hyPn5vAXAEap
	 YJVO2lf3xgNEtO0oSJyygdI7v9QUj7HOXxZHY9dCiUhkDO7nzPi891PYd/BxHxCsHv
	 UyVxwOClfOgHueSz5EuCeCSIoFui/BN6bMZkuezCEt2p/LTzprmU9aAAuHUtmtAdXW
	 zFxLHFLFtq8kkv6xT1YhX19MuFUhTUT9zOppzKw1mDSETuxGYDPKQceVsXviKNPbDv
	 gZmkSaNAV4YtQ==
Date: Mon, 15 Apr 2024 09:34:58 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Vidya Sagar <vidyas@nvidia.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Minghuan Lian <minghuan.Lian@nxp.com>,
	Mingkai Hu <mingkai.hu@nxp.com>, Roy Zang <roy.zang@nxp.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Srikanth Thokala <srikanth.thokala@intel.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org, Niklas Cassel <cassel@kernel.org>,
	linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org,
	Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH v12 2/8] PCI: dwc: ep: Add Kernel-doc comments for APIs
Message-ID: <20240415143458.GA111010@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240415140015.GJ7537@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_073506_192070_D1381D72 
X-CRM114-Status: GOOD (  15.24  )
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

On Mon, Apr 15, 2024 at 07:30:15PM +0530, Manivannan Sadhasivam wrote:
> On Fri, Apr 12, 2024 at 02:58:36PM -0500, Bjorn Helgaas wrote:
> > On Wed, Mar 27, 2024 at 02:43:31PM +0530, Manivannan Sadhasivam wrote:
> > > All of the APIs are missing the Kernel-doc comments. Hence, add them.
> > 
> > > + * dw_pcie_ep_reset_bar - Reset endpoint BAR
> > 
> > Apparently this resets @bar for every function of the device, so it's
> > not just a single BAR?
> 
> Right. It should've been 'Reset endpoint BARs'. And the API name is also
> misleading, but that is not the scope of this series.

Maybe just this for now:

s/Reset endpoint BAR/Reset @bar of every function/

> > > + * dw_pcie_ep_raise_intx_irq - Raise INTx IRQ to the host
> > > + * @ep: DWC EP device
> > > + * @func_no: Function number of the endpoint
> > > + *
> > > + * Return: 0 if success, errono otherwise.
> > 
> > s/errono/errno/ (another instance below)
> 
> ah, thanks for spotting. Since this series is already merged, I hope
> Krzysztof can ammend this.

Sounds good, thanks!

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
