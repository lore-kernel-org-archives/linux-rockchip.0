Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77D07C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 07:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6sYJxppl7hGgA1dz0uiqwRTHRkewPHqcL9tKBhqIca0=; b=Lp9yRDJnTcfFh3
	IAT6bErYCFiUpyohgocfTaRLco7QHlFRCYF6vFjcN9b86Tj53mY/m95yaPfYehXJU+8bLCaaMwDer
	5wG9LtyoZHZy69NF4UZpnv8DdaEIz7qC4hYAjc3lNMl8fTXVNuGTAJq/4YV7Zp58Tr7dTfDqN5UzP
	MscIPoIik/wKsXmazhPPazvDqGH5NmCgoXUFhfbi55aGVFcLllkDA6avzpJNMqiJ9vQg/R1dI76YI
	LZ+ehmlANW92jgjPvSSGE5xJhd5d/lv7yfOXAwgxuZbEBYtfVJXeRsXBTiPFlWLPc26A9AqSj6Odv
	GkkXCz6OPx3n+92hT8UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLI3O-0000000DZOw-1d2Q;
	Sun, 23 Jun 2024 07:54:26 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLI3M-0000000DZOj-1ODS
	for linux-rockchip@bombadil.infradead.org;
	Sun, 23 Jun 2024 07:54:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=F4hxa0iHr8GYIplHiZiXW5fFKMmoNTE/7oU0ShoMXns=; b=N6eFsXKhVHjD1ACLb1i5zgPCmE
	8e6sxcUjVQgXXlXS5BylLoQIT+iDlSTeSqSU6R/UNMQe92B6ZqxI0ujSN59nTuyF++ylPTlSdBH5s
	6hA4F0UR/kzJqWDqWkZp2xGDpfHnJ6Ritg5tghReRJ42zhKfWwHpf8N4GPe/ueOzWTueFQuQqNsWQ
	E18MaDZ/U9r0RIN4TQfSWzWh9QT5c9vFeVEWQLRigra0IPWhSXOWVu5as6tda6QkLCly1v13nx4Dh
	8pHwnmXgQFemrfxqbMfg8ibM5FhybWUi7guli8FWtntSfGZm2KrdQe84M61XU6aGPViqX3mlpgIYv
	qtwfjOHw==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLI3F-00000008wUI-1mJ3
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 07:54:22 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45N7rSgi005540;
	Sun, 23 Jun 2024 16:53:29 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: add dts for Radxa ROCK Pi E v3.0
Date: Sun, 23 Jun 2024 16:53:18 +0900
Message-ID: <20240623075318.80492-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_085418_025308_4E3125D7 
X-CRM114-Status: UNSURE (   9.64  )
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

Radxa ROCK Pi E v3.0 has DDR4 SDRAM instead of DDR3 SDRAM.

for Linux, this change doesn't make any difference from a device tree
POV. but, for bootloader (U-Boot TPL), it makes a difference.

bootloader needs a separeted dts for v3, so I add new dts for it.
dtb can be shared between v3 and prior, so I don't touch Makefile.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
new file mode 100644
index 000000000000..956345274c12
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
@@ -0,0 +1,3 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+#include "rk3328-rock-pi-e.dts"
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
