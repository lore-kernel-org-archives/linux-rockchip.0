Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E0FFE92706
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Oct 2023 14:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4YDoT98fRxmA7xfh8ylFPk7wI5PoEKPR1+llT4mjbJM=; b=r4x6yy7nTRcO9h
	ibZWUPrXcHfERDluxMji3yAMKGQaO6bYhYD9rVEhjVNIebemaG3pG28Qm/kLBe2KuANsCAYi/7XJ/
	9bbE4PCsX8k49xuMalAviPx366uyDo5x5sTAyPfwVGiqNt/t+BKA4HQBq3IlfJbE2Z9CGpyJhXHSn
	q2UAqHQVdJ4m6+QWBoL9a14G/QLXEEiygGIespvrgDXkB6stE84FFZwqj/nYTSH7vjR3CN2Ix+UYF
	TXH4TugAikcbFX7G7WIEwGV+mhIviG/jXkxpGSZRByeeNcCvPkshHqpZRm4vit+I1NmC9sXL7AuRW
	q2IuMdNFFxlHHX7c1rBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoPhE-003nje-2e;
	Thu, 05 Oct 2023 14:51:24 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoPhB-003niS-0v;
	Thu, 05 Oct 2023 14:51:22 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4c53:5fd0:f25b:b0dd])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CFC116607332;
	Thu,  5 Oct 2023 15:51:19 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696517480;
	bh=8E9tatO7XF3qA6yFPN13hUYBUv5FfV7BEJl+01O2HNE=;
	h=From:To:Cc:Subject:Date:From;
	b=ZhaVFHLeSCV0wkWBCRlcchb7HcokXa6OUJGAtEevwIq7LrpHacYltDGrk8rRFcCDU
	 oBNbqJu4I/bqQau24FMLCp7P9+DVl+khhcRIw5R415LWXRUaKY0YaRwEUnDTn6xMEc
	 4zXk/w5A/ulPVFprS1OyAHIXngyxO9+WW70F0LvkXLDNWFaXlbhn2pKKmLdMk91S2N
	 jnjO1lhQnm80EFbclxjG/jKQNe1DY28dnuozgRS07GMgiUJYZxdNSAqbssDpCQVTyz
	 6r1DoC1Z1aBpejtZmfsxzeO2pijk9g6LhTLpzL1ZIGmz9K+NM1upwYcfcUAbJkSheY
	 UIqUb4apP6NpA==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	heiko@sntech.de,
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: verisilicon: Fixes clock list for rk3588 av1 decoder
Date: Thu,  5 Oct 2023 16:51:16 +0200
Message-Id: <20231005145116.169411-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_075121_456837_F3727559 
X-CRM114-Status: GOOD (  11.06  )
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

Mainlined RK3588 clock driver manage by itself the dependency between
aclk/hclk and their root clocks (aclk_vdpu_root/hclk_vdpu_root).
RK3588 av1 video decoder do not have to take car of it anymore so
remove them from the list and be compliant with yaml bindings description.

Fixes: 003afda97c65 ("media: verisilicon: Enable AV1 decoder on rk3588")
Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/rockchip_vpu_hw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu_hw.c b/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
index 816ffa905a4b..f97527670783 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
@@ -648,7 +648,7 @@ static const char * const rockchip_vpu_clk_names[] = {
 };
 
 static const char * const rk3588_vpu981_vpu_clk_names[] = {
-	"aclk", "hclk", "aclk_vdpu_root", "hclk_vdpu_root"
+	"aclk", "hclk",
 };
 
 /* VDPU1/VEPU1 */
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
