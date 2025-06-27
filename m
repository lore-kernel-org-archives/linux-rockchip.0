Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB39AC7EE31
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jun 2025 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4LFk6rwXor7VODYWKI6hkpJQyf3EJ8qG5TB2Xj43u90=; b=1HoZfVfPLxtXAn
	/18+iQfthc3RMTPybQxouKS+S89TB+BKEkHmbE+Off/Mqmr/ixoNZbf9ZUpelzycsQgqxB/mm5Tv8
	RQPFNYFhMytGrthHBKcYNxiXL9qck06jP0/lHm91Uktv2mumicA39z9SPj+hpxd1nguh2GhV9CMd5
	qAoXj8Sg5qlPvrZuuCUsw/jxtINx/duxouhrYHoiSQdGzEXIPwJl3SjzfoyurgKVRuhkPm812NPC4
	FH+3qD0btf8LpUa0sf+OaFGjBhyXovzRLxbZzuiAnIlAdOOWpvddT4xoqkQ3NszeYGTOyr/eWQQTF
	JCH3KGtVn2LhZ4y4Vg5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV6zJ-0000000ER2M-16my;
	Fri, 27 Jun 2025 11:11:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV6ir-0000000EMxw-0QDT
	for linux-rockchip@bombadil.infradead.org;
	Fri, 27 Jun 2025 10:54:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=2d+t0sjYkGVxJngGv1bxh+pmY+L1S9m5/92l2aB7BIQ=; b=iGcG5q47HPbRJEnTlfipV/vvMN
	qyyIqGU5erh2sb7gPLK9HHisAUMqSK8O7zN2BgZih4dwUzXw0b2MQlxsOJdhtCIeKUlQqFz6OgNsJ
	vYdDUWbTNVt9HamgVfg8H5zpJ+UGJYGX5CST097fzP1itLGauhEwQzqMtrBdGG45zJLUr0QGMrkR1
	BD7rQ1aZCLHG0bxO46e3QQJSkFsJE61t0egi8U2DECmn8lBe9WxP3tSbNmCNpQTnHrPZVq7mqXU3v
	P34cqvkLg8k6YO6al4PPydiP/RCJ+y8oTN7z/pivQWnK+T+iKKzA1cWXX4hHtOiroLgpZwlzVtNIl
	zjMXn4Cg==;
Received: from smtp-8fa9.mail.infomaniak.ch ([83.166.143.169])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV6io-00000006J79-0mrA
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Jun 2025 10:54:20 +0000
Received: from smtp-4-0001.mail.infomaniak.ch (smtp-4-0001.mail.infomaniak.ch [10.7.10.108])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4bTC9N0HHJzZJB;
	Fri, 27 Jun 2025 12:54:16 +0200 (CEST)
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4bTC9L6XsKzvrY;
	Fri, 27 Jun 2025 12:54:14 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Fri, 27 Jun 2025 12:53:55 +0200
Subject: [PATCH v4 3/5] arm64: dts: rockchip: add header for RK8XX PMIC
 constants
MIME-Version: 1.0
Message-Id: <20250627-rk8xx-rst-fun-v4-3-ce05d041b45f@cherry.de>
References: <20250627-rk8xx-rst-fun-v4-0-ce05d041b45f@cherry.de>
In-Reply-To: <20250627-rk8xx-rst-fun-v4-0-ce05d041b45f@cherry.de>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_115418_400107_5288BEB2 
X-CRM114-Status: UNSURE (   9.00  )
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
Cc: Daniel Semkowicz <dse@thaumatec.com>, devicetree@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Quentin Schulz <quentin.schulz@cherry.de>

To make it easier to read the device tree, let's add constants for the
rockchip,reset-mode property values that are currently only applicable
to RK806 PMIC.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk8xx.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk8xx.h b/arch/arm64/boot/dts/rockchip/rk8xx.h
new file mode 100644
index 0000000000000000000000000000000000000000..a6fbef71c06493c35b0f3697476167aaafa24f30
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk8xx.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: (GPL-2.0-or-later OR MIT) */
+/*
+ * Device Tree defines for Rockchip RK8xx PMICs
+ *
+ * Copyright 2025 Cherry Embedded Solutions GmbH
+ *
+ * Author: Quentin Schulz <quentin.schulz@cherry.de>
+ */
+
+#ifndef _DT_MFD_ROCKCHIP_RK8XX_H
+#define _DT_MFD_ROCKCHIP_RK8XX_H
+
+/* For use with rockchip,reset-mode property */
+#define RK806_RESTART		0
+#define RK806_RESET		1
+#define RK806_RESET_NOTIFY	2
+
+#endif

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
