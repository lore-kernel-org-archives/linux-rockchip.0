Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E964BF0182F
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Mar 2026 12:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qy4uGV6KMxVHO4cfPXlmyoHP9h8TAYRyU1a0kgn0VQ8=; b=Ox8lWl4I0QhZEE
	DGfJRs1QtScH8yp6q5YlCtUBa/w0QtukkvBgvbLyC8NFD3AzCkImF/Ao4pBhQ30fEa+6ndHMrg3qD
	NMmvcr+KmTF9SfX9fcmHq0rXiC1vBA4b29dLS22C44/I8xW/DrR9Riq8IQ9ilAe2EojBp0rEsFq+8
	fHrQVntEGduVW69+H7+/sXx9BVQpBMQWOTQ/udt92GqStaFf4lVemp44LE40JHi0cOy15X+ObKtzl
	vFnhnLygCe5S30wtm30YJyhTQ3EAef5Ls256McsD2ShGXu7dD0P09ZyFJ36yH/eRq10PJp3WfhQTn
	THIyJBuIV3KG6GNHdWGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyUAn-00000003dYD-48DN;
	Fri, 06 Mar 2026 12:20:53 +0000
Received: from mail-m19731111.qiye.163.com ([220.197.31.111])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyUAj-00000003dXE-47kZ
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Mar 2026 12:20:52 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 36064ff08;
	Fri, 6 Mar 2026 20:20:45 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Stephen Boyd <sboyd@kernel.org>,
	heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2] clk: rockchip: rk3568: Add PCIe pipe clock gates
Date: Fri,  6 Mar 2026 20:20:41 +0800
Message-Id: <1772799641-32164-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9cc317d6bc09cckunm81c422351438dd0
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0JNHVYZH09NHxhJH0hNQ05WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=C99TDLX+/+QiC5aep1NF9EE/AyPCoWDVr5f+UYJPRPhfDh0+C//nnH8U7txZGdhGuiHWSi6jLuz5GTZCuQZzl+SjbkoV54slCJIm7TZ13dOoQTEI3V/+kit8ddnogdZAmYqcN+fwjGuThsULwtyOv73h0NSfIeBPKwbAfz3C8SU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=PptrVthH1AWIgAsBETB92Dz9H9/40j7idZq2t4hAU1s=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_042051_351832_A5BA7DF1 
X-CRM114-Status: UNSURE (   7.29  )
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
so the PCIe driver can explicitly manage them when not in use. In order
not to break compatibility with old DTB, mark them as CLK_IGNORE_UNUSED.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2:
- add CLK_IGNORE_UNUSED flags(Heiko)

 drivers/clk/rockchip/clk-rk3568.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 74eabf9..d571c4b 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -827,6 +827,8 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
 			RK3568_CLKGATE_CON(12), 3, GFLAGS),
 	GATE(CLK_PCIE20_AUX_NDFT, "clk_pcie20_aux_ndft", "xin24m", 0,
 			RK3568_CLKGATE_CON(12), 4, GFLAGS),
+	GATE(CLK_PCIE20_PIPE_DFT, "clk_pcie20_pipe_dft", "aclk_pipe", CLK_IGNORE_UNUSED,
+			RK3568_CLKGATE_CON(12), 5, GFLAGS),
 	GATE(ACLK_PCIE30X1_MST, "aclk_pcie30x1_mst", "aclk_pipe", 0,
 			RK3568_CLKGATE_CON(12), 8, GFLAGS),
 	GATE(ACLK_PCIE30X1_SLV, "aclk_pcie30x1_slv", "aclk_pipe", 0,
@@ -837,6 +839,8 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
 			RK3568_CLKGATE_CON(12), 11, GFLAGS),
 	GATE(CLK_PCIE30X1_AUX_NDFT, "clk_pcie30x1_aux_ndft", "xin24m", 0,
 			RK3568_CLKGATE_CON(12), 12, GFLAGS),
+	GATE(CLK_PCIE30X1_PIPE_DFT, "clk_pcie30x1_pipe_dft", "aclk_pipe", CLK_IGNORE_UNUSED,
+			RK3568_CLKGATE_CON(12), 13, GFLAGS),
 	GATE(ACLK_PCIE30X2_MST, "aclk_pcie30x2_mst", "aclk_pipe", 0,
 			RK3568_CLKGATE_CON(13), 0, GFLAGS),
 	GATE(ACLK_PCIE30X2_SLV, "aclk_pcie30x2_slv", "aclk_pipe", 0,
@@ -847,6 +851,8 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
 			RK3568_CLKGATE_CON(13), 3, GFLAGS),
 	GATE(CLK_PCIE30X2_AUX_NDFT, "clk_pcie30x2_aux_ndft", "xin24m", 0,
 			RK3568_CLKGATE_CON(13), 4, GFLAGS),
+	GATE(CLK_PCIE30X2_PIPE_DFT, "clk_pcie30x2_pipe_dft", "aclk_pipe", CLK_IGNORE_UNUSED,
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
