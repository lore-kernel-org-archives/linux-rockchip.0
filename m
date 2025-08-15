Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EF0BCA0EEA
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Aug 2025 12:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4E+fEf1y1lC81n3aMKXRBGL1/y91hHReRrRTXAcM4I=; b=wUtrT/e6vgHTuK
	4K0y1OlOxbS5ES6RwXzde/O9C8X7fSCqcVGiumKCHSlYAmUl7oDcSHyr5UNAys+XUC8jI9toogYcN
	Rkn+fUIix5mx/7TyRUWGtSFToGhbJ/YEE8Cr/QPes3tNF7S1EHsBu9OpkcY5YKkfS1xaHPgFTrvON
	bx86hM4yYwtYRmBW9n2VPeJYS7tGbibuyqUsbbhXujRxHNGhzYEaHv9oWcrrgQbt+eW6HAgNwsH8R
	tZtMzUek/VX2RmD2GnD307S/upEHjlnv5PBR5ieuflvvG+TchzL6h0WJi5XLYLY9h0MhOg2D5WCCX
	7IozI3cjDklsUAjygaqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umtCl-00000002PaD-2NIv;
	Fri, 15 Aug 2025 12:06:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umqPd-00000001zWz-0qJo;
	Fri, 15 Aug 2025 09:07:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9EE6746104;
	Fri, 15 Aug 2025 09:07:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9562CC4CEEB;
	Fri, 15 Aug 2025 09:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755248868;
	bh=99xoqnVTE+5vEX0JBLvhsXhVQgcPMAYXND8yARERRQs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hCUydPaS4CL2g3ZuiCxjRYNo4suGGZo/3UjPaacLUxD1omL+fIDSwIfBfobZcheqU
	 haxhg6ctciTH1Qx4vtPKJjwB82S5dr3w7YX5qWiIR9VX34XCTCS1b8+M5+QI2HPDN5
	 L+iY/Aawf8965lNHCXfNz2yDNl+7FHBsotvI0rPRLoadnxBXrvTk7DqIp5G1fLKnIR
	 0G3n6W3pdQluol7T0GEzkTe1hfW0I+6IuGbp7k0Z22VrEqWHWMJd7DsO89pq8nPE5r
	 gkxqgdBf+LAe2FlFTv/PtTsFCQIzWfbh/ZycAHI3v2v1Q3QORKE4OexEf8teUi28sf
	 sU8Q5bHzk1/nA==
Date: Fri, 15 Aug 2025 11:07:42 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: manivannan.sadhasivam@oss.qualcomm.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Mahesh J Salgaonkar <mahesh@linux.ibm.com>,
	Oliver O'Halloran <oohall@gmail.com>, Will Deacon <will@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
	Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH v6 0/4] PCI: Add support for resetting the Root Ports in
 a platform specific way
Message-ID: <aJ743hJw-T9y3waX@ryzen>
References: <20250715-pci-port-reset-v6-0-6f9cce94e7bb@oss.qualcomm.com>
 <aHoh1XfhR8EB_5yY@ryzen>
 <aHokdhpJUhSZ5FSp@ryzen>
 <tujurux64if24z7w7h6wjxhrnh4owkgiv33u2fftp7zr5ucv2m@2ijo5ok5jhfk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tujurux64if24z7w7h6wjxhrnh4owkgiv33u2fftp7zr5ucv2m@2ijo5ok5jhfk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250815_020749_292743_21B2F4BB 
X-CRM114-Status: GOOD (  21.89  )
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

Hello Mani,

Sorry for the delayed reply.
I just came back from vacation.

