Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7561CC10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 23:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CfFEXajdA8IaABXpmKXGnhekeWh7mq/ijwAt7swNoHY=; b=zA+F1aLiSN1Gup
	Am81q7qbmG6M9ekvm2xKd5QOYm0Cjl/FYvEVuR0YgDHjCcjRSl7KzwWuQ/0R1+X415XdWF5ws+cEv
	7xyxtfCzsrp8xvyxyH+8SMfT7Afcj0fltMatYvqMGFDqhGQlvMc5sMm5ZzEd9N6zzfs/1xJ6xfPWF
	wA9LN1jB4e2VzMre+758IKo6RkMeChZReBHqrWmG6viMlRNLjDCEEb83tt27+tIZENMpuZUhaujrM
	LNfcNC+NIkw6rZOn/9fQUFleDffgAU5jVQqpKSofJTXwFX7S+2tgvBCPDgt/qkKcBKWcLN0HIh3oF
	iyQNOiP6/vt/nYMhBjTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Uep-0000000DQNP-112V;
	Tue, 07 May 2024 23:55:39 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Uel-0000000DQLi-3MtB
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 23:55:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 34D68CE01F4;
	Tue,  7 May 2024 23:55:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A943CC2BBFC;
	Tue,  7 May 2024 23:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715126131;
	bh=/7OZIyJaExPNEEfR8A1MS43PgmAU1yuWmNyB8jGptiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GPtnZcDXAURyWK0GXZSG46Ok0NRJy8E+/MnuG/PpWMeTNZsTDYORmAlLkgnnFD0Mf
	 A/hrNWQcq7gDbrb4dehVY15MXfyY/SW8vSul/OJQI/xEgbazDspdoFKDRyE7uWTIar
	 qmOoDPvP0xgvtD+ObFVgctjZ1QbYhrczXYnwwk4MjiJiXSBZwwfRK0hNKQu2Q1YKqb
	 0dlVkx1i8NsnlvCg5uOyAYlBFKkyLg4NGRzkPzZFhgcjOnEDJLKYvo6d9Op63k34uK
	 3Fktw1iizS80J+8ILaGKtcjBuE+VgcJRLVBb85DT1MBmvr4PEqZquIAZ+KeNR/Ry7p
	 Dm2/tVrRH+RYg==
Date: Wed, 8 May 2024 01:55:24 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 08/14] PCI: dw-rockchip: Add rockchip_pcie_ltssm()
 helper
Message-ID: <Zjq_bEoFe-xR_hww@ryzen.lan>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-8-a0f5ee2a77b6@kernel.org>
 <20240504171346.GE4315@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240504171346.GE4315@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_165536_045146_D475ED00 
X-CRM114-Status: GOOD (  18.36  )
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

On Sat, May 04, 2024 at 10:43:46PM +0530, Manivannan Sadhasivam wrote:
> On Tue, Apr 30, 2024 at 02:01:05PM +0200, Niklas Cassel wrote:
> > Add a rockchip_pcie_ltssm() helper function that reads the LTSSM status.
> > This helper will be used in additional places in follow-up patches.
> > 
> 
> Please don't use 'patches' in commit logs. Once the patches get merged, they
> become commits.

Sure, will fix in V2.


> 
> > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> > ---
> >  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > index 1993c430b90c..4023fd86176f 100644
> > --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > @@ -143,6 +143,11 @@ static int rockchip_pcie_init_irq_domain(struct rockchip_pcie *rockchip)
> >  	return 0;
> >  }
> >  
> > +static inline u32 rockchip_pcie_ltssm(struct rockchip_pcie *rockchip)
> 
> rockchip_pcie_get_ltssm()?

Sure, will fix in V2.


> 
> Also, no inline in C files, please. Compiler will inline functions with or
> without the keyword anyway.

Sure, will fix in V2.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
