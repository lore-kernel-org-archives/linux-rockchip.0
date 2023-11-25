Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1582C07CA9
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 14:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pmy+LdSU+NAp451GaPDRmJ8V5cTja2KaSeeoUjFwQN4=; b=EwqTJCNl1DBGVy
	CTokmC+OnZTx3j8bmECR9tRv9aVKQspIk7x4PlkejQTTWpRdSBEJFA424ejFxAzpCMvxpxNHVs3BM
	xXjAPFK2ht9f3dn2b5qHzvY2+d7kPDxzF0L02uSklHgXtZXW8fhGyPGPFWYJq2sFSJCPfntF4Astt
	CrFnUsl/y48cW7u+Gk12bJq1Aeqzsk3pDsOm4vq6bQszj9tUjvwksYAfZ5GIpBGAl365gKcwmtTgW
	RPnZ9Qvg5daTwFn0fNnxwI7ZDX9+RlphDcV4Vil+8PvKCrGZB1TEVTtIOplWAJqzJyt5tOXWdZx5m
	g+cD4bBJqubJvc7ffasA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tqS-009Mv2-2Z;
	Sat, 25 Nov 2023 14:41:20 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tq0-009MaC-23
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 14:40:53 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1cfb2176150so4663635ad.3
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 06:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923250; x=1701528050; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kNBeKi0rAQB1+toxqqlE2nYrDGFed7KQnf2/b2wSloo=;
        b=WqQV3Uim3qASbwaksHFWfk1PHBCXhXQ5zWqJolChu5r3AcfxcoI7tRFhEY5k81Egdr
         WGysMjK5WIH8fzELjFna+MfaPTrusor0O/QesdeaXOr6b974oP8aeI4fB/11kIcoBZqo
         pX0yLsRVRq35VIiRK2gCtoRtVinl8jacUs7r5D7zOQ8SfE7onfkgbRhXNEcAst3Iql0t
         K6+Cioblw3nkO6AmHB66Eg8yEV8MmwUgVTxeXJ5bSugjAYsqS8i2oH4HhNdkCNxa5o9x
         qWiGwJKNCuOil8U+ZOua6bzUuYaZFalsKpibMsaMJiDcqzWOVICSGuAkRwYdwqpCHUpZ
         yrhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923250; x=1701528050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kNBeKi0rAQB1+toxqqlE2nYrDGFed7KQnf2/b2wSloo=;
        b=iDGdOkjIwbfvc8RVf1H44laPLz8CnxfHJye+tRVUTI7kw6hz0ccObBQgW1XwyXCgZo
         Bb5TreKjwjpELoqyF24bhdq4YNXkkvI9sXN0hHBcH/1FQI1vbOcshuo6uwxUATaQIU5D
         SLWpXP5+C1eUxnsC/BuT1D12+7xmFrBO8ylM8n3B9sM3LhurrPZaYnw2dsDyDROTcVuY
         X/KTXDkIMsjQ1MFDZ+4wr8b/TyAIBFzKpBcisnDunRy739v8swk8KC89B9JzXx4XkLyf
         ZL7K/m1SrLOzjCnwUxQ7wUAGqdc+Pp0OdNFIS+HWnz7J9KgUJ41RrcBrpTTqhEWc3dhh
         1sig==
X-Gm-Message-State: AOJu0YwLzhQq7itQtUM9FpCh0nKV9vOaZNCkvlCVGUOMuPhIrTWeKBOJ
	8Ni+pnzN95nLCqSmo1SGvzdrWw==
X-Google-Smtp-Source: AGHT+IGgrQuoXz9aS84oakVKvlIXt016m8KWKC6TXzUrZ9EvF6saHWaaHxHERtYqyDBBSLnEetkBeg==
X-Received: by 2002:a17:90b:3852:b0:281:3a2:80ee with SMTP id nl18-20020a17090b385200b0028103a280eemr5538394pjb.14.1700923250627;
        Sat, 25 Nov 2023 06:40:50 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:50 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 08/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
Date: Sat, 25 Nov 2023 20:10:10 +0530
Message-Id: <20231125144012.58668-9-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125144012.58668-1-jagan@edgeble.ai>
References: <20231125144012.58668-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_064052_673714_10719A25 
X-CRM114-Status: GOOD (  10.57  )
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

Edgeble NCM6A-IO board has M.2 B-Key, E-Key via PCI3x2.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 03a81f1dedf9..77fafcdc6fdf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -23,6 +23,19 @@ vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
 		vin-supply = <&vcc_3v3_s3>;
 	};
 
+	vcc3v3_pcie3x2: vcc3v3-minipcie {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio2 RK_PC4 GPIO_ACTIVE_HIGH>; /* PCIE_4G_PWEN */
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie3x2_vcc3v3_en>;
+		regulator-name = "vcc3v3_pcie3x2";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc3v3_pcie3x4: vcc3v3-pcie30 {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -74,6 +87,15 @@ &pcie30phy {
 	status = "okay";
 };
 
+/* B-Key, E-Key */
+&pcie3x2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie3x2_rst>;
+	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>; /* PCIE30X4_PERSTn_M1_L */
+	vpcie3v3-supply = <&vcc3v3_pcie3x2>;
+	status = "okay";
+};
+
 /* M-Key */
 &pcie3x4 {
 	pinctrl-names = "default";
@@ -91,6 +113,14 @@ pcie2_0_rst: pcie2-0-rst {
 	};
 
 	pcie3 {
+		pcie3x2_rst: pcie3x2-rst {
+			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie3x2_vcc3v3_en: pcie3x2-vcc3v3-en {
+			rockchip,pins = <2 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		pcie3x4_rst: pcie3x4-rst {
 			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
