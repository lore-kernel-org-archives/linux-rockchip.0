Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DC24C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 21:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6B1Lo5+5pFqZELlv6BQM2F5PVnCdXiG+G3Zoe47l/iw=; b=TJNWXNW+wg+5XH
	VBz5paTVyfVHizxlgADxQ3s9q/tIsaSyX4aCgnsz85txSah4i94bucGw3E+Fo9lXdY99zQ9RNsYD9
	BhtqmtYQ2hn6Rj2MYposefyoLSDreltG3Sz3wlWY54yXkXkD9LxfURz6TUq7ErtN8q2cV4cmLB2YG
	xCXARcIJdBH+TcOa9cWox+AkLpXLaOBQ4zihyQshA5SuNMg+d+RwPYqVjbNv2w+whWVKgBIVe/PXr
	LtNL77UUgIzEQwWK3aFOA5AlFvj4pbJPUl8TlnS7Vfk7caFCvLwo7NvxXUrdY8BA7ckCIW+kj0kCb
	t5AUY4K2r7SlBIfXgGcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otyHa-007wdT-Gz; Sat, 12 Nov 2022 21:43:22 +0000
Received: from smtp-30.smtpout.orange.fr ([80.12.242.30] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otyHP-007wTF-6G
	for linux-rockchip@lists.infradead.org; Sat, 12 Nov 2022 21:43:14 +0000
Received: from pop-os.home ([86.243.100.34])
	by smtp.orange.fr with ESMTPA
	id tyHJoEBHyu8pltyHKom6SK; Sat, 12 Nov 2022 22:43:07 +0100
X-ME-Helo: pop-os.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 12 Nov 2022 22:43:07 +0100
X-ME-IP: 86.243.100.34
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	linux-clk@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] clk: Remove a useless include
Date: Sat, 12 Nov 2022 22:43:03 +0100
Message-Id: <12dd5cb49efa7714f8e0389e4c7b3bc829e8a90e.1668289299.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_134311_386278_95126A29 
X-CRM114-Status: UNSURE (   7.22  )
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

<linux/rational.h> is not needed for these drivers. Remove the
corresponding #include.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/clk/clk-versaclock5.c | 1 -
 drivers/clk/meson/clk-pll.c   | 1 -
 drivers/clk/rockchip/clk.c    | 1 -
 3 files changed, 3 deletions(-)

diff --git a/drivers/clk/clk-versaclock5.c b/drivers/clk/clk-versaclock5.c
index 88689415aff9..e9737969170e 100644
--- a/drivers/clk/clk-versaclock5.c
+++ b/drivers/clk/clk-versaclock5.c
@@ -20,7 +20,6 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_platform.h>
-#include <linux/rational.h>
 #include <linux/regmap.h>
 #include <linux/slab.h>
 
diff --git a/drivers/clk/meson/clk-pll.c b/drivers/clk/meson/clk-pll.c
index 9e55617bc3b4..4b96e1590224 100644
--- a/drivers/clk/meson/clk-pll.c
+++ b/drivers/clk/meson/clk-pll.c
@@ -32,7 +32,6 @@
 #include <linux/io.h>
 #include <linux/math64.h>
 #include <linux/module.h>
-#include <linux/rational.h>
 
 #include "clk-regmap.h"
 #include "clk-pll.h"
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index e63d4f20b479..398c427b8e81 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -21,7 +21,6 @@
 #include <linux/mfd/syscon.h>
 #include <linux/regmap.h>
 #include <linux/reboot.h>
-#include <linux/rational.h>
 
 #include "../clk-fractional-divider.h"
 #include "clk.h"
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
