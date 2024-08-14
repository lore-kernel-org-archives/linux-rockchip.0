Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9A56C52D7B
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 15:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDJ7bH3BiuOGl2Whn66ngnRF+CzSXWrIlXsKlWSPHeg=; b=OJnv/ptXQGh0nf
	V8eg3UepjsllNO9+VeXPGLU1QQI+XQD3aEoAiYMn5LapVlM/F1MPwqMlnJFSntqFRdBsPGwYryOtI
	OkQQqFwCLXuL+SS6HoNbeuxowtv93oa+Age0Nba3omw6oCRHZ0HBtL4/sl4NHxmhMXsenlm94DrTk
	fVcuMVT3/kPtRFL/yH9jhAWGg4FVwyrMjfewcF/hVdg/El1YIB+3vyHRILVrtOHAy2HPgQDjy1i13
	gdq7tAy6D8jSge5vYFGid0oM9LpArXM0yY3uIMi/VKL5X5YeasJphzZXqL9LX7RFgGwmRg3CSEW1o
	AMTvNO8i9raOBJAz90WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seGMb-00000007Z4I-0sn0;
	Wed, 14 Aug 2024 15:56:41 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seGJp-00000007YL1-0FzY;
	Wed, 14 Aug 2024 15:53:51 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id E12A14127B;
	Wed, 14 Aug 2024 17:53:47 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n0HJBvDps1Nf; Wed, 14 Aug 2024 17:53:46 +0200 (CEST)
From: Yao Zi <ziyao@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1723650826; bh=cIqSVAB+/UhZd//K3owngicdgqTbJSSxHcKfNZh6dnY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=RffHno+hhvoUiLph2V39hy+3mh0S/fXonWQ8lps1tUFQGCJhT7IDtCQG/kAazPbNy
	 JQ2o8YKp0ykY0DXTP9vIkakjbKpbXXbZFqGXl7QzUhmNft/j2/6PIVlV2F3ucM4qzl
	 w7rK6ya/UjNUrsjr+rXy/LLnOinTfxt2XOfJOnrfXCZOxXkxJhy58Yjdx05iJnfq/I
	 ma0602dii1mv4zKJRw4+kdrJ8AMgn/y3RBrBFQpTxvCXDTYXhX+kJzUA+NTXRyAWBq
	 5rPKguP1k1lsEjofVKlcXP/3/E1SmoApTfC6/D5szk4/uyFcV+5gJi1HGIALgZIHzw
	 X+vEcB859KgKw==
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
Subject: [PATCH v3 4/4] arm64: dts: rockchip: Add Radxa e20c board
Date: Wed, 14 Aug 2024 15:50:14 +0000
Message-ID: <20240814155014.18097-5-ziyao@disroot.org>
In-Reply-To: <20240814155014.18097-1-ziyao@disroot.org>
References: <20240814155014.18097-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_085349_270745_8C436D0A 
X-CRM114-Status: GOOD (  12.84  )
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
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
