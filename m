Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F94FECE589
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 22:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ROSHtmI5GjTcqnN6XSstdbDidUjBFZiw33J6I9KQmvU=; b=gasI8JvvIT3DtB
	Ot6vNpGCJ7b7q5ZFXCo5D6dvwtxmB1MXOkXfZD+5q1wT1VF3ctsvVDZnGDlyABuDUvYJv5Jh5ZqlN
	vG2xCxTbA8csuDy1qyjQzrsb2kIknVcvTSLYpat0/rbh+njUMFVHBRalCWQ54Db4HPlDueIsBTrIQ
	+d9g1QL2U1QH7i+sEsZLiQ+xmWI7NrEwoszZVrKpRc1qatAxx7MwcI86ZTDsM1LoaGYCDC0KH2bTE
	ujaI5m2j4mSwIvgbRC/SUBiZ0LkTvJe6IzrEh+jwUd52B2u3ANCIxifYIyKofcIgV5EgXiatX7yeO
	wPrognqPUiUAaIAjUUrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snmwS-00000003U30-0xZa;
	Mon, 09 Sep 2024 22:33:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snmvR-00000003Tx8-0s1R;
	Mon, 09 Sep 2024 22:32:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Hx2KsAtNeN8lDjIIK64wYqeEJzRRQwAj00bZ+1+RjZs=; b=jr2qIQ4FOwzUMcKX+WHC7m7qA9
	rkuwY6L5L3grjP0BSFnMTz1K+3IY5Uu454r+cUCb7YGG3h0SKlKWOGYEgJHtGwJaKSNdstl2TXCBX
	qN31O9UOy5VtBJFgiweUofkjswF0o/DuLvOe7KnpmNTlO8YjtY3etEUqKCxWDtgDrtmnV9QQYs/m4
	UytYFKq/J4sHjFw9ghDdQ7zfxa6h4bzfLqoOsXUmkWt3+/jqvuBUhVVM0nZFfXaqhJKXB/1+A0ZhT
	Fb/eMU27oOAox/JOSXoBcDgWCd1I4lZ9/DOWORESx7OIbeziPX+4DERybzqMoS+BFQcikkKQFPdOZ
	sW0xonmw==;
Received: from i53875a02.versanet.de ([83.135.90.2] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1snmvJ-00064D-7q; Tue, 10 Sep 2024 00:31:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com,
	sboyd@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	detlev.casanova@collabora.com,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: clock, reset: fix top-comment indentation rk3576 headers
Date: Tue, 10 Sep 2024 00:31:49 +0200
Message-ID: <20240909223149.85364-1-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_153201_288303_F46EA72D 
X-CRM114-Status: GOOD (  10.98  )
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

Block comments should align the * on each line, as checkpatch rightfully
pointed out, so fix that style issue on the newly added rk3576 headers.

Fixes: 49c04453db81 ("dt-bindings: clock, reset: Add support for rk3576")
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 include/dt-bindings/clock/rockchip,rk3576-cru.h | 12 ++++++------
 include/dt-bindings/reset/rockchip,rk3576-cru.h | 12 ++++++------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/include/dt-bindings/clock/rockchip,rk3576-cru.h b/include/dt-bindings/clock/rockchip,rk3576-cru.h
index a2933021be89..25aed298ac2c 100644
--- a/include/dt-bindings/clock/rockchip,rk3576-cru.h
+++ b/include/dt-bindings/clock/rockchip,rk3576-cru.h
@@ -1,11 +1,11 @@
 /* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
 /*
-* Copyright (c) 2023 Rockchip Electronics Co. Ltd.
-* Copyright (c) 2024 Collabora Ltd.
-*
-* Author: Elaine Zhang <zhangqing@rock-chips.com>
-* Author: Detlev Casanova <detlev.casanova@collabora.com>
-*/
+ * Copyright (c) 2023 Rockchip Electronics Co. Ltd.
+ * Copyright (c) 2024 Collabora Ltd.
+ *
+ * Author: Elaine Zhang <zhangqing@rock-chips.com>
+ * Author: Detlev Casanova <detlev.casanova@collabora.com>
+ */
 
 #ifndef _DT_BINDINGS_CLK_ROCKCHIP_RK3576_H
 #define _DT_BINDINGS_CLK_ROCKCHIP_RK3576_H
diff --git a/include/dt-bindings/reset/rockchip,rk3576-cru.h b/include/dt-bindings/reset/rockchip,rk3576-cru.h
index 291fec0ecba0..ae856906f3a3 100644
--- a/include/dt-bindings/reset/rockchip,rk3576-cru.h
+++ b/include/dt-bindings/reset/rockchip,rk3576-cru.h
@@ -1,11 +1,11 @@
 /* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
 /*
-* Copyright (c) 2023 Rockchip Electronics Co. Ltd.
-* Copyright (c) 2024 Collabora Ltd.
-*
-* Author: Elaine Zhang <zhangqing@rock-chips.com>
-* Author: Detlev Casanova <detlev.casanova@collabora.com>
-*/
+ * Copyright (c) 2023 Rockchip Electronics Co. Ltd.
+ * Copyright (c) 2024 Collabora Ltd.
+ *
+ * Author: Elaine Zhang <zhangqing@rock-chips.com>
+ * Author: Detlev Casanova <detlev.casanova@collabora.com>
+ */
 
 #ifndef _DT_BINDINGS_RESET_ROCKCHIP_RK3576_H
 #define _DT_BINDINGS_RESET_ROCKCHIP_RK3576_H
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
