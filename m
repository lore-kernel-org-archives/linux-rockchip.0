Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BBE4C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Dec 2023 11:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXS6tFKzWLNpthscE5R+YgbYkNi3odBZA6si51sqkPI=; b=YSxu6TGZZZAJaT
	p7joMndzy9KqGuN5ZMSKgSTkNKtD9p1CCSOy68YGQDVrMm+o9pW3VQBk6g5mrN2yQbqW2LqZCKvUm
	JJa8lZ4E6wM3206SN3l3drETH3YKFZDY+q3tZm3HT4fEs3awyPC8La/UErokH3POQvTiL0KddOWsi
	IOPS/ntZxq4gCKOjL+VdSZuFeI3LmGBDsHqtUUkZWKux+HuGbkL9l0/RCRKFFRGtS1t0W8oAkJfSY
	Mw3P2UoL1rYbGL91Miwr0hmdzDkPQACxJpFz2IYluPe/TcPrrNxSVyM9/7lTW2VPe9vRG2Q6w7qjw
	zmRgSTM1EyoTAiK2sixg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJXMZ-002cEf-14;
	Sat, 30 Dec 2023 11:18:43 +0000
Received: from forward501c.mail.yandex.net ([178.154.239.209])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJXMN-002c34-1s;
	Sat, 30 Dec 2023 11:18:33 +0000
Received: from mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net [IPv6:2a02:6b8:c12:12ac:0:640:b64e:0])
	by forward501c.mail.yandex.net (Yandex) with ESMTP id 40E7360E6D;
	Sat, 30 Dec 2023 14:18:28 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id 3IVUxO8g5Ko0-5KxRwi7a;
	Sat, 30 Dec 2023 14:18:27 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1703935107; bh=n47Gea6rGFU10OYrbHw+VPcV6QRBypXud2PYckOKEwc=;
	h=Message-ID:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=W8zgIgCtuNeM5x2ACniLjtz5qpWGIoyAWFaKAoiHL4ZQSorjY2WmZqsUwWX3nIbz2
	 7WGgZ4V4rsE5bKYeW752PGYcQtDVlbkHF57zGNwogBabWnGFtk+pqAKWWIkbxCyluL
	 218FQG1R4C3GO3sNmIyWmIZLxzpz5IXzEn71UH/I=
Authentication-Results: mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net; dkim=pass header.i=@6tel.net
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
	inindev@gmail.com,
	Muhammed Efe Cetin <efectn@protonmail.com>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Add support for NanoPi R6C
Date: Sat, 30 Dec 2023 14:18:01 +0300
Message-ID: <0f9ee0baa6c9de4d54dd6d13957ca15a63ec934f.1703934548.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1703934548.git.efectn@protonmail.com>
References: <cover.1703934548.git.efectn@protonmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_031831_800467_5CEEA000 
X-CRM114-Status: GOOD (  12.73  )
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
 arch/arm64/boot/dts/rockchip/Makefile              |  1 +
 .../arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts | 14 ++++++++++++++
 2 files changed, 15 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 634b9be47..f2d13482e 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -115,3 +115,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-khadas-edge2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6s.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6c.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts
new file mode 100644
index 000000000..497bbb570
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
+	compatible = "friendlyarm,nanopi-r6c", "rockchip,rk3588s";
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
