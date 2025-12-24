Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FEE9E7491C
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 07:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2uErh5PYS/vttF8ij5B4W6yV7lsP5drhUp6jP4mJy8=; b=S1XElmfeXwjp1+
	TXwJK6STAZfOe/Vw7oYsB/XdwfTGpf13hL9/OSwgOL/OygcENWGcgRBsDRLEV07VPYNy+0gRZPiSH
	PEgnNQDulAax6hQXJNfgpAkMxPOyT2sEyHdAdHHKTA0bOrorgclHh+js5P3udrW7q2bn2l7wSpoNg
	j+N5yUbhjETogPniMiS5ba5YCOUW27RSE7CQwF1bMNyiSlr1mtdoBdsn7BcyIc1aE2morLW6rexjd
	fgrTPyu1K040wKc//klpnQDuW73rxw9tL4ZqCDhH88ejpMFker0/hSHLBfMcK3dQy8cJw0dAfGhjM
	aLMENn+MTGH3WXFsRkeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJ1M-0000000GWbQ-2qk4;
	Wed, 24 Dec 2025 07:10:56 +0000
Received: from mail-m49233.qiye.163.com ([45.254.49.233])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJ1J-0000000GWaH-1X5l;
	Wed, 24 Dec 2025 07:10:54 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2e63ea78c;
	Wed, 24 Dec 2025 15:10:48 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 1/5] PCI: dw-rockchip: Add phy_calibrate() to check PHY lock status
Date: Wed, 24 Dec 2025 15:10:06 +0800
Message-Id: <1766560210-100883-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com>
References: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9b4f32340d09cckunm34e2a83f3c2a70
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhoZQlZOSU4dSE8YGkxKH0JWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=fXN+rH/SRZfYnwscvqoSqYTEjcehEY+7m0VATktGPyBc5q+Sr8vHX9/FFAUmWt3xIx71RB0HFKIkId26Gc1UrAPnMycD7vMOP6yiv/+4tmSZkGkCnF0QX6r+rXFWCGk/X1gBl2yTev/3jACQHcx9peNbiPQovAZGA56jr9zSsHE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=nmApjKhdRDMPDmEy+/sym/t5MR+4fczg/gJfQLzXJfs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_231053_600020_676FFF13 
X-CRM114-Status: GOOD (  12.23  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Current we keep controller in reset state when initializing PHY which
is the right thing to do. But this case, the PHY is also reset because
it refers to a signal from controller. Now we check PHY lock status
inside .phy_init() callback which may be bogus for certain type of PHY,
because of the fact above. Add phy_calibrate() to better check PHY lock
status if provided.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index f8605fe..75d6306 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -705,6 +705,12 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		goto deinit_phy;
 
+	ret = phy_calibrate(rockchip->phy);
+	if (ret) {
+		dev_err(dev, "phy lock failed\n");
+		goto assert_controller;
+	}
+
 	ret = rockchip_pcie_clk_init(rockchip);
 	if (ret)
 		goto deinit_phy;
@@ -727,7 +733,8 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	}
 
 	return 0;
-
+assert_controller:
+	reset_control_assert(rockchip->rst);
 deinit_clk:
 	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
 deinit_phy:
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
