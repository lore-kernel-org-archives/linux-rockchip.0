Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87BB7C5B543
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Jun 2025 16:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZqhjFyD7zy+VvIg2tSQwjUdpG02822l7TO8juM0+w0M=; b=cv/SAnrFo4GZnp
	LZCIHRb2yxeDzTQatleGZBjW7aj84BesH1HU/Kw6LMf7248+KCka49+qPqCpQrJu1HIaIwF7gFLx2
	psGHLOGP/f6/K5degrrdU+7nARA1sOKvY5CTQa0PHW4qlz5EEK/gdlHINDdrrx+Zxw2KPZFfr3yQZ
	qgCI1RMnjbqYRK0vxnTzcko5F/IXU9pUSNGICWAkRrVpn6QSk56YUBb52SEUJRSUCYwZsQ1IVzn0U
	ZAeEIMP2iDAiq2ongejmHVgiP0CzwSI7I9RYYrglD5ZjiOWT5JoCP3kL4iBBx8PqRDOaoaS3z1Je7
	72nG493rdmnctloBnFqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNw2H-00000001qPN-10MF;
	Sat, 07 Jun 2025 16:04:45 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNw04-00000001qAT-27B9;
	Sat, 07 Jun 2025 16:02:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=ie
	pwYhicwFdcRl1yUElPZ9m5c8epfncSb8mYKYdMO50=; b=fmU3hE99QWEFp0nC7k
	D7+kuIiEyiIGMyzSQf0eTHPDGJQ7dKijrzov+VlMPeZRz8XhpI7Ihln2aBN+DF4M
	VGdj4whiCl7iajlJlEZGDy1G/G4fLAqRCqKlKCSPvy58wZbU4oKtONeTj1Bh5rmG
	Xxk5+DAr44fuiS56SLwPjCXq8=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g1-2 (Coremail) with SMTP id _____wBnk_V6YkRoJ9qHGg--.28203S4;
	Sun, 08 Jun 2025 00:02:04 +0800 (CST)
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
Subject: [PATCH v3 2/3] PCI: rockchip-host: Correct non-fatal error log message
Date: Sun,  8 Jun 2025 00:02:00 +0800
Message-Id: <20250607160201.807043-3-18255117159@163.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250607160201.807043-1-18255117159@163.com>
References: <20250607160201.807043-1-18255117159@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wBnk_V6YkRoJ9qHGg--.28203S4
X-Coremail-Antispam: 1Uf129KBjvdXoWrZr4ruF1fCr4DAry5tFyrWFg_yoWkArbE9r
	1jva47Zw4UGr9ag3Zay3ySqr9xAasF9r1Iya18KF13Aa47Xr1Fq348Zwn8JF1kCr15tF9x
	t3sFyF45ur43ujkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRZJ5rJUUUUU==
X-Originating-IP: [124.79.114.92]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/xtbBDw9lo2hEWUbcLQAAsE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_090228_911662_C81209EC 
X-CRM114-Status: GOOD (  10.15  )
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

Correct the debug message for PCIE_CLIENT_INT_NFATAL_ERR from
"no fatal error" to "non fatal error interrupt received" to match the
actual interrupt semantics. This avoids confusion in log interpretation.

Signed-off-by: Hans Zhang <18255117159@163.com>
Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-host.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 2804980bab86..209eb94ece1b 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -489,7 +489,7 @@ static irqreturn_t rockchip_pcie_client_irq_handler(int irq, void *arg)
 		dev_dbg(dev, "fatal error interrupt received\n");
 
 	if (reg & PCIE_CLIENT_INT_NFATAL_ERR)
-		dev_dbg(dev, "no fatal error interrupt received\n");
+		dev_dbg(dev, "non fatal error interrupt received\n");
 
 	if (reg & PCIE_CLIENT_INT_CORR_ERR)
 		dev_dbg(dev, "correctable error interrupt received\n");
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
