Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF065C54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RZ2mw4zqUcSQU23SRpKhmd+Pg+3uXtnofU9SD8p0IpM=; b=y2h48LM2vLA+HQ
	e2nRDV20MiQ/GWvPYg76eTSCU14zxwCgVQBcEulSqXLTdUagcvsWkl6ceafo+cbirXxx4ckXoLxAx
	BZ/kIT5yh7kVyfR9GDAsbnJw6ceTXrTCDJ9lQUm8XTf/zEF41FHKlG8eyVZqLB6IZQu4cy0FC6dMj
	kcGpJ+xB3fEHxUWZmVI/YbdbILT/JUtTf0tdS0JWmIrvw1SeMBTDWmyGVjDkID59OZHUxIej3/6Kz
	a0ISPULFRbSEWvdAxMofudd0bao9JJqEtgfQxvFX1MgEZhSrGtxeL3fnyC71CeBBI8zpCkzSfRkLZ
	2XaGC++fdZ069RuGHs0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpVBX-00000009nbh-0AOC;
	Wed, 27 Mar 2024 15:27:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpVA2-00000009miH-1sYc;
	Wed, 27 Mar 2024 15:26:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DB747615BF;
	Wed, 27 Mar 2024 15:25:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 475ACC433F1;
	Wed, 27 Mar 2024 15:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711553152;
	bh=dGmNJUYMEAgIGXcXDQuvxQkj9FZH9bA/obVm82Yz5Qc=;
	h=From:To:Cc:Subject:Date:From;
	b=NloO5XQeL2rnPrSX7ywh3J2UFHPlPxcas9SPK+F68lvzqVQhX6nd2yL1Pj73EVTEf
	 R6INpv0kc3AFTSMR2N1MT8h+GBNdf+qY7cGujbleXHax+CQBvP/Fb9P3xtoHXnVLbh
	 BiiheD47m9UUeKPpb3poVHnGiAZx+XApXqatIHTSTrkdWa6dSLFk0H0zBQEZEcIeFr
	 9XgdjUX18J+1nIDAMqQr4oC8FxvAfVPMqKPScqrmgTecWvEB7KE3v7Ye6RCeVCv1gc
	 Os6OL6XjGL8A/UiDD1gOecufZaJfxZZ9UcyU4sYuAYYo7Z3bt9v2fCWcUDubDMGMrv
	 aQ1PO0tiQs9dQ==
From: Niklas Cassel <cassel@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] PCI: dw-rockchip: Fix GPIO initialization flag
Date: Wed, 27 Mar 2024 16:25:31 +0100
Message-ID: <20240327152531.814392-1-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_082554_907445_81DD7EA8 
X-CRM114-Status: GOOD (  13.70  )
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

PERST is active low according to the PCIe specification.

However, the existing pcie-dw-rockchip.c driver does:
gpiod_set_value(..., 0); msleep(100); gpiod_set_value(..., 1);
When asserting + deasserting PERST.

This is of course wrong, but because all the device trees for this
compatible string have also incorrectly marked this GPIO as ACTIVE_HIGH:
$ git grep -B 10 reset-gpios arch/arm64/boot/dts/rockchip/rk3568*
$ git grep -B 10 reset-gpios arch/arm64/boot/dts/rockchip/rk3588*

The actual toggling of PERST is correct.
(And we cannot change it anyway, since that would break device tree
compatibility.)

However, this driver does request the GPIO to be initialized as
GPIOD_OUT_HIGH, which does cause a silly sequence where PERST gets
toggled back and forth for no good reason.

Fix this by requesting the GPIO to be initialized as GPIOD_OUT_LOW
(which for this driver means PERST asserted).

This will avoid an unnecessary signal change where PERST gets deasserted
(by devm_gpiod_get_optional()) and then gets asserted
(by rockchip_pcie_start_link()) just a few instructions later.

Before patch, debug prints on EP side, when booting RC:
[  845.606810] pci: PERST asserted by host!
[  852.483985] pci: PERST de-asserted by host!
[  852.503041] pci: PERST asserted by host!
[  852.610318] pci: PERST de-asserted by host!

After patch, debug prints on EP side, when booting RC:
[  125.107921] pci: PERST asserted by host!
[  132.111429] pci: PERST de-asserted by host!

Without this change, there is no guarantee that PERST will be asserted
while the core is performing a fundamental reset.
(E.g. if the bootloader would leave PERST deasserted.)

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index d6842141d384..a909e42b4273 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -240,7 +240,7 @@ static int rockchip_pcie_resource_get(struct platform_device *pdev,
 		return PTR_ERR(rockchip->apb_base);
 
 	rockchip->rst_gpio = devm_gpiod_get_optional(&pdev->dev, "reset",
-						     GPIOD_OUT_HIGH);
+						     GPIOD_OUT_LOW);
 	if (IS_ERR(rockchip->rst_gpio))
 		return PTR_ERR(rockchip->rst_gpio);
 
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
