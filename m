Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D6FCC432BE
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 04:10:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9430A610A3
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 04:10:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9430A610A3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eRSZtg5N//TlQxxS8j4scRZB6rwXQo4MYU8FH8EAgog=; b=EJJc+bjr9Higv5
	VT0z1CBHIGcl9StZQ/eTUPYKVd+VKAxGFTsiJ2ezxJK79QoV1ALNkvPTB2YPDV9NKrHf+06UYTAJX
	8gjwNI3mih4RBxbQvPlr/lPBaaaEpzWHaGzvsjFUTNk3hj38DCxbZBNhTPzc0gaI645fjsQlB5lxa
	zwFUmj1iLSkkQCk6hHTXMgfGXrnoqG/URw76/VCnviRrV2VsEtVeCsJgZ6ggO4uB2dcJfvnmYW1aa
	9PgpTR0tRg1RnjtJ23ZfH/ygkBrXPSOwCybXky12eOLy5BUi6ac4Uc5k91SIkp9HWm0tXLOqUgFDg
	XWO4eZH8spdeVZ6ihLNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mINlM-001Uet-72; Tue, 24 Aug 2021 04:10:12 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mINlI-001Uc2-FE; Tue, 24 Aug 2021 04:10:09 +0000
Received: by mail-ot1-x32a.google.com with SMTP id
 l7-20020a0568302b0700b0051c0181deebso10719303otv.12; 
 Mon, 23 Aug 2021 21:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S7nWRCZmwjD+iwvzS4vZhsQdwavMwcQaNBQdnSbFlKY=;
 b=QkSXk00iAQ+rdtYwrtSca9ZWFI2P69Ki3epJbMznO7bu1iwPljJNuWqwzz4XZLHUAa
 iSlRXcfWkO1cmUAjDNi2bcZs0tqFJ2XC+hM/Vzz1tAgYe7zYa0l8iqKbuhb2B3FMBwRm
 2jh/ui6StR7NLMMCwOa0nNYYWRGuctrE5jvQ53JG8RVoulaSdY3kNA8yvB/wSFlYAQmG
 AO8DRnutI+lJKmcN/8UltTPORy+dW0nxxolld4KOD6vGgNWW+70aLN4oI8YupUWDQsOk
 fVTDPSkbISjb1dlaBHLGypmae5VFO65SJ3M9iUlNDOKYlVxsT/gvEAkXbs9EWAIPTVtj
 1DIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S7nWRCZmwjD+iwvzS4vZhsQdwavMwcQaNBQdnSbFlKY=;
 b=M4rea64UoUevUfnZeDjKwTgMzemXH0Ax1pUk42DKLjO7SYgeYDHD9PDemjMH1Pt9XA
 xI+70sFmvayRwdirQrAFp57TdsCBRIbbLGBd9FWE21F3w4xdhrkIcjd2U42JsqyxOKog
 AK+zDv023JaCU/oswhP9RXWPYp18DlmPWLvakYfb8kXXLwUzaDcElqmrMLGk/47v3Y6T
 nEsXv0jXNnkNTiV9NsIOKeWzBlDnRSuPTHzMIgZru9ek/QeZui012yxBmnP6N26k2kWY
 fw0IwN0MYC1GNKF0hvuonBq5IDzbGHDDl5yo0o+H5CafciZHj0invjCOLTNooMF3K39i
 ZMFw==
X-Gm-Message-State: AOAM532ombLrhhWFzi7HHFvn8CDnKknD46d4mIsfRqtJ/IpycXrk/SI3
 Ku9wXzFNXIszRwTFGUw4cxa8eBIGvwo=
X-Google-Smtp-Source: ABdhPJwppY/hN/1drm4+0yxjVGu43UiUESmp2KIy2e+6sDvIvnE9q0jlBfMR7q7N1fTG+mQMMx8wXA==
X-Received: by 2002:a9d:331:: with SMTP id 46mr30954791otv.359.1629778203301; 
 Mon, 23 Aug 2021 21:10:03 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id i19sm3922818ooe.44.2021.08.23.21.10.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Aug 2021 21:10:02 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 lee.jones@linaro.org, robh+dt@kernel.org, heiko@sntech.de, sre@kernel.org,
 maccraft123mc@gmail.com, devicetree@vger.kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v4 1/4] dt-bindings: Add Rockchip rk817 battery charger support
Date: Mon, 23 Aug 2021 23:09:52 -0500
Message-Id: <20210824040955.29112-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210824040955.29112-1-macroalpha82@gmail.com>
References: <20210824040955.29112-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_211008_592494_7CB28BF9 
X-CRM114-Status: GOOD (  15.06  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Create dt-binding documentation to document rk817 battery and charger
usage. New device-tree properties have been added.

- rockchip,resistor-sense-micro-ohms: The value in microohms of the
                                      sample resistor.
- rockchip,sleep-enter-current-microamp: The value in microamps of the
                                         sleep enter current.
- rockchip,sleep-filter-current: The value in microamps of the sleep
                                 filter current.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../devicetree/bindings/mfd/rk808.txt         | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentation/devicetree/bindings/mfd/rk808.txt
index 23a17a6663ec..6e1b9fb1f64a 100644
--- a/Documentation/devicetree/bindings/mfd/rk808.txt
+++ b/Documentation/devicetree/bindings/mfd/rk808.txt
@@ -77,6 +77,37 @@ Optional RK817 properties:
 - rockchip,mic-in-differential: Telling if the microphone uses differential
 				mode. Should be under the codec child node.
 
+- battery:	The child node for the charger to hold additional properties.
+		If a battery is not in use, this node can be omitted. If a
+		battery node is used, the following values are required in the
+		battery node itself:
+		rockchip,resistor-sense-micro-ohms,
+		rockchip,sleep-enter-current-microamp,
+		rockchip,sleep-filter-current-microamp,
+		Additionally, a phandle to a monitored-battery node that
+		contains the following is also required:
+		charge-full-design-microamp-hours,
+		charge-term-current-microamp,
+		constant-charge-current-max-microamp,
+		constant-charge-voltage-max-microvolt,
+		voltage-max-design-microvolt,
+		voltage-min-design-microvolt,
+		and a valid ocv-capacity table.
+- rockchip,resistor-sense-micro-ohms: Value in microohms of the battery sense
+				      resistor. The PMIC only supports values
+				      of either 10000 or 20000. This value is
+				      used by the driver to set the correct
+				      divisor value to translate ADC readings
+				      into the proper units of measure.
+- rockchip,sleep-enter-current-microamp: Value in microamps of the sleep enter
+					 current for the charger. Value is used
+					 by the driver to calibrate the relax
+					 threshold.
+- rockchip,sleep-filter-current-microamp: Value in microamps of the sleep
+					  filter current for the charger.
+					  Value is used by the driver to derive
+					  the sleep sample current.
+
 Optional RK818 properties:
 - vcc1-supply:  The input supply for DCDC_REG1
 - vcc2-supply:  The input supply for DCDC_REG2
@@ -459,6 +490,13 @@ Example:
 			};
 		};
 
+		rk817_battery: battery {
+			monitored-battery = <&battery_cell>;
+			rockchip,resistor-sense-micro-ohms = <10000>;
+			rockchip,sleep-enter-current-microamp = <300000>;
+			rockchip,sleep-filter-current-microamp = <100000>;
+		};
+
 		rk817_codec: codec {
 			rockchip,mic-in-differential;
 		};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
