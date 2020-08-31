Return-Path: <SRS0=Dydn=CJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32966C433E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 16:15:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E80C92073A
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 16:15:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="i2kofcgN";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Pu3DizNR"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E80C92073A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rnlAE+xagojisgh8bvvagQt9IG3WfMydlQjhgzS3T8U=; b=i2kofcgNPSOylXv3KQlhnESRJ4
	W721BWvxC55P/wPJFK3jj/ecshrs/h9LM5H/kPgEBDsuIb7VlFc1WcBH7THm6SXzV09qYmq2UawR6
	E0Gx6NVqezkSRD55SnHte7m/Pw8Caqq51k7lwl4fMMidefHN8rCVAyrE9iISraMZqyV9xjXEo/pVe
	Ls8RBI0Xt7B9O4FxM8dpo7xmw6cXpu7D5B53SBIsYQuzioqN/I/RC/ZdneFqX7za0OLVLAg4oc/Ux
	u6cU7tkBwNapOmpOCdIOjtnuHaUxkJzf2b6VvkdQeV/WDedbpjfxHOkmJOZ1wkyz4OSImaU/AskuJ
	w2GoY3pg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCmSm-00067Q-2I; Mon, 31 Aug 2020 16:15:20 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCmSh-00066j-HC
 for linux-rockchip@lists.infradead.org; Mon, 31 Aug 2020 16:15:18 +0000
Received: by mail-pl1-x643.google.com with SMTP id z15so3255339plo.7
 for <linux-rockchip@lists.infradead.org>; Mon, 31 Aug 2020 09:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0RjF/F1q7e5EJMpYIifOzE0mACKZJWuEXmCqPj+pnkY=;
 b=Pu3DizNREnzFzQA+0BeBKp4TxMLw6OsC6c7FmO7Mv9mYnjkrk8hNs/ZTDSl6y7Uu+r
 tRdSRv/04MSfPk9qcrw5gCW540tCZuYBKJaGCjOL5I7yyc1dCGhYfza+Ddf3iU81vCwx
 rjaw9dh0mA+Q0iABGgjCb3Te2pRG+GiAU2RXk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0RjF/F1q7e5EJMpYIifOzE0mACKZJWuEXmCqPj+pnkY=;
 b=ZtxQsJMRzX39NWYVUKQEy7KhI3aHjOH/x5VidaT2FfN45cFD3hECRWFZJlGg3Siwi8
 mbrQRsPlLpQMJFQ0m77RtB/ymkt7nmg1UNbLppWdauDg7D/eVtVg/A5i9QXcGm9SLHGg
 yOruL4vs91Vxp2U5fg+W9Rw2R0GXL+3x5Ac4M5+zQff1L6C6M48qeiW94ljpLUUrWELK
 TwrwDmg3nl7Gv5cyMuMvd6HiSEm0xfEznj/0W6Zq/03DSePcYiSVxyjdgSS+89taSK4N
 kYWRnVL/aEVB2iCb26z6LAPBsXtn2MwhQMy5abixCc9i8XwSDUxrPYj3cmJIQCYnJHkA
 5fDw==
X-Gm-Message-State: AOAM533kprAwLDkuynFb+RviNs9k/5kTLSoSzhoSnXUt04+uU6bKpdzB
 y3ZPkUYI5TvujBoHNi1T7eeaHA==
X-Google-Smtp-Source: ABdhPJyjsTme/K/fl4Z4HUw8LpaYJCYVI+lFJeiPhXsGGUvnn0ykI4lDfE9gBtWauCMvpAa+rJOIDQ==
X-Received: by 2002:a17:902:7582:: with SMTP id
 j2mr1632953pll.322.1598890512496; 
 Mon, 31 Aug 2020 09:15:12 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d50:45fe:aaf3:66ee])
 by smtp.gmail.com with ESMTPSA id
 e23sm7804215pgm.1.2020.08.31.09.15.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Aug 2020 09:15:11 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] clk: rockchip: Fix overflow rate during fractional
 approximation
