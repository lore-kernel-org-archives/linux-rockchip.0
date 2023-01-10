Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72A78C54EBE
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 13:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5EVagipIGUQtkjR8Ujs+I3SRNnbDqKrAwaUVto/JEIc=; b=wL6aP6IK2JQAPg
	wMeWEtntbXh3SyNHJfjk27CUT15+0JMVu/B7j7P+yGSzbIh9hkRDmvuRzU/0YjfxwURTB4QPg6Fbr
	z6L/pxk0dybHLOO7stK2MwVnP+TZ162GMJAflcKO4JEOMPFRdI8k7jk8g6ZSApAsQjYDquginXrtO
	EaJavB1wCPVJ5LVl0Jhztdx+epIBndEPWM0Fd/Ne7puWB/wZ51FRlFr3YG92BGjkRCZ+r30L0ov5z
	bkU/Ly/xwYZChFU5t826V9JV9EK1E3oklMSYHRUGczTWOMo0pwIOpOCaGoZY3lxZ9OkucQZr1CNwz
	gUmZO+A4NjqTB20Nilww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFEyk-00771N-Ih; Tue, 10 Jan 2023 13:47:50 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFEyW-0076wV-3N
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 13:47:37 +0000
Received: by mail-pg1-x534.google.com with SMTP id e10so8240925pgc.9
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 05:47:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sapLDHQ/MX6BiGPSkSOeo78dMp+HFK8St+B4rAG5HPk=;
        b=vJ79zekMMVT4CE5xTl2AAshZA4WxKLI0A2tgllZSygFeqiTlbNw3J0zQMLeHo+fuVm
         oKtMvo7NLr+I+Sk7b3E5aO+VFeZcwgiwgPJhD9ErPTyxMfJCLmWgXz/08XY0iBqtPk7h
         rixpENn1/gCeKEaeeGAWq7uJrQB0uxYhZlf8uLrCoUF4P49X5ggUPca/tMXxjAapew2P
         u20zUlS987YDZO2A/onjB/9HslTWwVxfB7egv9v2BEvcKMbBGwZzvKlh9B0WQcxcliwi
         gQH5nnIxXcrIZv6T4S3tTVD/w2Ps66p9XNguPW5oCKNrv62bEFwnTppKtJy5fVplKV92
         PXWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sapLDHQ/MX6BiGPSkSOeo78dMp+HFK8St+B4rAG5HPk=;
        b=Kx7Ec2CTW3uOYUdFQkoSD1ciBcuiOnyjPvZhhzl4Thn08r+ReLFutdJHsOMRm1R5Ac
         0aH1AtgCH5Ro4RJY67szxTSpScnF4mwdJheB7mUBfPfeCwhV7y3UITiCHB6DA8kwU3z5
         bOwpawenlgI8YPLtShZlZL6heWtpJt/6UgmP4YlAg8PePCJIKNLzVCn1EeybMNDe2mSF
         X98kU1W1r8MIaNDkREjPP45SqQ6tqMyMLwbyuqicCHoDXghMxvjEK2hNFkrJ8brhh5Nz
         wimKmxqckNU+NFMebAId0E4BVjTCfd7VVFZb6MPZodor1gIURYInmad5f3Aub5lAIETJ
         vrUw==
X-Gm-Message-State: AFqh2kqJT254oCCz4GtGyIUMqeReU5LtnhXRBuGW7W73pZ4VOC+tfXP0
	bSkb3hkQqqCHYHJavNgKDeYlyg==
X-Google-Smtp-Source: AMrXdXtCea+6eZ+uKc7ZT0gY8hA0d4bl6uqeDBBSXH0NpobynJWCtEln/YVIeu6rsnNK6g0LNHrMvA==
X-Received: by 2002:a05:6a00:4212:b0:583:fb14:ddc1 with SMTP id cd18-20020a056a00421200b00583fb14ddc1mr15035537pfb.17.1673358454373;
        Tue, 10 Jan 2023 05:47:34 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:d32:8399:ca6f:14d7])
        by smtp.gmail.com with ESMTPSA id y12-20020a62640c000000b005819313269csm8077426pfb.124.2023.01.10.05.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 05:47:34 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 3/3] arm64: dts: rockchip: rk3588: Add Edgeble Neu6 Model A IO
Date: Tue, 10 Jan 2023 19:16:58 +0530
Message-Id: <20230110134658.820691-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110134658.820691-1-jagan@edgeble.ai>
References: <20230110134658.820691-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_054736_162164_69118D4B 
X-CRM114-Status: GOOD (  15.74  )
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

Neural Compute Module 6(Neu6) IO board is an industrial form factor
ready-to-use IO board from Edgeble AI.

IO board offers plenty of peripherals and connectivity options and
this patch enables basic eMMC and UART which is enough to successfully
boot Linux.

Neu6 needs to mount on top of this IO board in order to create a
complete Edgeble Neural Compute Module 6(Neu6) IO platform.

Add support for Edgeble Neu6 Model A IO Board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Note: Patches on top of
https://www.spinics.net/lists/kernel/msg4644731.html

 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dts  | 27 +++++++++++++++++++
 2 files changed, 28 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 2de9a727183e..ff5861530dd7 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -83,6 +83,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-e25.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts
new file mode 100644
index 000000000000..b51543892078
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/dts-v1/;
+#include "rk3588.dtsi"
+#include "rk3588-edgeble-neu6a.dtsi"
+
+/ {
+	model = "Edgeble Neu6A IO Board";
+	compatible = "edgeble,neural-compute-module-6a-io",
+		     "edgeble,neural-compute-module-6a", "rockchip,rk3588";
+
+	aliases {
+		serial2 = &uart2;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
