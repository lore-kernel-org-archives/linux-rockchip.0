Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64DDBC433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Mar 2022 18:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETrrREA+qQyKyEKCO0Vg/mtlYKrqLnaM2uZgajF6s7I=; b=kJgPQGy/6syXdF
	iZ8nn46Z86wt/d+S66tgMLTTzmxbt/IYxB8wAGkuhb6Mf802w27Y6FhlGSoc+eQE1M3u4cZewCgHQ
	BDdRqqGXlkjRO4F3DVbHZn2lt5sku9y5yeIqDjLIsLqx9Q2pI/pkUGzixo9nmtEoWnzTqXcW2s4WN
	Ux0orMTEafEWhw2T2NDE9MBapYEQ1CToK9ELyOuPP0sLoxBzsdEpHjpzyEKUZtfTpxsmzrWl6V2tD
	twbo9PM7m6VCAKlKTIc1ryRCjmMzJgLWl0RvrLKnrLfvTJHUM0GfyPIXKp+0pRcd/chsQ8H6CHi+5
	Ycz8oKv3zMqMKI1zQZPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYBK7-004jHW-FX; Sat, 26 Mar 2022 18:39:39 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYBK4-004jFq-PN
 for linux-rockchip@lists.infradead.org; Sat, 26 Mar 2022 18:39:38 +0000
Received: from localhost (unknown [IPv6:2a02:3030:b:56bb:4cb:3227:231:99f8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 602761F44FBF;
 Sat, 26 Mar 2022 18:39:35 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648319975;
 bh=N0eR8mQkTGSS6+NrbKu8JzCIBdyNKMH/EWIJqHhJrCg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YKAHeVLH9T1B5iP85pQaGoLYfhGAtcVL5GU4OnL8Pyaqyg1jv2eWu65jEladStW99
 c0uBM4qeLc0qYrF0gZFxXN1dcQDm2CxcQNwd+TyvKmiIf94FaF67FKc8oa8/HOT3IA
 ZgolhcNSa3pUZD8g5ShY35j1LSjbjG2ae7RkLRwW+dofQFjm43dYeGtYwaqlUj1bPW
 wu+HAXPGkA1m0I4HAxZkApzBYKcXZhx7hgNV8hhaDMi3KD7Iml7IiWqHxwfa1oFf5A
 QpwkPajMmY3SImVi1gQySsTmzHIy6t/ZRcAU/Mqw+Eq1oFqNq1Gpxb9fpHWTuynQTE
 XWY4xa8Og1aCQ==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: linux-media@vger.kernel.org
Cc: Sebastian Fricke <sebastian.fricke@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org (open list:HANTRO VPU CODEC DRIVER),
 linux-staging@lists.linux.dev (open list:STAGING SUBSYSTEM),
 linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] staging: media: rkvdec: Update TODO list
Date: Sat, 26 Mar 2022 19:37:17 +0100
Message-Id: <20220326183715.67332-2-sebastian.fricke@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220326183715.67332-1-sebastian.fricke@collabora.com>
References: <20220326183715.67332-1-sebastian.fricke@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220326_113936_976868_DC2976DA 
X-CRM114-Status: GOOD (  12.20  )
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

VP9 support has been added to the driver by f25709c4ff15.
And the VP9 uABI was merged with b88dbe38dca8.

The remaining codec that keeps this driver in staging is HEVC.
Update the TODO list accordingly.

Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 drivers/staging/media/rkvdec/TODO | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkvdec/TODO b/drivers/staging/media/rkvdec/TODO
index e0f0f12f0ac5..2c0779383276 100644
--- a/drivers/staging/media/rkvdec/TODO
+++ b/drivers/staging/media/rkvdec/TODO
@@ -1,6 +1,6 @@
-* Support for VP9 is planned for this driver.
+* Support for HEVC is planned for this driver.
 
-  Given the V4L controls for those CODECs will be part of
+  Given the V4L controls for that CODEC will be part of
   the uABI, it will be required to have the driver in staging.
 
   For this reason, we are keeping this driver in staging for now.
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
