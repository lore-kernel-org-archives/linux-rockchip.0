Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F338C48BDF
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 18:13:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 12A11613ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 18:13:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 12A11613ED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQiZj712xoOPRXcnQGQqK1k+VdwsP+KcYHvWWcFiTTE=; b=CS9Jr1Soxzh+ur
	h+28Z7TiBJAZh46kSkr3Z9e6TUDutdmNmVRHhijsju/JAkir+t/9152UkNVteZk8wNkwWhsAnXnKw
	KhCp3eAUYPpxt/h9WAXE43aIh7ePV10TLlF/OofMma2LgqsHm1N5LmtPBaTec5BEgs86943MFZoBw
	fy9LM9ZAYFwCNm4kgSMT2gbO0hExvu0MN1sUfKRBsFCKbrTnm477HX69STv8hVItKXCGWwEvl9TQ5
	jPZc6mQ4kEolXk5hIKwqzMfpmWArS3K3LaHFVzIauqT5e65KCvBSbR40f2A+Ih8Q3zcY9cN2Jxhf2
	Ktk/AWOehvuwvQhEFCGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luIzv-00F87v-JF; Fri, 18 Jun 2021 18:13:43 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luIzb-00F7yx-E4; Fri, 18 Jun 2021 18:13:24 +0000
Received: by mail-wr1-x433.google.com with SMTP id e22so8114153wrc.1;
 Fri, 18 Jun 2021 11:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kn98Ll5NtpVpipbgUQvn4hSMRQNojtQUAei8tOm3g58=;
 b=NIX0oLDftDi6biHsi+LL0gntF8jwaNG+amkxSzoGyPBQI7xlAmcR3NfrZ54USdFQP4
 q1QegsItPIubfkqLRpRe+0HpO9mszszJ9Br7N+0RkFmDUCcgKnGiRMrq/QfCHZlMIAzj
 AAWcjADKNmqy6kcwwvqI2Km/yTMcdaRIkrxiBw+VwKZe9Sf7Q7D87H7ddAr195ElfWQH
 k3OgTjecka+toNHRxZXYD5NQ+re7SluV3OXE6xGbKKRkktxz8qRoaYIXLVXMxAYYcpcd
 +LrCFT8+nLsvOdnXT3gSrACevK8+AbHb13URNoQaCmz8sf0VHBeR6gnUPWS0YiY36qmH
 8qNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kn98Ll5NtpVpipbgUQvn4hSMRQNojtQUAei8tOm3g58=;
 b=ulInyqpyIFm3GdYTvkxVJg2yWMESaqV2zpTpbdD3lloX2o2Pe5pRD3izOYJhId3L+p
 0bEYatooqSLn7q8EDSBXh90L47AUYjy+1XcZt/hQ+0oXFVXX0PhEDFAGHvEteWfEIjqF
 +MMdbx2UYxLThzfs9KHEsVio8IqfxfuWjZz00EjX1evbiNuu6JOPs7VkeGSNJca01zKf
 OBWUGEL51oNt5Mna0zH1iCSDP9gyb/eRYt0n2o+BstmkFgFNk6MJSTCD1bMo9IKI3n1M
 J0I58l2kZc5eM0/yM10h+e1qwQlO5hT2fXE2OSUIRYpv0ZuDXjHuu28nhViTLjuyoGbC
 SNtA==
X-Gm-Message-State: AOAM5325w1a0KWtKKrhhU8/3EMTjkQHbeD8tHovATmQwvvW3uBDzfqYW
 AcKjGaFfNoL+6grBkY2qQw==
X-Google-Smtp-Source: ABdhPJz8Y2F3LWyjxmZDk8cpgSz9/LhbtqqL7qNCHFkVV4MLCnbXc5uPbiQj0rJ2h/sY6FuHztbgYA==
X-Received: by 2002:adf:e502:: with SMTP id j2mr7001313wrm.275.1624040001599; 
 Fri, 18 Jun 2021 11:13:21 -0700 (PDT)
Received: from localhost.localdomain (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id l10sm9306782wrv.82.2021.06.18.11.13.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Jun 2021 11:13:21 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 3/5] arm64: dts: rockchip: Add RK3399 ROCK Pi 4B+ board
Date: Fri, 18 Jun 2021 20:12:54 +0200
Message-Id: <20210618181256.27992-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210618181256.27992-1-knaerzche@gmail.com>
References: <20210618181256.27992-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_111323_517365_E75A7CF8 
X-CRM114-Status: GOOD (  15.84  )
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

ROCK Pi 4B+ board is the successor of ROCK Pi 4B board.

Differences to the original version are
- has RK3399 OP1 SoC revision
- has eMMC (16 or 32 GB) soldered on board (no changes required,
  since it is enabled in rk3399-rock-pi-4.dtsi)
- dev boards have SPI flash soldered, but as per manufacturer response,
  this won't be the case for mass production boards

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3399-rock-pi-4b-plus.dts   | 47 +++++++++++++++++++
 2 files changed, 48 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index dbd7d37950f1..e867e5889d44 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -45,6 +45,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4b.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4b-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
new file mode 100644
index 000000000000..dfad13d2ab24
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
@@ -0,0 +1,47 @@
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
+	model = "Radxa ROCK Pi 4B+";
+	compatible = "radxa,rockpi4b-plus", "radxa,rockpi4", "rockchip,rk3399";
+
+	aliases {
+		mmc2 = &sdio0;
+	};
+};
+
+&sdio0 {
+	status = "okay";
+
+	brcmf: wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_l>;
+	};
+};
+
+&uart0 {
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk808 1>;
+		clock-names = "ext_clock";
+		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+	};
+};
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
