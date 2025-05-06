Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F2E7C3ABBC
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 May 2025 22:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/KbMsDFNDVH1/D6bNsQj8K4zvGjqjKLkdjAGyuAQ4E=; b=pmd4KjheB0F1/Q
	2l9BzNt1QayDy/6iu8H1jajHQ41A9d/29lycoQ/IoPLUlXbqVHhxn+eWD74qFFeXJzeGrXkbg+AIY
	ZrS8yAx76XhhB6tEAJU9DNqGg/v6fWatNrv1+F38Em0YOvyUpjt8+HISZZV55PswrHri6A2ovl+xf
	UiWApRPhuNsbDL1i2wMSantPYx+kFRXxsY8WNkxkoQVumeqRIzXR3rpT+FYHWiDIBZv+uRGdcD0DP
	AXkADRa5KyAuwnUuSpAPy0lAsp+cLVoWlXStEYazg3XEN/HauLm2sZ3XCzJIQAhVmVW7l2K0z5zbJ
	o1mKl2XYPny46f+9zIhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCQwN-0000000Dc4H-1MOw;
	Tue, 06 May 2025 22:39:07 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCMCd-0000000CreC-1vxG;
	Tue, 06 May 2025 17:35:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=fhcsu
	unrHkitcMq06j2dmcMWJJ4ZWepHigEVMlm5Ntc=; b=fwJNIuGvotdgzmFf5WEWY
	JVCiZ1xHK5eZxGb3NshUF4fsNCa3MLCjYHdfJosbPj0Q+XnmEqb64o2gCmefFxAj
	rjbqWOncap4VArENcJX2E6CzZxQAKRhJwysOX2saxVITpsLzrCdR8TZiMk1P37k4
	XRQsDGF5G6JifXIc4o6MIg=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g0-3 (Coremail) with SMTP id _____wAX_U4ySBpoVmZeEw--.15363S5;
	Wed, 07 May 2025 01:34:46 +0800 (CST)
From: Hans Zhang <18255117159@163.com>
To: lpieralisi@kernel.org,
	kw@linux.com,
	bhelgaas@google.com,
	heiko@sntech.de,
	manivannan.sadhasivam@linaro.org,
	yue.wang@Amlogic.com
Cc: pali@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	jingoohan1@gmail.com,
	khilman@baylibre.com,
	jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Hans Zhang <18255117159@163.com>
Subject: [PATCH v3 3/3] PCI: aardvark: Remove redundant MPS configuration
Date: Wed,  7 May 2025 01:34:39 +0800
Message-Id: <20250506173439.292460-4-18255117159@163.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250506173439.292460-1-18255117159@163.com>
References: <20250506173439.292460-1-18255117159@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wAX_U4ySBpoVmZeEw--.15363S5
X-Coremail-Antispam: 1Uf129KBjvJXoW7Zr47trWUAFWUCF43Gr4kJFb_yoW8Xry8pF
	9xXF4xtF4ftr15u3ZrA3WkKry3JasFkFy5W398W3yfZF9xtryUGFyayryrAayxJr4kGFyj
	y34YyrWFy3W3twUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UeGQDUUUUU=
X-Originating-IP: [124.79.128.52]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/1tbiOhVFo2gaREltogAAs5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_103535_822308_1FB574C8 
X-CRM114-Status: UNSURE (   7.83  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The Aardvark PCIe controller enforces a fixed 512B payload size via
PCI_EXP_DEVCTL_PAYLOAD_512B, overriding hardware capabilities and PCIe
core negotiations.

Remove explicit MPS overrides (PCI_EXP_DEVCTL_PAYLOAD and
PCI_EXP_DEVCTL_PAYLOAD_512B). MPS is now determined by the PCI core
during device initialization, leveraging root port configurations and
device-specific capabilities.

Aligning Aardvark with the unified MPS framework ensures consistency,
avoids artificial constraints, and allows the hardware to operate at
its maximum supported payload size while adhering to PCIe specifications.

Signed-off-by: Hans Zhang <18255117159@163.com>
---
 drivers/pci/controller/pci-aardvark.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
index a29796cce420..d8852892994a 100644
--- a/drivers/pci/controller/pci-aardvark.c
+++ b/drivers/pci/controller/pci-aardvark.c
@@ -549,9 +549,7 @@ static void advk_pcie_setup_hw(struct advk_pcie *pcie)
 	reg = advk_readl(pcie, PCIE_CORE_PCIEXP_CAP + PCI_EXP_DEVCTL);
 	reg &= ~PCI_EXP_DEVCTL_RELAX_EN;
 	reg &= ~PCI_EXP_DEVCTL_NOSNOOP_EN;
-	reg &= ~PCI_EXP_DEVCTL_PAYLOAD;
 	reg &= ~PCI_EXP_DEVCTL_READRQ;
-	reg |= PCI_EXP_DEVCTL_PAYLOAD_512B;
 	reg |= PCI_EXP_DEVCTL_READRQ_512B;
 	advk_writel(pcie, reg, PCIE_CORE_PCIEXP_CAP + PCI_EXP_DEVCTL);
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
