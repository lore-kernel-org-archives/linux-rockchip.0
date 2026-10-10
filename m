Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7759BCA6017
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2026 14:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6yEm2AVsBmWE4VT9HERdwiLjzNxT2d+68xa2LQvhxb4=; b=lxSitCQHubICc4
	Er9iAQ/eHt8rZ0wiDucPKSZTiWIANbEajFdPdUTdBmc3Alsh0ZKQedyx9XnIC0dY8pybUrVXY7TFP
	ITr/LiAqRwsYJbMHoZX7APuAQn7Tl03YeXho0gpK2d1XcTimCLT6Q30tpqgUxy/WL1H8CfIQuf/Jo
	QwOhDpjsWZ89hlh4HvRrkX8jjh+8wj0Gy1gC8NaB4vbLiu4ultZ6NTPK9Qom4D8/KSH2wnFFiZ5NO
	0iaL3ulNo/6MARf0f2ZfddyWajntFvS1sVPBbK872PbpgX4BuV2R4NnDr3IiDuJS2Dua2cyrXR12l
	klwOqbVn2MqJtCNy5+UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFXtc-000000089fe-38KM;
	Sat, 10 Oct 2026 14:17:56 +0000
Received: from mail-m82170.xmail.ntesmail.com ([156.224.82.170])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFXtX-000000089dT-1xfq
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Oct 2026 14:17:53 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 509291fa2;
	Sat, 10 Oct 2026 22:17:45 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Stephen Boyd <sboyd@kernel.org>,
	heiko@sntech.de,
	Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH 2/2] clk: rockchip: fix wrong PMU CLKSEL register on rv1103b
Date: Sat, 10 Oct 2026 22:17:19 +0800
Message-Id: <1791641839-74584-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1791641839-74584-1-git-send-email-shawn.lin@rock-chips.com>
References: <1791641839-74584-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa1262d4ebf03a4kunm7e28e606b1d68
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQhlMGVZKTRpLSx5KSk
	1MHklWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=jSXz+bj1bwHG2NvbdLm8kB/3CrhmFQqx/IlVruqajaJfk2itwshFwUH3DKa8t39dEZU6MYYrkOHQ5aNZjJKah8TMUUnIJIFBYdIDc+jE9Lzki+pVAhHI2f2MZvtwXvnN0+gtot+auS+013VnWYkmwChSHL70h94sYvkjUwvwJ6A=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=cRVD+j0mEe6JG0Q8711sJijh9bJIZ8lloQUL6z3dLHY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_071752_382080_FD7C6252 
X-CRM114-Status: GOOD (  11.85  )
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

clk_32k and dbclk_pmu_gpio0 use RK3568_PMU_CLKSEL_CON(0), which is the
wrong SoC macro and resolves to 0x100 in the PERICRU region instead of
the RV1103B PMUCRU register at 0x70300. Reading or setting these clocks
would access an unrelated register.

Use RV1103B_PMUCLKSEL_CON(0), as already done for the XIN_RC_SRC clock
in the same file.

Fixes: 3e65e426d457 ("clk: rockchip: Add clock controller for the RV1103B")
Cc: Fabio Estevam <festevam@nabladev.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

 drivers/clk/rockchip/clk-rv1103b.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rv1103b.c b/drivers/clk/rockchip/clk-rv1103b.c
index 7da1fda..aee1ba4 100644
--- a/drivers/clk/rockchip/clk-rv1103b.c
+++ b/drivers/clk/rockchip/clk-rv1103b.c
@@ -130,7 +130,7 @@ static struct rockchip_clk_branch rv1103b_clk_uart2_fracmux __initdata =
 
 static struct rockchip_clk_branch rv1103b_rcdiv_pmu_fracmux __initdata =
 	MUX(CLK_32K, "clk_32k", clk_32k_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
-			RK3568_PMU_CLKSEL_CON(0), 0, 2, MFLAGS);
+			RV1103B_PMUCLKSEL_CON(0), 0, 2, MFLAGS);
 
 static struct rockchip_clk_branch rv1103b_clk_branches[] __initdata = {
 
@@ -373,7 +373,7 @@ static struct rockchip_clk_branch rv1103b_clk_branches[] __initdata = {
 	GATE(PCLK_PMU_GPIO0, "pclk_pmu_gpio0", "lsclk_pmu_root", 0,
 			RV1103B_PMUCLKGATE_CON(0), 4, GFLAGS),
 	COMPOSITE_NODIV(DBCLK_PMU_GPIO0, "dbclk_pmu_gpio0", dbclk_pmu_gpio0_p, 0,
-			RK3568_PMU_CLKSEL_CON(0), 3, 1, MFLAGS,
+			RV1103B_PMUCLKSEL_CON(0), 3, 1, MFLAGS,
 			RV1103B_PMUCLKGATE_CON(0), 5, GFLAGS),
 	GATE(PCLK_PWM0, "pclk_pwm0", "lsclk_pmu_root", 0,
 			RV1103B_PMUCLKGATE_CON(2), 0, GFLAGS),
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
