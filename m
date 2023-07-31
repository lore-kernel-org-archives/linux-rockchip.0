Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 691EEC001DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 10:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5jbOtbHPI/RdKMBh4VoSmo3MqSf/frbEy8bqhC6CxV4=; b=W2tIQGOm6AoueI
	CNqpprDhCAAumKXzTDHd1c2vmupk3gq59e18xLu00AegP9OwOvImiRzBohAC2UsAlVT5omyxp7wnY
	fbGPx+EsdiU5eNSljxP6m//88IS3l8eiYMWeMEa1HtOOk8g4U850S/R84eQAAFK9exRDkA/dnjhIN
	bOZPKBWCMc9gcwzr9cSrPuDo3cOeDuUhH0MRsEMrpJU0p+uAApgJOx244CrtrqBXSQs29PZuCzIgt
	PQLVfZeyN/O/0P6R4PKo9WSKQb2VCzGDjnPvBAp73NzUGG9YIzwd9MO7yJ24r0LwCJ0/FThf3S2EQ
	RzaDC3ZoFfuGzj0V3RnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQGy-00F7jP-04;
	Mon, 31 Jul 2023 10:37:08 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQGL-00F7B8-2v
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 10:36:31 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-686efdeabaeso2775278b3a.3
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 03:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799789; x=1691404589;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kGLL2IWqqe53/KrEV7Ij4qiJEApJ+nnC26dOnmKXiOM=;
        b=S8/UdxoDBrOFE/PBXrrrcrSQKc2Eil0EnQ5kYdRqqtA/2Jhx4m8Yodvc+F8A99WcDz
         6t76RK4JadDLzwjujBul8WONYooOjX2ZBDekdEXWTjp/ZT7a10ogqOUEWldeEkHs3+pE
         JPsOx7Qescne273kLgZY1nCuYsLy9J3AsqIW5kUujKJ2vmbb9HuCt52iXiUBzOPXT3LM
         n9N4zdvoDOwIXI+M4bGbaE2lqB6ipJzt1om+bzmW+ACAFiziue8OvaoawlYnrOfbeYl7
         qQF5GuZrcMWw9vSdinWbD8HbJsDchMofDFnYyy1Wy1lchg2dj+RK9beuUpq5dG5c6wDn
         SOeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799789; x=1691404589;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kGLL2IWqqe53/KrEV7Ij4qiJEApJ+nnC26dOnmKXiOM=;
        b=MlIIoW9Tla+ZG3ETI6GQ3QDrprJ9HmS+kUQLj6gbHtMAZgl/GAdrpmCPaQY4S8tF+v
         DmtBFSKs/n90L3/pkkqMBOHJtzHPr+j0RhOCzNVavSp8SMXTfXjIWNfzUhVzllVWj3aT
         5BTvH312nqlaYYjeT3HTYgAxQQYLUHwNS5QTetZwSkJHhfcAQrg/X2r/nlmsdFCKBMJs
         z0+lIkKGqDafiba+DLF1G3QNWbDnaGTBjVbxHsAfpP+koFjFqw+AEMLTUNiIxLPGcjeX
         AYBidXgVv+sfUuufOgsBixlDlRUveN5J4rVRUbUERQupdta8e5Yw0r5iZXVHd6KGXssL
         79wA==
X-Gm-Message-State: ABy/qLZxuVSU7eLn7D4XmUnzIp9+f8Hjwmv2UdQMtK+Gxsk2ePmbK1aG
	vCU0iEGQVHHx7Zy3KPW5uQav/w==
X-Google-Smtp-Source: APBJJlGfDnAALa8etDjbX37DnRE8+0pfLEzEtWWS9Bu6a0vi6OdECzid3nUr0EVj/2G0fgzEobOZ5A==
X-Received: by 2002:a05:6a20:c1:b0:12e:98a3:77b7 with SMTP id 1-20020a056a2000c100b0012e98a377b7mr8136555pzh.59.1690799789349;
        Mon, 31 Jul 2023 03:36:29 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:29 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 13/13] ARM: dts: rv1126: Add 12V main supply for edgeble-neu2
Date: Mon, 31 Jul 2023 16:05:18 +0530
Message-Id: <20230731103518.2906147-14-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_033629_974684_C2C5BB2F 
X-CRM114-Status: GOOD (  12.13  )
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

The Main supply volatge for Edgeble Neu2 IO board is 12V DC.

Add the 12v supply regulator for it and input to vcc5v0_sys.

Since the power regulator is part of IO board circuit, move the
regulator in IO dts file.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../dts/rockchip/rv1126-edgeble-neu2-io.dts   | 19 +++++++++++++++++++
 .../dts/rockchip/rv1126-edgeble-neu2.dtsi     |  9 ---------
 2 files changed, 19 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
index 1c6a6a134131..f09be8405964 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
@@ -21,6 +21,25 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	vcc12v_dcin: vcc12v-dcin-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc5v0_sys: vcc5v0-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
 	v3v3_sys: v3v3-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "v3v3_sys";
diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
index 6bbaf6da6545..7ea8d7d16f5f 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
@@ -11,15 +11,6 @@ aliases {
 		mmc0 = &emmc;
 	};
 
-	vcc5v0_sys: vcc5v0-sys-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-	};
-
 	vccio_flash: vccio-flash-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
