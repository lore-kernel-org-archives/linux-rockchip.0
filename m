Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BC0FE7716A
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Dec 2024 09:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q6p8xFhpnY17PjQRjcQ7csYX+7NtDyoEbZm8Ah7Br84=; b=XqNfiVXAtLKnOB
	pyaoqDQKtKpFIZhKwnApMXmwqZXwSePVghcF/NL0tDSSgv2eGcNQi1gRu7YF0T5Vd8ZJ9bD5uR0qS
	ctzdAJnjFVOebfjFmwvWOz+Gp9jKdHWFRunU9fWN757bvBvyna+GZQW1b7FTO4y3G54TLXSXrPYW5
	eSVlJZOeqJZ40CClg22SHgLM9KR84B+YLoIezmx9i1KL4J2pb+SKxAp3uBnSFpHBAn2dYgtROD+rp
	FIvrBPh8a9aNgFY8fPf351xABfH3/PSRAiju9doKpTNIvQCpW9cJX4Sjt41fTywiCcPRCuQA708MK
	A0UrW/gfDy732wQfCfoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMky6-00000007guW-3ZsO;
	Sun, 15 Dec 2024 09:31:18 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMky3-00000007gto-1chE
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Dec 2024 09:31:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=9MGcY
	rjNQIU1R6HMIXEA17Gskoif7/Q3UlS9ndbrDxo=; b=LGw/QALI5Q0oJ/KRVhJqC
	0gtSU85dXJgYnWHO3xvHqQOjZL2KApLO9AlrSMFpLkt0RpeGINehasFjJIYE0Y0M
	YIhD0tbakqxYy+OEWyF+YLgNh4E2nb2czriCna3gU5yTDhyOTb0/InF0tPDf3pBf
	XdGhUlYtnhj2K7BsjGHyeY=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-3 (Coremail) with SMTP id _____wD3N83MoV5nWznGAg--.58485S2;
	Sun, 15 Dec 2024 17:30:55 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: mchehab@kernel.org,
	linux-media@vger.kernel.org,
	ezequiel@vanguardiasur.com.ar
Cc: heiko@sntech.de,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kever.yang@rock-chips.com,
	sebastian.reichel@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] media: rockchip: rga: Fix Copyright description
Date: Sun, 15 Dec 2024 17:30:50 +0800
Message-ID: <20241215093051.3447711-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wD3N83MoV5nWznGAg--.58485S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxArWkAry5uFy5AryrXF1fWFg_yoW5Zr48pa
	1Dur97ArW7GrW2qw1kJ3ZxCFZ8t3ZavayUGFyS9ws3ZF1I9rWDKw1DXas5Ar9rXr17Aay3
	Kr4Yq347JF4avr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UBuWJUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMxO2XmdelrWs4wAAsd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_013115_812126_A95E26B9 
X-CRM114-Status: UNSURE (   7.41  )
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

From: Andy Yan <andy.yan@rock-chips.com>

The company name has update to Rockchip Electronics Co., Ltd.
since 2021.
And change Co.Ltd to Co., Ltd. to fix mail server warning:
DBL_SPAM(6.50)[co.ltd:url];

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 drivers/media/platform/rockchip/rga/rga-buf.c | 2 +-
 drivers/media/platform/rockchip/rga/rga-hw.c  | 2 +-
 drivers/media/platform/rockchip/rga/rga-hw.h  | 2 +-
 drivers/media/platform/rockchip/rga/rga.c     | 2 +-
 drivers/media/platform/rockchip/rga/rga.h     | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
index 8a48e9d91f96..0a7cb1af9b1a 100644
--- a/drivers/media/platform/rockchip/rga/rga-buf.c
+++ b/drivers/media/platform/rockchip/rga/rga-buf.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Copyright (C) 2017 Fuzhou Rockchip Electronics Co.Ltd
+ * Copyright (c) Rockchip Electronics Co., Ltd.
  * Author: Jacob Chen <jacob-chen@iotwrt.com>
  */
 
diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media/platform/rockchip/rga/rga-hw.c
index 11c3d7234757..26c6645797fe 100644
--- a/drivers/media/platform/rockchip/rga/rga-hw.c
+++ b/drivers/media/platform/rockchip/rga/rga-hw.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
+ * Copyright (c) Rockchip Electronics Co., Ltd.
  * Author: Jacob Chen <jacob-chen@iotwrt.com>
  */
 
diff --git a/drivers/media/platform/rockchip/rga/rga-hw.h b/drivers/media/platform/rockchip/rga/rga-hw.h
index e8917e5630a4..5ccc081a88b2 100644
--- a/drivers/media/platform/rockchip/rga/rga-hw.h
+++ b/drivers/media/platform/rockchip/rga/rga-hw.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
+ * Copyright (c) Rockchip Electronics Co., Ltd.
  * Author: Jacob Chen <jacob-chen@iotwrt.com>
  */
 #ifndef __RGA_HW_H__
diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 1739ac0c8e92..c671d289ceed 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
+ * Copyright (c) Rockchip Electronics Co., Ltd.
  * Author: Jacob Chen <jacob-chen@iotwrt.com>
  */
 
diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/platform/rockchip/rga/rga.h
index 8105bb2efe57..69841f2a352e 100644
--- a/drivers/media/platform/rockchip/rga/rga.h
+++ b/drivers/media/platform/rockchip/rga/rga.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
+ * Copyright (c) Rockchip Electronics Co., Ltd.
  * Author: Jacob Chen <jacob-chen@iotwrt.com>
  */
 #ifndef __RGA_H__
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
