Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 084C4C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 May 2025 15:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubcA5jPj+s4+Q1xF3hTEV6QM5qK+ulBlDDbmDsJli1Y=; b=cDHYu5hD6fW87L
	V+z6dnOD4aMYeL+JCKEjs13UBm9dmXsNlV8XnTtOEkohb3mZBIxgYQR5IWKHKcs3P4Gegw2WpHC4v
	cfiB0KUtwOJQuPsfV+Teo0BgQ+rtVYmlzdQg/P3jYzAZeIago8Swvk0J6X/sW3lXS6r35gvKmZWvu
	/PWL0W9P6R+n+OHZ8aNoyo4kKnnY5KngFkIcETDXf6gzt9IYrCgooiObDU7yfkAm/TILZXs44kPYm
	Qr5m7RxpcoUekNY+KrqZ8gr1BZIEAJLOb+nEItwSFo4eA5mLTQu7UP6+rfVxgW78vX4I6Sgp5q+O5
	7jyTadBtNWwci3zsrDUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFwlC-00000003oLN-0KdU;
	Fri, 16 May 2025 15:14:06 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFwTv-00000003kDX-2Qce;
	Fri, 16 May 2025 14:56:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=OK
	C2LPdw3n8i6eOmbAF8IdjSTk4530z62vZdkc/GbAE=; b=ZAP66Zmbdeg2ELRjmX
	rjTqQUpbJ7br5GB/+zmH5QBtEK+FNUKBBjqyWp0gAGERH4kbAfCYsUOtC7M+Zcta
	ikPVzOCqgxPUp4U2LC/q8elaeU7NgkS1II1B51g1RtGwskcZgjdjIGKik/XNbHEs
	icMTj/9Vmi/JpCikJobFkV1Zk=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g0-3 (Coremail) with SMTP id _____wCXtfDyUSdoaTNOBw--.62835S3;
	Fri, 16 May 2025 22:55:48 +0800 (CST)
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
Subject: [PATCH v2 1/3] PCI: rockchip-host: Fix "Unexpected Completion" log message
Date: Fri, 16 May 2025 22:55:42 +0800
Message-Id: <20250516145544.110516-2-18255117159@163.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250516145544.110516-1-18255117159@163.com>
References: <20250516145544.110516-1-18255117159@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wCXtfDyUSdoaTNOBw--.62835S3
X-Coremail-Antispam: 1Uf129KBjvdXoW7XrWrWF4xXF4kArW3Cw1fCrg_yoWkGrcE9r
	n8u3W7Aw45KrW3A3Wqy3yxtryrAas09a1IkayrtF1ayas2vr10q34kZ3y8JF15ur1DXF9r
	Kw1qyr47WwnrZjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRAzV1UUUUUU==
X-Originating-IP: [124.79.128.52]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/xtbBDwNPo2gnTiJ5TQAAs3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_075616_036144_23C7AD8E 
X-CRM114-Status: GOOD (  11.12  )
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

Fix the debug message for the PCIE_CORE_INT_UCR interrupt to clearly
indicate "Unexpected Completion" instead of a duplicate "malformed TLP"
message. This improves error log accuracy.

Signed-off-by: Hans Zhang <18255117159@163.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 6a46be17aa91..2804980bab86 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -439,7 +439,7 @@ static irqreturn_t rockchip_pcie_subsys_irq_handler(int irq, void *arg)
 			dev_dbg(dev, "malformed TLP received from the link\n");
 
 		if (sub_reg & PCIE_CORE_INT_UCR)
-			dev_dbg(dev, "malformed TLP received from the link\n");
+			dev_dbg(dev, "Unexpected Completion received from the link\n");
 
 		if (sub_reg & PCIE_CORE_INT_FCE)
 			dev_dbg(dev, "an error was observed in the flow control advertisements from the other side\n");
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
