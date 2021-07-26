Return-Path: <SRS0=Sv+h=MS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF71C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jul 2021 19:02:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 49E6360F11
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jul 2021 19:02:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 49E6360F11
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QDegWRq/NzQCQgLLmXAFg9HkLKlQQGlGHQtxXCglmjI=; b=UquppRg9GAMqYt
	T+gZcEy5tBQhjMZKwM2HJFgeGGnznln6iqGZI/4qThoNfLb2TFG13c+sN+fuY8RNIlBNuLBkIPLch
	gCc6u0AmgO5XiwVGKon7JcwW+2dXNfSRWzEY26ykBKuzHG1xskcLLsoFx8qSzdKVzcturIzxsv9We
	Dz/ZWl7yZwEqel/cW2enkfz19sQaS0kkynKgmy6G05NgnnfHZqSyXtAveW52PCybko3RFvYH7IdYs
	nf3O/sAWtfKL6q7hHQqDyePxGyw/Fg/Sh1uAE93YoH6465Eeu68Kf7y0j3VzRqr4tmU4cGu/js/NS
	Nd4BF7BM3JIzmVKZ/+/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m85rU-00CJEv-P5; Mon, 26 Jul 2021 19:02:00 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m85rE-00CJ88-Fc; Mon, 26 Jul 2021 19:01:46 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id
 w24-20020a4ac1980000b0290251d599f19bso2483195oop.8; 
 Mon, 26 Jul 2021 12:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xjQq4w89JxvSdKOOfsY9AtY7TN3aPy/MaODSkX355Ug=;
 b=UngmKHBwhsMSd1k9L9YcJfhTednReksxg+DgmLwELsHoLdvANjLKLnqOZBAps7s0zM
 M2xWlEArxsY96VjtLd4xp6SoyFgQugQHPoS+tSwTJulBqIExEh37mA67XCaD1PaKeaeg
 XWahPoH1ncKsKj4DTG+ehgiTxpkbdot+ouqHv7E7wnA6F67kb9Ds0/oOstNV8hXlAb0d
 R66o6f/WN0jHxp548aBmhb2YrqEy0nG2w5JVazpjjCWOf7269N4e6T7L+YA8FQI/l95P
 yReocm9HWLPIQEqs36yHcYYRBYwNU11qOfn5DlRhh4kIa2PpgVV7z23WOQVMrQuA3cm+
 Dlkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xjQq4w89JxvSdKOOfsY9AtY7TN3aPy/MaODSkX355Ug=;
 b=UXXrMXZO3xoLVwUu0p48GPFsmUj74vqfsrsiVvhwVln854bswhtGyS4CsEmyjEyXEk
 PyrL/UcFjQxbQatpC9udtyPFcK9G/ryXFFUy7g2rPztN5mdR644DjenM2NWSCWwystgG
 XcHMMBZ+dnRiJakR6uzuqtSPQ2Q1S4lK5elNePb8oUQ5HSYBmA08+pJlp5+808hrugsw
 qzTJcUwCGBKgkM+NoPJYUNNCAY87JVaY+0pUcKxaXF4005wFyVe50pJHEZe8BZAo1BzR
 W8UdWMw37yP1SVEH45JLpqK47TIQhwGnb8YMUbQ0cgw/5VvxEwsYKJQlyV383dAQ1U4Y
 JmGA==
X-Gm-Message-State: AOAM532EDXe0OKPJzq8LNH++JiFXQJgHsjuGDPku6nPp8xmf6fjWquep
 mwyhssu6LsOxRpHhi9SjeTQ=
X-Google-Smtp-Source: ABdhPJyvXA3k5XqWanLGCHj51hHNxgycx5xHgCxTPsmupY+HaT+lZvA91oxoWDYFgZ3xtt9XUCyY5g==
X-Received: by 2002:a4a:e5c8:: with SMTP id r8mr11420915oov.65.1627326103607; 
 Mon, 26 Jul 2021 12:01:43 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id v7sm106610ooj.46.2021.07.26.12.01.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Jul 2021 12:01:43 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de,
 robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [RFC v2 1/4] dt-bindings: Add Rockchip rk817 battery charger support
Date: Mon, 26 Jul 2021 14:01:27 -0500
Message-Id: <20210726190130.1973-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210726190130.1973-1-macroalpha82@gmail.com>
References: <20210726190130.1973-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210726_120144_587955_81EB0953 
X-CRM114-Status: GOOD (  15.56  )
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

- rockchip,resistor-sense: The value in microohms of the sample
                           resistor.
- rockchip,sleep-enter-current: The value in microamps of the sleep
                                enter current.
- rockchip,sleep-filter-current: The value in microamps of the sleep
                                 filter current.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../devicetree/bindings/mfd/rk808.txt         | 35 +++++++++++++++++--
 1 file changed, 33 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentation/devicetree/bindings/mfd/rk808.txt
index 23a17a6663ec..fa42b6253d26 100644
--- a/Documentation/devicetree/bindings/mfd/rk808.txt
+++ b/Documentation/devicetree/bindings/mfd/rk808.txt
@@ -70,13 +70,37 @@ Optional RK817 properties:
 
 - vcc8-supply:  The input supply for BOOST
 - vcc9-supply:  The input supply for OTG_SWITCH
+
 - codec:	The child node for the codec to hold additional properties.
 		If no additional properties are required for the codec, this
 		node can be omitted.
-
-- rockchip,mic-in-differential: Telling if the microphone uses differential
+- rockchip,mic-in-differential:	Telling if the microphone uses differential
 				mode. Should be under the codec child node.
 
+- battery:	The child node for the charger to hold additional properties.
+		If a battery is not in use, this node can be omitted. If a
+		battery node is used, the following values are required:
+		rockchip,resistor-sense, rockchip,sleep-enter-current,
+		rockchip,sleep-filter-current, and a phandle to a
+		monitored-battery node that contains a valid value for
+		charge-full-design-microamp-hours,
+		charge-term-current-microamp,
+		constant-charge-current-max-microamp,
+		constant-charge-voltage-max-microvolt,
+		voltage-max-design-microvolt, voltage-min-design-microvolt,
+		and a valid ocv-capacity table.
+- rockchip,resistor-sense: Value in microohms of the battery sense resistor.
+			   The PMIC only supports values of either 10000 or
+			   20000. This value is used by the driver to set
+			   the correct divisor value to translate ADC readings
+			   into the proper units of measure.
+- rockchip,sleep-enter-current: Value in microamps of the sleep enter current
+				for the charger. Value is used by the driver
+				to calibrate the relax threshold.
+- rockchip,sleep-filter-current: Value in microamps of the sleep filter current
+				 for the charger. Value is used by the driver
+				 to derive the sleep sample current.
+
 Optional RK818 properties:
 - vcc1-supply:  The input supply for DCDC_REG1
 - vcc2-supply:  The input supply for DCDC_REG2
@@ -459,6 +483,13 @@ Example:
 			};
 		};
 
+		rk817_battery: battery {
+			monitored-battery = <&battery_cell>;
+			rockchip,resistor-sense = <10000>;
+			rockchip,sleep-enter-current = <300000>;
+			rockchip,sleep-filter-current = <100000>;
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
