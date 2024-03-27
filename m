Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E71B8C47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 09:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IY/1WbDoJaGY/ZpexU1j44nHrd+M08vZu4adUeqMCo=; b=U8MSCAkO9BHsLF
	Sa+hnQIelCtnqEwKcWlgrROM2gcrKULF9u6DZ7Y07tCzs83dsec0rXJl0s+DOd7BrkinWQU9FFRZH
	s02fw3Rftg8wexUD0Rqn2J/oCMiaaLksrhymoR927ZJWAXFERxHDgtnEvJ/iwYm//uMCtQkMYbpYq
	p2m8o3YnLqAn0uJ5nZGo4e3fQEJeO6xETZKfSuvFiudYcw5Wr6qkBZr6v9a3mKzoUYjuVOo35OJyi
	uOVIymohtZftgtJWD794Y1VeI+6d/ch8xih+lkDvQcfmsjWONFKSa4CVlahf7k3det9Md4xspj+AY
	2WV3BeloTzLOArmwC8hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpPnE-00000008Gei-0wGL;
	Wed, 27 Mar 2024 09:42:00 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpPn8-00000008Gc6-1kEC;
	Wed, 27 Mar 2024 09:41:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 612E2CE169E;
	Wed, 27 Mar 2024 09:41:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5A4DC433C7;
	Wed, 27 Mar 2024 09:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711532510;
	bh=L3MDabzqy52UiiTpotcbYr/fCovWNhX/kTom1rvfcLE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P0GWQbgnIHTf/G5uy23E/x7ykvt/PdbjSQBxEDrAG8933x7u7LE+eSEfWzro38F6g
	 QTeiC5ZrZDZQ0mxGSlCSjQnsqn1y49orZqEvDjAoGZZ9q0gIPbo+M7I3xt9HttPI8H
	 0ObzP0rjgPRbxin+sZBZNp2rk832mLKAM7p1KnRhq9wZ0yPDRMP+wMo10ULBHkQC6j
	 nG/B8CNKwie/6nXS6vLuQK2zBFa0RG4KiXbKOPr8QLv3RiNxkDJkl/eA9FSn3FwgFv
	 Mv/vFRKgxrFAhrljpIyeoQrajgkpwvQXIcl2ucpka2zQMo91uLTc1IlOSqgvlN9q6x
	 IIHd3CkrbewBw==
Date: Wed, 27 Mar 2024 10:41:39 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
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
	linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@axis.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v12 8/8] PCI: endpoint: Remove "core_init_notifier" flag
Message-ID: <ZgPp020vefFw3pGk@ryzen>
References: <20240327-pci-dbi-rework-v12-0-082625472414@linaro.org>
 <20240327-pci-dbi-rework-v12-8-082625472414@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240327-pci-dbi-rework-v12-8-082625472414@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_024154_893945_7204B133 
X-CRM114-Status: GOOD (  18.37  )
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

On Wed, Mar 27, 2024 at 02:43:37PM +0530, Manivannan Sadhasivam wrote:
> "core_init_notifier" flag is set by the glue drivers requiring refclk from
> the host to complete the DWC core initialization. Also, those drivers will
> send a notification to the EPF drivers once the initialization is fully
> completed using the pci_epc_init_notify() API. Only then, the EPF drivers
> will start functioning.
> 
> For the rest of the drivers generating refclk locally, EPF drivers will
> start functioning post binding with them. EPF drivers rely on the
> 'core_init_notifier' flag to differentiate between the drivers.
> Unfortunately, this creates two different flows for the EPF drivers.
> 
> So to avoid that, let's get rid of the "core_init_notifier" flag and follow
> a single initialization flow for the EPF drivers. This is done by calling
> the dw_pcie_ep_init_notify() from all glue drivers after the completion of
> dw_pcie_ep_init_registers() API. This will allow all the glue drivers to
> send the notification to the EPF drivers once the initialization is fully
> completed.
> 
> Only difference here is that, the drivers requiring refclk from host will
> send the notification once refclk is received, while others will send it
> during probe time itself.
> 
> But this also requires the EPC core driver to deliver the notification
> after EPF driver bind. Because, the glue driver can send the notification
> before the EPF drivers bind() and in those cases the EPF drivers will miss
> the event. To accommodate this, EPC core is now caching the state of the
> EPC initialization in 'init_complete' flag and pci-ep-cfs driver sends the
> notification to EPF drivers based on that after each EPF driver bind.
> 
> Tested-by: Niklas Cassel <cassel@kernel.org>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
