Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37C77E77180
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Dec 2024 08:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0Esj7wpo13ktr9FTmPKXAsZNig3KYE59HAg0HqPEf8=; b=bzXeLGvY3VIxRD
	PTJ//RuIiYQ6zzaKekIen9DV79stCaCHax6DSUG01kGDgR2sBwmfwBUxmWsSM21yTqcMbke+J4qvg
	bd2g9rnVcPzXa4v3Tvg8fLhJWqFWnD8iA+goMAFKMcNb0opWiuXNbkpnRTx2QnhBqeq1V4643uhjc
	cLPJJoB6QKJWZJEQETtiZGQmcPZSamGUfNhwa/aZ499kfWT0BJhm1HHxizk2i7Cgueq2pEXCeuBvk
	OhU6LfOWtVB58irR2wrPBqEvlRp2/+kVfRoS9dWJPEppKk2hJmrTp3k/a4NoVPY3M/Jt35QLSJOAK
	xozosth7uET4/EJQy/TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeEr-0000000HFHI-3Yxp;
	Thu, 12 Dec 2024 08:08:01 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeBG-0000000HEMb-3yrq;
	Thu, 12 Dec 2024 08:04:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A6007A4262B;
	Thu, 12 Dec 2024 08:02:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75B3EC4CECE;
	Thu, 12 Dec 2024 08:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733990657;
	bh=47kCC3IaGSxh1D7BcSgs1D4JpI1pTNpXykzx+d7p8Fg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tf/iEPgjcINryK5v/Jg7/FAJAr+P+m7ZQkzsS62+09HHfEz1q9iM8eS+R/qPvYQpx
	 XkMPSmjPFM1r4i6MQY7+kMA1xw0FspHRE67Dk3l8r8a7ZMaQln6dyEUUCEK+RtN0Ke
	 DiB3zMGSQ28XsfPh3qY0pOYtz7nG+eE46lCxWAfhf1Au58sBcT8zAbxTSztWYtSqBe
	 TY34yeFkt+/Tq8H/1L0ZU2/KwlFyncyh1jTYxg8k8KRW06aa6v+zDmpaZsPazupvyh
	 BtPsIZglCNret4sx6y9AmoQr6YjNrGk6VGhc2CNpTkt9WmJzhnkf+dc3avqv4FOOwu
	 SVUf1PtfU/jPA==
Date: Thu, 12 Dec 2024 09:04:12 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Enumerate endpoints based on
 dll_link_up irq in the combined sys irq
Message-ID: <Z1qY_K57lamVxqRm@ryzen>
References: <20241127145041.3531400-2-cassel@kernel.org>
 <20241211053104.7sgo5bmmjnolwvhh@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241211053104.7sgo5bmmjnolwvhh@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_000419_052110_82FF0E10 
X-CRM114-Status: GOOD (  16.19  )
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

On Wed, Dec 11, 2024 at 11:01:04AM +0530, Manivannan Sadhasivam wrote:
> On Wed, Nov 27, 2024 at 03:50:42PM +0100, Niklas Cassel wrote:
> > Most boards using the pcie-dw-rockchip PCIe controller lack standard
> > hotplug support.
> > 
> > Thus, when an endpoint is attached to the SoC, users have to rescan the bus
> > manually to enumerate the device. This can be avoided by using the
> > 'dll_link_up' interrupt in the combined system interrupt 'sys'.
> > 
> > Once the 'dll_link_up' irq is received, the bus underneath the host bridge
> > is scanned to enumerate PCIe endpoint devices.
> > 
> > This commit implements the same functionality that was implemented in the
> > DWC based pcie-qcom driver in commit 4581403f6792 ("PCI: qcom: Enumerate
> > endpoints based on Link up event in 'global_irq' interrupt").
> > 
> > The Root Complex specific device tree binding for pcie-dw-rockchip already
> > has the 'sys' interrupt marked as required, so there is no need to update
> > the device tree binding. This also means that we can request the 'sys' IRQ
> > unconditionally.
> > 
> > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> 
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks for the review!

Could this patch please be picked up?


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
