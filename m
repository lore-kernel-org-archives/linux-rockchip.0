Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CDD7EEF319
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 08:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xkW6vYKl3MO3GJg8BaNmzjxh67bcrPwtOrITqR6u5+8=; b=e4NYqwP7Ne7Pbm
	8vSt7QD2FRzzg0MtGmHtoHSSX+lnMXkR7OHrsENo3OwzId0Y453TLU18iOrJYDi4KdSP7jRKANqO+
	5T3dFuAXmGVK3HXw04WlG8ZKPrjee6aztcq/k7Kd/6xVsys7gJQWatH3IOvbOYyMjhDLv8vLWvaa5
	MfrxXenfXCbIx6jYbq+mdedIeLw7ZhaUfiB4YXCsk8EO/hz+qHlo0FaDEooA2rty7tpMu4rmUxBaN
	jKsbCw/B38NIYFWMcjLYdm+3xSkviidqQKMV67JWlkEBbp/BWQVhqs11AZguDq+Rrg8851YQw50xR
	F12mRvaeWzSR+RaxFbDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3je-000000019Qm-2Eh4;
	Thu, 05 Mar 2026 08:07:06 +0000
Received: from mail-m15586.qiye.163.com ([101.71.155.86])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3jb-000000019Q2-1YPm
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 08:07:05 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 35da5328b;
	Thu, 5 Mar 2026 16:06:54 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Stephen Boyd <sboyd@kernel.org>,
	heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] clk: rockchip: rk3568: Add PCIe pipe clock gates
Date: Thu,  5 Mar 2026 16:06:51 +0800
Message-Id: <1772698011-145625-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9cbd09114909cckunmd63c7cdb130312d
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUhLH1ZCSENCGUpCShoZShhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=NNf1XV+lUGCoDBYPy4iaiZtZmuKpDbzX9B7t38nebbKu9x8fgdJMsb5Vprir+mqxDvoP8MDk+XUcRB3qsWzbTVSIm6UoB9ZbxKZFAu8x5xs2f5c/OJobMog/OHwYFmz+UXTZJnBG4+kGnFSSIr2UrxpSy/zkRuF0Oxg8OKVibHw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=rlK8oCpPUXAMSo74gvxRbdGOlkkFvOIifJIgV7zCjtM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_000703_946560_B4FE8AAD 
X-CRM114-Status: UNSURE (   7.68  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The PCIe pipe clocks are currently left as orphan clocks and remain
enabled indefinitely, which is suboptimal. Add the missing clock gates
so the PCIe driver can explicitly manage them when not in use.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---
Hi Heiko,

This patch should be considered only after David's patch[1] is merged,
otherwise it breaks PCIe on RK3566/RK3568 due to clk_disable_unused().

[1] https://lore.kernel.org/linux-rockchip/d981fa84-bd05-ac9d-98ca-89ee47177829@rock-chips.com/T/#ma251be8ca9642eb3f2ffbe6494c905c805418b34

 drivers/clk/rockchip/clk-rk3568.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 74eabf9..9556ddf 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -827,6 +827,8 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
 			RK3568_CLKGATE_CON(12), 3, GFLAGS),
 	GATE(CLK_PCIE20_AUX_NDFT, "clk_pcie20_aux_ndft", "xin24m", 0,
 			RK3568_CLKGATE_CON(12), 4, GFLAGS),
+	GATE(CLK_PCIE20_PIPE_DFT, "clk_pcie20_pipe_dft", "aclk_pipe", 0,
+			RK3568_CLKGATE_CON(12), 5, GFLAGS),
 	GATE(ACLK_PCIE30X1_MST, "aclk_pcie30x1_mst", "aclk_pipe", 0,
 			RK3568_CLKGATE_CON(12), 8, GFLAGS),
 	GATE(ACLK_PCIE30X1_SLV, "aclk_pcie30x1_slv", "aclk_pipe", 0,
@@ -837,6 +839,8 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
 			RK3568_CLKGATE_CON(12), 11, GFLAGS),
 	GATE(CLK_PCIE30X1_AUX_NDFT, "clk_pcie30x1_aux_ndft", "xin24m", 0,
 			RK3568_CLKGATE_CON(12), 12, GFLAGS),
+	GATE(CLK_PCIE30X1_PIPE_DFT, "clk_pcie30x1_pipe_dft", "aclk_pipe", 0,
+			RK3568_CLKGATE_CON(12), 13, GFLAGS),
 	GATE(ACLK_PCIE30X2_MST, "aclk_pcie30x2_mst", "aclk_pipe", 0,
 			RK3568_CLKGATE_CON(13), 0, GFLAGS),
 	GATE(ACLK_PCIE30X2_SLV, "aclk_pcie30x2_slv", "aclk_pipe", 0,
@@ -847,6 +851,8 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
 			RK3568_CLKGATE_CON(13), 3, GFLAGS),
 	GATE(CLK_PCIE30X2_AUX_NDFT, "clk_pcie30x2_aux_ndft", "xin24m", 0,
 			RK3568_CLKGATE_CON(13), 4, GFLAGS),
+	GATE(CLK_PCIE30X2_PIPE_DFT, "clk_pcie30x2_pipe_dft", "aclk_pipe", 0,
+			RK3568_CLKGATE_CON(13), 5, GFLAGS),
 	GATE(ACLK_SATA0, "aclk_sata0", "aclk_pipe", 0,
 			RK3568_CLKGATE_CON(11), 0, GFLAGS),
 	GATE(CLK_SATA0_PMALIVE, "clk_sata0_pmalive", "gpll_20m", 0,
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
