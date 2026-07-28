Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C85A9C54EFC
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 09:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vX7+loXMKfeWu8RcDcBeGeNgpAwHBkhma4EtzGo+SSg=; b=VpKyuIUg5zUTsT
	Jtpz62H/PyGqQe5Mz8V5I0C4YDGl683ENTi0h1O5Alj5yBw9A0nBc/1j0ad2NJirkLTBJ/jZ4X4t/
	oodiGahvDdLc8VZbe/kHi4rPIFsrYZaPURqgWDmXyeTnMB5y55r9yTvKPCXaiGzZAUCaNdsKoNVBs
	LwrVdejRaTAbeHIho9EsFlYvbJ22W7nCoipMJ7sUtDsEKcKmLvzF87xmNXODZuQV08tZU31/YCTKc
	1bC4gVYxUWYa8arn7cG179ti2g5CmbqjOeaZjeNx+jb3oBqojhJIh+FuGJZzLew14NXudA0Dqgbc/
	cEeUkRPAWV8u6y//nAIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wodvg-00000004mU5-15E4;
	Tue, 28 Jul 2026 09:16:52 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wodvU-00000004mP6-2QVg;
	Tue, 28 Jul 2026 09:16:43 +0000
X-UUID: 05d2458c8a6511f1aa26b74ffac11d73-20260728
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:a62d4715-a76f-47cc-83fd-abc701faeea0,IP:0,U
	RL:0,TC:0,Content:0,EDM:-25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:e7bac3a,CLOUDID:cf06b6394694ad75066f2c9fe09520e6,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|850|865|898,TC:nil,Content:0|1
	5|50,EDM:2,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:
	0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 05d2458c8a6511f1aa26b74ffac11d73-20260728
X-User: lilinmao@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <lilinmao@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 862983219; Tue, 28 Jul 2026 17:16:31 +0800
From: Linmao Li <lilinmao@kylinos.cn>
To: Jassi Brar <jassisinghbrar@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Caesar Wang <wxt@rock-chips.com>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Linmao Li <lilinmao@kylinos.cn>
Subject: [PATCH 2/2] mailbox: rockchip: drop unneeded runtime pointer (pclk)
Date: Tue, 28 Jul 2026 17:16:23 +0800
Message-Id: <20260728091623.3691198-3-lilinmao@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260728091623.3691198-1-lilinmao@kylinos.cn>
References: <20260728091623.3691198-1-lilinmao@kylinos.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_021640_921128_3972EF1C 
X-CRM114-Status: GOOD (  13.24  )
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

The pclk pointer is only used in rockchip_mbox_probe() and is not needed
after probe completes.

Make it a local variable and drop it from struct rockchip_mbox, which
saves a little bit of runtime memory.

Signed-off-by: Linmao Li <lilinmao@kylinos.cn>
---
 drivers/mailbox/rockchip-mailbox.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mailbox/rockchip-mailbox.c b/drivers/mailbox/rockchip-mailbox.c
index d55cbf7f2cb6..bc2f9dd798dd 100644
--- a/drivers/mailbox/rockchip-mailbox.c
+++ b/drivers/mailbox/rockchip-mailbox.c
@@ -40,7 +40,6 @@ struct rockchip_mbox_chan {
 
 struct rockchip_mbox {
 	struct mbox_controller mbox;
-	struct clk *pclk;
 	void __iomem *mbox_base;
 
 	/* The maximum size of buf for each channel */
@@ -166,6 +165,7 @@ static int rockchip_mbox_probe(struct platform_device *pdev)
 	struct rockchip_mbox *mb;
 	const struct rockchip_mbox_data *drv_data;
 	struct resource *res;
+	struct clk *pclk;
 	int ret, irq, i;
 
 	if (!pdev->dev.of_node)
@@ -196,9 +196,9 @@ static int rockchip_mbox_probe(struct platform_device *pdev)
 	/* Each channel has two buffers for A2B and B2A */
 	mb->buf_size = (size_t)resource_size(res) / (drv_data->num_chans * 2);
 
-	mb->pclk = devm_clk_get_enabled(&pdev->dev, "pclk_mailbox");
-	if (IS_ERR(mb->pclk))
-		return dev_err_probe(&pdev->dev, PTR_ERR(mb->pclk),
+	pclk = devm_clk_get_enabled(&pdev->dev, "pclk_mailbox");
+	if (IS_ERR(pclk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(pclk),
 				     "failed to get and enable pclk_mailbox clock\n");
 
 	for (i = 0; i < mb->mbox.num_chans; i++) {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
