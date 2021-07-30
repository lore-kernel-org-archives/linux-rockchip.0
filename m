Return-Path: <SRS0=KZfN=MW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00395C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jul 2021 14:02:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B91D360720
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jul 2021 14:02:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B91D360720
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wrw8dndWAEUlgOsPFUxzOozb4kOZA+D9OBIOkyAHkL8=; b=buBXio0a5vPD6+
	SzQZBCGCC2RSF2vPY5FHx5PKdp7bEhPEgm86LWR3sz0D3/snQJz3U4vPHiOsMwOFF/EJIN7c0RmBJ
	ZD6Z8rW1l2nBvMxsc14xAg/ZHFT70FnDcFNPOjeV6UhyAr/ZcZI8M4iU/iKc0P9J+3YpbupItwEWv
	I1TQZALmthDvCGu/vsZ3Y6QY777f6cC7eUVXrU/yMdWWv6KBJ7+nxgpu9SoI/UdgYI/NjH93cgqTY
	agpiD8O4mcFWAFxzihzc0bmNw/2PQvCNq0zTAV1h7zIbyDA5mHq2AyJAwliir4uH23/ELUg9sJacg
	gg45UqdTV35P5Kdo+qeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9T67-008uYz-Oc; Fri, 30 Jul 2021 14:02:47 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9T5v-008uX2-2d; Fri, 30 Jul 2021 14:02:36 +0000
Received: by mail-qt1-x829.google.com with SMTP id w10so6450004qtj.3;
 Fri, 30 Jul 2021 07:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JXIfKSGWJ9mlCbWNNx/N/vTZPaRHrXle0JFg+o3znXk=;
 b=IRORz5zxXvGhatsjJBkQeTsDqRAVIW2moZPm8a3A2FpA+x1l4SmqH6ZcDSJP/cTEvC
 cLVXBlu0p5qrmxqqCshaq7Aookh/YLzmDEW/P4jSpL5CLrTalq++nsCmsInAGfL+jeLI
 znCCkvmwEZeBAac05xmmBwPw+IWX4LTeNM7s3qov1HQsVVHd2S+u022c+sEEEJDBXSX7
 Y6Aev2cXnjoReP5TUgkQj0CJ/eY9gOxGr46x6QY9LrDpkysFu3CUGBvjtu6S+X/Gg3gE
 hi8djPx+7GbH7UKy3APsIyMqtm9oeNtEQg7zBrr5Lm+1iT6sjt3utYAsvqDjYRIhXEbl
 1JpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JXIfKSGWJ9mlCbWNNx/N/vTZPaRHrXle0JFg+o3znXk=;
 b=gRr5nO1js9glJHzS2s8sSRP2Ed1OaGeFbuxH1af3iS32LNsUEr4U5LKhFwshENyVLu
 canNiwo40VnZdS3qJy75H1dZI23Yff/5Zuu3QmV9mFU4u33NpBYfmWERmzDh9TjIt45f
 rK6d1MV7Z++klPjZuKpfKJIGdkqEAML0H1PQ60IjQQ+JZDlqQhx4hYWV6ksmchHyRT3m
 KLYOekcgK17j2nUswJ1VJX8qRbtMfUbFzD6pQJjWRdwOjwGWFiNnVuoaA8qaEA4FwL9n
 b33Ns5aHbGOiOkAdyh8I8BpSmbmvPavHECFO2dOTeHvWJFZrywl7sXY5MJMuBgiqA60i
 vBxA==
X-Gm-Message-State: AOAM530qES6GrtWY/fbLz45PtKrvX5Ibm4r+ytJKKeDIxW93WA3rLU1C
 bj1T3O91zXII5psXWmSfHS8=
X-Google-Smtp-Source: ABdhPJzpf3kEwfAPYGXdtI3m6k2LvxwAaDiSzmfIgXSx9Uiog8YtJdEewUXG65zxN4RxMlDDbgHhOQ==
X-Received: by 2002:a05:622a:310:: with SMTP id
 q16mr2426708qtw.168.1627653752991; 
 Fri, 30 Jul 2021 07:02:32 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:b33d:da64:8d94:ff34])
 by smtp.gmail.com with ESMTPSA id r16sm948992qke.73.2021.07.30.07.02.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Jul 2021 07:02:32 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: add thermal fan control to rockpro64
Date: Fri, 30 Jul 2021 10:02:10 -0400
Message-Id: <20210730140210.728367-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210730_070235_174479_30E6D563 
X-CRM114-Status: GOOD (  12.17  )
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

The rockpro64 had a fan node since
commit 5882d65c1691 ("arm64: dts: rockchip: Add PWM fan for RockPro64")
however it was never tied into the thermal driver for automatic control.

Add the links to the thermal node to permit the kernel to handle this
automatically.
Borrowed from the (rk3399-khadas-edge.dtsi).

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---

Changelog:
v2:
Adjusted fan setpoints for less noise

 .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 6bff8db7d33e..0d79e6ae1c3a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -69,6 +69,7 @@ diy_led: led-1 {
 
 	fan: pwm-fan {
 		compatible = "pwm-fan";
+		cooling-levels = <0 100 150 200 255>;
 		#cooling-cells = <2>;
 		fan-supply = <&vcc12v_dcin>;
 		pwms = <&pwm1 0 50000 0>;
@@ -245,6 +246,34 @@ &cpu_b1 {
 	cpu-supply = <&vdd_cpu_b>;
 };
 
+&cpu_thermal {
+	trips {
+		cpu_warm: cpu_warm {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		cpu_hot: cpu_hot {
+			temperature = <65000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map2 {
+			trip = <&cpu_warm>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map3 {
+			trip = <&cpu_hot>;
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &emmc_phy {
 	status = "okay";
 };
@@ -281,6 +310,34 @@ &gpu {
 	status = "okay";
 };
 
+&gpu_thermal {
+	trips {
+		gpu_warm: gpu_warm {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		gpu_hot: gpu_hot {
+			temperature = <65000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map1 {
+			trip = <&gpu_warm>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map2 {
+			trip = <&gpu_hot>;
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 	i2c-scl-rising-time-ns = <168>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
