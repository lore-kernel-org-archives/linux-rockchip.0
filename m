Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7243D10BF0
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 10:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Il7OBbGVN0XIcUOM4IX96rVLODqdklFQiaisnov3Ow=; b=NvCkjHA5Sr2xJi
	eZLD7qJUpGVO61Xl+tmCkuW6Zd6hto+3g8Gf8YVCw2SP/HGkFGpmGQKLcV9V5MLfHbY2WAiOa51TK
	OU+3F4VQiS7xqFdX8DmV88LktkzE5Vf5X1Y+NoBnMh4N6nMPzNooBjIRTuxVgroLtq2IoQahHHFOY
	nK2QBzJSJ2SF71gzpM7i7RZ27Hn/0nnA/oO4CIGZ8xAXlrlFjpGVpaehLoZh5ZX6yBX1qmVTs8vj7
	zEZCWSYNtTNV6/d6k2DBLRtog3HPZrAWJZCucEMUlUpqb0N2M2kYmordAtJ6sPlcchWN5HrqQzprJ
	pCgakoI7yJlSt+AYnEpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4de3-00000006Krw-1flD;
	Sat, 26 Oct 2024 10:03:43 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4ddz-00000006Koy-0FSE
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 10:03:40 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-71808e95ae2so1578842a34.0
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 03:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729937018; x=1730541818; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8n9OGkms1KY/VW9DlrY7M/ZtaRHuaMzIxRVDkh7KkHA=;
        b=BaRr8rkLh1Vkmj6Mj+V6e3kzi8LV+KzHm1WD+RX0Q2pMNvmQ5yeLRjeje3Q1UkHy2a
         cOnlvNTtAKKlrbOk6rDMcbhBiuWS4tv2Fx225vqTqc1z9oWqA80Il9+LALQv4sNtAOUP
         GxTOVq4/wAn62l1uu16Ay04ZT65p146JpuKdBIJXKXArbdH/3zDVgwWe36qCbUOdoXVU
         sZxd8YfjClWpWxuVBGZFzLMRokYeA4U7t+k4WUHkFk6BBKOcqkrAthcDc2xVARYhrw9R
         Sh3EmDtBFxVXmQDr9dpgTE0DHdA4bk+35wfdwtn026nP7G/Bd+4JhVMg379aKtbUbzeQ
         pwnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729937018; x=1730541818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8n9OGkms1KY/VW9DlrY7M/ZtaRHuaMzIxRVDkh7KkHA=;
        b=ec7rxf7tEp+XmBmi8eCJTtD8dPYvYfV/tO5NkMBzrWHXaoIbKze3draOfOZGdyV5aQ
         dOvdW5VS/J7MmzIagyDm0Y4J1fjbXYwcjqSvA3sEwh268DSv/wVRarqBXuHcc7t9QsTW
         A4y/4Nym1kjF5IlPpZlG5TXzzlt06CCg5b60oyMZP9OWfDuqqt8irJ18REVI6rNITrvz
         XPIfGe1UU1i5knj5U7eA0ZHZlLqxYmaSiZ8oEtJ0TIp4UMnphpTT+yzolmUSe7zM6odu
         jQMaxRyBceddMbXtL9XRYb5I+NzgcpEDRy/oPrmpWx/TyjubnhCvOX8nlpJmuMprrX/v
         Vspg==
X-Forwarded-Encrypted: i=1; AJvYcCWN4pj7z8FKTvx+j/aZ9LcE5yi4+HCdRWzkER25Hfzv4tiZDVE2vUN4k8YgMe/gh7plAGE3YDIEYt/iG5s8Vw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxo0YR0IjEu35KbyebR7jhSA9vzm8GF0pqbF52tXCOkecVxSPYn
	msL9Avmv2mKJ5C+B5yFzx8CrnujemQqlklnYDj3bzm1ouXevWGmG
X-Google-Smtp-Source: AGHT+IE3oTk+0eTX2Zv0QRZZxIAmPzZGK4NaxQx0GgTpVJl9FhDbTq9HxR7nhTSZcHHrTvUEXs4ucw==
X-Received: by 2002:a05:6830:4390:b0:718:4fd:bd78 with SMTP id 46e09a7af769-7186829ad9emr1244466a34.13.1729937018024;
        Sat, 26 Oct 2024 03:03:38 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:cefb:5eea:7da6:3c6d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7186165841asm632243a34.48.2024.10.26.03.03.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 03:03:36 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Ondrej Jirman <megi@xff.cz>,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 05/15] arm64: dts: rockchip: add PCIe network controller to opi5max
Date: Sat, 26 Oct 2024 04:48:21 -0500
Message-ID: <20241026100310.52679-6-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241026100310.52679-1-honyuenkwun@gmail.com>
References: <20241026100310.52679-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_030339_123773_11ED7EB1 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
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

Enable the RTL8125 network controller, which is connected via
PCIe 2.0x1.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../dts/rockchip/rk3588-orangepi-5-max.dts    | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
index 961f9271d0f0..591ba2af25d7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -53,6 +53,18 @@ vcc_1v1_nldo_s3: vcc-1v1-ndlo-s3-regulator {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
+	/* pcie eth. not a real regulator. 33VAUX */
+	vcc_3v3_aux: vcc-3v3-aux-regulator {
+		compatible = "regulator-fixed";
+		/* Ethernet_power_en */
+		gpios = <&gpio0 RK_PD3 GPIO_ACTIVE_LOW>;
+		regulator-name = "33vaux";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <50000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
+
 	/* Regulator is enabled whenever vcc_1v8_s0 is on */
 	vcc_3v3_s0: vcc-3v3-s0-regulator {
 		compatible = "regulator-fixed";
@@ -78,6 +90,10 @@ vcc5v0_sys: vcc5v0-sys-regulator {
 	};
 };
 
+&combphy2_psu {
+	status = "okay";
+};
+
 &cpu_b0 {
 	cpu-supply = <&vdd_cpu_big0_s0>;
 };
@@ -168,6 +184,13 @@ hym8563: rtc@51 {
 	};
 };
 
+/* phy2 */
+&pcie2x1l1 {
+	reset-gpios = <&gpio4 RK_PD4 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc_3v3_aux>;
+	status = "okay";
+};
+
 &pinctrl {
 	hym8563 {
 		hym8563_int: hym8563-int {
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