On Thu, Jul 24, 2025 at 11:00:05AM +0530, Manivannan Sadhasivam wrote:
> On Fri, Jul 18, 2025 at 12:39:50PM GMT, Niklas Cassel wrote:
> > On Fri, Jul 18, 2025 at 12:28:44PM +0200, Niklas Cassel wrote:
> > > On Tue, Jul 15, 2025 at 07:51:03PM +0530, Manivannan Sadhasivam via B4 Relay wrote:
> > > 2) Testing link down reset:
> > > 
> > > selftests before link down reset:
> > > # FAILED: 14 / 16 tests passed.
> > > 
> > > ## On EP side:
> > > # echo 0 > /sys/kernel/config/pci_ep/controllers/a40000000.pcie-ep/start && \
> > >   sleep 0.1 && echo 1 > /sys/kernel/config/pci_ep/controllers/a40000000.pcie-ep/start
> > > 
> > > 
> > > [  111.137162] rockchip-dw-pcie a40000000.pcie: PCIE_CLIENT_INTR_STATUS_MISC: 0x4
> > > [  111.137881] rockchip-dw-pcie a40000000.pcie: LTSSM_STATUS: 0x0
> > > [  111.138432] rockchip-dw-pcie a40000000.pcie: hot reset or link-down reset
> > > [  111.139067] pcieport 0000:00:00.0: Recovering Root Port due to Link Down
> > > [  111.139686] pci-endpoint-test 0000:01:00.0: AER: can't recover (no error_detected callback)
> > > [  111.255407] rockchip-dw-pcie a40000000.pcie: PCIe Gen.3 x4 link up
> > > [  111.256019] rockchip-dw-pcie a40000000.pcie: Root Port reset completed
> > > [  111.383401] pcieport 0000:00:00.0: Root Port has been reset
> > > [  111.384060] pcieport 0000:00:00.0: AER: device recovery failed
> > > [  111.384582] rockchip-dw-pcie a40000000.pcie: PCIE_CLIENT_INTR_STATUS_MISC: 0x3
> > > [  111.385218] rockchip-dw-pcie a40000000.pcie: LTSSM_STATUS: 0x230011
> > > [  111.385771] rockchip-dw-pcie a40000000.pcie: Received Link up event. Starting enumeration!
> > > [  111.390866] pcieport 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
> > > [  111.391650] pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 01
> > > 
> > > Basically all tests timeout
> > > # FAILED: 1 / 16 tests passed.
> > > 
> > > Which is the same as before this patch series.
> > 
> > The above was with CONFIG_PCIEAER=y
> > 
> 
> This is kind of expected since the pci_endpoint_test driver doesn't have the AER
> err_handlers defined.

I see.
Would be nice if we could add them then, so that we can verify that this
series is working as intended.


> 
> > Wilfred suggested that I tried without this config set.
> > 
> > However, doing so, I got the exact same result:
> > # FAILED: 1 / 16 tests passed.
> > 
> 
> Interesting. Could you please share the dmesg log like above.

It is looking exactly like the dmesg above

[   86.820059] rockchip-dw-pcie a40000000.pcie: PCIE_CLIENT_INTR_STATUS_MISC: 0x4
[   86.820791] rockchip-dw-pcie a40000000.pcie: LTSSM_STATUS: 0x0
[   86.821344] rockchip-dw-pcie a40000000.pcie: hot reset or link-down reset
[   86.821978] pcieport 0000:00:00.0: Recovering Root Port due to Link Down
[   87.040551] rockchip-dw-pcie a40000000.pcie: PCIe Gen.3 x4 link up
[   87.041138] rockchip-dw-pcie a40000000.pcie: Root Port reset completed
[   87.168378] pcieport 0000:00:00.0: Root Port has been reset
[   87.168882] rockchip-dw-pcie a40000000.pcie: PCIE_CLIENT_INTR_STATUS_MISC: 0x3
[   87.169519] rockchip-dw-pcie a40000000.pcie: LTSSM_STATUS: 0x230011
[   87.272463] rockchip-dw-pcie a40000000.pcie: Received Link up event. Starting enumeration!
[   87.277552] pcieport 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
[   87.278314] pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 01

except that we don't get the:
> [  111.139686] pci-endpoint-test 0000:01:00.0: AER: can't recover (no error_detected callback)
> [  111.384060] pcieport 0000:00:00.0: AER: device recovery failed

prints.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
