Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02C42C44531
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 15:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dLVNB3rXeYbdiPp09tVVyPK64EwLa1soYxWZ2kz/rrg=; b=ojRCtYUvEzS19Z
	jybD09uixeNkwsRLUgQdjBHCQJI2KxbTUKFtNa+dIktXpe/R3CNbPamHQJdaWz8BqlC4THwqIGpI9
	4EGtLMSP1tkBsbQDchdpOrIFhjAjfZsb/DpiHbnKUZ+Zoi8xEXmQ9p2Lylv/WYVDYWix7T6ZwTeKl
	yWiV+Z30O0oOQXXvVcB8j9Hwe467wuJV4yMjxQdCmxMQZjdBBkqCWt0q1Pi+TFB1kuOP2Gmg6joFa
	1KmqU4on/XZ+NtQs0wkJv8Uby21AR2n38kvNvpsTiNDPI/vOqp06cLCzxm40YWxo170vN00DzDhiC
	Be4ZXXQZ1x0AJgcC82vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpbV-000000075uP-1cgC;
	Mon, 20 Jul 2026 15:08:25 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpbL-000000075Nd-04Zt;
	Mon, 20 Jul 2026 15:08:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=/i
	OTdtu/aTwGdJUNHIqJwX0fu5L6Cd4Ns7bFgW3B/CE=; b=p5auUxhnEfBNES3fQG
	/5lF37QXLQgFIFFyWudRnnYGV60U57RN3sj6TCtJPX4ApgYAU3FmWt7m0eVmv/rn
	3q88jJs/6ELE9CYOkItHihO1HRuJRwJ5PIQR5RxfJhBgzyRQ2b04o3yH85Jyzema
	diLdDoIf3bPZ3EEr6o8wmxNr0=
Received: from zhb.. (unknown [])
	by gzga-smtp-mtada-g1-1 (Coremail) with SMTP id _____wD3b1rIOV5qyHOjKQ--.35310S8;
	Mon, 20 Jul 2026 23:08:00 +0800 (CST)
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
Subject: [PATCH v3 14/16] PCI: dwc: spear13xx: Use cached PCIe capability offset
Date: Mon, 20 Jul 2026 23:06:17 +0800
Message-Id: <20260720150619.24733-15-18255117159@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260720150619.24733-1-18255117159@163.com>
References: <20260720150619.24733-1-18255117159@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3b1rIOV5qyHOjKQ--.35310S8
X-Coremail-Antispam: 1Uf129KBjvJXoW7GF1DKr1kCFyruF4ftrW8Zwb_yoW8JF1rpa
	9xXry2yF1rJr4aqr42v3Z8Xr15t3s8urWqq39akw1SvF17CryUtrW5t34YyF13WFWqyry3
	Kr1Uta4xWF98Jw7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0pi9a9hUUUUU=
X-Originating-IP: [240e:b8f:91b3:d000:f138:f837:e143:4264]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/xtbCxBG0WGpeOdEGcgAA3R
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_080815_442054_A89D3A65 
X-CRM114-Status: UNSURE (   9.53  )
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

Inside .init we must call dw_pcie_get_pcie_cap() to obtain the offset,
because the core has not yet cached it. The hardware is already enabled
by the driver's own initialization before this point.
Signed-off-by: Hans Zhang <18255117159@163.com>
---
In pcie-spear13xx, the call chain is:

  static const struct dw_pcie_host_ops spear13xx_pcie_host_ops = {
    .init = spear13xx_pcie_host_init,
  };
  spear13xx_pcie_host_init()
    -> dw_pcie_find_capability()
---
 drivers/pci/controller/dwc/pcie-spear13xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-spear13xx.c b/drivers/pci/controller/dwc/pcie-spear13xx.c
index 01794a9d3ad2..6e4c11b497d4 100644
--- a/drivers/pci/controller/dwc/pcie-spear13xx.c
+++ b/drivers/pci/controller/dwc/pcie-spear13xx.c
@@ -122,7 +122,7 @@ static int spear13xx_pcie_host_init(struct dw_pcie_rp *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 	struct spear13xx_pcie *spear13xx_pcie = to_spear13xx_pcie(pci);
-	u32 exp_cap_off = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
+	u8 exp_cap_off = dw_pcie_get_pcie_cap(pci);
 	u32 val;
 
 	spear13xx_pcie->app_base = pci->dbi_base + 0x2000;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
