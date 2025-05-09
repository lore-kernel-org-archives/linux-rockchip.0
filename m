Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0A76C3ABC9
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 18:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fxz3ICyLkAO8ixezlprU6eGCjupcts7mAkZxi7CoM7k=; b=HyZzJ6Z3C1pr1J
	2DNlZvFBMaY3XmLbQr9nrXqBHSHl9+sK4dx6YUkEdQQOTddJdMGtBlJrWHoUMPa8EOVfDpLn4dpLW
	w68qxjZO/MaopzblMvjislrspC6IDx30hsmqaWsntvFUJJqXXMih1HHlKEj8Ok+o0D3A8GtfKltIt
	Ef20NqYUIpdATaRYxmefVCGY4+H5kFoyxTYSyGv+aLRbHle5v94ZMGu9k99AMiGojYBheLWdGLirj
	3QZgPAzhtuPf3E7fadbZIm/FX8IP7lVlZRtfNrjVpnrVZJQ+41MmkH51svfr2dszVYU9UJ57gMVEO
	ONBk5f6cDd9xDmsEJB6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDS8k-00000004Wl2-471a;
	Fri, 09 May 2025 18:08:06 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDQ5B-00000004BIc-3Tkp;
	Fri, 09 May 2025 15:56:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=Ht
	oycmPbpqBasA/drBUodysvfnREG7Bsxmru8dbrqNw=; b=ER59UXA31khSY9WbeL
	MDhFLDWNjr3qr0JvmCSTZWQ4aqQk+QFeHeEHlgP56JaN8q4p0orern3cx25Od9Qo
	FtX+f923x9siPOlQyZzxBm5i01bl1fKzTIlI4RCnrxSc57E6D1KCc0jQzMn4ekxR
	cmoTNvAYZ/3VcLKMr6PTR8L+g=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g0-4 (Coremail) with SMTP id _____wCH+a9CJR5oqYT+AA--.23731S6;
	Fri, 09 May 2025 23:54:45 +0800 (CST)
From: Hans Zhang <18255117159@163.com>
To: shawn.lin@rock-chips.com,
	lpieralisi@kernel.org,
	kw@linux.com,
	bhelgaas@google.com,
	heiko@sntech.de,
	manivannan.sadhasivam@linaro.org
Cc: robh@kernel.org,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Hans Zhang <18255117159@163.com>
Subject: [PATCH 4/4] PCI: rockchip-host: Remove unused header includes
Date: Fri,  9 May 2025 23:54:02 +0800
Message-Id: <20250509155402.377923-5-18255117159@163.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250509155402.377923-1-18255117159@163.com>
References: <20250509155402.377923-1-18255117159@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wCH+a9CJR5oqYT+AA--.23731S6
X-Coremail-Antispam: 1Uf129KBjvJXoW7ZF1fWw17JryxuryDCrW5Awb_yoW8GF1UpF
	WqkFWxJrZ5AF1UCFnruF1qkr1Yqw4DZw17J342ga47Z342yr1vq395Crnxtr1kAFW2gF15
	Cay3trs5CrW5XrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0pKiiT5UUUUU=
X-Originating-IP: [124.79.128.52]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/xtbBDxxIo2geIgCSFQAAsr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_085618_267208_BF8A7B10 
X-CRM114-Status: UNSURE (   7.63  )
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

Clean up the driver by removing unnecessary header includes
(e.g., <linux/clk.h>, <linux/reset.h>) that are no longer referenced
after refactoring. This improves code readability and build efficiency.

Signed-off-by: Hans Zhang <18255117159@163.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index ba1f7832bda5..e2c603634bda 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -12,26 +12,17 @@
  */
 
 #include <linux/bitrev.h>
-#include <linux/clk.h>
-#include <linux/delay.h>
 #include <linux/gpio/consumer.h>
-#include <linux/init.h>
 #include <linux/interrupt.h>
 #include <linux/iopoll.h>
 #include <linux/irq.h>
 #include <linux/irqchip/chained_irq.h>
 #include <linux/irqdomain.h>
-#include <linux/kernel.h>
-#include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_pci.h>
-#include <linux/pci.h>
-#include <linux/pci_ids.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
-#include <linux/reset.h>
-#include <linux/regmap.h>
 
 #include "../pci.h"
 #include "pcie-rockchip.h"
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
