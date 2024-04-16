Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5342FC04FF6
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 11:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPrGxuPpy33vBxG9+2gZwdDzEs+AiZOQ/iUUVyrY3eY=; b=IKmQ/6ka3mmqlZ
	WHsKTckhDEyq5m+TzRr+1slTSNq7RzgErZ23zyByDwoLznotLTA85M9PY9LPQscE/cUJS6O4h/Rgp
	+xWs3urDICR868SRgc7W+GbYG2i6Cx321Jz16FnBokpVexyKCbk8cSWkf3Yx8UJZH3EAws4cFT/iF
	ECJpdUDUowxSwzIHxVzEb/jkZpy590nymQxN9Btc4RQb9nBaUZLtRe5Sba9s77YJOHBLbRIwq/8Dt
	wJKHzTLMIWITecN0Onkm/Y+jYunDZvRsvtTPej8RW1G9lvKzES18qbGIJ/clZsKxE9tD3poWKE4zy
	PIGYyPGhukr9x23b69AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwhJj-0000000C0ya-3f8r;
	Tue, 16 Apr 2024 11:49:39 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwhJf-0000000C0wx-0h3Q;
	Tue, 16 Apr 2024 11:49:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 12656CE0FDF;
	Tue, 16 Apr 2024 11:49:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0410DC113CE;
	Tue, 16 Apr 2024 11:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713268172;
	bh=tqExM0tvwgYYvzfoeJzUHezqGwF85pfqg2BcHGHTOAo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B2GhDjJLW2WKUr/G74uTDMsCOlAFq0GOIyYwsDvCLJ45tDkSPjLE4pYjl8NPTVc0K
	 rMH05AdS1+1r2r0j0n7AerWzyotq6HJRQqCinxKQeIkEnZJkiTqjLJOEPDrXGIbxVH
	 ehuNKSjGJ7ndXpnTjrC83R59ahZbnO2EHyJ+dj3oUb3jAPNMIMWcL53f4lSOSH9AO0
	 +inXRo2ZXX5R8ouaA1/Ki/ZE8ObSjcnEzm725uN7eu3GxzH2wfPliyWa1o7X3buNuN
	 h3O67lF4nVpB8RM4D73X/jOjY1YPuTMC1GW5njV095NPChqxu1o/pgCA00pMX7AyTT
	 oh3pWpMVNwqZQ==
Date: Tue, 16 Apr 2024 13:49:27 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Fix GPIO initialization flag
Message-ID: <Zh5lx9r1H6MO3kEs@ryzen>
References: <20240327152531.814392-1-cassel@kernel.org>
 <20240416112807.GC2454@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240416112807.GC2454@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_044935_589954_DEDB73AC 
X-CRM114-Status: GOOD (  26.14  )
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

On Tue, Apr 16, 2024 at 04:58:07PM +0530, Manivannan Sadhasivam wrote:
> On Wed, Mar 27, 2024 at 04:25:31PM +0100, Niklas Cassel wrote:
> > PERST is active low according to the PCIe specification.
> > 
> > However, the existing pcie-dw-rockchip.c driver does:
> > gpiod_set_value(..., 0); msleep(100); gpiod_set_value(..., 1);
> > When asserting + deasserting PERST.
> > 
> > This is of course wrong, but because all the device trees for this
> > compatible string have also incorrectly marked this GPIO as ACTIVE_HIGH:
> > $ git grep -B 10 reset-gpios arch/arm64/boot/dts/rockchip/rk3568*
> > $ git grep -B 10 reset-gpios arch/arm64/boot/dts/rockchip/rk3588*
> > 
> > The actual toggling of PERST is correct.
> > (And we cannot change it anyway, since that would break device tree
> > compatibility.)
> > 
> > However, this driver does request the GPIO to be initialized as
> > GPIOD_OUT_HIGH, which does cause a silly sequence where PERST gets
> > toggled back and forth for no good reason.
> > 
> > Fix this by requesting the GPIO to be initialized as GPIOD_OUT_LOW
> > (which for this driver means PERST asserted).
> > 
> > This will avoid an unnecessary signal change where PERST gets deasserted
> > (by devm_gpiod_get_optional()) and then gets asserted
> > (by rockchip_pcie_start_link()) just a few instructions later.
> > 
> > Before patch, debug prints on EP side, when booting RC:
> > [  845.606810] pci: PERST asserted by host!
> > [  852.483985] pci: PERST de-asserted by host!
> > [  852.503041] pci: PERST asserted by host!
> > [  852.610318] pci: PERST de-asserted by host!
> > 
> > After patch, debug prints on EP side, when booting RC:
> > [  125.107921] pci: PERST asserted by host!
> > [  132.111429] pci: PERST de-asserted by host!
> > 
> > Without this change, there is no guarantee that PERST will be asserted
> > while the core is performing a fundamental reset.

> There is no 'core' here, are you referring to the device?

If you at pcie-qcom.c, it does:
1) PERST# assert
2) core reset (using reset_control_assert() in ops->init())
3) PERST# deassert

So the EP is held in reset while the RC resets.

Right now, for dw-rockchip driver, there is no guarantee that
EP is held in reset when the core on RC side resets, which seems bad.


> 
> > (E.g. if the bootloader would leave PERST deasserted.)
> > 
> 
> I don't follow this last sentence. But even without that, the commit message
> itself is descriptive enough.

When I flash u-boot on my board, and boot using TFTP,
I can see that when u-boot jumps to Linux, PERST# is not asserted
and will not be asserted when PCIe RC driver loads.

So the scenario mentioned above can happen.

(If I don't boot using TFTP, PERST# is deasserted when PCIe RC driver loads.)

Anyway, I will remove or clarify this sentence.


> 
> > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> 
> This is a legitimate bug fix. So you should add the fixes tag and CC stable to
> get it backported.

Ok, will do in V2.


> 
> But the patch itself looks fine to me.
> 
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thank you.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
