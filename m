Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D28DEC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 14:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IO51Oh+mfqlxUG+Zz6N0IBymywalz7EkKzN2knJEk3E=; b=4bRam95sky00NJ
	CqMsQhB3C54GyHyFx7Yvj9q6hoRKE5LJ9eu03l60aiq0/fMnvKGyxVp5kuVl5HVZxWNxyfEDdWiK8
	FKICMdIs38C/hKErVFjK6hSYkIrq3hAiVK2Z3Dn9qdpa4XcE+3PVevLVhVxc6O0ugPB21xMsLSb8M
	UhyQWVdQ7VuWUZaCgIuh4i+U9G8QU2XAUMrKag9dSilRNH8g8xiH2Ec2XEphFzWRoNyj97OvGNT8G
	Sun4/YFrb9/vX46GZXh64Rc+5wJMaeofVcDYQYiPrvT2thjy6RAmhDEPp++g5KGkSQnd6MQzaRnli
	Phmrn6fQnBfVOfgTE0Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tqD-009Mkv-2Y;
	Sat, 25 Nov 2023 14:41:05 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tpp-009MV8-0s
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 14:40:43 +0000
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-285b3a14b12so99905a91.1
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 06:40:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923241; x=1701528041; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h4Qu2/iPJ+8lfLODFdOmLYjV+vpXk5th/WNCXHsVH98=;
        b=XlY+t8nbBK243y5aMkAYC50N9gpAE0trep/hMToDAJjmFlPxQ4Oijhp7we0NcAr3eK
         SoHeFoLOeXVSXm+1LUSh6lmFzbhUXrvPBAOlGydVDV4fpNyPKKJBlrcSb3yVkJ0MyXxV
         8vOfWcSp3zbGnWsE1yYJNYlxaAG4FSZmGrBM3PKCmRAiZ78C1M7I8fuwRi7r92ZoGYOm
         lRUp/F2bgF6oejAGYG3eNYJCzymtkhFjvPOYjcQMyae38iNQOezuS9z7rxP0zIGIuM2K
         UxRvruVMvzgthEPcqEpg7vXkjqfvDjx7BM8Lzw7mN0hAIgaOH3IZFqDingOAlTdOK3ja
         ldXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923241; x=1701528041;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h4Qu2/iPJ+8lfLODFdOmLYjV+vpXk5th/WNCXHsVH98=;
        b=Bzoy00/wK8R6sJ1Os9cVxvpkERuA5M8mDg7GiGfw3ccGUQ0jH08HsIyc11LNAYQEoA
         YrI60dmzKuPvBi13WLMBdW5LD+EH1h75PN6LOsh7yQOZpBnAXHHZiFI4ToyeF2kAPeCm
         d8fQmNSlGvYTlLDmXGukfvbQxCkuK7OxHxuFbiX3e6oeHpjBoKlyv/N1/Fk+h1E56un5
         NTmJurbUjJM88ItnwwoozxEroaLyhPn6ou6WGSEh4ZXQH6tkW7KiDHaudofT5J6cYwfg
         e0LzYCXIXHFb1CX7JGoIepJevVj5hB9NRXYosPp2/vlbn30wA/Hc0hkCCgE1PCCQcAB2
         3Nng==
X-Gm-Message-State: AOJu0YxdHSlWBInaHR8X8YaBXmhNIfX0UjnJMmSLik8/YaK+LmRU4cs/
	2A9/0YesG0oI68moG+blo2MyS6mf7RGztL8NZ0/7rA==
X-Google-Smtp-Source: AGHT+IHgCv3Ti2Skt84I/b4RLyueqebP8Z4X1powl6WqwvVIRiu6b7BIQfPUQNpzNFSpz+zfLmv4JQ==
X-Received: by 2002:a17:90b:3b92:b0:285:a72f:966f with SMTP id pc18-20020a17090b3b9200b00285a72f966fmr1282966pjb.46.1700923240772;
        Sat, 25 Nov 2023 06:40:40 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:40 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 05/10] arm64: dts: rockchip: Add vdd_cpu_big reg to rk3588-edgeble-ncm6
Date: Sat, 25 Nov 2023 20:10:07 +0530
Message-Id: <20231125144012.58668-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125144012.58668-1-jagan@edgeble.ai>
References: <20231125144012.58668-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_064041_336508_BFE9DF1F 
X-CRM114-Status: GOOD (  10.45  )
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

The RK8602 and RK8603 voltage regulators on the Rock 5B board provide
the power lines vdd_cpu_big0 and vdd_cpu_big1, respectively.

Add the necessary device tree nodes and bind them to the corresponding
CPU big core nodes.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../rockchip/rk3588-edgeble-neu6a-common.dtsi | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
index e141dc84654a..961a80014686 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
@@ -38,6 +38,22 @@ vcc_1v1_nldo_s3: vcc-1v1-nldo-s3-regulator {
 	};
 };
 
+&cpu_b0 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b1 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b2 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+};
+
+&cpu_b3 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+};
+
 &cpu_l0 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
@@ -54,6 +70,46 @@ &cpu_l3 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
 
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0m2_xfer>;
+	status = "okay";
+
+	vdd_cpu_big0_s0: regulator@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu_big0_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <1050000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vdd_cpu_big1_s0: regulator@43 {
+		compatible = "rockchip,rk8603", "rockchip,rk8602";
+		reg = <0x43>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu_big1_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <1050000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
 &sdhci {
 	bus-width = <8>;
 	no-sdio;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
