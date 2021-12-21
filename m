Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74C5FC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Dec 2021 02:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eiRo3Bvsvun0bkl+NdoNA1pHdtmt8YjG8P+CSDXxb+o=; b=w/rEgsa492g09P
	CKmTQmC85z/48ytVpMFWEY+zo55gEnrcLBnC38mYP6YebSGiuOD/gUbyJ3ysGJEr3exBIBC9To13Z
	eK/QN5Gg4Hu6xOI9/1LJBYfkyyvtAXEp4RK/SHrgHjFKiir3kv6GASjtcyEE+7KI5xPmUw744hl6C
	T33NJYGJ0Mh51HS7C8fhUTrmFHi3EJKGgJ4cBXF3SDrVALkvOZcfgiK16JwnyPui3f/YFoHCm35OV
	K7niSgnk0GDXKotbx7rMHzka9AZhz0HbcmbcolzLqoxyhciVZK765HgBvg9kF5CcmZaX2EuzzdySZ
	WwMZA7QPhD7gfYon46vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzUa3-005DO2-8o; Tue, 21 Dec 2021 02:08:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzUTh-0059l6-QI; Tue, 21 Dec 2021 02:02:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3810961224;
 Tue, 21 Dec 2021 02:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6000C36AE8;
 Tue, 21 Dec 2021 02:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640052128;
 bh=kJa3F3/9v6+zpr3LL2pnwtBxvxYCsbvi4K8gPRQTjq0=;
 h=From:To:Cc:Subject:Date:From;
 b=NRZMNYXckP0st2SnjjY7VvHyjqt9glt/afvb9b9XLH2GMJRuL0OH9IkbqaXIb3Vfr
 6fIsHeo/0XHxztYIib6JZHLnPrSN8lISnfWYcyUhyYPJoAygTfcqcDMRMXg1+Mc3Rp
 GpjbeSlfAd25FjXCqVutq5Nx406Po0nCWRVMHpMv2zzDQBsZ7S+XKj+HEyaS52lRrM
 nU5VIri0THf/t/JnGg/QK7kK6HvtDzyLdM/YwSqKPEZinjfJA5+t26G0PseeWetpUN
 jtKIruBrk+G0YHXVhfLVBotWRpdhd0uR2TtsMdEdpGlEm6/xy9yyV9+h2r5Hp6zfbq
 TG2mj1XXDi2/Q==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: "Ivan T. Ivanov" <iivanov@suse.de>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 4.4 1/4] ARM: rockchip: Use memcpy_toio instead of
 memcpy on smp bring-up
Date: Mon, 20 Dec 2021 21:02:03 -0500
Message-Id: <20211221020206.117771-1-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_180209_940002_728BF11D 
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
index 3e7a4b761a953..47b6739937c64 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -194,7 +194,7 @@ static int __init rockchip_smp_prepare_sram(struct device_node *node)
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
