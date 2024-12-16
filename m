Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58438E7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 10:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YTlXjwuEnoM4no4FhjAfBwO/ZXgg4QVpeggRdRkXBm4=; b=2epIyerBJgKku+
	VFgMbFJob3OjHPLd5twlUxKz84KizYSjdruvIIBEUgYhOHzFryZPYXXi5tUFrDyLR/QKgPWE1Y298
	ckTsXX2p/KlV0dUt4nVZCGhtpQMKNbVSFx4a55YChrChkQR8Tad1muas4jMed+3HWw0mjxjy2LClO
	mfK8+z3peS9Q1pW15UIvAvsC6vKqpwXf21DK3BevqV0XZALHh1/Z5vUJA8+a9fdf4DDIaqiJB5D0r
	rVnd44qdilW1A7oE3f1k6o7cckO/rpvd8bUVyz9ePSsi3XNfaH5EdY/DEDyz6LITqPACZOpCTXcbt
	o6rzyrPaTogOG3Lgqsaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN826-00000009e06-3sDK;
	Mon, 16 Dec 2024 10:08:58 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN7yR-00000009dBi-1QOd
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 10:05:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=aJZhM
	nQQFM1POYULiipN3Rj2mbeFt5B/wTFTnYMR9LI=; b=U8C2QkU6EpnR9A+MCs2LL
	U8BtscA1UMCT26xi1nRWUB++fvf7wnGg2x8tL2D/S+WRgb4RdGogaPadTC2FKarm
	oWkJXaP3gGxC6qIQiZ6xvjKpTdSJqKotIcND17C0dxNb80hSpR526FPtPoN89+Xe
	yOFM7c53V/xwCZt5iRcihI=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-2 (Coremail) with SMTP id _____wD3T3c9+19n8_S6Aw--.40279S2;
	Mon, 16 Dec 2024 18:04:49 +0800 (CST)
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
Subject: [PATCH v2] media: rockchip: rga: Fix Copyright description
Date: Mon, 16 Dec 2024 18:04:43 +0800
Message-ID: <20241216100444.3726048-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wD3T3c9+19n8_S6Aw--.40279S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxArWkAry5uF43AFWxXr1UJrb_yoW5uF1kpa
	1Du3s7ArW7GrWjgw1kJ3ZxCFZ8t3ZavayUGFWS9ws3ZFn29rWUK34DXas5Ar9rXr17Cay3
	tw4Yq347JF4avr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UMBTOUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQW3Xmdf+hMiTgAAs4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_020511_747997_21FD23CD 
X-CRM114-Status: UNSURE (   7.84  )
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
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Acked-by: Heiko Stuebner <heiko@sntech.de>

---

Changes in v2:
-  Use uppercase (c) part for consistency.

 drivers/media/platform/rockchip/rga/rga-buf.c | 2 +-
 drivers/media/platform/rockchip/rga/rga-hw.c  | 2 +-
 drivers/media/platform/rockchip/rga/rga-hw.h  | 2 +-
 drivers/media/platform/rockchip/rga/rga.c     | 2 +-
 drivers/media/platform/rockchip/rga/rga.h     | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
index 8a48e9d91f96..4396348811c8 100644
--- a/drivers/media/platform/rockchip/rga/rga-buf.c
+++ b/drivers/media/platform/rockchip/rga/rga-buf.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Copyright (C) 2017 Fuzhou Rockchip Electronics Co.Ltd
+ * Copyright (C) 2017 Rockchip Electronics Co., Ltd.
  * Author: Jacob Chen <jacob-chen@iotwrt.com>
  */
 
diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media/platform/rockchip/rga/rga-hw.c
index 11c3d7234757..bf55beec0fac 100644
--- a/drivers/media/platform/rockchip/rga/rga-hw.c
+++ b/drivers/media/platform/rockchip/rga/rga-hw.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
+ * Copyright (C) Rockchip Electronics Co., Ltd.
  * Author: Jacob Chen <jacob-chen@iotwrt.com>
  */
 
diff --git a/drivers/media/platform/rockchip/rga/rga-hw.h b/drivers/media/platform/rockchip/rga/rga-hw.h
index e8917e5630a4..cc6bd7f5b030 100644
--- a/drivers/media/platform/rockchip/rga/rga-hw.h
+++ b/drivers/media/platform/rockchip/rga/rga-hw.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
+ * Copyright (C) Rockchip Electronics Co., Ltd.
  * Author: Jacob Chen <jacob-chen@iotwrt.com>
  */
 #ifndef __RGA_HW_H__
diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 1739ac0c8e92..3dccab5fa4a1 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
+ * Copyright (C) Rockchip Electronics Co., Ltd.
  * Author: Jacob Chen <jacob-chen@iotwrt.com>
  */
 
diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/platform/rockchip/rga/rga.h
index 8105bb2efe57..530e12de73c4 100644
--- a/drivers/media/platform/rockchip/rga/rga.h
+++ b/drivers/media/platform/rockchip/rga/rga.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
+ * Copyright (C) Rockchip Electronics Co., Ltd.
  * Author: Jacob Chen <jacob-chen@iotwrt.com>
  */
 #ifndef __RGA_H__
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
