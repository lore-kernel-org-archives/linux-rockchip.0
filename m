Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7A29C5AC82
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 12:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXBJ/3IOqtyOVDaHRJddkQh6SS0oHcjrcRIemWXiZq8=; b=eIC0zNcxtlEo6u
	iQBvwKgCf+Tv/QCFFv6+LbE+yvN1A3Gxsp6LlfiN68wf44e3GlUBsa85Vp+io90+cT+p1vJErAow+
	l/ahwqLGtsr/QgSIGCcewAJzMw+AzXu6FDwDiA/vxbHqgVZGbD09p706UOG4qC/jq3pMBfOOef2wE
	DnCbCuBdEtm6a26EYh7WmdO+ZkijBRjufs0WnbVBvF6GlMCEJHE9bbpzEA++LH+2db9vignJMocIh
	4CiOFD7oT/lUEWpg5R0M5nqRIYodKyCEyydYsqTKYS5DD7rOZfI40KW17GZeaDZ9Wkis99XHdbpuO
	7nI4KNyGPrprmDbyle7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOvm-0000000Bjj7-2g7K;
	Mon, 10 Aug 2026 12:16:38 +0000
Received: from mail.zlab.su ([109.73.193.145])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOvS-0000000Bj2D-3HMo;
	Mon, 10 Aug 2026 12:16:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 36C5DC0516;
	Mon, 10 Aug 2026 15:16:15 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zlab.su; s=dkim;
	t=1786364176; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=3Hl1hvKOm1E58LS9l2PpGKlwAtOA5MDxmR8+JN0pJaI=;
	b=iPD02ZdfQxc+vaH1TjGukoKGpootB6Auc1YOxLOZUzGJvf+1121tcio/JCRCW2x8bzyPIj
	TG/DSX26HOk9a2ulZskkSreLj1ZiVVVsLu3VZrI1CNP2ZisAObbCJAn7b+lGExxVlU2dyY
	VVQi9BTdp6geQAI+upa/PEQDPc4Jw6X+1DV4GNmMg6AUhUPrdQu6QpAnf06Wq1czkMuLMA
	p/4k02H8PZIfkIbDy1jwc0uEa04o/QjnZ+F+Ffl1HCck0eCLmhdDHYCKta14EcBTWGma0N
	US723+GC5ND6Tg3CpzAPbeMbHapo7eVR1wiRADk1alYDkgYhSXOCMexRBfx6nw==
From: Vladislav Leonov <vlad@zlab.su>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Vladislav Leonov <vlad@zlab.su>,
	Brian Masney <bmasney@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 16/25] clk: rockchip: Add SCLK_IN_SPI1 gate for RV1106
Date: Mon, 10 Aug 2026 15:11:07 +0300
Message-ID: <20260810121121.210040-17-vlad@zlab.su>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260810121121.210040-1-vlad@zlab.su>
References: <20260810121121.210040-1-vlad@zlab.su>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_051619_025309_04288927 
X-CRM114-Status: UNSURE (   9.82  )
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

Register the SCLK_IN_SPI1 clock gate (PERICLKGATE_CON3, bit 8),
mirroring the existing SCLK_IN_SPI0 gate. This clock is documented in
the RV1106 TRM but was missing in the Rockchip BSP kernel.

Signed-off-by: Vladislav Leonov <vlad@zlab.su>
---

 drivers/clk/rockchip/clk-rv1106.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rv1106.c b/drivers/clk/rockchip/clk-rv1106.c
index 1e3a110192bb..236159157c7e 100644
--- a/drivers/clk/rockchip/clk-rv1106.c
+++ b/drivers/clk/rockchip/clk-rv1106.c
@@ -976,6 +976,8 @@ static struct rockchip_clk_branch rv1106_clk_branches[] __initdata = {
 			RV1106_VEPUCLKGATE_CON(0), 14, GFLAGS),
 	GATE(SCLK_IN_SPI0, "sclk_in_spi0", "sclk_in_spi0_io", 0,
 			RV1106_VEPUCLKGATE_CON(1), 4, GFLAGS),
+	GATE(SCLK_IN_SPI1, "sclk_in_spi1", "sclk_in_spi1_io", 0,
+			RV1106_PERICLKGATE_CON(3), 8, GFLAGS),
 
 	GATE(CLK_UTMI_USBOTG, "clk_utmi_usbotg", "clk_utmi_usbotg_io", 0,
 			RV1106_PERICLKGATE_CON(4), 9, GFLAGS),
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
