Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2064ECD1284
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 14:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUbHyQEKkVR8ou4OAR/iXXVK6/1DwBGXpwU+qMswcCg=; b=lIPrQk+HrNom+B
	5Ta5sSSggAvS9mYUizE/lNonb6vaPItE2sSB+AQMgbUFK0ZAitM/frnw4I2hOl4pU8rwUpiVAyLhD
	CbnHnBmvZDoHckskkY9qy/zoCpdjrapdWoLhZxx8qUzFB5AwtTg1K7WZwrDBN6A7h8ky9+RdybZtb
	Ni0X/FieXjV9/5FB6ugz1yxm1YdPSIjD2cYLOYoB/Vlc7ywLuo5vpLm7WwYZmE/AU6F9oJbbrhQbd
	AHEU0fW2hIQKo0BJrcqr2LTLL0IEIA++Ma3zl8NEN8SZi5ejAhzr0ltcCxad4fiv4z0Oft3cpx+hI
	on9HEJ/FgzDEVC1w3K2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsktC-00000007Zrh-4Apu;
	Fri, 05 Apr 2024 14:49:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsjlD-00000007GKq-2Q3U;
	Fri, 05 Apr 2024 13:37:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=HbHnP0Fs0rH1cg63r/A+qobA0TWD0dZFoSUtVzAPwOw=; b=K8vZVvTkxzi7E8ix36xPOu/Fr0
	TokRqU4yWF14oPwKC+/JEgLeaUVoRWSb3DJ6z+k3qgAxWgWKmjQ+Lq5ZoaU5E6NcR05XXyd1/pLN+
	+DhkjHpSqG53ryu7KQ5szWdBZQPNX3VNkbJW6Qk/qIk/2fCKKdp21OFB7szp820X0AGuVjGPj3GA5
	YsRyOle0qSAh2J30To4UJmo8oXQUwr5kHVpBCjtCikr6M7PvwhitNWb2rshDvrz3Zj19wQLePJjD6
	CaJaOm8yY2K8X7GKpnvd2Pk0brehMTIjKRLBa0+7XfXjk+9odeX9rnDMoG3p7TswGIyiXcEIB36IJ
	7qL22Jww==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsjl9-00000005e7j-2VXL;
	Fri, 05 Apr 2024 13:37:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C6CC3618CE;
	Fri,  5 Apr 2024 13:37:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B60F9C433C7;
	Fri,  5 Apr 2024 13:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712324252;
	bh=erIF6D/fny9USFYzetNP8CRUx1a3CYG4GswwTMXaNzY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pQeYOymdsnpY58edFysi1vjMiF1pRycTgJis+C1wA8+SVz5UaC4pI957KysCP2VxY
	 zYbG3fwAzD1Yp2T5u02x23j1DziTJLabPBr85uHrhH6UMns1ZSN4zBQf7TphsGFx/q
	 gtgPvMAk/ZF0wfVeA8KC5fSAq/cSktlev9dqbTSkXjJcB1EVXXBcjbKJYYs6M1a9Mr
	 RgNNc6F5riYv2z7DJPN3LRzWiEL7QpAWYXvqnhWYpga7XpTX31xe0ItnMyDib1tOYe
	 8oUfdosAy3Dlbqy0YdkLE5W6BB5l5sUf16jrL+VAPSc1Au37+BnnpXGMunJzPsTE97
	 TsQuU2HnDDpIg==
Date: Fri, 5 Apr 2024 15:37:23 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>
Subject: Re: [PATCH v2 04/18] PCI: endpoint: test: Use pci_epc_mem_map/unmap()
Message-ID: <Zg/+k1IMGNjTRRhn@x1-carbon>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-5-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240330041928.1555578-5-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_143735_949704_BE9668C5 
X-CRM114-Status: GOOD (  10.07  )
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

On Sat, Mar 30, 2024 at 01:19:14PM +0900, Damien Le Moal wrote:
> Modify the endpoint test driver to use the functions pci_epc_mem_map()
> and pci_epc_mem_unmap() for the read, write and copy tests. For each
> test case, the transfer (dma or mmio) are executed in a loop to ensure
> that potentially partial mappings returned by pci_epc_mem_map() are
> correctly handled.
> 
> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> ---

You probably want to rebase this series on top of:
[1] https://lore.kernel.org/linux-pci/20240314-pci-dbi-rework-v10-0-14a45c5a938e@linaro.org/
[2] https://lore.kernel.org/linux-pci/20240320113157.322695-1-cassel@kernel.org/

As these both modify pci-epf-test.c.

AFAICT both these series [1] (DBI rework v12, not v10) and [2] are fully
reviewed and seem to be ready to go.

They just seem to take a really long time to be picked up.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
