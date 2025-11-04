Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 717F3CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Nov 2025 03:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K/GRvgM6pcOfDiKfKrpjYnJUv/8wAa+O0PEaOuohwLA=; b=M3wptt5zZzGF5t
	k6gSXXkA59H2tqwfnqyOC8jKnGOCDtKyiHc7zlFDtTq6VzDZ6B934ATLuOBPpkkeJlYgUU45vWLML
	egOUsg6y6nXwkn19beAvTBxAJJGrJvtnWxGZrp2Dm+9//oSYlh2VOfj+OBwggjs2eoGZump9WirTH
	d5wG1PjMLQMSb6aewAhUH+Hvz2Y1e8Lf/ZRRFcuKYWr5H1JAp7BV9y/qsHYBBa1HU9DtEoVTU1PU1
	2O2noucw9uJPir/bZI17nTWwDkk65KzZBYJ95grokKuOoCV/YbXytUy18CAbyb+UpSnO5EeIE0D9q
	2Z/lJ2GKCzOpKufUuE+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG857-0000000B59u-10sm;
	Tue, 04 Nov 2025 03:51:41 +0000
Received: from mail-m8285.xmail.ntesmail.com ([156.224.82.85])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG853-0000000B59H-3Skj
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Nov 2025 03:51:39 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 28471606b;
	Tue, 4 Nov 2025 11:51:32 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	linux-mmc@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] mmc: dw_mmc-rockchip: Fix wrong internal phase calculate
Date: Tue,  4 Nov 2025 11:51:23 +0800
Message-Id: <1762228283-5025-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9a4cfdc92809cckunmbcb3b314af89ad
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx1CT1ZMSR5DHhgfTx9PGB1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=YVFHfac8fmzI4iux3lCuFh6U9hPaPv9xsbvDAoUiqdeq/iuLPeVJHDBxPQE8hrVdVa2yw8o28m7/W0t61hrt2tjg7N7ZGJ3N5Xlha/mA4WlkDCc25mS4WoAOo3xLV8lHHkd3Hq0sijNAPdzV4gOYU2d07uUI2BRe7O8YDp2gHQk=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=vSm4uws7dN9y5KzPDQol27QF/KlgZoOhczJFgZ0ySCQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_195138_469964_A793C1F8 
X-CRM114-Status: GOOD (  11.41  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

ciu clock is 2 times of io clock, but the sample clk used is
derived from io clock provided to the card. So we should use
io clock to calculate the phase.

Fixes: 59903441f5e4 ("mmc: dw_mmc-rockchip: Add internal phase support")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/mmc/host/dw_mmc-rockchip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index 82dd906..6813549 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -42,7 +42,7 @@ struct dw_mci_rockchip_priv_data {
  */
 static int rockchip_mmc_get_internal_phase(struct dw_mci *host, bool sample)
 {
-	unsigned long rate = clk_get_rate(host->ciu_clk);
+	unsigned long rate = clk_get_rate(host->ciu_clk) / RK3288_CLKGEN_DIV;
 	u32 raw_value;
 	u16 degrees;
 	u32 delay_num = 0;
@@ -85,7 +85,7 @@ static int rockchip_mmc_get_phase(struct dw_mci *host, bool sample)
 
 static int rockchip_mmc_set_internal_phase(struct dw_mci *host, bool sample, int degrees)
 {
-	unsigned long rate = clk_get_rate(host->ciu_clk);
+	unsigned long rate = clk_get_rate(host->ciu_clk) / RK3288_CLKGEN_DIV;
 	u8 nineties, remainder;
 	u8 delay_num;
 	u32 raw_value;
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
