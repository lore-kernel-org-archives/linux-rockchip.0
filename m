Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7933C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Dec 2021 02:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xrWB2ZVXV5kp4yPRhzsdrUHC0UMjliyCtPdbnF9fKfw=; b=w5VBArFIQma2be
	KVFxCwxMz1QDX63rvo7SIf/ml5uscpY8ZOcl6aypF1qyteH9Mc3EB7KxVJOyhjy1gsr21K906nicK
	HPWg5V9fLzqex8GV6oZIXk8PlGthqhAGxDVSCS7eBcMzy9XCTeJs2Ecv5nx5up5PV9y1yAnXn16G5
	L+vM4tlgwG2WxeoCvtmGNXO6BEKJwKwLIc3telnuPWt8V+Cl8cNlPbQ2fz1OTlLk1/2J89uBaGoUM
	tZOI7ZSGUCe9W7TF7eloBFnsiXxMkWi2grVGAnv1Kb7ochWYGkJnWbrksE8cj8kKVXQ22H+Yj2drR
	xIQTGAPAH+guz8HnvTWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzUVa-005AvF-Kb; Tue, 21 Dec 2021 02:04:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzUSj-00597a-06; Tue, 21 Dec 2021 02:01:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 40CA861166;
 Tue, 21 Dec 2021 02:01:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCF53C36AE8;
 Tue, 21 Dec 2021 02:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640052067;
 bh=76il5XRxViuJjb6Phr/54g/UhjGw3hTdCoX9B/GwxnA=;
 h=From:To:Cc:Subject:Date:From;
 b=BUo+GyZ8TDqwN4iBLrByIXk/RHLQzzdHly+YZBqvo3r0lSx24VRPYdgWn618n8RrN
 0wbAZQhwpGgPmKaxI4sWTvVKHBAOIu2ivFFRaC3VcBqvSMvTrZtnPmmHRt0TYQ70Zk
 pGlpCI0bykjRQySlgWZzCnoIV3byMbj1dirfQ2+EfugIoKJbZnLmnClCSBA2UQ54Jo
 9tr9gPKJ79l9+6Hg11FbmGeDPKJ49ButqMjDm3e2vdZs6H6dhGFp8Nf7wUM5vPtlvV
 uZmTmZ/jDEOspp/nLe8A/jkHY4jLg9KwD9XqOOf/EkvDzrEybhjBygv38IgwiMkZ3w
 KboguwY7XcWxw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: "Ivan T. Ivanov" <iivanov@suse.de>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 4.19 01/11] ARM: rockchip: Use memcpy_toio instead of
 memcpy on smp bring-up
Date: Mon, 20 Dec 2021 21:00:20 -0500
Message-Id: <20211221020030.117225-1-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_180109_144203_714A6979 
X-CRM114-Status: GOOD (  13.63  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: "Ivan T. Ivanov" <iivanov@suse.de>

[ Upstream commit 423e85e97aaf69e5198bbec6811e3825c8b5019a ]

This fixes a potential kernel panic on memcpy when FORTIFY_SOURCE
is enabled. Because memory is iomem use appropriate function for
accessing it.

Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
Link: https://lore.kernel.org/r/20211116084616.24811-1-iivanov@suse.de
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/mach-rockchip/platsmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchip/platsmp.c
index 51984a40b097f..fb233a8f0bf54 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -198,7 +198,7 @@ static int __init rockchip_smp_prepare_sram(struct device_node *node)
 	rockchip_boot_fn = __pa_symbol(secondary_startup);
 
 	/* copy the trampoline to sram, that runs during startup of the core */
-	memcpy(sram_base_addr, &rockchip_secondary_trampoline, trampoline_sz);
+	memcpy_toio(sram_base_addr, &rockchip_secondary_trampoline, trampoline_sz);
 	flush_cache_all();
 	outer_clean_range(0, trampoline_sz);
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
