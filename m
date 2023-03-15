Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D784FC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 03:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b68aDg9IXSA8OhuJ/8zAMq2z0cN6xcwagnVClfh27Ow=; b=SYqkj3T0oWTkmC
	woumnPXoQnuF9MbixqJNQPY89mZfylcGwpHQwheDD+Uu20WkuEJPoTly+d4Yn86AoHhbKK+7w7TFM
	01k9FNc0xQimjTogDRaV25iDPjbq2MblA3saXU2QHO7kFbfrBLD2hU3oo/imTRBmqK6wHgK+aSNIh
	DnqTqA3qq1ZiQv8yseZUrvOv2wu3jRg1IcOB9MCEhYOQJXhGBwOEH/C2ParaB+rQYcKnIjQ/buZ61
	4+zqmR9TAaLUmbYAAA63lgHiHrtp1jM+FvjrXyE3QHl3Q5tvrLkMskxG2ECrZQ+zsE8267uXcUVkI
	g9lsqrZ7SdbSRi9zn27Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcHOB-00C6NY-0G;
	Wed, 15 Mar 2023 03:01:19 +0000
Received: from fd01.gateway.ufhost.com ([61.152.239.71])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcHO6-00C6Kk-0W
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Mar 2023 03:01:16 +0000
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 6045924E2E7;
	Wed, 15 Mar 2023 11:00:42 +0800 (CST)
Received: from EXMBX073.cuchost.com (172.16.6.83) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 15 Mar
 2023 11:00:42 +0800
Received: from xiaofei.localdomain (180.164.60.184) by EXMBX073.cuchost.com
 (172.16.6.83) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 15 Mar
 2023 11:00:42 +0800
From: Jack Zhu <jack.zhu@starfivetech.com>
To: Dafna Hirschfeld <dafna@fastmail.com>, Mauro Carvalho Chehab
	<mchehab@kernel.org>
CC: <linux-media@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <jack.zhu@starfivetech.com>
Subject: [PATCH v2] media: admin-guide: Update rkisp1.rst
Date: Wed, 15 Mar 2023 11:00:40 +0800
Message-ID: <20230315030040.107901-1-jack.zhu@starfivetech.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS061.cuchost.com (172.16.6.21) To EXMBX073.cuchost.com
 (172.16.6.83)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_200114_379197_6322529C 
X-CRM114-Status: GOOD (  10.80  )
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
Changes in v2:
- keep that the number of characters in the line is within 80.
---
 Documentation/admin-guide/media/rkisp1.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/admin-guide/media/rkisp1.rst b/Documentation/admin-guide/media/rkisp1.rst
index ccf418713623..6f14d9561fa5 100644
--- a/Documentation/admin-guide/media/rkisp1.rst
+++ b/Documentation/admin-guide/media/rkisp1.rst
@@ -10,8 +10,8 @@ Introduction
 ============
 
 This file documents the driver for the Rockchip ISP1 that is part of RK3288
-and RK3399 SoCs. The driver is located under drivers/staging/media/rkisp1
-and uses the Media-Controller API.
+and RK3399 SoCs. The driver is located under drivers/media/platform/rockchip/
+rkisp1 and uses the Media-Controller API.
 
 Revisions
 =========
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
