Return-Path: <SRS0=p67a=ND=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C327AC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 09:49:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 78A7360FBF
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 09:49:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 78A7360FBF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8GfpVwVv/NxFSFreVTmI5AOeVuiL4CJq5QCNP7mS38=; b=sH5OjT/7So+fQE
	xRvv595yowmnCXfdwtvEB8bWszSrJSynHZS5TLHh477+yyMR5PJN73g+8SwvkRW9WQFvgRDfibRiX
	UZ2PEmUnKsLI63d3PPoIT5aqrOG0/sXOsUj/B7caDgbT9KDYwy2x2HHAGIYsDjaUYf1BWRbMzplDD
	lATbGn6P/5tXtP0614SVvuSrWG788u3XlHCO88EF/UjGPscBFnpjZaeEbPAVVacNxftyPXUrSETlB
	0xrwKY4f0qaMgRzGTXacltWO5Jo8MCg+t5v/9nvzOMs8XBQJ7QRJtsGIArV4dldDSRuVokLVS+Yyg
	9AeSFNK4cOANkJQM0Nig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mE7LJ-009XVu-FM; Thu, 12 Aug 2021 09:49:41 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mE7Ji-009Wdo-Vr
 for linux-rockchip@lists.infradead.org; Thu, 12 Aug 2021 09:48:07 +0000
Received: by mail-pl1-x636.google.com with SMTP id e19so6537083pla.10
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Aug 2021 02:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jB/TE84bWOxCrkfpcM44aGTL4Nx8FVU95hRHwolk2mo=;
 b=Pg/8Dspv4dzBLyQJJG14oj5ikSz2VqvTY47A8Ns3N/LDISxkJUdS0uVbJZYiY5lLXS
 oBTvq2lBGaaxzNzrbjZ0LbPSjIgcDGsA+dfFQsvp3xMy9Zu/HFTT+oAcXRjpV3z1SICg
 K2ba0fkJ9WA6LE+pFXriKCR0Il+76G0RaeOyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jB/TE84bWOxCrkfpcM44aGTL4Nx8FVU95hRHwolk2mo=;
 b=HG1mWsjP8Cs1dgahd7wc2u8n2BDWwsfMZUNoDaw8F2zcRJfxau0AxbcGTbvyiapxia
 ORoasQckWY9g8sXFQtLkBbZXcd+e6XAnpaBtFhxkOkQxjwnf86HrD2WPSKy03lNlvHUL
 RwkCHtnJ39MUFuQzmv3HLDZ1aOM9FZdGPBeu5LDAnWq39OZfIkEpE3TK5AgzGnhLQpC6
 bdog/WQLL6BVPa0NNAgwoGmKS0eVvFiEqZaYKLw2McmX6zuTQ1kqBkor5XKKp6XGhqVB
 z2gfFmAf+K1/YHBrioyuNJ7jC9l1H2QaJOY7+E3O6Y7LP2j5inNMNfvinD34i0lxsPBG
 1SSg==
X-Gm-Message-State: AOAM5314IxSHddYGBtsDr/ZkjD77FzQcERqXbwJW2cnvC25O6G9TkpNS
 /aZKBWIYwMLeU4xUPN5LYjTsGw==
X-Google-Smtp-Source: ABdhPJz8AxQKZxhllx159XJCed5gtH0lc1CYXmZnByhWqFEcqTnhGL3naVdON1DixxEMeHRSOTtdFw==
X-Received: by 2002:a17:902:e8c4:b029:12d:1c9c:2e77 with SMTP id
 v4-20020a170902e8c4b029012d1c9c2e77mr2994145plg.48.1628761682281; 
 Thu, 12 Aug 2021 02:48:02 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:8e0d:8032:9364:612c])
 by smtp.gmail.com with ESMTPSA id z15sm2991052pgc.13.2021.08.12.02.48.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 02:48:01 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3399: Add gru-scarlet-dumo board
Date: Thu, 12 Aug 2021 17:47:53 +0800
Message-Id: <20210812094753.2359087-3-wenst@chromium.org>
X-Mailer: git-send-email 2.32.0.605.g8dce9f2422-goog
In-Reply-To: <20210812094753.2359087-1-wenst@chromium.org>
References: <20210812094753.2359087-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_024803_093811_5AE1C7A3 
X-CRM114-Status: GOOD (  15.57  )
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

Dumo is another variant of Scarlet, also known as the ASUS Chromebook
Tablet CT100. This is almost the same as Scarlet-Innolux, but uses a
board-specific calibration variant for the WiFi module.

Add a new device tree for it.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3399-gru-scarlet-dumo.dts  | 41 +++++++++++++++++++
 2 files changed, 42 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 12a8b6cacdbd..479906f3ad7b 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -25,6 +25,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-ficus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-firefly.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-gru-bob.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-gru-kevin.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-gru-scarlet-dumo.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-gru-scarlet-inx.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-gru-scarlet-kd.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-hugsun-x99.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
new file mode 100644
index 000000000000..853e88455e75
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
@@ -0,0 +1,41 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Google Gru-Scarlet Rev5+ (SKU-0) board device tree source
+ *
+ * Copyright 2021 Google LLC.
+ */
+
+/dts-v1/;
+
+#include "rk3399-gru-scarlet.dtsi"
+
+/ {
+	model = "Google Scarlet";
+	compatible = "google,scarlet-rev15-sku0", "google,scarlet-rev15",
+		     "google,scarlet-rev14-sku0", "google,scarlet-rev14",
+		     "google,scarlet-rev13-sku0", "google,scarlet-rev13",
+		     "google,scarlet-rev12-sku0", "google,scarlet-rev12",
+		     "google,scarlet-rev11-sku0", "google,scarlet-rev11",
+		     "google,scarlet-rev10-sku0", "google,scarlet-rev10",
+		     "google,scarlet-rev9-sku0",  "google,scarlet-rev9",
+		     "google,scarlet-rev8-sku0",  "google,scarlet-rev8",
+		     "google,scarlet-rev7-sku0",  "google,scarlet-rev7",
+		     "google,scarlet-rev6-sku0",  "google,scarlet-rev6",
+		     "google,scarlet-rev5-sku0",  "google,scarlet-rev5",
+		     "google,scarlet", "google,gru", "rockchip,rk3399";
+};
+
+&mipi_panel {
+	compatible = "innolux,p097pfg";
+	avdd-supply = <&ppvarp_lcd>;
+	avee-supply = <&ppvarn_lcd>;
+};
+
+&pci_rootport {
+	wifi@0,0 {
+		compatible = "qcom,ath10k";
+		reg = <0x00010000 0x0 0x00000000 0x0 0x00000000>,
+		      <0x03010010 0x0 0x00000000 0x0 0x00200000>;
+		qcom,ath10k-calibration-variant = "GO_DUMO";
+	};
+};
-- 
2.32.0.605.g8dce9f2422-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
