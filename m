Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A08ABC4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Apr 2024 16:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3NCNYNmc7rsjym65kvjV2WjRTwyw9MdQwM8GN5o70RQ=; b=ouXBiUGQ4QP9zt
	RkaAYL96YkimZPcRCSsME47eL+OgQLG+kt88DoyU2hiDlCZdPD/mRMafblmiJY4jQfc3XgForKd7J
	5FOJ4U5lcPYaGTQQo9xqNtXdlRZ72jljSj29Oo3qdEDNPe6hKsbqbPIzaxOA7JyFUyYgxDpTALCgD
	x5uaBDo6KDt41mYyZtgDFmTpE9vzh5gKFzIc2z5SN+/ljXYIxGUbo7XDgroA75FEo1ap0FBKXPMRC
	+3sAOuyrGjcGyL02qSiXSbVW1sbPgpA2NvI1a83ddXRnCWyM/lHQwIJYJXaIduA7aLf2co9s+MtL7
	zWrNXoP0xHTbIaLiuQJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx8Mp-0000000GqyC-3aP6;
	Wed, 17 Apr 2024 16:42:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx8Ml-0000000GqxQ-2erE;
	Wed, 17 Apr 2024 16:42:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BA647614FC;
	Wed, 17 Apr 2024 16:42:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36E26C072AA;
	Wed, 17 Apr 2024 16:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713372154;
	bh=bFAV0Ws7047o+4oNJQ9VEZqnv8b/ertE1ngvFBcZ5F8=;
	h=From:To:Cc:Subject:Date:From;
	b=TBwFRqeMg7Ol1u9QdhO34wpSKv7pLxDHJHtAELzYbIp83gCMM9ocBL3jxlaZifLtN
	 mUNC+O9HXbY3nBTWFp1nmnJkNCkRxNL6a5iTVdaiO0W6sYUDAuew/kiccCdkyRmMo7
	 p/V2C5FywN04TaQ0w68KK8UtdFIOPx80cYut1oIZw2k0idf1YCOjEmqNrHYtzsu69r
	 wni2xPLCvJ50i+pU5Aa1GMz0sofNT/2YPMiM202+aQKPCcQ2s3TrK2Nwh5RhQ2rDuW
	 mqIexugp3M8ScTz+p8mKODdGF074M0Tp1wU1YFKb5VkaYgYSg6W1RSgmlPwMzQ5JrM
	 JyA4K+jf2g8eQ==
From: Niklas Cassel <cassel@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Simon Xue <xxm@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	stable@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3] PCI: dw-rockchip: Fix initial PERST# GPIO value
Date: Wed, 17 Apr 2024 18:42:26 +0200
Message-ID: <20240417164227.398901-1-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_094235_777407_382FB8D6 
X-CRM114-Status: GOOD (  11.79  )
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

PERST# is active low according to the PCIe specification.

However, the existing pcie-dw-rockchip.c driver does:
gpiod_set_value(..., 0); msleep(100); gpiod_set_value(..., 1);
When asserting + deasserting PERST#.

This is of course wrong, but because all the device trees for this
compatible string have also incorrectly marked this GPIO as ACTIVE_HIGH:
$ git grep -B 10 reset-gpios arch/arm64/boot/dts/rockchip/rk3568*
$ git grep -B 10 reset-gpios arch/arm64/boot/dts/rockchip/rk3588*

The actual toggling of PERST# is correct.
(And we cannot change it anyway, since that would break device tree
compatibility.)

However, this driver does request the GPIO to be initialized as
GPIOD_OUT_HIGH, which does cause a silly sequence where PERST# gets
toggled back and forth for no good reason.

Fix this by requesting the GPIO to be initialized as GPIOD_OUT_LOW
(which for this driver means PERST# asserted).

This will avoid an unnecessary signal change where PERST# gets deasserted
(by devm_gpiod_get_optional()) and then gets asserted
(by rockchip_pcie_start_link()) just a few instructions later.

Before patch, debug prints on EP side, when booting RC:
[  845.606810] pci: PERST# asserted by host!
[  852.483985] pci: PERST# de-asserted by host!
[  852.503041] pci: PERST# asserted by host!
[  852.610318] pci: PERST# de-asserted by host!

After patch, debug prints on EP side, when booting RC:
[  125.107921] pci: PERST# asserted by host!
[  132.111429] pci: PERST# de-asserted by host!

This extra, very short, PERST# assertion + deassertion has been reported
to cause issues with certain WLAN controllers, e.g. RTL8822CE.

Fixes: 0e898eb8df4e ("PCI: rockchip-dwc: Add Rockchip RK356X host controller driver")
Tested-by: Jianfeng Liu <liujianfeng1994@gmail.com>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: stable@vger.kernel.org	# 5.15+
---
Changes since v2:
-Picked up tag from Heiko.
-Change subject (Bjorn).
-s/PERST/PERST#/ (Bjorn).

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
