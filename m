Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEADEC64EC4
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 02:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1S8JJslRohNk352wZ4dy46SZxF0gTIUGpBXs/rCrOh8=; b=bbGqxUj0e08T+9
	SkaEt4j68Kiy6ZEWBowYwa+E/6SiNJ3BNl4tk+o28EAl+fuqv/lMEQC/MqR38UQh1Ax/pEHtFHAOd
	n0svWifya5B4MNACPPic5bRWj30K+Bmb2mqAdTTFFHKY6Fu+8ha/FK55zSRW0vLVeqHiEUZXGwIMq
	4JHl4VnKQGYEWkK/f+kaV1/Afn1kXXKyUkjl51FHBfqh/KkKZ5EX+/XhpXhV21lwQJPX+l0YdIuD/
	oz4a1dXAMwWQ1aAmio4a1xc0O5DINwdDYpn8OCt6S2u+TxduGVML2sEcW7z4S93DRf6PBQ20myFPB
	rjVyVQ/hiDuimYFKtE+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paShP-00CldG-8G; Fri, 10 Mar 2023 02:41:39 +0000
Received: from fd01.gateway.ufhost.com ([61.152.239.71])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paShL-00Cla4-T6
	for linux-rockchip@lists.infradead.org; Fri, 10 Mar 2023 02:41:37 +0000
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id E995C24E22F;
	Fri, 10 Mar 2023 10:40:58 +0800 (CST)
Received: from EXMBX073.cuchost.com (172.16.6.83) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 10 Mar
 2023 10:40:59 +0800
Received: from xiaofei.localdomain (180.164.60.184) by EXMBX073.cuchost.com
 (172.16.6.83) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 10 Mar
 2023 10:40:58 +0800
From: Jack Zhu <jack.zhu@starfivetech.com>
To: Dafna Hirschfeld <dafna@fastmail.com>, Mauro Carvalho Chehab
	<mchehab@kernel.org>
CC: <linux-media@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <jack.zhu@starfivetech.com>
Subject: [PATCH v1] media: admin-guide: Update rkisp1.rst
Date: Fri, 10 Mar 2023 10:40:56 +0800
Message-ID: <20230310024056.59220-1-jack.zhu@starfivetech.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX073.cuchost.com
 (172.16.6.83)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_184136_119634_7248A7D5 
X-CRM114-Status: GOOD (  10.64  )
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

Update Rockchip ISP1 driver file path

Signed-off-by: Jack Zhu <jack.zhu@starfivetech.com>
---
 Documentation/admin-guide/media/rkisp1.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/admin-guide/media/rkisp1.rst b/Documentation/admin-guide/media/rkisp1.rst
index ccf418713623..3eec078c9eff 100644
--- a/Documentation/admin-guide/media/rkisp1.rst
+++ b/Documentation/admin-guide/media/rkisp1.rst
@@ -10,7 +10,7 @@ Introduction
 ============
 
 This file documents the driver for the Rockchip ISP1 that is part of RK3288
-and RK3399 SoCs. The driver is located under drivers/staging/media/rkisp1
+and RK3399 SoCs. The driver is located under drivers/media/platform/rockchip/rkisp1
 and uses the Media-Controller API.
 
 Revisions
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
