Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 836EBC4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Apr 2024 14:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWrP18d6Jke8X1mE1HYckWe6wd1H23QKgnyIss5qLOs=; b=acvbqZ+Ug3hUV5
	Xhx0Iiu7LefWGXACPjS9lAMRWKFqmsqtcU5Zdzs8msvoKccvo80z7Gb3P4CzadZvqJzhBu7UbnLmK
	Bv51AhSEHIHnJ+eFDgTOIBaGZS1+qYnmkfI7tFqHMbdkPC9j5/Ht3B/iDI9HTn8NGwNQMLEqMhbY5
	DrfAEaZ/HHKm0n0xiHFrYGaWad5BpGDcVRv+TGeYLqrh7DXNvpB4H3jZxbtlrJVTF8JloQzgyomNO
	Vf0YpVCtMsoLb88XhxOsPn7hq4hZDGnxX9hOZjJQcULnNXncNa78C4ZFAGimhAh+16kE+2kk7Hsya
	Z+UPk3C2qlRvwA0C0yvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx6Nj-0000000GMsr-3bY8;
	Wed, 17 Apr 2024 14:35:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx6Ng-0000000GMs3-0q7G;
	Wed, 17 Apr 2024 14:35:25 +0000
Received: from i5e8616c3.versanet.de ([94.134.22.195] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rx6NP-0003y3-HQ; Wed, 17 Apr 2024 16:35:07 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?utf-8?B?V2lsY3p5xYRza2k=?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Simon Xue <xxm@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Niklas Cassel <cassel@kernel.org>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Jianfeng Liu <liujianfeng1994@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 stable@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Fix GPIO initialization flag
Date: Wed, 17 Apr 2024 16:35:06 +0200
Message-ID: <3292185.44csPzL39Z@diego>
In-Reply-To: <20240416121522.269972-1-cassel@kernel.org>
References: <20240416121522.269972-1-cassel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_073524_275025_20D9D6A4 
X-CRM114-Status: GOOD (  16.70  )
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

Am Dienstag, 16. April 2024, 14:15:22 CEST schrieb Niklas Cassel:
> PERST is active low according to the PCIe specification.
> 
> However, the existing pcie-dw-rockchip.c driver does:
> gpiod_set_value(..., 0); msleep(100); gpiod_set_value(..., 1);
> When asserting + deasserting PERST.
> 
> This is of course wrong, but because all the device trees for this
> compatible string have also incorrectly marked this GPIO as ACTIVE_HIGH:
> $ git grep -B 10 reset-gpios arch/arm64/boot/dts/rockchip/rk3568*
> $ git grep -B 10 reset-gpios arch/arm64/boot/dts/rockchip/rk3588*
> 
> The actual toggling of PERST is correct.
> (And we cannot change it anyway, since that would break device tree
> compatibility.)
> 
> However, this driver does request the GPIO to be initialized as
> GPIOD_OUT_HIGH, which does cause a silly sequence where PERST gets
> toggled back and forth for no good reason.
> 
> Fix this by requesting the GPIO to be initialized as GPIOD_OUT_LOW
> (which for this driver means PERST asserted).
> 
> This will avoid an unnecessary signal change where PERST gets deasserted
> (by devm_gpiod_get_optional()) and then gets asserted
> (by rockchip_pcie_start_link()) just a few instructions later.
> 
> Before patch, debug prints on EP side, when booting RC:
> [  845.606810] pci: PERST asserted by host!
> [  852.483985] pci: PERST de-asserted by host!
> [  852.503041] pci: PERST asserted by host!
> [  852.610318] pci: PERST de-asserted by host!
> 
> After patch, debug prints on EP side, when booting RC:
> [  125.107921] pci: PERST asserted by host!
> [  132.111429] pci: PERST de-asserted by host!
> 
> This extra, very short, PERST assertion + deassertion has been reported
> to cause issues with certain WLAN controllers, e.g. RTL8822CE.
> 
> Fixes: 0e898eb8df4e ("PCI: rockchip-dwc: Add Rockchip RK356X host controller driver")
> Tested-by: Jianfeng Liu <liujianfeng1994@gmail.com>
> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

On rk3588-jaguar
Tested-by: Heiko Stuebner <heiko@sntech.de>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
