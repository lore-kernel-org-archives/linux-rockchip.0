Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72E1DE7491E
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 07:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f1YAdVQ7AN51eV7sPXehoqMFwmOamyNHJ0v0l+IvxWE=; b=qs7FQ8BnYsyOgn
	8qY3PpWCnRlwRDVEZl13kyged7Rx1bBuzHEBwLY4A70hVeJGtEk+Yu3p03kfCPGFW+1VUtnN2JNJf
	3XaCRRc68xcYXdQoGFsxem2eYt8z53c397t079qQXoIEfMsWlCOCn64qgZMxbj6zOwfkxOV24U5DJ
	QdTzwaMee7350yN3czZ27tKgoWmWAXW2tF/Q1o5WFBPUeka8snL34xS3HyCkMbUnXijW1RfQgaT4U
	7RT5X2wSE27kQNr59rwcGPTY9YgB8VKM15u1y5XA0R9VSx1wjmITzV7JhemKhG578+mX4wu0mZQQg
	IJkV3dc7bmnBm2gfRmzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJ1E-0000000GWZY-0aSU;
	Wed, 24 Dec 2025 07:10:48 +0000
Received: from mail-m49219.qiye.163.com ([45.254.49.219])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJ1B-0000000GWYm-2BCl;
	Wed, 24 Dec 2025 07:10:47 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2e63ea73d;
	Wed, 24 Dec 2025 15:10:33 +0800 (GMT+08:00)
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
Subject: [PATCH 0/5] Add calibration for Synopsys PCIe PHY and Controller
Date: Wed, 24 Dec 2025 15:10:05 +0800
Message-Id: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9b4f31f8b109cckunm34e2a83f3c29b2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUJCTlYaHk8dGkkfGENOSUtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=gh5/+vL0A5QZWNvpxrXt6g0tTM1y0jo5WlymP6ICW55+k3ArpRsLM/B+hts7Ac5bMMaVC4/fmDxwoWIsASG7NH0tfsQTkUNg2yu/6Wf1ZZoBYCyNEMo+GbZ+XgRWmgf8oan41gK77RSep4OsoV6sXnV5hgYBbsYvvBlVusNrcV8=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=yBptviF9T5YX5SPBqB7UXmBB5g56SIiXZoIROiFrrzw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_231046_104305_4B46AA7A 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
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


Currently, when pcie-dw-rockchip uses the Synopsys PHY, it relies on
the phy_init() callback of the phy-rockchip-snps-pcie3 driver to
perform calibration. This is incorrect because the controller is
still held in reset at that time, preventing the PHY from accurately
reflecting the actual PLL lock and calibration status.

To fix this, this series:
1. Calls phy_calibrate() in the pcie-dw-rockchip driver (if supported)
   after the controller is out of reset, ensuring the PHY can
   properly synchronize with the controller state.
2. Adds the necessary calibration support in the Synopsys PHY driver
   to implement this callback.

Please review and test.



Shawn Lin (5):
  PCI: dw-rockchip: Add phy_calibrate() to check PHY lock status
  phy: rockchip-snps-pcie3: Add phy_calibrate() support
  phy: rockchip-snps-pcie3: Increase sram init timeout
  phy: rockchip-snps-pcie3: Check more sram init status for RK3588
  phy: rockchip-snps-pcie3: Only check PHY1 status when using it

 drivers/pci/controller/dwc/pcie-dw-rockchip.c  |  9 +++-
 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c | 61 +++++++++++++++++++++-----
 2 files changed, 57 insertions(+), 13 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
