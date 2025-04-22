Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5BC0C369D3
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Apr 2025 12:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqkdGBYS3eKCEbiKpgXuyozpK54v4foTxTVTs7ddYOo=; b=M+PBikHrUGISZI
	z7zRf9PtaCMrMWBu2kfuK5RcfIfjxO/lPlgI0i02XNgonXIhpe05xffsDd9tto16gty7Nwd+KWpu2
	9mJhJBc/+3PLQlY56BkTVsIGTcsKpMGFEPjcg8842+IFDsMQiEgzyGs08cMH3uzbfD34o1XmN3ChZ
	Qqe0zRb+5TPx1YHWVf19XEEczvCvhFIcTukA11Y8UD/q7lj0zadZhaHnai4w8GIOQT64LxvJmPJki
	vnhzlgvY5GpXSEIUtYGkd/oYZzC49u44+WQ41uh69CPJBvUjQrobMc+hbEajbtnFGHq1jq9nHf9DU
	SJYU5fPsDseIDqxAQReg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7CKv-000000072nP-3rVO;
	Tue, 22 Apr 2025 12:02:49 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7BoH-00000006wVO-3wY3;
	Tue, 22 Apr 2025 11:29:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=VWSzt
	ViPqdKr7S8pdiVILgmqXIuB8IOWVgCpwivvfjs=; b=FvaKoOE9clFUjj1xqwHP9
	4EgdZdjMwiJWuZjYRoR1ccZoUitNhW/WDpLdVCKD/ya+vwIF2aOe0U95z3j3SnPl
	L72jFhmA1PGfR7EuQzvoGbGFh0ousUIgD1db9VDyED8L1hjajDd15u7LKWGIe9mQ
	nfdu3IM7rSjVJl7gX8x208=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id _____wCXbK1gfQdoRW2NBg--.44191S3;
	Tue, 22 Apr 2025 19:28:36 +0800 (CST)
From: Hans Zhang <18255117159@163.com>
To: lpieralisi@kernel.org,
	kw@linux.com,
	bhelgaas@google.com,
	heiko@sntech.de
Cc: manivannan.sadhasivam@linaro.org,
	robh@kernel.org,
	jingoohan1@gmail.com,
	shawn.lin@rock-chips.com,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Hans Zhang <18255117159@163.com>
Subject: [PATCH 1/3] PCI: dw-rockchip: Remove unused PCIE_CLIENT_GENERAL_DEBUG
Date: Tue, 22 Apr 2025 19:28:28 +0800
Message-Id: <20250422112830.204374-2-18255117159@163.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250422112830.204374-1-18255117159@163.com>
References: <20250422112830.204374-1-18255117159@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wCXbK1gfQdoRW2NBg--.44191S3
X-Coremail-Antispam: 1Uf129KBjvdXoWruw1kCw48Gw15WrykXrW8WFg_yoWDtrbE9r
	yUuF4xXryDKrWSk392yw4xZFn0yas7ur1xGFZYgF4ava47Kr4rXry8ZrWrXa1DGr43JFWx
	t34vyF4rua4xJjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sR_vtCUUUUUU==
X-Originating-IP: [61.171.199.116]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/xtbBDwE3o2gHegppMQAAsd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_042906_367737_22DDCF5C 
X-CRM114-Status: UNSURE (   9.35  )
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

The PCIE_CLIENT_GENERAL_DEBUG register offset is defined but never
used in the driver. Its presence adds noise to the register map and
may mislead future developers.

Remove this redundant definition to keep the register list minimal
and aligned with actual hardware usage.

Signed-off-by: Hans Zhang <18255117159@163.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 0e0c09bafd63..fd5827bbfae3 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -54,7 +54,6 @@
 #define PCIE_CLIENT_GENERAL_CONTROL	0x0
 #define PCIE_CLIENT_INTR_STATUS_LEGACY	0x8
 #define PCIE_CLIENT_INTR_MASK_LEGACY	0x1c
-#define PCIE_CLIENT_GENERAL_DEBUG	0x104
 #define PCIE_CLIENT_HOT_RESET_CTRL	0x180
 #define PCIE_CLIENT_LTSSM_STATUS	0x300
 #define PCIE_LTSSM_ENABLE_ENHANCE	BIT(4)
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
