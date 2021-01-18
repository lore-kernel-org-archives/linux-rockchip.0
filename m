Return-Path: <SRS0=qa0x=GV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75E3CC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 16:33:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 29F7122BE9
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 16:33:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 29F7122BE9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=H2ZkgS+AmXVoBQFG2meRZqR9zeLaNOVPV4MqFwX138E=; b=k3M1xMsbCpIA2ZFJBXKX5/XcSr
	NRlUVy5iqhl5iIc9HV4ALvho+enUpNv5tzOxsH0mPimPB47jGfoF5oLidkmmiL/HidLW8UJZWqsGG
	oOe0cnaAG8YYBewfVwUWEbwp+zz+nU197N0TLYbxAaf6oX5qnzs2APwPs1PcjK/uIhtV7sSse5PB8
	g9JgBEUrFBdmtKWNSwTC2nqbgpPDAx7zhz6u4s+Gub4snI1sY6JBKg/W6Bo+bPnlKBYZaVYxLfiuK
	f8IE1TJaf6ijN7mQ5BdQEaVcziXhYTnpS9y0gf4T4eYCYpb3IBRot+gEtb1/nl3r2xH4wL6icSx0v
	sE7A3wig==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1XSw-0005G5-9f; Mon, 18 Jan 2021 16:33:18 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1XSt-0005FA-Ii; Mon, 18 Jan 2021 16:33:17 +0000
Received: by mail-ej1-x631.google.com with SMTP id b5so8089787ejv.4;
 Mon, 18 Jan 2021 08:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=hF6QZO2ui8M4e5iVZafQO9TdqdKvztuXf/OtqBjaiiE=;
 b=Kmu32BZcMB80NvCufU/jOaCBV3VpUM6Zx0IEKYT3A4jOWYijJN7+QKkIAc+bl4PaOh
 NHnCfEa9YU5c/e8BakRtLoMDO+5NqNzohMb3js0HAjh+7yfKF3aZOwjuiXjKpINdiNIu
 F8MdM7UMLixqWZJyx/nY2EFhaafkMHv0xEE2P4r8l8LUdJXS64OeUwGTGDaUk8JyrKls
 3/wSW7WE/pjDaQMKvdHrHz+46HSjQMwsZXYzvIzgGUd1LwYpNQocn9Kjvf9ddLmrk9FB
 L9lCfup+hSui9a/wtS9UzMfDhLrIrPPXwqflyY8mBAPuqI2FkgdjNiQV+x+IDARPlGcl
 3mEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hF6QZO2ui8M4e5iVZafQO9TdqdKvztuXf/OtqBjaiiE=;
 b=la5S0ahlHi5vAGOPJxgTEIHfB3yOUluvpeSZsD5wp7ojvtOQKoZ1TaXP2JiGR8W1CD
 FmLfh3RllFmbFuvM4icCWVN5ouRntkteEbWeTroTKgCEHepq1DMoY5ls44IKjTYxujV7
 EVUryTRVElecJuU4GGIRY0D8UGcvyW4ly8p5BQCMvHIE3/GBzF1cRzogqPpHL5WLsy5a
 8VfNclsvWsvbtfhNopB3eUrpxqyE8xIVfkOqLcVGKjoe3oCfy1E0FD4gEheXFieGyd+2
 DvJmk6vWzYElI8PskrnJzRDmaq79Ncf+WGaIAgwp35i1aFFGGnU3/QlE0UQcYpfAzBo5
 IceA==
X-Gm-Message-State: AOAM530E26ijNNXwnBV0hUc8WQncrlhXuDFYf5VT152gLcRvjh5+niti
 xe1qKdU5U0ZEXwy+urtpjBjiTZO7pG4=
X-Google-Smtp-Source: ABdhPJw/YWlrg1475xeiVGz/HO9C+4j9GqprcoUAiRma6zdp+NDRNVRzrgg6b+6tBp8TBRCY+ULnBA==
X-Received: by 2002:a17:906:65a:: with SMTP id
 t26mr336681ejb.394.1610987594201; 
 Mon, 18 Jan 2021 08:33:14 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id r13sm8409806ejy.36.2021.01.18.08.33.13
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 Jan 2021 08:33:13 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: cleanup cpu_thermal node of
 rk3399-rock960.dts
Date: Mon, 18 Jan 2021 17:33:06 +0100
Message-Id: <20210118163306.8693-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210118_113315_627655_9483D7BE 
X-CRM114-Status: GOOD (  12.00  )
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
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The cpu_thermal node in the rk3399-rock960.dts file does not
reference &cpu_thermal directly to add the board-specific parts,
but also repeats all the SoC default properties.
Clean the whole thing up and fix alignment.
Place node in the correct alphabetical order.

Suggested-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts | 75 ++++++++++++-------------
 1 file changed, 36 insertions(+), 39 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
index b20774081..bff8a73d9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
@@ -63,6 +63,42 @@
 
 };
 
+&cpu_thermal {
+	polling-delay-passive = <100>;
+	polling-delay = <1000>;
+	thermal-sensors = <&tsadc 0>;
+	sustainable-power = <1550>;
+
+	trips {
+		cpu_alert0: cpu_alert0 {
+			temperature = <65000>;
+			hysteresis = <2000>;
+			type = "passive";
+		};
+
+		cpu_alert1: cpu_alert1 {
+			temperature = <75000>;
+			hysteresis = <2000>;
+			type = "passive";
+		};
+
+		cpu_crit: cpu_crit {
+			temperature = <95000>;
+			hysteresis = <2000>;
+			type = "critical";
+		};
+	};
+
+	cooling-maps {
+		map0 {
+			trip = <&cpu_alert1>;
+			cooling-device =
+				<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &pcie0 {
 	ep-gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_HIGH>;
 };
@@ -125,45 +161,6 @@
 	status = "okay";
 };
 
-&thermal_zones {
-	cpu_thermal: cpu-thermal {
-		polling-delay-passive = <100>;
-		polling-delay = <1000>;
-		thermal-sensors = <&tsadc 0>;
-		sustainable-power = <1550>;
-
-		trips {
-			cpu_alert0: cpu_alert0 {
-				    temperature = <65000>;
-				    hysteresis = <2000>;
-				    type = "passive";
-			};
-
-			cpu_alert1: cpu_alert1 {
-				    temperature = <75000>;
-				    hysteresis = <2000>;
-				    type = "passive";
-			};
-
-			cpu_crit: cpu_crit {
-				  temperature = <95000>;
-				  hysteresis = <2000>;
-				  type = "critical";
-			};
-		};
-
-		cooling-maps {
-			     map0 {
-
-			     trip = <&cpu_alert1>;
-			     cooling-device =
-					<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-					<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
-			};
-		};
-	};
-};
-
 &usbdrd_dwc3_0 {
 	dr_mode = "otg";
 };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
