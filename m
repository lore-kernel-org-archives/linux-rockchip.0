Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5776C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Dec 2021 02:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MC20Ca6UNAPRT82aGX3o3GRhketJH1TZNXP/pb1tLOk=; b=DzD7VuzGelT2Lh
	52aKSuxsdWKQZeoaOduVhxQG3z96bvEWinqWB67zSkxM4Xner5Fk7/PUpdHNyY1v7s7DwGPv9N9GC
	URMHEge5kH1cXTbjFbL6i1kGwgB4ouB6zns0r0T3EqsBQi+QRisjUXZh9aVW5CCsz3xIAivqllZIs
	6LHWJjHD9/AsQdP5z9fANERs0EjhsqnttmxJLG8Bmes7PUbB1+J4SiDpSuv0F79Bf60cHWvk6BH/k
	CwVrGsaULFweWRemmLuqjMKAF96fLR2bAFbWXq0VsYGUZevy11/N/x7nsYdnnc1CNXyNoVYn3kUPA
	sC4foNxud9sSgSDOUF6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzUSF-0058mK-9n; Tue, 21 Dec 2021 02:00:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzUQw-0057n4-UU; Tue, 21 Dec 2021 01:59:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5BD976134A;
 Tue, 21 Dec 2021 01:59:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 516B5C36AEA;
 Tue, 21 Dec 2021 01:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640051958;
 bh=Lrz4hRBiMCBvp7sbl+owa5QpcCfbEP43ybDCr9Z1Gbk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RcWelTcv7a+83PwBgiiRulaeMxaGqJ+cyq4jae2QmW1LYD0sPnHTvAPuCTKnlAaPG
 cURz1N3onKPhSW76CRoz1ZskFlvmAG0vWsdk7AWHOIsuzARD8sJxz37mliflzu+2Vt
 JGyWUDoi4xfDxDW8WGl8oVeVNuK00MrJfvJLJxELsbfau8gGFekXkQAuX4XXdsuu3U
 bZFB9Z3PbWcW33/URqJNDmVKKFn8TAkUeyZA9qLRZVKFqiWtrQSz4TrKuzpVKEK55V
 vCtbCHDP2MKGshYwkr2hXMioUXR2R+39jxcTGEHbrh2j6+gH39NXSgccPVWK39DoPg
 /QvGoOKvIMx3g==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: "Ivan T. Ivanov" <iivanov@suse.de>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 02/19] ARM: rockchip: Use memcpy_toio instead of
 memcpy on smp bring-up
Date: Mon, 20 Dec 2021 20:58:57 -0500
Message-Id: <20211221015914.116767-2-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211221015914.116767-1-sashal@kernel.org>
References: <20211221015914.116767-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_175919_047213_04E20619 
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
