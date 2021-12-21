Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FF97C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Dec 2021 02:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1fmpeK0j0geJl1IOJjL/L3w41rJgiYJjTdlGee/zeSU=; b=kh4QkNmhLVGe7x
	YlB0dvMhfswzDN4qQsCRZYsW7IhlpTuMmTcIX/KXK6FWjayAkKsHgCbsF1mqtwb9/me/FMJWgyj5z
	OnwyuYXpa6Kc2Z9Fj7IYpid08nLti7peH/B8437rZceGLeKTvRYzq93mBfeyZuwcHMCHOYqoFzahO
	vLtltEeSYS//ze2rjVgU1NdLxUOvtFdI+wvqZJbKNPSTrwLAdB02P+gbqmIO4rG5CbbD2qQfGN1jb
	eGNmqYY8FyqehxJV//WqPflDTnjHqa9vx18NLBXSxTQ2m7Vt0hMZabTylkCKC5g6+zIi+IKkYau1Z
	pkZf7fhDgR/X9ii+bB2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzUYK-005CYo-SO; Tue, 21 Dec 2021 02:06:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzUTa-0059gw-0B; Tue, 21 Dec 2021 02:02:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6A4CC61166;
 Tue, 21 Dec 2021 02:02:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F3B4C36AE5;
 Tue, 21 Dec 2021 02:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640052120;
 bh=X3x2q91yTEeIx4pyLPqn1GZlb6ij9kl0M5egD1UypEM=;
 h=From:To:Cc:Subject:Date:From;
 b=RSqJV/IafCsj5Urf2g68IowhUnd7ZNSOH9k7WbkMki4R579ylgBgjNFtKDaKMJ8P1
 GNi1p5gykLN8zfTr9K5g9kfPCbMDb/10hEAHyfUAfqqF4qGjUYjkBhHGM3lD/82yzZ
 harJuQnC7OWzDGqPKtQf2N8SfF5/xXkYqrj+T3ivpTn5JkMNaEZBSJKgmaUiMaCsuH
 r8O3JuDyr+VDEvo+cVmg/3fFJm9H8+DN3cQaNlAVVlRgSolrPyFJXrTOs8qHS50xDO
 tkl/Q5Luwc0iK1TPbEuVe+wKXPOalaQaX1UcL6gjyTQxPm8XABuH4LHxB2NtCeRSqT
 DUC6vf4bSw+VQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: "Ivan T. Ivanov" <iivanov@suse.de>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 4.9 1/4] ARM: rockchip: Use memcpy_toio instead of
 memcpy on smp bring-up
Date: Mon, 20 Dec 2021 21:01:55 -0500
Message-Id: <20211221020158.117612-1-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_180202_147135_DAB436BE 
X-CRM114-Status: GOOD (  13.73  )
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
index 4d827a069d49c..203f5a72829e2 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -198,7 +198,7 @@ static int __init rockchip_smp_prepare_sram(struct device_node *node)
 	rockchip_boot_fn = virt_to_phys(secondary_startup);
 
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
