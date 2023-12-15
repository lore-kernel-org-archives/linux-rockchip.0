Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC74DC41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 13:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SCzQ5U4w5LvY0/g0wICMeJHDqigM2hHGTSrT3j3yMDQ=; b=YRvdfLmV/nPDeW
	kzV1mi1VplSOObkjqU2/erlUb429/RQNg8ys2ILYdpEhBoYRFCrJeyIBsISExQhnkjucu1ir8RGzx
	YCpe657EM9b4Pn/GZ59IZ5lQk1Q0Rjn0w+oQ6yJpNid6hon538GPL2G9OB/HlFbFmDMuyEbO+u9ak
	SK5mpP+g6n5XmwRNOOEIO1vc9nYOQHd7qtai6PJD8YAO6Cz8/1pB1/vCAIfcRRz+ONwwto4uAS3+z
	eyyCXvtCr7kDNqHxbZPfZrM9zLW+qtem/7OY7aoGZ58hTci35aVbqP2WyhpREspiBxx4qGVHVjsRI
	xU4AV8PTp0EjQkS9bngw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE8fs-003Rwr-0o;
	Fri, 15 Dec 2023 13:56:20 +0000
Received: from forward501a.mail.yandex.net ([2a02:6b8:c0e:500:1:45:d181:d501])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE8fk-003RrO-2C;
	Fri, 15 Dec 2023 13:56:14 +0000
Received: from mail-nwsmtp-smtp-production-main-17.iva.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-17.iva.yp-c.yandex.net [IPv6:2a02:6b8:c0c:96a1:0:640:9109:0])
	by forward501a.mail.yandex.net (Yandex) with ESMTP id A4AE46173B;
	Fri, 15 Dec 2023 16:56:07 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-17.iva.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id VtlX2gDOoGk0-5YAYSIs1;
	Fri, 15 Dec 2023 16:56:06 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1702648566; bh=qYb5Ttl2BmZknzLQ7LVuYyWA70iNupQuE0s2VFIsLCU=;
	h=Message-ID:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=WMlai898TK7If/TGhvbpDx+JcGAI4X0/PR/r/hCSCS1zTNLP1qN8Hu9Gndxk8Dz58
	 dV97EFmNU6TLin8JryskzFbryjGtdwNYjL9g8FWKevghiEwxrw/qJmPl47rc3MiAt/
	 An2dHPUX5p+WS6tvRH4GXg/dKAechI4S3r3qdXzw=
Authentication-Results: mail-nwsmtp-smtp-production-main-17.iva.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: efectn@6tel.net
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jonas@kwiboo.se,
	Muhammed Efe Cetin <efectn@protonmail.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add support for NanoPi R6C
Date: Fri, 15 Dec 2023 16:55:23 +0300
Message-ID: <923b4d9bb60fecd080e7c348ec0d4630392eb091.1702647349.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1702647349.git.efectn@protonmail.com>
References: <cover.1702647349.git.efectn@protonmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_055612_899433_1729D057 
X-CRM114-Status: GOOD (  12.64  )
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

From: Muhammed Efe Cetin <efectn@protonmail.com>

NanoPi R6C is mostly same as R6S variant. It has M2 port instead of a
NIC port and different led labeling.

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile              |  3 ++-
 .../arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts | 14 ++++++++++++++
 2 files changed, 16 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index ed2583dcd..261505081 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -114,4 +114,5 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-indiedroid-nova.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-khadas-edge2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6s.dtb
\ No newline at end of file
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6s.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6c.dtb
\ No newline at end of file
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts
new file mode 100644
index 000000000..8031098c3
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3588s-nanopi-r6s.dts"
+
+/ {
+	model = "FriendlyElec NanoPi R6C";
+	compatible = "friendlyelec,nanopi-r6c", "rockchip,rk3588s";
+};
+
+&lan2_led {
+	label = "user_led";
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
