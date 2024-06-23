Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFC49C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 12:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/HSMfvpVJE2ZsPYQtMSLpJso59q22olU9LSPRvpQwk=; b=sAaoQF1inM0BWP
	x/LJv4qkGPMZF5+fdWKkeMzPXGEuZJpVUjXFOkdzVRwAvS9gn4dWqUutp0JlQMNvUm5H/YQai/oWO
	3ufSkgTVKvu3YvJ/+7WyZFbtXshlKO7rHfY/SajrKWmxlyTuRBFIYfcwyZl1FJ7sr3W7ZlFQFm2VX
	0ZZjflQvubT7jIKV1N6jn8Pz2sxpBcy588MvA6YTIc+kCTDX0irdMxRPhceZ+hwT38fimZfjNGcf3
	rXWK0icvL5piXA6QWs3T3uTd2ULW2rvFm2bgVEsBqsFqvh2KkViX8lCONVIyaw/I3zFEMJ/bowS9T
	izI62P8YK/6hJSZTJTgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLMJV-0000000Dz2C-1hOW;
	Sun, 23 Jun 2024 12:27:21 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLMJS-0000000Dz1s-48Tw
	for linux-rockchip@bombadil.infradead.org;
	Sun, 23 Jun 2024 12:27:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=BiwffAWswL25Wtq4MnYyyf31EnqfKF9O8wlonEk1bu4=; b=gliMA1nWIbnWA/SD6wjam5kxk+
	WbWrvZK+979+MG1ILDM306vynRe8ie3nyVPW8GhDGd1YUopYKAIQZ5pBmjPTxWCGKCM6kfZEpFm+1
	93Exf3UF2Y+1J5HX3RJ3ws49+8xMhwWdDzKcd5LCEdIIj5Wdw9Cn3O+icGJzjGlXF6jwNRuyGiEes
	8/qRk0SHU5dUliX8gvi2BhtLrzZzX5/g61e87azQeXkDGZxmVMw47Tsy4tFoFp6DWe+8e1WM9fMkT
	h2ZYOdhSL6vKyGiMI7N21DaaivM6N+Xq/TMljucAZm3PFjMukDVJ5+Rz+Qsk77tsCLGWEeOtvEEUj
	Xv4cH4EA==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLMJM-000000096Ua-17y0
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 12:27:17 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45NCNik5006105;
	Sun, 23 Jun 2024 21:23:45 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Sun, 23 Jun 2024 21:23:37 +0900
Message-ID: <20240623122337.91914-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623122337.91914-1-naoki@radxa.com>
References: <20240623122337.91914-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_132712_816399_C924BD00 
X-CRM114-Status: GOOD (  11.22  )
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

ROCK Pi E v3.0 is new, incompatible version of ROCK Pi E v1.2x.

Changes are:
- Upgrade DDR3 to DDR4
- Elevate eMMC connector to onboard eMMC
- Update silkscreen to ROCK PI E V3.0

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Changes in v2:
- add change for Makefile to build rk3328-rock-pi-e-v3.dtb
- minor reword in commit message
---
 arch/arm64/boot/dts/rockchip/Makefile                |  1 +
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts | 10 ++++++++++
 2 files changed, 11 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 85d949f2c909..a9b57c09299e 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -24,6 +24,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus-lts.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock-pi-e.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock-pi-e-v3.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3368-evb-act8846.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
new file mode 100644
index 000000000000..be369dace843
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3328-rock-pi-e-base.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi E v3.0";
+	compatible = "radxa,rockpi-e-v3", "rockchip,rk3328";
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
