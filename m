Return-Path: <SRS0=O9sg=LL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33DF0C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jun 2021 04:50:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E583C6100A
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jun 2021 04:50:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E583C6100A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F0sV2PjwtK+nf6NReS6tAuVz0r0i8iwdCCLHA2GuJ5Y=; b=Il3ajpLO3WTwiH
	Zj9BT9vCPAEg9nSXjwpdIkvysrzBM2A/645XSoJsJce68AuKbUN+UScCZG4AUouK8IOcsfooRa0Ku
	K0qAIItlVAgEsztUhvBFTmj1d7mq29gfz4wWEbTDFCPsbSbT39hSBccTjfW78j0sLS4uQXrP0AoiG
	ZjJfEN0TwSSdPyW1IFAf5JzvCjv+xlTG0/B/h0nCbqR4tcWbIO+ZTZsWOuEo5qjl6ULwswX5ZnEce
	ezD0rejHvVibT6ahjfz+1jF8H82XZzMs3VQ6XYEu3/hSXXkypyiq5l/3oachHoZDwqhcB76GVfX3n
	hLuHbhSGvVRGagaTLHxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltjz4-008n1V-Bw; Thu, 17 Jun 2021 04:50:30 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltjyd-008msA-Vs; Thu, 17 Jun 2021 04:50:08 +0000
Received: by mail-wr1-x42b.google.com with SMTP id e22so1497049wrc.1;
 Wed, 16 Jun 2021 21:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1H0pRK+p9SqfiPEkg/fuHEcESDP6rKm5XaeGluOXB44=;
 b=rpQs4ZXeo+Yv7RZBLrTk8MPAbfNG6uJkL0o0C/VYsmaGbu+xJYA42CPhNls34kCK5a
 V1t6TKoFIaN9XXPfgonRV5RH+OuJX8Lh/j/uUCgWdfJ3vKu6cXaAiXZNZhXzHBrekgbX
 ZgxsoQAjfgwQ9htKXLkCYLpALrLFyXczcowzPREIfZo4so33dWFjQpyfOSH0roTcdvS/
 0WByXlgJUcQUjaDVEf7AajWtPkkEN/UjI2FX8Lo8qU6JVmJf49VGdnIeSAVs/hRvlK0/
 Id+Q/mbDe+KD9amsbH/VpFyzd/S8UZDkEaAJ9duhq138GCEqeREvyyFwiGJaGZTQ9Oxo
 GTkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1H0pRK+p9SqfiPEkg/fuHEcESDP6rKm5XaeGluOXB44=;
 b=ot51rLHJ1NJvtpHRQzdO9QEvjLtHzIvWnwo8mrzljODrqDkyWNHo4tOUMXWO9R/f/r
 vfECMvpkmLW2CUnNMOLtpwff9ARRgNyeDN7D78WsrPgQ49v0fbTlhRc6MhhJM9IQ9Q+v
 T57IzTX8RJM/9Gs0H/nUFmGj9N3KRwCilr1A7yhhqIP/8kUJEMcvF41hrUvRdYUqXIP/
 MkB6IapnRzSlxVELE+uiQCZxcm5x6CRNkvbOnPT+5Aio2qufVzzay7WR/UKxW8I//uDu
 Uhaxb57QSZe8woZVBwuwgluJBsxJ79tZYTqbAUoNkaGAWBoM/iVTrxlFnCMOoYDFG8hs
 hgMw==
X-Gm-Message-State: AOAM531q4LAuBZZdFwTOoHBAtbP7poNUtCpBljSvGMZhmp/fOk14o/x4
 NlZvn0aikK1gzv/xT/7QqA==
X-Google-Smtp-Source: ABdhPJyK5VW6f5WGABPtt+CT0g9pGSVIMgGRmmCBlmt4nt0PrKA7657C9oY+PUkydL3HprmgUjJ1eQ==
X-Received: by 2002:a5d:4689:: with SMTP id u9mr3155825wrq.31.1623905401488;
 Wed, 16 Jun 2021 21:50:01 -0700 (PDT)
Received: from localhost.localdomain (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id n13sm4587460wrg.75.2021.06.16.21.50.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 21:50:01 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: Add RK3399 Rock Pi 4a plus board
Date: Thu, 17 Jun 2021 06:49:54 +0200
Message-Id: <20210617044955.598994-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210617044955.598994-1-knaerzche@gmail.com>
References: <20210617044955.598994-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_215004_062336_0F645606 
X-CRM114-Status: GOOD (  15.93  )
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

Rock Pi 4a plus board is the successor of Rock Pi 4a board.

Differences to the original version are
- has RK3399 OP1 SoC revision
- has eMMC (16 or 32 GB) soldered on board (no changes required,
  since it is enabled in rk3399-rock-pi-4.dtsi)
- dev boards have SPI flash soldered, but as per manufacturer response,
  this won't be the case for mass production boards

I didn't add yet another compatible, since the small set of differences
are captured by the device tree.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile              |  1 +
 .../boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts   | 14 ++++++++++++++
 2 files changed, 15 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index c3e00c0e2db7..dbd7d37950f1 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -43,6 +43,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts
new file mode 100644
index 000000000000..2deaab7f9307
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Akash Gajjar <Akash_Gajjar@mentor.com>
+ * Copyright (c) 2019 Pragnesh Patel <Pragnesh_Patel@mentor.com>
+ */
+
+/dts-v1/;
+#include "rk3399-rock-pi-4.dtsi"
+#include "rk3399-op1-opp.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi 4A plus";
+	compatible = "radxa,rockpi4a", "radxa,rockpi4", "rockchip,rk3399";
+};
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
