Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46B19C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Apr 2024 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JnVhUkdphD6ohwIYIsmMDtfS+FQeNR3WDSGsy2hzuco=; b=bcy6hPnD81aHOo
	68OKTDZ0J2HrKzjwEldESavdVK1dDPyGhMbWKsUDF7V8P9hk4JMBgtgfIhdXLY8oTZkdCu6TwhmNM
	B0ygMzXk3jiKqrnvz7s6Z2h/K+WOe8BNjaQyJ7Iubapa+6ys9c93piSuz0oYkJH+z7H9xDw6yhZ5j
	Uh8c1B6jZvwu545t2RiFB0fecfvnNGnrYmvMhjVAab4kjzKJMLS+QIXxMoOopZYsjwIHPwkvxwACa
	Hwtw/1bScWUC7frjZGNYFkbFTHU4wvY5u+y7N8Hon6GOWglAbPxujWFWD+UWlXsGeStEthIGU5XM9
	eK4+WeUemRyiV/GZj0DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s01ph-00000009LDn-0knr;
	Thu, 25 Apr 2024 16:20:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s01pe-00000009LDB-31Py
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Apr 2024 16:20:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 06C1361E9C;
	Thu, 25 Apr 2024 16:20:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88598C113CC;
	Thu, 25 Apr 2024 16:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714062021;
	bh=rwsM3i04LbhwVLUCa72hPszIQ6ASQXF3hyZn6D35G3Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i3wi4UNrntxXihjyFAvmrFIpLsJU1Bs6tt+OYwG9NWAYn7Enlt1kzVJjgIlOnRCTo
	 OESkUb/MIs4BLtdxgZW7vjUf4ES8HY/ku3R8Yxr7JLn01uw+jc6+lsVOlDanfv9CoI
	 xeJp+gwgIQiy23LFijnYRsesV+ggaWE7lQkfxf6HqT+DJjrp+nV00160QoP51giFSM
	 vrp2lrk6h5siKhd60tpCUxdyQ0UB5ppWqAkFyerLuJsiZ2DmJLkvoS6TzuO/JjdHn1
	 6V413pjt89uiinhiE1nlNorMsWco7UxrtGTSMFC+emQtZVgQGfeubS/f6cX3yC2QYM
	 cqvrSXMxXkEfA==
Date: Thu, 25 Apr 2024 11:20:19 -0500
From: Rob Herring <robh@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: linux-pci@vger.kernel.org, Simon Xue <xxm@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
	Jon Lin <jon.lin@rock-chips.com>
Subject: Re: [PATCH 03/12] dt-bindings: PCI: snps,dw-pcie-ep: Add
 tx_int{a,b,c,d} legacy irqs
Message-ID: <171406054785.2613758.8157419905998918218.robh@kernel.org>
References: <20240424-rockchip-pcie-ep-v1-v1-0-b1a02ddad650@kernel.org>
 <20240424-rockchip-pcie-ep-v1-v1-3-b1a02ddad650@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240424-rockchip-pcie-ep-v1-v1-3-b1a02ddad650@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_092022_828876_4CCCF6C7 
X-CRM114-Status: GOOD (  10.87  )
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


On Wed, 24 Apr 2024 17:16:21 +0200, Niklas Cassel wrote:
> The DWC core has four interrupt signals: tx_inta, tx_intb, tx_intc, tx_intd
> that are triggered when the PCIe controller (when running in Endpoint mode)
> has sent an Assert_INTA Message to the upstream device.
> 
> Some DWC controllers have these interrupt in a combined interrupt signal.
> 
> Add the description of these interrupts to the device tree binding.
> 
> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> ---
>  Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
