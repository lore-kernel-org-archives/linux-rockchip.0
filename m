Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06581C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Aug 2024 14:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZyxUEUxvdqTqPsc4oEKebQLnFR+9XYwxm+FR4SoeVEM=; b=rM3ufpcgVbgqsE
	RiwfApEloudyM4BzXlP27NpmXGKFfOHMU8Zr4EVhfHQhsyciRD3bT+a4Zw3//T6we43+ArjmD2XJM
	k3ApZqfxt6EuirFYZcNlJIsHCoc9np9Bcr+Sr0ixLeBK0QWfC2pcobQh+Jv9u2zCVzalW5TsQRT2r
	dd9HVna9gl3xerWszr77P2Js5xBRcGWQT2rjyIEdkJauws2S5FfVU4ippAKhOV04pgEGXAAAk0ytR
	m1n+78ZfqdvA49TDEAM07/GpRSt/ICpmzAGB5oA0s1XCjPEa8735dzpoOr3QLj8FLaSlKagoj5aNL
	hzFWhvyG0DIAb5JkCKtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sd9K9-0000000Fehv-1jk7;
	Sun, 11 Aug 2024 14:13:33 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sd9JX-0000000FedB-1i5C;
	Sun, 11 Aug 2024 14:12:57 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 268D8412A8;
	Sun, 11 Aug 2024 16:12:54 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6SPoyhgfIyU9; Sun, 11 Aug 2024 16:12:53 +0200 (CEST)
From: Yao Zi <ziyao@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1723385573; bh=FsXOnoz9SO31Lxbm93ffIh76rgL3IIymEIgRmwk0q9w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=SyK7hWfKeZX62wTLr9Ds9evoTE8/l8Xxo/2ryCnia2cGIGugVRdobogwtk/8AKqB5
	 zJvzHluFtjnE421hiIl7j1nwMulG9xufEMj5iEtHJ+uL9lryNeb5ELBSSylVXYNbu5
	 j4VvpUE73lzowqYSWeQ7rMjsv9amQ5pavJbg0TDhBu8NyggB7A+swkD02qTtEgZwwB
	 jjR0xDRFIj02nnk1a7IqhYFDejoaEdW252izuqCYiJztlejmF6I6iw7sA7WemrXCVL
	 lP4TdTdEG/2jHTk5WWdK/LF3jW/rW/qelIN313+iuNYjiHaKCsQ2437b09++RpnJSi
	 gHCB62X8O6g8w==
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Ondrej Jirman <megi@xff.cz>
Cc: Celeste Liu <CoelacanthusHex@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH v2 4/4] arm64: dts: rockchip: Add Radxa e20c board
Date: Sun, 11 Aug 2024 14:11:59 +0000
Message-ID: <20240811141159.65505-1-ziyao@disroot.org>
In-Reply-To: <20240811140725.64866-1-ziyao@disroot.org>
References: <20240811140725.64866-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240811_071255_894543_067818A4 
X-CRM114-Status: GOOD (  12.83  )
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

Add board-level device tree for Radxa e20c board[1]. This basic
implementation supports boot into a kernel with only UART console.
Other features will be added later.

[1]: https://docs.radxa.com/en/e/e20c

Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 22 +++++++++++++++++++
 2 files changed, 23 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index fda1b980eb4b..ecdd767d0323 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -74,6 +74,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3528-radxa-e20c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg-arc-d.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg-arc-s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353p.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
new file mode 100644
index 000000000000..d2cdb63d4a9d
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (c) 2020 Rockchip Electronics Co., Ltd
+ * Copyright (c) 2024 Radxa Limited
+ * Copyright (c) 2024 Yao Zi <ziyao@disroot.org>
+ */
+
+/dts-v1/;
+#include "rk3528.dtsi"
+
+/ {
+	model = "Radxa E20C";
+	compatible = "radxa,e20c", "rockchip,rk3528";
+
+	chosen {
+		stdout-path = "serial0:1500000n8";
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
