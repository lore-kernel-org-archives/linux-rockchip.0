Return-Path: <SRS0=0DM3=MO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB014C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 19:15:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD99660E74
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 19:15:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AD99660E74
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zuuHN0FcuCwaCXd1TJ4VTfmwE+5wggsnCIrME6m9iDM=; b=TCqZP/D85Ubo89
	EDi/oOkunfJE5EEaaHeh0H9RZ83QAzUNEI8sEx2cn/5tLTbaMCTZNRqAkKIVebxdyY7bWF9Z+bjmQ
	bhVdz3FEjww7ba4XxIVSlwg1Adx4qsEKkAYUocTHyGspudN/vnbqIkucNu/Yas+45ky6bhWKLVj05
	ziLpO86QwLsaV8hkjptoJssJSVGEPg5RzT5wJB5AFBz3gqD+ZmYpmzqnkQfZtVIeY8AWEfNqkOAe1
	4p//4NyDdKz52Mh+jtxP977+Lx8T4Gp0N96E6dYyPi2uM7oirkylV6OiWBHoiKGjtZsZqPcvyiSZY
	pKWlmoaQ372rhIxyIEBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6e9o-002VBx-IL; Thu, 22 Jul 2021 19:14:56 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6e9Z-002V7N-CJ; Thu, 22 Jul 2021 19:14:42 +0000
Received: by mail-ot1-x334.google.com with SMTP id
 f12-20020a056830204cb029048bcf4c6bd9so6293494otp.8; 
 Thu, 22 Jul 2021 12:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0aWNNv9WpUcy7y4m+gwqybbiitO/w79/3+r+dgiLdyo=;
 b=Fe3cv5d9j3Cm64YrBiB8CZCXxUwQDfbrwSWxNvP+JGwPMLmEwQW1xE+wW8yQSJ7Plr
 wL+BV12UeiM5IlXkwnJg7m2p86JzMnRESVsps+4gDCXRvBhXWlfevoevAuCw7ia8Xaoi
 1o6NJQGRZ2cVSBnifsljUvrs4vrA1owaHFk/ipKy3ar0NL5s9MG0Ehm1c6HLezKwV8UO
 yFxdoBacgvds2uE/MhUo1fdfCsibXYU5akPOfem/Qxc7C4jmA9dzJQlaO9bLLXd5ievO
 /tZ9+9RdE6taZMDj3x5ickdKlvYDf0eCxxRJyLluztzU6i1IrZh3xTx1/hcIouNBs1tr
 4Bcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0aWNNv9WpUcy7y4m+gwqybbiitO/w79/3+r+dgiLdyo=;
 b=k0CEAaOltNksCvRYwkzOlTWEQhRbHGrayJzNLuYWzPAZ3dBZwCauaTESeRyeCjgPIF
 lF1PexhQLXP2GhRp4bQzHtkJlAAL6oSTWTLsl3tkO9bMiPP/ZCaAQ5TCGSRycvXMRfk6
 m6VVrb/BhH+CLqysrJGO8cf2Qe0xsGTzoIM+aqYmVYGWAGL3ec9rAcXI9SyOxyBYKgOy
 oIf8MMmwmd82CgS5ReGrSq1pc/L4nag7JjC0Y3ejLBwnoXCx6m1E2Hbrg67CpVfjr6vx
 FvzMe6zlBQpCKA2n7cNd99yWLpzo2IPAglQiDNW8FxDPOyjuXS+/zsMoTvqjM036lcTp
 TMFQ==
X-Gm-Message-State: AOAM531ZUCG3qc/n8DWfeynxafyVwZeed5ve+Lq/WAKwdmjmOOXt2ldR
 gCulMAiNyyt6qHo7rCzCO5ntC0yX7gw=
X-Google-Smtp-Source: ABdhPJyveC7de70TPyQMb+WzgNIRTCsr1ebcGRtb/SzH8FpGrs9tKjSyhYQt1aQzyc3zRo3Ut/sWWQ==
X-Received: by 2002:a05:6830:2317:: with SMTP id
 u23mr870801ote.88.1626981279867; 
 Thu, 22 Jul 2021 12:14:39 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id r26sm3106167ooh.32.2021.07.22.12.14.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jul 2021 12:14:39 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de,
 robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [RFC 1/4] dt-bindings: Add Rockchip rk817 battery charger support
Date: Thu, 22 Jul 2021 14:14:27 -0500
Message-Id: <20210722191430.28203-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210722191430.28203-1-macroalpha82@gmail.com>
References: <20210722191430.28203-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_121441_486704_EC3B767F 
X-CRM114-Status: GOOD (  15.20  )
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
