Return-Path: <SRS0=A1uQ=QD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610BEC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 08:46:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 30CA661B6F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 08:46:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 30CA661B6F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xbGxp3KcIgdtH7xBtVUnM0YOrcJPHT4txoSedcQUub8=; b=czxtpU+JA+VA45
	oUoIv5nMuTDmjZcjjzsl2gxHJRTIstwuSQHCiwE7Z1c8CP+ybGbIl3/h6E/emnau1tuzwvxm5RcLE
	S3nuzDQguYzvzYfzSyGI7BoNfIBzUQV+cMxN/cN7PHGDSvYGgwiWQsC96v8aK+zk7Xd8QoNGlD4vH
	xIANi4+VyymYYS/zTCaFUvsj5xBkh9PBV8WUl0wdOBQyzRlAXOxZLC9dAQviLAou/uKyqTZhb2NTj
	pXKID+NeflG0px/jGSILN/yeAinBoDoBHBc41fj9QpbMB2x8Zr5Z+c3+meShdlPnoVlXlLuIhd3eC
	uSQoTR9L/z1QSmWTd9hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmu6t-000ms5-Nn; Tue, 16 Nov 2021 08:46:35 +0000
Received: from smtp-out2.suse.de ([195.135.220.29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmu6f-000mnq-Oc; Tue, 16 Nov 2021 08:46:23 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 49E151FC9E;
 Tue, 16 Nov 2021 08:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1637052377; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=ax+NzTh3fSWVz4m2+41ekB6rmn6u/2jlFVhqrryGf9U=;
 b=AUCHjTpOizF8mqhGAnnXtTnt6FIdNbCPq29F51kZfGdee7uxbYBRtzU6pCtSmh2S6SDiCO
 2omdtTUIqh3yjxIw5tFgMnu2xzkPiElk3iEtk6jYSESqQKJ7wIiNPscAu2KAEbKhNrZbQK
 iu5OleSJc42QPviCmnPK5hO6EQlMP2A=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1637052377;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=ax+NzTh3fSWVz4m2+41ekB6rmn6u/2jlFVhqrryGf9U=;
 b=LU1VGOTktKMHbI7evOsb68Tl+Z5qfZjHJRvaDiO/peQRO228r4VvVzrl3GwctYdomsrxTJ
 RkSPJ+0QXt+EBuAw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 0A7AB13B9A;
 Tue, 16 Nov 2021 08:46:17 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id R91iANlvk2G5dQAAMHmgww
 (envelope-from <iivanov@suse.de>); Tue, 16 Nov 2021 08:46:17 +0000
From: "Ivan T. Ivanov" <iivanov@suse.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH] ARM: rockchip: Use memcpy_toio instead of memcpy on smp
 bring-up
Date: Tue, 16 Nov 2021 10:46:16 +0200
Message-Id: <20211116084616.24811-1-iivanov@suse.de>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_004621_990692_F850C454 
X-CRM114-Status: GOOD (  13.02  )
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

This fixes a potential kernel panic on memcpy when FORTIFY_SOURCE
is enabled. Because memory is iomem use appropriate function for
accessing it.

Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
---
 arch/arm/mach-rockchip/platsmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchip/platsmp.c
index d60856898d97..5ec58d004b7d 100644
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
2.33.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
