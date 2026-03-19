Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C09E0109023F
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 15:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C/CY5xbZnq//xUBtet8m5SHbyUzeE1yXA2r4lmFBEAs=; b=JMV4IZnwJ7QxvH
	0hAMZpXn2X1O+tZNaNDq3dMtyJwCAHt1b4qI2j0FlA5TShnpUTd5Mvul4jaxkBEE0jsvsHcDW1w1Y
	OLcuWLvrlyvFA46BOVEHFvbrqKaiJRRDjPryFozY9TOHHA2k3Iv+aPthEovwlVsMGUsoFg1xquPO4
	SlI6oxZchQtEopGbeIOkbD2uOviZ3F4yNEJ1BntvoMlIJ980EKqWNgxN65GmRwRGv/BVjiTqnieTi
	KOqGmmnY6Vcbbe0XArmsQLl3c8q/MtyAkE5FJQFvgUZkzubQGt7Z4dh4bxaP36zTgPwn1G+JJJQxE
	dDFlHI/IsDfH33aziUfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3FYi-0000000Aw0o-1AuM;
	Thu, 19 Mar 2026 15:45:16 +0000
Received: from mx1.wiredblade.com ([72.51.58.37])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3FYg-0000000Avzy-1Y4z
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 15:45:15 +0000
dkim-signature: v=1; a=rsa-sha256; d=psihoexpert.ro; s=dynu;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding;
	bh=RFdRYbgTFJMF0a3on9XGjJwPEoEbiY8lYWo6e+89NFo=;
	b=taPfw3N1cMiE2HgkCV4wN3FnSMrDz3E1nF2+cSo1ETx1fkMowebqDv42Kldw338kSTBPuBP1pTARrhFty+QYRG4MbXYLbrxl9THiFchHPj4QjeE+8r7/Xtn10O3b5TxyfkELxRFLERvqeBFb0dE+49OLW9XGoO8vCUy3cLNAAiu8i3afrTaEeBOYIPPUM1gm02KU5wttStxU8qfqgfgJWcK+QFan543zz6LzbRlo/YiMZw4VDyrGGhkcHI
	yKHQkPZn6w9pruIWJ2R8GQuig72fHEgxcy9+sQL3rEDDmKnqEQAbuAlp12225JdNS/olo3YCdNfDrdCX0uACLRGxO9ng==
Received: from TkB (188-24-192-137.rdsnet.ro [188.24.192.137])
	by mx1.wiredblade.com with ESMTPSA
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256)
	; Thu, 19 Mar 2026 15:44:48 +0000
From: Marius Dinu <m95d+git@psihoexpert.ro>
To: linux-rockchip@lists.infradead.org
Cc: Andy Yan <andyshrk@163.com>,
	Marius Dinu <m95d+git@psihoexpert.ro>
Subject: [PATCH v2] drm: rockchip-dw-dp: add missing dependency on bridge_connector
Date: Thu, 19 Mar 2026 17:50:42 +0200
Message-ID: <20260319155051.1944-1-m95d+git@psihoexpert.ro>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_084514_490869_E0AB4164 
X-CRM114-Status: UNSURE (   7.02  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Avoids this error:
  ld: drivers/gpu/drm/rockchip/dw_dp-rockchip.o: in function `dw_dp_rockchip_bind':
  /usr/src/linux/drivers/gpu/drm/rockchip/dw_dp-rockchip.c:108:(.text+0x188): undefined reference to `drm_bridge_connector_init'

Signed-off-by: Marius Dinu <m95d+git@psihoexpert.ro>
---
 drivers/gpu/drm/rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 1479b8c4ed40..39cd38375e8a 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -67,6 +67,7 @@ config ROCKCHIP_CDN_DP
 
 config ROCKCHIP_DW_DP
 	bool "Rockchip specific extensions for Synopsys DW DP"
+	select DRM_BRIDGE_CONNECTOR
 	help
 	  This selects support for Rockchip SoC specific extensions
 	  to enable Synopsys DesignWare Cores based DisplayPort transmit
-- 
2.52.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
