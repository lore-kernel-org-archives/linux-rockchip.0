Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8898CA9EC1
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2026 14:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEWgTXyxHj6HKFzIjfcBDVAk4687REXU7e+l+V0ntyM=; b=QMv4IX09amBvib
	cIMXLk5PcXACXuyZL8tAo76rHq3A3EqMPq1/ctchCNBqLRugC+fpDNma4W1F7qjWy2loXSA/vMjtH
	FeGRUgtkyHrQUI/p5XW8eLnIV9GXA4LrXwndpopQUhLyQ87L+Z9AZqxYsWuJ/mva9DkmyU2huYL/N
	9pm+8QJydBomNu8xmTf+JPJWPf9ahqnfuGWqytnjsf1+PH0uNOc7RA54wULWstFasLWZHkNToe+vW
	jrM1bPb0JeJC9GzHmRpzgMuABh8YNUk2kd6jF5v7pQq0shyhdycFuhgnBqtiFfjEKkgC6uo6R4var
	nqBckH7mam4QQJhiTzJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFXtZ-000000089eN-2WGz;
	Sat, 10 Oct 2026 14:17:53 +0000
Received: from mail-m60222.netease.com ([210.79.60.222])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFXtU-000000089dP-190i
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Oct 2026 14:17:52 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 509291f9e;
	Sat, 10 Oct 2026 22:17:41 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Stephen Boyd <sboyd@kernel.org>,
	heiko@sntech.de,
	Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>
Subject: [PATCH 1/2] clk: rockchip: fix wrong gate register for clk_gpll_mux_to_ddr on rk3562
Date: Sat, 10 Oct 2026 22:17:18 +0800
Message-Id: <1791641839-74584-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1791641839-74584-1-git-send-email-shawn.lin@rock-chips.com>
References: <1791641839-74584-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa1262d3cef03a4kunm7e28e606b1d48
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQhpPS1ZITxpOSBgeHx
	gYTk9WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=FsLQDWbx3WkM0ZuafzU8FtRQEptNPUhrkhG4cSMdJnCIsP90yR/gXJCxknmlQhh79as/vZs9aJ6VkXKPzlBYaqmHBjJpnxbo6Qkyq4TMHx6IKkZPZr3F3+M3aC1jpmn3C8LNQ4/qmQOd6UQBBJHZZOKxNJzjOMgxQmvgDbKUDnY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=BFp2VAMG30ajGJ8VoabQUO+EFc8CmpRSZIsH4oKDbzw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_071748_943303_627FFEC1 
X-CRM114-Status: GOOD (  11.58  )
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

clk_gpll_mux_to_ddr uses RK3328_CLKGATE_CON(1), which is the wrong SoC
macro and points to an unrelated register (0x204) in the RK3562 CRU. As a
result enabling/disabling this clock writes the wrong register.

Use RK3562_DDR_CLKGATE_CON(0) with bit 0, matching the other DDR clocks
in the same PD_DDR section.

Fixes: f863d4cc79a7 ("clk: rockchip: Add clock controller for the RK3562")
Cc: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/clk/rockchip/clk-rk3562.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3562.c b/drivers/clk/rockchip/clk-rk3562.c
index b8858e5..07eeb82 100644
--- a/drivers/clk/rockchip/clk-rk3562.c
+++ b/drivers/clk/rockchip/clk-rk3562.c
@@ -411,7 +411,7 @@ static struct rockchip_clk_branch rk3562_clk_branches[] __initdata = {
 
 	/* PD_DDR */
 	FACTOR_GATE(0, "clk_gpll_mux_to_ddr", "gpll", 0, 1, 4,
-			RK3328_CLKGATE_CON(1), 6, GFLAGS),
+			RK3562_DDR_CLKGATE_CON(0), 0, GFLAGS),
 	COMPOSITE_NOMUX(PCLK_DDR, "pclk_ddr", "clk_gpll_mux_to_ddr", CLK_IS_CRITICAL,
 			RK3562_DDR_CLKSEL_CON(1), 8, 5, DFLAGS,
 			RK3562_DDR_CLKGATE_CON(0), 3, GFLAGS),
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
