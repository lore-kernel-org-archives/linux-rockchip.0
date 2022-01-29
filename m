Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65362C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jan 2022 17:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RX8+lbYEwEtOFeZtXkywGCwkwYHEDPC8HKaRKy68aw8=; b=AumriTAIpQ5JZL
	Be3pX5G6jYmvsuSwnjtz6eehsSlNVDploEW1EQSeCMJcfEoA9kYgH1lCfq0bdrGkfo3nqDMNU7NHN
	eO0Zi0bfP/HP+pBUp5bD58bkHJpjLKm9LIZ+9xgSmrNfatosCo7T1kyok05nq/b8q72rtiMRf8wzP
	wLHOOFhr6AZ1gywAKh7Qy/isYBtNBp/dIu4xE/ZXmf1BlIFusuO+cD+QCvK95iRGFqnBiAKsbKG38
	sHTJXmIP1bVu6+RueS7AyibD7v4oxT6hTEhX1vwabxQWS0cGwrR9/GCEQHpVRtqvSywTWLxf0uwD0
	cmfLMm+XSEFolncqOLLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDrwH-005Ayk-8D; Sat, 29 Jan 2022 17:55:05 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDrvm-005Aj0-Di
 for linux-rockchip@lists.infradead.org; Sat, 29 Jan 2022 17:54:37 +0000
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 37E5E3F1D0
 for <linux-rockchip@lists.infradead.org>; Sat, 29 Jan 2022 17:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1643478873;
 bh=FfSK7PHOPnItg2UxrfQMXnmMovdesQ6QCsFxowTZ2mY=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=unnrMevZztbPtESj/r5NpoxBdYPTBpVGCLxfClNhjdEFMHphBlBYQYT1K2lPwO0jn
 5kfKE2NvG9iO4HY1wiZyPeqEemStq2AqhLCm4AndEVPk2qO0F/s7P23cVXynAeWOHk
 j7abiYHrfroQNVbKcJPPj9C3w0+HvGC/Vu7WVSGi3kDjJg/7q5P6PRzw7CQM2arvEX
 Z/HYQtDs5B1wLg1u+43Yif7shFQ2ttmt+HM6usRswcww7xMQNGNDwDYKY7HuctQvH5
 xJbR5f4NAPCV5JqxINwg+tI1L0fbFFeXxqGuQqYD/vkalClnyMf6zxj39YHWhltoJy
 xUKXphdcUGQlg==
Received: by mail-ed1-f71.google.com with SMTP id
 w15-20020a056402268f00b00408234dc1dfso4684274edd.16
 for <linux-rockchip@lists.infradead.org>; Sat, 29 Jan 2022 09:54:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FfSK7PHOPnItg2UxrfQMXnmMovdesQ6QCsFxowTZ2mY=;
 b=Qd00jJyLK4I9Uhx4IGgBijaTYtqGMN5KF3q8zHDE6WmAaE3btul4pbAo+zlSq0UJNZ
 BBJrWn4bQwChNPrK4JjKWhQX5u9Kc+tMdTjxOvBc8DCArKQtr1q7E3gkke1AHsJ3Ltdc
 vuE59GmWbwpzFE4Sk7mPk4d3hYv5VbZdQ4Ean7wmeFxVBMlq/xNwxfAunJhrIxlIDlwO
 5FTG7So8hEOT3uHxpAnQjgO2uJpuOZwNd5lnJDkwZL9QNmn49oKLCsHsp69k9AW6t5qH
 ggLx0HlfAsfW/Z++3rOIYiALUEPKkLUDI0GWNp5YOY43vB5Vg5WAGWzaMcNB6+JtKbTE
 Sssg==
X-Gm-Message-State: AOAM530y3FepBOg3n+h4E2rKrV0X8NV3FKiJ29JDwrZlP4qSF4irqrf2
 jNnAZ/MFWdqPJqUhVIso1ohXEGNV5kKNqZf8nUSMMIDmwdRwfefTKQi39hQVNvjwTn+eWkv2Oz0
 67PgH4/yXbcIUzvAR8AvMa+Br2PwZkQLImwzd9yalNNZLcIPmAQ==
X-Received: by 2002:aa7:cdc5:: with SMTP id h5mr13597839edw.293.1643478872941; 
 Sat, 29 Jan 2022 09:54:32 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx58d91XDto/xMjxDExr9JEzl/j/uOxsqzxZgQC3OzHOq4RT+oNor18vlDFtJgtZhK5hCpM2Q==
X-Received: by 2002:aa7:cdc5:: with SMTP id h5mr13597817edw.293.1643478872702; 
 Sat, 29 Jan 2022 09:54:32 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id a25sm875655ejs.149.2022.01.29.09.54.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Jan 2022 09:54:32 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH] arm64: dts: rockchip: align pl330 node name with dtschema
Date: Sat, 29 Jan 2022 18:54:29 +0100
Message-Id: <20220129175429.298836-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_095434_612427_4A954088 
X-CRM114-Status: GOOD (  13.17  )
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

Fixes dtbs_check warnings like:

  dmac@ff240000: $nodename:0: 'dmac@ff240000' does not match '^dma-controller(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index f972704dfe7a..56dfbb2e2fa6 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -711,7 +711,7 @@ rktimer: timer@ff210000 {
 		clock-names = "pclk", "timer";
 	};
 
-	dmac: dmac@ff240000 {
+	dmac: dma-controller@ff240000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xff240000 0x0 0x4000>;
 		interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 39db0b85b4da..b822533dc7f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -489,7 +489,7 @@ pwm3: pwm@ff1b0030 {
 		status = "disabled";
 	};
 
-	dmac: dmac@ff1f0000 {
+	dmac: dma-controller@ff1f0000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xff1f0000 0x0 0x4000>;
 		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
