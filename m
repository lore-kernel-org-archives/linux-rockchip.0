Return-Path: <SRS0=Qwjt=NK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19A72C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 18:23:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CB3BE61042
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 18:23:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CB3BE61042
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFuFdz+jTBXh1crUpo5VF7S8FCbcBlIotu5qJXPUl8Y=; b=LhskIqBWH3L2cE
	kZUS1qGK3kae4Ee1sYwWB95jxnDpIE9Vymh30OjTQGS02pGidbmhSzLeTrtwis7wFE+AM0NZcFN39
	ekD0KOlGEQr+gUxDCLQc2/5w+RH1yDH3XiIRrd8yu9CXm3MzVToP82bTZm4FEfysfzlF4mDmfLSmB
	tAxj2S3Jh33LW5LCrLWuDJAms2uFkG39qeYsHUj9LcSJ+xzmZS3Lr4jTGoOLRfjxIQ6NPuLxq01rl
	Jce37leswhFidVBSrB/eSb28RnIDpttHU0k3pJQ8ozgtTCqdI+1UWEooJOo459wqtVEjR7Nvzsoqw
	Siojk6bW3tp215P1MimA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGmhj-009ECc-Io; Thu, 19 Aug 2021 18:23:51 +0000
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGmhJ-009E76-4F
 for linux-rockchip@lists.infradead.org; Thu, 19 Aug 2021 18:23:29 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id A611C411CC
 for <linux-rockchip@lists.infradead.org>; Thu, 19 Aug 2021 18:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1629397399;
 bh=+SImrCqkRrEul7rOhsI1qKN3yyKy4TchkaDMWtndibE=;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=G/LnCKB2Tnwr6Kn+fAilkemau+kXs5YNZ1MiPQnGqMgbJFgMH0IzTM95pWi2yLNNR
 Yoa15LupGu2t06B1Uk1l1F0gicbpke13av8fDLIEDF6i4DcS5C31QNndYjbKKp4aD1
 /nJlrAGpNSa/DxvE/SD6E3Q6yTlC89wWnhswKbuqn5CYhiA+uhQtVyIC7HP8wKi90R
 h0PhoQkbhnsXn8gE2UEtqQ+9WEcnTTDy6yY/lfBhBFCkfKpI9BoCuwvuv+hVGqszIu
 agWC1xCy9GgDU9oJ0Oj49s/3FVVMGRKGIrs6qvh6n90Mxpka740Lqor3yxLfRSgeT/
 T6a9onR57SBEQ==
Received: by mail-ed1-f72.google.com with SMTP id
 eg56-20020a05640228b8b02903be79801f9aso3220203edb.21
 for <linux-rockchip@lists.infradead.org>; Thu, 19 Aug 2021 11:23:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+SImrCqkRrEul7rOhsI1qKN3yyKy4TchkaDMWtndibE=;
 b=mVVSCerw36X4dHa2tHM3y8Ba45YxVP+kPa6qG41+FHWFfWdVqniQQLB8NCDaCYZZhm
 wvosnVbMZI55AwT4JsfESjo/WAzgV6OS/fnRJJLOGVIHoHFoJLl5GdapREsakA/n7oYg
 YMm+JTRxq5kLO9oeuyCzeU9HSDyJFLoeDtm8+a9UnX0pIcTXd3i6tmp4EFyZn+WpTzL3
 juIgKmj02ZnNKZVfLTCIwHT+aF4WoJTZv5i8RLv4cDQw994aBeNest+/xZyRipPISjyg
 RuUFH4VvzEO0BLevicL8f+mmnl5rRoI4vhTK3vGRi7MK7HpqADhcI+0K5SGT1OJIx0UP
 SFNg==
