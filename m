Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84169C433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 18:45:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4012920772
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 18:45:44 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="F46Il4jC";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="KkF5v2Bu"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4012920772
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gnK25EMc1S6XmVn9GzjsaQLG8/18SvgtH28aVln5lmA=; b=F46Il4jC+/CuxJw2ogcdUt+1Ef
	ADcgIExkaUdgESyuUjub2jfdM2oDSryXqP8Zyx26ts7K9CnE9fc1A0XvG+MRc7KYmzXo4S4DWz3ga
	I0chgEVs4u3jiq2xRgnqwD28JNQ8pKF3xkH5VC035TsvaFTVTLw/O5Gf/m714ckr3O2jgVUoYAG6S
	cCcNGJqdEun9ct24LUHknjt2W28ngCEswi3WCQBKXEe/pzUgAJZtMLlOo/pswK332zdzVljtGwMug
	e92ddzHams2yPoMkU2rdTB3Q8fjVAeYJgnMPwiLT13/U+vogfZYiJ//2kUK61gotEQIQxbGAZ7A2J
	/mOShZEA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k86c0-0004aN-MU; Tue, 18 Aug 2020 18:45:32 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k86bu-0004YW-Cp
 for linux-rockchip@lists.infradead.org; Tue, 18 Aug 2020 18:45:29 +0000
Received: by mail-pf1-x442.google.com with SMTP id y206so10381381pfb.10
 for <linux-rockchip@lists.infradead.org>; Tue, 18 Aug 2020 11:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Zsbv5mvCbZha5zbAj1OK4YZ+BCUk3LROR/vz9Y6QKVA=;
 b=KkF5v2BuZGd2iCldjPP3synY06xB4ELU6I9s9TsaRG7KnLcwop4DMFGlpFTWv5Xy+X
 ofRk7La8JMG3SwdgZUGh8eAUBFeB4o/6lLw2usFOzGVPB3BlayOuITC9g6xNcMC5Eno/
 9UsIwRhcRBKGe4P2ubvHSxj/lyBPEBQFSM3Sg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Zsbv5mvCbZha5zbAj1OK4YZ+BCUk3LROR/vz9Y6QKVA=;
 b=lEXScMi7pcP8vtzMdSx6FbugM/8dh3cIHazWLIlXwSdLbWBbXBYJX5lD6UqK8fzNnP
 BO02lrOj+BIvLMi/7yKXgh9Ma1FSJ+L43/eMlTJcX6hmtVdPXmVN/BrMWLiHnWbaSi1b
 OYJEoLmkclz0vHkPWlmIA5i31iAf0ikPVMPEzrNrPMuMBZrBryZafezgBz+uyDsmMPhQ
 f98riDKGlTuJEUQe1LSTJLx10wG9b3181sdYTUJ7n0vOuQKmiweZIxTzoFLqqkHF/dad
 syADFaXwzV0a7x1iR/1CTit/Smydf7sfG9jvDHtxV06ctQeUQO4Wlby5aXkxJt8sY1sn
 8cHA==
X-Gm-Message-State: AOAM530MWTwkajoxeLSKOvurEh7o11gd5uVdhgYAvG74vV01gIffL9D2
 LqM8WvWFXfkw+ajCvlXgN0VeDA==
X-Google-Smtp-Source: ABdhPJzlZUhxovAfWJU6AM4joByBcaCE6DP0XKdwA0weM+mLByskkNrau/g+/nJe8iuBfpPiTSD4tw==
X-Received: by 2002:a63:d048:: with SMTP id s8mr13866840pgi.171.1597776319942; 
 Tue, 18 Aug 2020 11:45:19 -0700 (PDT)
Received: from ub-XPS-13-9350.pdxnet.pdxeng.ch ([49.37.132.72])
 by smtp.gmail.com with ESMTPSA id i14sm14459022pfu.50.2020.08.18.11.45.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Aug 2020 11:45:19 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: Fix power routing to support POE
Date: Wed, 19 Aug 2020 00:15:05 +0530
Message-Id: <20200818184505.30064-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_144526_492370_E593FB08 
X-CRM114-Status: GOOD (  12.21  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

When POE used, the current power routing is failing to power-up
the PMIC regulators which cause Linux boot hangs.

This patch is trying to update the power routing in order to
support Type C0 and POE powering methods.

As per the schematics, sys_12v is a common output power regulator
when type c and POE power being used. sys_12v is supplied by dc_12v
which is supplied from MP8859 in type c0 power routing and sys_12v
is supplied by MP8009 PoE PD in POE power supply routing.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
---
 .../dts/rockchip/rk3399-roc-pc-mezzanine.dts   | 18 ++++++++++++++++--
 .../arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 12 ++++++++++--
 2 files changed, 26 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
index 2acb3d500fb9..754627d97144 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
@@ -11,6 +11,16 @@ / {
 	model = "Firefly ROC-RK3399-PC Mezzanine Board";
 	compatible = "firefly,roc-rk3399-pc-mezzanine", "rockchip,rk3399";
 
+	/* MP8009 PoE PD */
+	poe_12v: poe-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "poe_12v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
 	vcc3v3_ngff: vcc3v3-ngff {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_ngff";
@@ -22,7 +32,7 @@ vcc3v3_ngff: vcc3v3-ngff {
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		vin-supply = <&dc_12v>;
+		vin-supply = <&sys_12v>;
 	};
 
 	vcc3v3_pcie: vcc3v3-pcie {
@@ -34,10 +44,14 @@ vcc3v3_pcie: vcc3v3-pcie {
 		pinctrl-0 = <&vcc3v3_pcie_en>;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		vin-supply = <&dc_12v>;
+		vin-supply = <&sys_12v>;
 	};
 };
 
+&sys_12v {
+	vin-supply = <&poe_12v>;
+};
+
 &pcie_phy {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index b85ec31cd283..e7a459fa4322 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -110,6 +110,14 @@ vcc_vbus_typec0: vcc-vbus-typec0 {
 		regulator-max-microvolt = <5000000>;
 	};
 
+	sys_12v: sys-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "sys_12v";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&dc_12v>;
+	};
+
 	/* switched by pmic_sleep */
 	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
 		compatible = "regulator-fixed";
@@ -141,7 +149,7 @@ vcc3v3_sys: vcc3v3-sys {
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		vin-supply = <&dc_12v>;
+		vin-supply = <&sys_12v>;
 	};
 
 	vcca_0v9: vcca-0v9 {
@@ -186,7 +194,7 @@ vcc_sys: vcc-sys {
 		regulator-boot-on;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
-		vin-supply = <&dc_12v>;
+		vin-supply = <&sys_12v>;
 	};
 
 	vdd_log: vdd-log {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
