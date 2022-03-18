Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80568C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Mar 2022 10:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mYlnT2ieecdEt9neYze5a5/rgCd129JsgV597GklMzc=; b=fpXIs9uYP4x63o
	aGsp/vA0XRZ3k2hKWiF0aQeSryDIIYz88lOhccp3E7IGsx5xliJhzloS6JMkUreA8IbLhK9Hssrtb
	Kf7ljs87HtSoC73KcAwTrVHkwDVnRsQQTLdnytYQt/JhmD9WLhIszT3NKk0zPOk1ALXPGA8mn9f3M
	Vm7mGQHCHHeaPD6OMA3/j4hnPRPXIAb5QvvtGqmSSdb/PNh6gN0VqtzU06nFiC9m7OAkEv+3U/CRP
	L7qCSA2rOI9vVpHcY2WghW+229D7SuJtZcJSc06+MavWXwaIgCEB5Ju92KgGxNaXQoqCGZrBbqlYK
	MFJtLSDrksORsI2Be9Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVADT-001GfD-Qo; Fri, 18 Mar 2022 10:52:19 +0000
Received: from mail3-relais-sop.national.inria.fr ([192.134.164.104])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nV9zX-0019jJ-VA; Fri, 18 Mar 2022 10:37:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inria.fr; s=dc;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WssJ7bXMs5jv5up8s0wWhBYLgBJ2F9Cxv02znl0CftY=;
 b=cVVkyu1szo66CnHG8WaePyCDVK+WjNeyg2/giz9+iPJl1FtIcFiknoFa
 RoD7Ks7HXD5aOqCUZxv+kksui7crxnCoEi66obDWll4wIGS1E0Kh4flNR
 72f2J/sR8bFMBDwqs0qAgALjT22YV7nw6xccX9qEgmp5uR2/P5F364W8v c=;
Authentication-Results: mail3-relais-sop.national.inria.fr;
 dkim=none (message not signed) header.i=none;
 spf=SoftFail smtp.mailfrom=Julia.Lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.90,192,1643670000"; 
   d="scan'208";a="8935672"
Received: from i80.paris.inria.fr (HELO i80.paris.inria.fr.) ([128.93.90.48])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Mar 2022 11:37:40 +0100
From: Julia Lawall <Julia.Lawall@inria.fr>
To: Russell King <linux@armlinux.org.uk>
Cc: kernel-janitors@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: rockchip: fix typos in comments
Date: Fri, 18 Mar 2022 11:37:27 +0100
Message-Id: <20220318103729.157574-32-Julia.Lawall@inria.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220318_033756_417350_E7B37DE4 
X-CRM114-Status: GOOD (  11.00  )
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

Various spelling mistakes in comments.
Detected with the help of Coccinelle.

Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

---
 arch/arm/mach-rockchip/platsmp.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchip/platsmp.c
index 5ec58d004b7d..36915a073c23 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -137,7 +137,7 @@ static int rockchip_boot_secondary(unsigned int cpu, struct task_struct *idle)
 		/*
 		 * We communicate with the bootrom to active the cpus other
 		 * than cpu0, after a blob of initialize code, they will
-		 * stay at wfe state, once they are actived, they will check
+		 * stay at wfe state, once they are activated, they will check
 		 * the mailbox:
 		 * sram_base_addr + 4: 0xdeadbeaf
 		 * sram_base_addr + 8: start address for pc


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
