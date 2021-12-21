Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2702C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Dec 2021 01:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MC20Ca6UNAPRT82aGX3o3GRhketJH1TZNXP/pb1tLOk=; b=VanHBjxjN1Ahr1
	pWxCwEW0keWbAHttu8fHwfRxhedtvaiwfNE/dbKUYYnHGnKs8mr2Cc3G8kBHe+MD1IggV62ZbPJuW
	k5waVUc1unlse8qdo59COG+otVQ47dmdmBboaxL5nNu9ZZcSzqvMpldG/5qo1bNGFV35fsvXpDUzt
	I0y2GwU5QU2U/U/XbohOIqn+DtITfWmB3o+SuOpcjyv2uwDo0H4Jju5jkuezC5ZzIq96N1//vEY56
	J/R/Z8j41B7zOriESlxeoBdBr7B58fjHDKkEEUEzygidI3zzJWUOJIu/W/BnE5CpTpvQTJbkp8TXR
	HPXJZb+umCqcdJg7I2Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzUQC-0057AX-A3; Tue, 21 Dec 2021 01:58:32 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzUPf-0056s5-Ik; Tue, 21 Dec 2021 01:58:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 32F79B81107;
 Tue, 21 Dec 2021 01:57:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2697AC36AEC;
 Tue, 21 Dec 2021 01:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640051877;
 bh=Lrz4hRBiMCBvp7sbl+owa5QpcCfbEP43ybDCr9Z1Gbk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UMbyAVo9JLGd2eBTokxinSiynNZh/9eExbFyWblmQcyYgWFZbXhLjtLKZlHs5e1wp
 pD5uesfs/jxE0PivChtFw7YIqtwLvFSdGX+4GILetW6IjTFs65jgCHFBy/VbJk9JHD
 L19dJ4Ed89jHdNyIYU3ezvfiDPbx55Jyk++0OCd//kMeenCST3/uCne/R05+U0YE2j
 +91nrZiwraP+JWt6wX3aWu14mkYolO4Name46mPrHaPD4clAb3q1wibfL6escZhWeT
 siwtaPMbxK10u0V51pLXH66dibS1aviLTC3FB/5CfOMMnRrYJtVxeGq0dowCrbDEaP
 2Lz9/AJOBSGMA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: "Ivan T. Ivanov" <iivanov@suse.de>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.15 03/29] ARM: rockchip: Use memcpy_toio instead of
 memcpy on smp bring-up
Date: Mon, 20 Dec 2021 20:57:24 -0500
Message-Id: <20211221015751.116328-3-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211221015751.116328-1-sashal@kernel.org>
References: <20211221015751.116328-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_175759_788123_CA25B932 
X-CRM114-Status: GOOD (  14.02  )
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
index d60856898d97a..5ec58d004b7de 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -189,7 +189,7 @@ static int __init rockchip_smp_prepare_sram(struct device_node *node)
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
