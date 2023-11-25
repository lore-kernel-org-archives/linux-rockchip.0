Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F03DC07D59
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 19:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ua7RlVd8TEJ5b4Yyo6uXhiz4fZnwoRcxj3jJVkDynlc=; b=yXOTCuBSpm6OTa
	tVuxde9OV/9uHm8/UbOHpQapt+9KhP6YrLb3M4VX6BFwsTDkMF6GvC3FxzB9igfjSvBwJXqSwf3Cs
	kU4ZpKDACUN7EidaeWfKgsydx+PHzj5jkduhq3Hq9lyl1Ul/V0Ad2TLY+CNwzoHGz+Wow5VsUoZrR
	tWZM89DfJDwClCQCU8sCAVkATxsQWB/fH79k2xeB5jMPuMBNXvluAjm9HtjLksIqF8sgICm0RD+G6
	3btZUaWR3ZZ36baJ74SzvLqaKMkn65XzAWuBqKWnoh7QbuhrTqOZKZ/CFGTx2Zl8HWgm9w7E2vCkA
	g6AIIvMCt1uBxNxBBtbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xyy-009fxE-0g;
	Sat, 25 Nov 2023 19:06:24 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xyU-009fdB-2t
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 19:05:56 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-5bd6ac9833fso1780295a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 11:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939153; x=1701543953; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZT5d809egHy5KvFUpSxcQoRCivumOp3jVBiUqly54QY=;
        b=LmqBpWr5KC1fR5K/piLSw1Ev+w4prYGYd+IxjRvf551FklakE6Ap4wzTkeJnA2YA1h
         Fq3tZ3HIWqldgEShuJJLJnLHcuEzPJ0nf7ukpRqZ59Eq2InBUgeDCz5xt1IPBHIm2jqk
         7ei70OEQdlvrW01QlHti/pifo/I6UtYpJPHSG+pGJAOB7AIpZnN2PYEucFdTsvxeCjAX
         TpWJpSDPbNJngztp/FYgLmh18u9ip57YEZXVLffTscKpNnn7k7N5mRJqTq4xdWNbMYT0
         plceWJXjoQJLoSBdHGxKa7qu0uX88LLqZCXGScTcm7Yj0oVJnfxzjfA1EM8nQboIJlHJ
         PomA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939153; x=1701543953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZT5d809egHy5KvFUpSxcQoRCivumOp3jVBiUqly54QY=;
        b=cevcUvk6DTLLqgyC9tZuBspWYEIwWE0grpdjr5UF4F/ajjfWU9FUqc6gGqpBn8mCSp
         NMtAeLTOnPBhgUUhwhn3M49suLSB6DvpNF3cnrh32PBDnUDVYDYLV8YHyKsdXs4Mm/K/
         Ew5xaX9nbtpUbHyxA3Hh/+Y6268/2U5NLfpuCQwrsElT2gMsvIvGTAPKvRqADtgcmylg
         p7L8MhbcWfnuazf5qvD0Yidd65+wchJETwZ3xS3VA6FPov4Ep5rC5Ti0D8ZV7hExEoHj
         ij59rMfo6MbDfuUjKTKU8YdqGwybZWE9kqgg5tSrpDjUoJl9zzr/NGw3KVSF/rMD1rY6
         6IdA==
X-Gm-Message-State: AOJu0Yz/mwZerQx1aNyjVjILWmnYup6NxxcV+cgvMRUNCeNbmjyTg6Vi
	zqMFBTO20/I6JgxwyNYVf4tlNg==
X-Google-Smtp-Source: AGHT+IHBazHbTgiHtvwGYMDwMgd11PzTHYQd/1wTRSW+PlDaFY1a8PCK/zZLIoD1BrV2W5DTNKxQDg==
X-Received: by 2002:a05:6a20:3d1b:b0:18b:556b:6d54 with SMTP id y27-20020a056a203d1b00b0018b556b6d54mr8212567pzi.55.1700939153014;
        Sat, 25 Nov 2023 11:05:53 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:52 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 08/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 B-Key, E-Key
Date: Sun, 26 Nov 2023 00:35:20 +0530
Message-Id: <20231125190522.87607-9-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
References: <20231125190522.87607-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_110555_323668_07F2F567 
X-CRM114-Status: GOOD (  10.87  )
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
Changes for v2:
- suffix '-regulator'
- use proper node name
- fix commit head
- update comments

 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 088a10fe042c..130b240e0da8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -23,6 +23,19 @@ vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
 		vin-supply = <&vcc_3v3_s3>;
 	};
 
+	vcc3v3_pcie3x2: vcc3v3-pcie3x2-regulator {
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
 	vcc3v3_pcie3x4: vcc3v3-pcie3x4-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -74,6 +87,15 @@ &pcie30phy {
 	status = "okay";
 };
 
+/* B-Key and E-Key */
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
