Return-Path: <SRS0=2pai=KG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49F22C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 10:56:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7120961132
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 10:56:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7120961132
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jNkMsOYcQAAw5V2ThR+7RV5VcjdYxUliWpEdfZCJq94=; b=FW+sLkk3IUvFHaRZr/eeA5O3/k
	z4oem8vV7dMa1+N3X2EEaDu42Yhpm1YfKPG6EW1/FyJWCuVDPA3ehtWJ/TM8JXYiYD13nCvMbXpRk
	Q2LrChn3HhuXtHIfFK3Ou0qj5/woa/dvKbGxEqxhUjxL1ItbzRDZPoPfTeKJlhFU5lQh+PUVZ52VH
	yAXydSDcUq6mgM2MNwnyR6isulYxk/SbLDjGfwfhUOoPA6osOYiTYG0XonwScvIheGALO5vyb0L56
	tOoA0hwVVL4odec9XkL762eH29gS4jqAKt1CIfFViG02k9EPUg7FZ+bylpH/FTFA4k/YLjQUHnmXP
	/UWCUw7A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgQ3v-00H2UV-PT; Tue, 11 May 2021 10:56:28 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgDvU-00Fn4W-8E; Mon, 10 May 2021 21:59:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Jrn69s077/SQA3OClAhoLqCC3Q0behATzSuEGODydwQ=; b=PlQkmR8Wix63y29SykDeJsy4qC
 dEFzRucUNTdyuylzK24Ul+mACy+6RRky2qhHj18w21XI3fXUCZEvqFTaul+HSGbNOTqw+Yt2oC5ML
 fVZOFl+wkpLQQLPxejv9TYfu7aQ5gmgA+ptA7iHyDJFMkBXEvFtS4SqdHWRzjeQ62p1m4v4pDRVIG
 nkFKyAxD5hmVyY+WaXhoIOe/J5Ne7E7VzLsDEO9xwL8eypPuVcqyqZwMMTHw8o+z4mHp7gqQyOIbF
 zsmWoxrpXkS7rgG8s2qXDwewcxnO3/i1sbM31RzBbD60bjw9MzTBbZV+wZH8HbOfwT+bzI+mmRp0A
 hWHksGWQ==;
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgDvQ-0098vk-Lj; Mon, 10 May 2021 21:58:54 +0000
Received: by mail-ej1-x62b.google.com with SMTP id m12so26787468eja.2;
 Mon, 10 May 2021 14:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Jrn69s077/SQA3OClAhoLqCC3Q0behATzSuEGODydwQ=;
 b=eQ32KPdGbyLoLcs3z5P9kn8H5aZbBLc1jDiKe6999eu7NfyPVQiD87cQGXEPKBQKAv
 oZ32WW+PoI8+H5EPol5YKUceNaGOH+KcBbQhL+gK+Zz8ojOFwF8SW+WQKhMcUHrjLJNy
 TBhNXG3piuYBEAnB3xeZQeiEs0JHTlxY/JribkG3O48F9JyJMFQztBVe0AIbp4NQkYnS
 /e5idZ8nCqIuwHn01kXyWcYFCYO/irQoEh9m2jmL5IVwMftihVzgosrBNO23YTDOWEw6
 rzUEWw8Cbfy9SB5iSgnixkMAji2PRNQxTtyxkUGPJlp806oqHf9D1XUfN+9Pc0KP4ndr
 G0YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Jrn69s077/SQA3OClAhoLqCC3Q0behATzSuEGODydwQ=;
 b=bK6Ts+rwegDHNoeDt43daGvr2jsBGRk5AnO8rqtNdtpSpvRwpsBZwB79p8FTTZ3JbT
 vVTiQSXwr7MC+EvZ7gDi18auSyhct9qekqszC97qxIt7pcbQguzk0KIXngUOuCQTnLip
 iW7nLWRlu8B6pZg626xEreTBMCVykZqfLYpRT5RX9ets5jBKcfoL81tydHyTEsLyn5fl
 FUDE9D8q20rvMFpJ+p0JdhcgW5Rx9T9JEj8neNbV8HzmEpfAQ0flb+Oq9V7xAc875pR/
 So/1b8mmEbP2Mv+matOzThC26YsIIUm9FCvIU8mm/gnjqNn57S1vtVl4JFiF9a+Ukcfn
 SbfQ==
X-Gm-Message-State: AOAM532LcNcdzArKYmAWUEnLo4b0vMghrXqqWH/TGnm2/DGcGBAT1LLl
 ZbBeWEkR7l06xXLSOyly+Dw=
X-Google-Smtp-Source: ABdhPJwloSGmgSyrSsvSmxSUibErYK+1xinr91xmwpqNBmVaWyovKm/h+bqSfharSeaoTX5iEcjGBA==
X-Received: by 2002:a17:906:2f91:: with SMTP id
 w17mr8278224eji.443.1620683927450; 
 Mon, 10 May 2021 14:58:47 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id dk13sm12693773edb.34.2021.05.10.14.58.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 May 2021 14:58:47 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: fix regulator-gpio states array
Date: Mon, 10 May 2021 23:58:40 +0200
Message-Id: <20210510215840.16270-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_145852_737267_2F74E42E 
X-CRM114-Status: GOOD (  11.71  )
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_145852_737267_2F74E42E 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

A test with the command below gives this error:

/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dt.yaml:
sdmmcio-regulator: states:0:
[1800000, 1, 3300000, 0] is too long

dtbs_check expects regulator-gpio states in a format
of 2 per item, so fix them all.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/
regulator/gpio-regulator.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts       | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts   | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts       | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi         | 4 ++--
 5 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index 7a96be10e..bce6f8b7d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -78,8 +78,8 @@
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <3300000>;
 		gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_HIGH>;
-		states = <1800000 0x0
-			  3300000 0x1>;
+		states = <1800000 0x0>,
+			 <3300000 0x1>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
index f454ecf41..0d7326a24 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
@@ -77,8 +77,8 @@
 		regulator-settling-time-us = <5000>;
 		regulator-type = "voltage";
 		startup-delay-us = <2000>;
-		states = <1800000 0x1
-			  3300000 0x0>;
+		states = <1800000 0x1>,
+			 <3300000 0x0>;
 		vin-supply = <&vcc_io_33>;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index 19959bfba..7d9481962 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -45,8 +45,8 @@
 	vcc_sdio: sdmmcio-regulator {
 		compatible = "regulator-gpio";
 		gpios = <&grf_gpio 0 GPIO_ACTIVE_HIGH>;
-		states = <1800000 0x1
-			  3300000 0x0>;
+		states = <1800000 0x1>,
+			 <3300000 0x0>;
 		regulator-name = "vcc_sdio";
 		regulator-type = "voltage";
 		regulator-min-microvolt = <1800000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index beee5fbb3..5d7a9d96d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -245,7 +245,7 @@ pp1800_pcie: &pp1800_s0 {
 };
 
 &ppvar_sd_card_io {
-	states = <1800000 0x0 3300000 0x1>;
+	states = <1800000 0x0>, <3300000 0x1>;
 	regulator-max-microvolt = <3300000>;
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 32dcaf210..765b24a2b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -247,8 +247,8 @@
 		enable-active-high;
 		enable-gpio = <&gpio2 2 GPIO_ACTIVE_HIGH>;
 		gpios = <&gpio2 28 GPIO_ACTIVE_HIGH>;
-		states = <1800000 0x1
-			  3000000 0x0>;
+		states = <1800000 0x1>,
+			 <3000000 0x0>;
 
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <3000000>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
