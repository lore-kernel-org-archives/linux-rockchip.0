Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64188C624D6
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 02:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N/jJNr+ICOXhd7uWhC+qIb6+jHX5ww0seQxdGXmALh4=; b=2UuvIRAgcd45e5
	c68CbAxlSPgQSKjb2yTTqsIijnW9F2X0IflhybSrtTEe2guS7KSTz34Pzoo1GsxWLG0kqFsxjWOzz
	0d7GVWdE0Xt3KaxfO1jgdDiLmEV3MpnAH+M4hX7LJ4rogOT3oDJpXYkRFHZKRdWJ5FrBwSkgFDVH/
	1O9qZQwyVaU/FEAbgaAEtLqqDroa6eWLQVx3HPvC4/r3f/uaObAUDynvosVspyXPkQozU8IXBcz60
	yjY9IcUb5XWaDekZJlenhvY5jTWX/CCl9HSHCVzShzWVLJAOhw9DZHqyVSc325SaMYPNMpheCN2aQ
	dCc9wQEVdSrV1Wsam3bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1xRq-0000000GExU-3sao;
	Thu, 03 Sep 2026 02:45:06 +0000
Received: from mail-m16023652174.xmail.ntesmail.com ([160.236.52.174])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1xRo-0000000GEva-1vRl
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Sep 2026 02:45:05 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4c5849804;
	Thu, 3 Sep 2026 10:44:49 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Peter Geis <pgwipeout@gmail.com>,
	Niklas Cassel <cassel@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 0/2] Two small INTx fixes for Rockchip's dwc based PCIe controller driver
Date: Thu,  3 Sep 2026 10:44:35 +0800
Message-Id: <1788403477-71491-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0aa0652797eb03a4kunm355d5a8763ea3
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGk5ITFYZQ09OThlPTE
	MdTElWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=B3NqRP/YTCVsrD0QwG9Yjcp55q0ZXA0MaThIV0VDjMlfVCgjM/JxQeqlA0PrO9MQpQsWf5K3XTf+LrE8BJZ+Je2iWTIu4lW1xazghyFU1grewapYcA/2z12U2Zp4g5nu0MVLMsKlcwXbGbR1YFCxgxyyJIIRd6HNUt75QLi5Oek=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=19kmhDirJCWxWqtbv39Qoz6DSKVcWfKitSAyHGY198s=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_194504_769816_40459026 
X-CRM114-Status: UNSURE (   6.82  )
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


This small series fixes two INTx related issues in the Rockchip
DesignWare PCIe controller driver.

Note that patch 2 depends on b376b3ff9cb0 which is not yet in Linus'
tree, so this series is based on linux-next.



Shawn Lin (2):
  PCI: dw-rockchip: Bail out if the INTx irq domain creation fails
  PCI: dw-rockchip: Do not recreate the INTx irq domain on root port
    reset

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 41 +++++++++++++++++----------
 1 file changed, 26 insertions(+), 15 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
