Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5845BC4452F
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 15:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzVbz1HY6xzxXEbZaRRbVb4JyRsQfZiWohMQqWyU6vA=; b=kYJQ847ZLwNiYj
	9eJdE+LXy8A46JK6mPIqMk6rXb4zSk9NtBWY8uPMhaLh5fbzsJRSvhaxeARLunQZrbddPp4g9kqUV
	XolbHBuj17h2kzC9QjqG50SDj2nrmoClKe3oW5coQLFJCxPM+Zi7/sqDrQG95IxBnxmjy7WGY2RNZ
	4il/PjOoGZzOIMyl3mxMkvGSAwDzoO4Z5Lp4x9cwB7SeqEHmV7IXgG9Q0C8tVN42eLehA1G2ic9v+
	8XGoKPzpYkcV2vcW8kiYTaZvqotYUEqI+GIjynTSjJS9no5oEVyOXbeB9LOej/6qQlmjjgRcVOFzT
	1JEEYsRA3CrNewsFGHew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpbQ-000000075gX-3C9y;
	Mon, 20 Jul 2026 15:08:20 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpbI-000000075Jk-2kxj;
	Mon, 20 Jul 2026 15:08:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=VU
	TpNwnx9GB412jRFvqDOQChNSZ1zG4+eKVBbgWXW+o=; b=mjcdWVKAVye0opVEIp
	B7cvAgIgtvrGvWmFeBHOAgQT2pfdzVZgQej9yN+2nEzaPS9/hfGcCmjy81iVQECm
	DhY9+X7ka1kcVkXXeWa+7upsUKJbcV64VG37ZB8MCW4Lb7Ptx2of6aUryfNniK21
	dwjxOH5X7HLBV+J+Z3gz4wujA=
Received: from zhb.. (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wDX+mO9OV5q8LEOKg--.8910S5;
	Mon, 20 Jul 2026 23:07:46 +0800 (CST)
From: Hans Zhang <18255117159@163.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	jingoohan1@gmail.com
Cc: imx@lists.linux.dev,
	linuxppc-dev@lists.ozlabs.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-tegra@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Hans Zhang <18255117159@163.com>
Subject: [PATCH v3 03/16] PCI: dwc: imx6: Use cached PCIe capability offset
Date: Mon, 20 Jul 2026 23:06:06 +0800
Message-Id: <20260720150619.24733-4-18255117159@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260720150619.24733-1-18255117159@163.com>
References: <20260720150619.24733-1-18255117159@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDX+mO9OV5q8LEOKg--.8910S5
X-Coremail-Antispam: 1Uf129KBjvJXoW7CF18ZFW7uF45Zr4ktry7ZFb_yoW8uF43pa
	y3u3yFyr4rJF42qFsFy3Z8Zr13tas0kw47Jw47Kw1Sqry7JryDWFy0yryfta1akr4kKFy7
	AF1xtFyfJ34FyF7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zipBTrUUUUU=
X-Originating-IP: [240e:b8f:91b3:d000:f138:f837:e143:4264]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/xtbCxAKwVGpeOcIFMgAA3a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_080813_162811_D9FEC22E 
X-CRM114-Status: UNSURE (   9.76  )
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

Thus, the cached offset is available when these functions are called, and
DBI access occurs only after hardware is enabled.

Signed-off-by: Hans Zhang <18255117159@163.com>
---
In pci-imx6, dw_pcie_find_capability() is called in the following
call chain:

  static const struct dw_pcie_ops dw_pcie_ops = {
    .start_link = imx_pcie_start_link,
  };
  imx_pcie_start_link()
    -> dw_pcie_find_capability()
    -> imx_pcie_ltssm_enable()
      -> dw_pcie_find_capability()

Replace these calls with the cached pci->pcie_cap. The call chain after
modification becomes:

  dw_pcie_host_init()
    -> pp->ops->init() [imx6_pcie_host_init]
    -> dw_pcie_get_pcie_cap()  (caches offset)
    -> pci->ops->start_link = imx_pcie_start_link
      -> uses pci->pcie_cap
      -> imx_pcie_ltssm_enable()
        -> uses pci->pcie_cap
---
 drivers/pci/controller/dwc/pci-imx6.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index 98e1db751132..74b28b4df484 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -966,10 +966,10 @@ static void imx_pcie_ltssm_enable(struct device *dev)
 {
 	struct imx_pcie *imx_pcie = dev_get_drvdata(dev);
 	const struct imx_pcie_drvdata *drvdata = imx_pcie->drvdata;
-	u8 offset = dw_pcie_find_capability(imx_pcie->pci, PCI_CAP_ID_EXP);
+	struct dw_pcie *pci = imx_pcie->pci;
 	u32 tmp;
 
-	tmp = dw_pcie_readl_dbi(imx_pcie->pci, offset + PCI_EXP_LNKCAP);
+	tmp = dw_pcie_readl_dbi(pci, pci->pcie_cap + PCI_EXP_LNKCAP);
 	phy_set_speed(imx_pcie->phy, FIELD_GET(PCI_EXP_LNKCAP_SLS, tmp));
 	if (drvdata->ltssm_mask)
 		regmap_update_bits(imx_pcie->iomuxc_gpr, drvdata->ltssm_off, drvdata->ltssm_mask,
@@ -995,7 +995,7 @@ static int imx_pcie_start_link(struct dw_pcie *pci)
 {
 	struct imx_pcie *imx_pcie = to_imx_pcie(pci);
 	struct device *dev = pci->dev;
-	u8 offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
+	u8 offset = pci->pcie_cap;
 	u32 tmp;
 	int ret;
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
