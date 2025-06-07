Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E10A3C5B543
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Jun 2025 16:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=17MkED/6LoG0/QtyKBYp3oRM28s3oR29eOzuqvBDFxg=; b=d4qb1rM7/zvDi+
	141PvvRrAbLY6p5OtxrvGiSlBTuhqTaaD5UpTvtJj4u1vrvkmYtUlo2xPAsMiq5Qx5843nsp3emyN
	m9lt9ufWyeQUHAiYpob5SmXpS6/lK6vx6gabFwM9AgCwetdKo855Im9HANTiygUSA6oEwkL2u5R88
	RXX9AH3xtOKJVl9DQl2eOIcNBRx70GbeelpgU9VjOm3eM6mtj1iz4Oc4oJnlM9G9/qFAnXC4Ny0uz
	yWbcABFha8I3fUTzx0iZM6ITR7Sx0bsJPPEGRcI/DhK6o2FMoZwevBj18++pIE5gLKDpncWsmA4Fo
	d901U0wZVgWX0teVDyzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNw8l-00000001qwH-3TEf;
	Sat, 07 Jun 2025 16:11:27 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNw08-00000001qB5-0KqA;
	Sat, 07 Jun 2025 16:02:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=dd
	3PBYCBCfNw9lxWikWA//qjDIn1DUBtp6UcFhFb8M8=; b=Mx7aTzqiUh1rV4a9cG
	k1AiZXhyQMeAA4vSO7iNUePeU6R7754WAwonXzxTQxMU+GcHkTmsbXfqx4Kx5JI+
	IF2NoXkRwBgKVTdbgqt0CGN1pYkg64liEj7BV+Mp2Uixy4ZdM4ypjyfF2J2fB6FN
	HT2NwkOmFNdA3B2RrfbgUdHlo=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g1-2 (Coremail) with SMTP id _____wBnk_V6YkRoJ9qHGg--.28203S5;
	Sun, 08 Jun 2025 00:02:05 +0800 (CST)
From: Hans Zhang <18255117159@163.com>
To: shawn.lin@rock-chips.com,
	lpieralisi@kernel.org,
	kw@linux.com,
	bhelgaas@google.com,
	heiko@sntech.de,
	mani@kernel.org
Cc: robh@kernel.org,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Hans Zhang <18255117159@163.com>
Subject: [PATCH v3 3/3] PCI: rockchip-host: Remove unused header includes
Date: Sun,  8 Jun 2025 00:02:01 +0800
Message-Id: <20250607160201.807043-4-18255117159@163.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250607160201.807043-1-18255117159@163.com>
References: <20250607160201.807043-1-18255117159@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wBnk_V6YkRoJ9qHGg--.28203S5
X-Coremail-Antispam: 1Uf129KBjvJXoW7ZF1fWw17Jryxur15uw47XFb_yoW8Gw1kpF
	WqkF4xJrZ5AF1UCFnruF1jyFn0qa1DAr17J342ga47Z342yr1vq395urn3tr1DAFW2gF1U
	Cay3trs5CrW5XrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zRk9NPUUUUU=
X-Originating-IP: [124.79.114.92]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/1tbiOhxlo2hEXNqDCAAAsB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_090232_462203_E186B251 
X-CRM114-Status: UNSURE (   7.17  )
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
Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-host.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 209eb94ece1b..ba360ed62afa 100644
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
