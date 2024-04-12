Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2243BC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 19:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=NJkWE6g2M5PGnAoPYOUofx0/KBLJg2DfQ8X6y1cQXFE=; b=2bwMR3Z90Eex9y
	dLGUNn2FXI/vRd/lQn1nQnn63eEi2GcpBhiUGSTIy9pjFls5DdF7RwtoRDXBu6txD2UOFSXbILR2n
	G+wL4i+t+9tipu3HLHBC7a9wfqsNzhMaRlzP1Vrd8Tv9ZVb6mZEginElcaOH0sl3v3p1iBIvTeSro
	yX/i6tOfSQPtS+Z+1WcOJl4n95PDEnzvkjFWcGEUkAsypvX9le8JC3UPWSnRZZSwG/1TczCCCMxCL
	S3XlZW1pndwdWNbQkGduBDtvNASkiiqMyhcx8VKPrtvJ80WdtvWwg4lkGsp+HqMpJ7XZi+zOwlqMp
	ks+gKBiWk1muyU8NEV/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvN2s-000000017Oe-185O;
	Fri, 12 Apr 2024 19:58:46 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvN2o-000000017NN-04Es;
	Fri, 12 Apr 2024 19:58:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1194ECE3AC3;
	Fri, 12 Apr 2024 19:58:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECFEAC113CC;
	Fri, 12 Apr 2024 19:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712951918;
	bh=9HYoa2q9zbdAwhkuDRDtehEu+C2d3K7WfVfQ1MwY5ts=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=SGLpNFOblQMeIbaJAa2RR1y9xP1A4VwRPfNvrMemMrQdH7DFIEqXfWjED1/QhvtxO
	 hJwupFe0Zppd9Hx7FQ6sAD9A8zlkGNqxCKL93Lgv+HM/Tlv2ihysEEhBSMme0WU/xZ
	 RmyWk2LZ0EfMI6v7/A50srEd/rQl8GV6TNI7lhloC7ZsNkN79QdcezoDxDudu48TlU
	 6yeJb0nSJDsOMZYNoTJ//yRoBGLYAUywwOLqZRW1kYosaZ/FAmRG8UQ0qWOU9fuvNj
	 MUvOqI6C3if4nm0zgjmb2nXTx/fQpWCIEwE1QW09jgPv9Q7AQOn6hkEUrmUqhOGaI4
	 DTF2TST3dsEgA==
Date: Fri, 12 Apr 2024 14:58:36 -0500
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
	linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org,
	Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH v12 2/8] PCI: dwc: ep: Add Kernel-doc comments for APIs
Message-ID: <20240412195836.GA13344@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240327-pci-dbi-rework-v12-2-082625472414@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_125842_265648_338E3D71 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
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

On Wed, Mar 27, 2024 at 02:43:31PM +0530, Manivannan Sadhasivam wrote:
> All of the APIs are missing the Kernel-doc comments. Hence, add them.

> + * dw_pcie_ep_reset_bar - Reset endpoint BAR

Apparently this resets @bar for every function of the device, so it's
not just a single BAR?

> + * dw_pcie_ep_raise_intx_irq - Raise INTx IRQ to the host
> + * @ep: DWC EP device
> + * @func_no: Function number of the endpoint
> + *
> + * Return: 0 if success, errono otherwise.

s/errono/errno/ (another instance below)

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
