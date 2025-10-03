Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3EC9CCD182
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Oct 2025 11:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=cP3bxuiOMnBFUSzF2uQ46OCAZ5cApZXjZJu+o3sw7Wg=; b=kC7at5HXdX4kV0
	d7VOz+zTorzMBwZH8rdUnubqUj5KLzAGu1BQ/LF8ef5qlL8YeNWKbvvJqLd9+oMp0BbXwH456v/on
	XYut6nXJ7zdGgudKw7kN5wsp78okJJ9MLgbf7d3fmW0KlyiHf6Fsvm7W6vGX99Dmb6wvIpydxUPv8
	z2hYtTtyT2Wkf6jHnhVOSaNaDaqMjfoPvMILoutSOrzVy5R3czTpLyqRfLX0p1i41jYXFI0rSePhF
	Q12SwlIXk4LTGFqmetd8J5cYYgBImXRsFgtSKLMNmzmU0rAnMYgY6WV3hOT/q/aArmwTDznVmq2Wr
	IqD6mYm78yWi1Rps5lCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4eBg-0000000CDQC-0Jrm;
	Fri, 03 Oct 2025 11:43:00 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4eBd-0000000CDO4-0JmR
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Oct 2025 11:42:59 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20251003114251euoutp0112a2eb66f6152ffe986a945fd956eaa1~q_HGibci-0320103201euoutp01G
	for <linux-rockchip@lists.infradead.org>; Fri,  3 Oct 2025 11:42:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20251003114251euoutp0112a2eb66f6152ffe986a945fd956eaa1~q_HGibci-0320103201euoutp01G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1759491771;
	bh=PSPKO6aO7ye5SMU/Cz/s6DweIfGwewM6svTXvz8YrzQ=;
	h=From:To:Cc:Subject:Date:References:From;
	b=bLI9SSOCv2Mtj5k+03vvSn8vDuxWubNoKyJKL0iJpdRpmqUU4v38+LlwBbwK6aDu/
	 UBhvvtRoT+Ez5QTH809oA4fBcf1i2cyPf9veykx3AFYRjoOruQjjecumUSpbT0UihV
	 hTiAE1vEJGQil4WiQa/IMmCVbGA3MvzKI45ZwKus=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20251003114250eucas1p1b3729827b9136128dc25c7858a303286~q_HGJtU5f2437524375eucas1p1S;
	Fri,  3 Oct 2025 11:42:50 +0000 (GMT)
Received: from AMDC4653.digital.local (unknown [106.120.51.32]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20251003114250eusmtip1b2ffa410b8912e19c19e4d400834b195~q_HF1MMaT0967009670eusmtip19;
	Fri,  3 Oct 2025 11:42:50 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Mark Brown
	<broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jon Lin
	<jon.lin@rock-chips.com>
Subject: [PATCH] spi: rockchip-sfc: Fix DMA-API usage
Date: Fri,  3 Oct 2025 13:42:39 +0200
Message-Id: <20251003114239.431114-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CMS-MailID: 20251003114250eucas1p1b3729827b9136128dc25c7858a303286
X-Msg-Generator: CA
X-RootMTR: 20251003114250eucas1p1b3729827b9136128dc25c7858a303286
X-EPHeader: CA
X-CMS-RootMailID: 20251003114250eucas1p1b3729827b9136128dc25c7858a303286
References: <CGME20251003114250eucas1p1b3729827b9136128dc25c7858a303286@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251003_044257_716950_DF816DB0 
X-CRM114-Status: GOOD (  15.75  )
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

Use DMA-API dma_map_single() call for getting the DMA address of the
transfer buffer instead of hacking with virt_to_phys().

This fixes the following DMA-API debug warning:
------------[ cut here ]------------
DMA-API: rockchip-sfc fe300000.spi: device driver tries to sync DMA memory it has not allocated [device address=0x000000000cf70000] [size=288 bytes]
WARNING: kernel/dma/debug.c:1106 at check_sync+0x1d8/0x690, CPU#2: systemd-udevd/151
Modules linked in: ...
Hardware name: Hardkernel ODROID-M1 (DT)
pstate: 604000c9 (nZCv daIF +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : check_sync+0x1d8/0x690
lr : check_sync+0x1d8/0x690
..
Call trace:
 check_sync+0x1d8/0x690 (P)
 debug_dma_sync_single_for_cpu+0x84/0x8c
 __dma_sync_single_for_cpu+0x88/0x234
 rockchip_sfc_exec_mem_op+0x4a0/0x798 [spi_rockchip_sfc]
 spi_mem_exec_op+0x408/0x498
 spi_nor_read_data+0x170/0x184
 spi_nor_read_sfdp+0x74/0xe4
 spi_nor_parse_sfdp+0x120/0x11f0
 spi_nor_sfdp_init_params_deprecated+0x3c/0x8c
 spi_nor_scan+0x690/0xf88
 spi_nor_probe+0xe4/0x304
 spi_mem_probe+0x6c/0xa8
 spi_probe+0x94/0xd4
 really_probe+0xbc/0x298
 ...

Fixes: b69386fcbc60 ("spi: rockchip-sfc: Using normal memory for dma")
Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/spi/spi-rockchip-sfc.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
index 9eba5c0a60f2..b3c2b03b1153 100644
--- a/drivers/spi/spi-rockchip-sfc.c
+++ b/drivers/spi/spi-rockchip-sfc.c
@@ -704,7 +704,12 @@ static int rockchip_sfc_probe(struct platform_device *pdev)
 			ret = -ENOMEM;
 			goto err_dma;
 		}
-		sfc->dma_buffer = virt_to_phys(sfc->buffer);
+		sfc->dma_buffer = dma_map_single(dev, sfc->buffer,
+					    sfc->max_iosize, DMA_BIDIRECTIONAL);
+		if (dma_mapping_error(dev, sfc->dma_buffer)) {
+			ret = -ENOMEM;
+			goto err_dma_map;
+		}
 	}
 
 	ret = devm_spi_register_controller(dev, host);
@@ -715,6 +720,9 @@ static int rockchip_sfc_probe(struct platform_device *pdev)
 
 	return 0;
 err_register:
+	dma_unmap_single(dev, sfc->dma_buffer, sfc->max_iosize,
+			 DMA_BIDIRECTIONAL);
+err_dma_map:
 	free_pages((unsigned long)sfc->buffer, get_order(sfc->max_iosize));
 err_dma:
 	pm_runtime_get_sync(dev);
@@ -736,6 +744,8 @@ static void rockchip_sfc_remove(struct platform_device *pdev)
 	struct spi_controller *host = sfc->host;
 
 	spi_unregister_controller(host);
+	dma_unmap_single(&pdev->dev, sfc->dma_buffer, sfc->max_iosize,
+			 DMA_BIDIRECTIONAL);
 	free_pages((unsigned long)sfc->buffer, get_order(sfc->max_iosize));
 
 	clk_disable_unprepare(sfc->clk);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