X-Gm-Message-State: AOAM533it8lWx3aWTLMXgsZCw16UI54TtCMoq7/EazfSOWqaEXEg7jeY
 CEsS1tywBZgIafsABkG7oUMu81hLF0LGNJbSDcxL+U/v57mfDq7WPJEhlwfHgYCSWmP7pDKcZxx
 ru+ELWmnex0p2c5IyFX1tAEXaeoTIOSdV84nQJjsmxraXWdC4HQ==
X-Received: by 2002:a17:906:d7af:: with SMTP id
 pk15mr17202001ejb.51.1629397399215; 
 Thu, 19 Aug 2021 11:23:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy9PKf5AeLlWZLsjYyjKkajB0HXk5eiV1OQHU9saAg2/lrKktHhdXLSwy83GBdrBFriYHkvWA==
X-Received: by 2002:a17:906:d7af:: with SMTP id
 pk15mr17201982ejb.51.1629397399060; 
 Thu, 19 Aug 2021 11:23:19 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
 by smtp.gmail.com with ESMTPSA id c28sm1602113ejc.102.2021.08.19.11.23.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Aug 2021 11:23:18 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: align operating-points table name
 with dtschema
Date: Thu, 19 Aug 2021 20:23:11 +0200
Message-Id: <20210819182311.223443-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819182311.223443-1-krzysztof.kozlowski@canonical.com>
References: <20210819182311.223443-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210819_112325_415720_6B25E01B 
X-CRM114-Status: GOOD (  15.43  )
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

Align the name of operating-points node to dtschema to fix warnings
like:

  opp-table0: $nodename:0: 'opp-table0' does not match '^opp-table(-[a-z0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi           | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3308.dtsi         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi     | 6 +++---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi         | 2 +-
 6 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 64f643145688..5dbe6bd3b189 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -110,7 +110,7 @@ CLUSTER_SLEEP: cluster-sleep {
 		};
 	};
 
-	cpu0_opp_table: cpu0-opp-table {
+	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -1014,7 +1014,7 @@ nfc: nand-controller@ff3b0000 {
 		status = "disabled";
 	};
 
-	gpu_opp_table: opp-table2 {
+	gpu_opp_table: opp-table-1 {
 		compatible = "operating-points-v2";
 
 		opp-200000000 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index ce6f4a28d169..7ba9ce4e9826 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -99,7 +99,7 @@ l2: l2-cache {
 		};
 	};
 
-	cpu0_opp_table: cpu0-opp-table {
+	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index becc1c61b182..1c1608d8de01 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -105,7 +105,7 @@ l2: l2-cache0 {
 		};
 	};
 
-	cpu0_opp_table: opp_table0 {
+	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
index 69cc9b05baa5..2180e0f75003 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
@@ -4,7 +4,7 @@
  */
 
 / {
-	cluster0_opp: opp-table0 {
+	cluster0_opp: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -39,7 +39,7 @@ opp06 {
 		};
 	};
 
-	cluster1_opp: opp-table1 {
+	cluster1_opp: opp-table-1 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -82,7 +82,7 @@ opp08 {
 		};
 	};
 
-	gpu_opp_table: opp-table2 {
+	gpu_opp_table: opp-table-2 {
 		compatible = "operating-points-v2";
 
 		opp00 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
index da41cd81ebb7..fee5e7111279 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
@@ -4,7 +4,7 @@
  */
 
 / {
-	cluster0_opp: opp-table0 {
+	cluster0_opp: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -35,7 +35,7 @@ opp05 {
 		};
 	};
 
-	cluster1_opp: opp-table1 {
+	cluster1_opp: opp-table-1 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -74,7 +74,7 @@ opp07 {
 		};
 	};
 
-	gpu_opp_table: opp-table2 {
+	gpu_opp_table: opp-table-2 {
 		compatible = "operating-points-v2";
 
 		opp00 {
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index d89831bee1eb..949322df3b88 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -83,7 +83,7 @@ cpu3: cpu@300 {
 		};
 	};
 
-	cpu0_opp_table: cpu0-opp-table {
+	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
