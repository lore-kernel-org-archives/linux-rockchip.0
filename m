Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 678C0C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 19:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MuLDeprRZV8Z6zVPYgZ5REcWBHKTGpPXgVSB6S6PXSU=; b=g0ta0iTvtfm38D
	PZ6Z0lA23wAIe08NSch2e1/kMI+u0J7lLzu+xQosZhE+yO4m+jeGp0qWwK8QX2KUJtalUhJsUJ152
	cZJ4/cZmqNrfhuu8ncf7480yq1rfqS31wIaDI+tRNthXpaDCciR7KeM95hrMa2MKYBaDxCUwJZTYN
	aXG0qkQ0O1uQvJS4QQaaypFZo4ScciEPQeHWNxABVgmAZRjrcOstIJGddBtoCnkh7hMA2U1fELtrF
	LmXYn6MvbypxdWNxrYYiuAg1y6ENz9SA3B1PmTYuR8i/k4JBI6BIgdCII45IcnA26vIeAEXleeAI6
	qrSud556QcgL8wws55ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8mZg-00BiDL-2q;
	Thu, 30 Nov 2023 19:19:48 +0000
Received: from mail-oi1-f170.google.com ([209.85.167.170])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8mZd-00BiCh-2y;
	Thu, 30 Nov 2023 19:19:47 +0000
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3b845ba9ba9so817071b6e.3;
        Thu, 30 Nov 2023 11:19:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701371985; x=1701976785;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QLPu8OP7Gtghj9r8oEl3tmBH6570M0xe/cb33bW7tew=;
        b=O5YN2juGqufB/BG90iOUT06izO2KbbFh5i3H/4BqxWBf93DNkAuVSY42CDLkWlZmYn
         bs69GGU44qLeL6khiFfDtOjwW9OGdF0KHArpxTVG07HUeLYy5vSC13sU1/Q6fxbsVWBM
         IT/VkcigVhYnsnKvAiBwIW19i5mr/yib/M0eI397jtbJZqTf6PvJvVOcO6318a7OBF5r
         iZeUXSxhyUH3wtnim0yWXce2E2tXAj81+dePNHwEfOyMvzx0eE9Klqc2f+FWRvAewjFk
         SUy0k49Z2tOCpFT57E669ZJai7ZI4Z+k7Pc2EYM5i+eYC+cLWhV5K34HHNLZKAlBc57a
         FMhA==
X-Gm-Message-State: AOJu0Yx5ACkh6mhxtD2FrbKC9i5v+nVMqr2m5b1V5dEKEBpC8yRhROlE
	9vjtAKRjD8NczYF9KI0AxHVFtPq2xw==
X-Google-Smtp-Source: AGHT+IEFWohfzI3yeZknlX72nM9i+BGcCcB5vlsaw2vWJJdFsrighCpFKuV9DN0V1TVWaXWkf4QqKA==
X-Received: by 2002:a05:6808:1507:b0:3b8:3f9f:4c73 with SMTP id u7-20020a056808150700b003b83f9f4c73mr636290oiw.26.1701371984728;
        Thu, 30 Nov 2023 11:19:44 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x19-20020a056808145300b003b6caf2accfsm274659oiv.22.2023.11.30.11.19.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 11:19:43 -0800 (PST)
Received: (nullmailer pid 2435276 invoked by uid 1000);
	Thu, 30 Nov 2023 19:19:42 -0000
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rk3399-gru: Fix PCI node addresses
Date: Thu, 30 Nov 2023 13:18:29 -0600
Message-ID: <20231130191830.2424361-1-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_111945_961642_30DCADED 
X-CRM114-Status: GOOD (  13.64  )
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

The rk3399-gru PCI node addresses are wrong.

In rk3399-gru-scarlet, the bus number in the address should be 0. This is
because bus number assignment is dynamic and not known up front. For FDT,
the bus number is simply ignored.

In rk3399-gru-chromebook, the addresses are simply invalid. The first
"reg" entry must be the configuration space for the device. The entry
should be all 0s except for device/slot and function numbers. The existing
64-bit memory space (0x83000000) entries are not valid because they must
have the BAR address in the lower byte of the first cell.

Warnings for these are enabled by adding the missing 'device_type = "pci"'
for the root port node.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi  | 3 +--
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi             | 1 +
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index 5c1929d41cc0..cacbad35cfc8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -509,8 +509,7 @@ wacky_spi_audio: spi2@0 {
 &pci_rootport {
 	mvl_wifi: wifi@0,0 {
 		compatible = "pci1b4b,2b42";
-		reg = <0x83010000 0x0 0x00000000 0x0 0x00100000
-		       0x83010000 0x0 0x00100000 0x0 0x00100000>;
+		reg = <0x0000 0x0 0x0 0x0 0x0>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
index 853e88455e75..9e4b12ed62cb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
@@ -34,8 +34,8 @@ &mipi_panel {
 &pci_rootport {
 	wifi@0,0 {
 		compatible = "qcom,ath10k";
-		reg = <0x00010000 0x0 0x00000000 0x0 0x00000000>,
-		      <0x03010010 0x0 0x00000000 0x0 0x00200000>;
+		reg = <0x00000000 0x0 0x00000000 0x0 0x00000000>,
+		      <0x03000010 0x0 0x00000000 0x0 0x00200000>;
 		qcom,ath10k-calibration-variant = "GO_DUMO";
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index c9bf1d5c3a42..789fd0dcc88b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -489,6 +489,7 @@ pci_rootport: pcie@0,0 {
 		#address-cells = <3>;
 		#size-cells = <2>;
 		ranges;
+		device_type = "pci";
 	};
 };
 
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