Date: Mon, 31 Aug 2020 21:44:36 +0530
Message-Id: <20200831161436.134186-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200831_121516_840802_DF5F4AD2 
X-CRM114-Status: GOOD (  14.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Finley Xiao <finley.xiao@rock-chips.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The current rockchip fractional approximation overflow the desired
rate if parent rate is lower than the (rate * 20) for few clocks like
dclk_vopb_frac.

The overflow condition has observed in px30 for dclk_vopb_frac
clock with an input rate of 71.1MHz and parent rate of 24MHz is,

[    2.543280] rockchip-drm display-subsystem: bound ff460000.vop (ops vop_component_ops)
[    2.557313] rockchip-drm display-subsystem: bound ff470000.vop (ops vop_component_ops)
[    2.566356] rockchip-drm display-subsystem: bound ff140000.syscon:lvds (ops rockchip_lvds_component_ops)
[    2.576999] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
[    2.592177] Unexpected kernel BRK exception at EL1
[    2.597551] Internal error: ptrace BRK handler: f20003e8 [#1] PREEMPT SMP
[    2.605143] Modules linked in:
[    2.608566] CPU: 1 PID: 31 Comm: kworker/1:1 Tainted: G     U            5.8.0-rc1-15632-g97edd822b844 #30
[    2.619363] Hardware name: Engicam PX30.Core C.TOUCH 2.0 10.1" Open Frame (DT)
[    2.627460] Workqueue: events deferred_probe_work_func
[    2.633209] pstate: 20000005 (nzCv daif -PAN -UAO BTYPE=--)
[    2.639445] pc : rational_best_approximation+0xc4/0xd0
[    2.645194] lr : rockchip_fractional_approximation+0xa8/0xe0
[    2.651520] sp : ffff800011ea31c0
[    2.655222] x29: ffff800011ea31c0 x28: ffff00007a4ecd50
[    2.661162] x27: ffff00007d042600 x26: 000000000439fca3
[    2.667102] x25: 0000000000000000 x24: ffff800011ac9948
[    2.673033] x23: ffff800011ea3308 x22: ffff00007d042418
[    2.678973] x21: ffff800011ea3240 x20: ffff800011ea3238
[    2.684904] x19: ea47000000000000 x18: 0000000000000000
[    2.690836] x17: 0000000000000500 x16: 0000000000000001
[    2.696775] x15: ffffffffffffffff x14: 0000000000000000
[    2.702707] x13: 0000000000000000 x12: 0000003c00000000
[    2.708647] x11: 0000000000000030 x10: 0101010101010101
[    2.714586] x9 : 0000032000000320 x8 : 7f7f7f7f7f7f7f7f
[    2.720517] x7 : 000000a3c59050d3 x6 : 0000000000000030
[    2.726457] x5 : ffff800011ea3240 x4 : ffff800011ea3238
[    2.732397] x3 : 000000000000ffff x2 : 000000000000ffff
[    2.738329] x1 : 00000000016e3600 x0 : 0000000001497e00
[    2.744269] Call trace:
[    2.747005]  rational_best_approximation+0xc4/0xd0
[    2.752365]  clk_fd_round_rate+0x8c/0x110
[    2.756846]  clk_composite_round_rate+0x30/0x40
[    2.761917]  clk_core_determine_round_nolock.part.30+0x44/0x80
[    2.768442]  clk_core_round_rate_nolock+0x78/0x80
[    2.773701]  clk_mux_determine_rate_flags+0xd8/0x200
[    2.779253]  clk_mux_determine_rate+0x10/0x20
[    2.784124]  clk_core_determine_round_nolock.part.30+0x1c/0x80
[    2.790639]  clk_core_round_rate_nolock+0x78/0x80
[    2.795900]  clk_core_round_rate_nolock+0x5c/0x80
[    2.801159]  clk_round_rate+0x64/0xf0
[    2.805254]  vop_crtc_mode_fixup+0x2c/0x60
[    2.809828]  drm_atomic_helper_check_modeset+0x95c/0xae0
[    2.815767]  drm_atomic_helper_check+0x1c/0xa0
[    2.820738]  drm_atomic_check_only+0x43c/0x760
[    2.825705]  drm_atomic_commit+0x18/0x60
[    2.830095]  drm_client_modeset_commit_atomic.isra.16+0x17c/0x250
[    2.836911]  drm_client_modeset_commit_locked+0x58/0x1a0
[    2.842851]  drm_client_modeset_commit+0x2c/0x50
[    2.848014]  drm_fb_helper_restore_fbdev_mode_unlocked+0x70/0xd0
[    2.854730]  drm_fb_helper_set_par+0x2c/0x60
[    2.859497]  fbcon_init+0x3c0/0x540
[    2.863400]  visual_init+0xac/0x100
[    2.867298]  do_bind_con_driver+0x1e4/0x3a0
[    2.871973]  do_take_over_console+0x140/0x200
[    2.876843]  do_fbcon_takeover+0x6c/0xe0
[    2.881228]  fbcon_fb_registered+0x10c/0x120
[    2.886005]  register_framebuffer+0x1f0/0x340
[    2.890878]  __drm_fb_helper_initial_config_and_unlock+0x318/0x4a0
[    2.897790]  drm_fb_helper_initial_config+0x3c/0x50
[    2.903244]  rockchip_drm_fbdev_init+0x5c/0xf0
[    2.908202]  rockchip_drm_bind+0x194/0x1e0
[    2.912785]  try_to_bring_up_master+0x164/0x1d0
[    2.917851]  component_master_add_with_match+0xac/0xf0
[    2.923597]  rockchip_drm_platform_probe+0x238/0x2e0
[    2.929150]  platform_drv_probe+0x50/0xa0
[    2.933631]  really_probe+0xd4/0x330
[    2.937628]  driver_probe_device+0x54/0xb0
[    2.942207]  __device_attach_driver+0x80/0xc0
[    2.947078]  bus_for_each_drv+0x78/0xd0
[    2.951365]  __device_attach+0xd4/0x130
[    2.955652]  device_initial_probe+0x10/0x20
[    2.960328]  bus_probe_device+0x90/0xa0
[    2.964616]  deferred_probe_work_func+0x6c/0xa0
[    2.969685]  process_one_work+0x1e4/0x360
[    2.974166]  worker_thread+0x208/0x480
[    2.978358]  kthread+0x150/0x160
[    2.981968]  ret_from_fork+0x10/0x18
[    2.985970] Code: d65f03c0 d2800008 d2800027 17ffffe8 (d4207d00)

This happened because the fractional divider does not apply if parent_rate
is lower than (rate * 20).

So, this patch is trying to fix that overflow clock and switch to half-div
instead computing fractioanl approximation.

Some part of the patch is referenced from below BSP commit:

commit <88a5404a2277> ("clk: rockchip: fix up the
rockchip_fractional_approximation")

commit <4186a0e4239b> ("clk: rockchip: Add supprot to limit input rate
for fractional divider")

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
---
 drivers/clk/rockchip/clk-px30.c | 12 ++++++------
 drivers/clk/rockchip/clk.c      |  9 +++++++++
 2 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/rockchip/clk-px30.c b/drivers/clk/rockchip/clk-px30.c
index 6fb9c98b7d24..06d3ff39d12f 100644
--- a/drivers/clk/rockchip/clk-px30.c
+++ b/drivers/clk/rockchip/clk-px30.c
@@ -660,7 +660,7 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	COMPOSITE(SCLK_UART1_SRC, "clk_uart1_src", mux_uart_src_p, CLK_SET_RATE_NO_REPARENT,
 			PX30_CLKSEL_CON(34), 14, 2, MFLAGS, 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(10), 12, GFLAGS),
-	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart1_np5", "clk_uart1_src", 0,
+	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart1_np5", "clk_uart1_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(35), 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(10), 13, GFLAGS),
 	COMPOSITE_FRACMUX(0, "clk_uart1_frac", "clk_uart1_src", CLK_SET_RATE_PARENT,
@@ -673,7 +673,7 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	COMPOSITE(SCLK_UART2_SRC, "clk_uart2_src", mux_uart_src_p, 0,
 			PX30_CLKSEL_CON(37), 14, 2, MFLAGS, 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(11), 0, GFLAGS),
-	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart2_np5", "clk_uart2_src", 0,
+	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart2_np5", "clk_uart2_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(38), 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(11), 1, GFLAGS),
 	COMPOSITE_FRACMUX(0, "clk_uart2_frac", "clk_uart2_src", CLK_SET_RATE_PARENT,
@@ -686,7 +686,7 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	COMPOSITE(0, "clk_uart3_src", mux_uart_src_p, 0,
 			PX30_CLKSEL_CON(40), 14, 2, MFLAGS, 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(11), 4, GFLAGS),
-	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart3_np5", "clk_uart3_src", 0,
+	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart3_np5", "clk_uart3_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(41), 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(11), 5, GFLAGS),
 	COMPOSITE_FRACMUX(0, "clk_uart3_frac", "clk_uart3_src", CLK_SET_RATE_PARENT,
@@ -699,7 +699,7 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	COMPOSITE(0, "clk_uart4_src", mux_uart_src_p, 0,
 			PX30_CLKSEL_CON(43), 14, 2, MFLAGS, 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(11), 8, GFLAGS),
-	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart4_np5", "clk_uart4_src", 0,
+	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart4_np5", "clk_uart4_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(44), 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(11), 9, GFLAGS),
 	COMPOSITE_FRACMUX(0, "clk_uart4_frac", "clk_uart4_src", CLK_SET_RATE_PARENT,
@@ -712,7 +712,7 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	COMPOSITE(0, "clk_uart5_src", mux_uart_src_p, 0,
 			PX30_CLKSEL_CON(46), 14, 2, MFLAGS, 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(11), 12, GFLAGS),
-	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart5_np5", "clk_uart5_src", 0,
+	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart5_np5", "clk_uart5_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(47), 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(11), 13, GFLAGS),
 	COMPOSITE_FRACMUX(0, "clk_uart5_frac", "clk_uart5_src", CLK_SET_RATE_PARENT,
@@ -934,7 +934,7 @@ static struct rockchip_clk_branch px30_clk_pmu_branches[] __initdata = {
 	COMPOSITE(0, "clk_uart0_pmu_src", mux_uart_src_p, 0,
 			PX30_PMU_CLKSEL_CON(3), 14, 2, MFLAGS, 0, 5, DFLAGS,
 			PX30_PMU_CLKGATE_CON(1), 0, GFLAGS),
-	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart0_np5", "clk_uart0_pmu_src", 0,
+	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart0_np5", "clk_uart0_pmu_src", CLK_SET_RATE_PARENT,
 			PX30_PMU_CLKSEL_CON(4), 0, 5, DFLAGS,
 			PX30_PMU_CLKGATE_CON(1), 1, GFLAGS),
 	COMPOSITE_FRACMUX(0, "clk_uart0_frac", "clk_uart0_pmu_src", CLK_SET_RATE_PARENT,
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 546e810c3560..38d032faa05e 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -190,6 +190,15 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
 		p_parent = clk_hw_get_parent(clk_hw_get_parent(hw));
 		p_parent_rate = clk_hw_get_rate(p_parent);
 		*parent_rate = p_parent_rate;
+
+		/* fractional divider not apply if parent_rate is lower than (rate * 20) */
+		if (*parent_rate < rate * 20) {
+			pr_warn("%s: %s fractional div is not allowed, so use half-div\n",
+				__func__, clk_hw_get_name(hw));
+			*m = 0;
+			*n = 1;
+			return;
+		}
 	}
 
 	/*
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
