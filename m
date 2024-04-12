Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D0B4C00A94
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 20:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=cns41SPgSkkkfUbl5iS3gL+TsLVzJdFcanF//ldsFk4=; b=b+T5iP/gKzNEhr
	f7vhAPBbcAngkMnxqAknlsNfNx+kQbUewBZj3lS/uuXosRdvjTLx3tXVXFF1UERsrCxd+1qW3v3Md
	aQXKO+4fRRKOxJ7sqKPelHTveFIw0GBLdZkCDumkfndqW4dc/kUHub2MTsMS2X1/lYLUxqmtoMCuZ
	4LyoXK7SLemd1Q7zDyHoTU8eJPRxugUlv6bDrwKae/53uy61wljjlB3RlpSU51XfuEvA8z+Odu8FA
	Yd2jRYPqdtSZROqNewqo8LTct8qj+xd3cUZCUCuLTdHd5yzOvcJ3E4nZ1Ytj2Xm1lMIq+VhJmjbf+
	n/6flutslPYNQrhwfRWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvNPm-00000001BiS-0p0A;
	Fri, 12 Apr 2024 20:22:26 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvNPh-00000001Bh3-1X0j;
	Fri, 12 Apr 2024 20:22:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CF52ECE3AC8;
	Fri, 12 Apr 2024 20:22:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3A70C113CC;
	Fri, 12 Apr 2024 20:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712953338;
	bh=sn2OmynqMr6J7esZV94bEU0Yo+Dr7urRItKlgNXXkk8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=mBBFqL53k8d8ZRiCErYU+z9y7mNs9HHDllT10pZ3ClqXZjEuN0B8ebU0XrYAbSEpa
	 QIQCzjz9kSUPV2Gm101R8qF0Fzm/d2ECYeTqOYdngkP0oFGR/IEq1gIF5QqZJLwFLh
	 FwyDBuniceg4diUmqI1tezD9L6IV7P6ymG4dV/PcGZyQNp9isKFZpILhe3DRxFroRZ
	 kl6wGt76+5I0oZFe7K9D9ea7a2c8J3M7XvW75EVELJ4xyJA6ycIRtQUiukrwLyTuh2
	 Hbb4UXqrYyQamtx23jHin0qc0HsDUuz6DG1NpfKAu+Ky81T3wDDvRZtoadLACzqpGp
	 0K71g/atBsARQ==
Date: Fri, 12 Apr 2024 15:22:16 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
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
	linuxppc-dev@lists.ozlabs.org, Niklas Cassel <cassel@kernel.org>,
	linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v12 8/8] PCI: endpoint: Remove "core_init_notifier" flag
Message-ID: <20240412202216.GA14590@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240327-pci-dbi-rework-v12-8-082625472414@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_132221_897746_DDBEAD66 
X-CRM114-Status: GOOD (  16.09  )
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

Thanks for doing this!  I think this is a significantly nicer
solution than core_init_notifier was.

One question: both qcom and tegra194 call dw_pcie_ep_init_registers()
from an interrupt handler, but they register that handler in a
different order with respect to dw_pcie_ep_init().

I don't know what actually starts the process that leads to the
interrupt, but if it's dw_pcie_ep_init(), then one of these (qcom, I
think) must be racy:

  qcom_pcie_ep_probe
    dw_pcie_ep_init                                             <- A
    qcom_pcie_ep_enable_irq_resources
      devm_request_threaded_irq(qcom_pcie_ep_perst_irq_thread)  <- B

  qcom_pcie_ep_perst_irq_thread
    qcom_pcie_perst_deassert
      dw_pcie_ep_init_registers

  tegra_pcie_dw_probe
    tegra_pcie_config_ep
      devm_request_threaded_irq(tegra_pcie_ep_pex_rst_irq)      <- B
      dw_pcie_ep_init                                           <- A

  tegra_pcie_ep_pex_rst_irq
    pex_ep_event_pex_rst_deassert
      dw_pcie_ep_init_registers

Whatever the right answer is, I think qcom and tegra194 should both
order dw_pcie_ep_init() and the devm_request_threaded_irq() the same
way.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
