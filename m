Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5F9CC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 20:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJzf5iFm+PRwAcM/IlGny2fIovDKe+HzBu3fm1VlHns=; b=2kGqpLm/R1kTWD
	+IZiZKGdXMYFQ5fFcg7reiyKXMi1UKf3sz+uLVJYSKI7UP8QwrV7fAXH9m/P8U80q9XvdR0Z49hLv
	Qjn7ExPS8vzTqbz29MkZ5F3jMhQQhQfEvpuWHCPr/wGxXZUOCxsYSkefzInvzYqwlku5wtFUfiXBg
	M49qdwsFYQWCz7k4iuni91Lm9dpg+mztzm3mDWUpdGX2jsw5o6d1ZgycP3U7LBdYG0ugkfmj9FE5D
	rgFVUpKIkR31uKFO96jPMxjur4nnSh4d7tP9VHbJpKntvFFWLfOqqhDCfXbjBZ6S3PjntkFY+FuuF
	g5zDieLX6eGV1MD693HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLTcB-0000000Ej1A-0z4L;
	Sun, 23 Jun 2024 20:15:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLTc6-0000000Ej0F-0F48
	for linux-rockchip@bombadil.infradead.org;
	Sun, 23 Jun 2024 20:15:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YWy1XciBxIQD8r/dOA5bM+iih2ONEctXkkEpFFDBpno=; b=oJUaGdH0JKKyx/zp4IQTg4u8DY
	MI6IHteJVDgtzwe1QLHlFCFb+q4EL9hDTZr/wSwPvS0zwg6pi8pG0W4WJ9qqHt4TCVEtS9itptHIb
	usrlQf9R4APQZVvPGO4HLGoLLRm961+j/0I8DTOb/OG2cmwkpN2F8XA2cUNaIIqFd9IzyAqqxLN6s
	4tos4mjRreweIu5sVzAajeDVfczcTlUYWeg6wjECeEEJNyDi5su1mZdz+UjPULteB3rG2CfiNjUWT
	G8GgBvEceXVRjyo0ubSbjM/BV6DfMe21Ordt1OWUxMsd/V7rdR/b+e4q8Lk9zY61xtGzFi5m1f9wx
	BebZsUgA==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLTc0-00000009NUU-10t0
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 20:15:00 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45NKEMod007026;
	Mon, 24 Jun 2024 05:14:23 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 3/3] arm64: dts: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Mon, 24 Jun 2024 05:14:15 +0900
Message-ID: <20240623201415.3205-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623201415.3205-1-naoki@radxa.com>
References: <20240623201415.3205-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_211456_773049_42494470 
X-CRM114-Status: GOOD (  11.76  )
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

Changes in v3:
- change mmc aliases order, mmc0 is on-board eMMC, mmc1 is microSD
Changes in v2:
- add change for Makefile to build rk3328-rock-pi-e-v3.dtb
- minor reword in commit message
---
 arch/arm64/boot/dts/rockchip/Makefile             |  1 +
 .../boot/dts/rockchip/rk3328-rock-pi-e-v3.dts     | 15 +++++++++++++++
 2 files changed, 16 insertions(+)
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
index 000000000000..fe66c0ade257
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3328-rock-pi-e-base.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi E v3.0";
+	compatible = "radxa,rockpi-e-v3", "rockchip,rk3328";
+
+	aliases {
+		mmc0 = &emmc;
+		mmc1 = &sdmmc;
+	};
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
