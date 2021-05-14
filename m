Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5169FC433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 17:34:33 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 00ABF613DE
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 17:34:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 00ABF613DE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BQcTkRlTEKlfKHioPCdeyyuUoXdyJYq6DMbl3oDBOto=; b=H4B9hclMFIvVCYD520DI6k0YX
	t8xhX5cb2JFwjESFtmSPQwyTkStKyQw9Fg9VDn7PFofmqtOF5y+PpQSfSPM6ffiLImPgimA8f2TZz
	TyF2c6Fjo41KmJsxa7x4Dqo16f/fxaZoASCguVp56jvZsoR9TmJqPFDIrqi0OrR3PqBfk+wnG05sl
	kTZjc5UMhhfNGy7lV6+5vJLZYamR54D+sqDe5OSknP6gWVebZnBur9XvY2dWAXDqy6HFeahZ8UUu7
	wbDeLFF+Z4Ej51rPTYho4yOH3Qj5oS/85L1s0G9ubvJzQdwNahikc0Z8zp1yaDtdiyoZ0d5DgAy7X
	bTRRdq6Fg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhbTr-008ZvL-P6; Fri, 14 May 2021 17:20:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhbTo-008Zun-Nm
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 17:20:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=XImWdEYC3gDQdFM+D/yVM45WqAeLrw/TsyXb3e1uXWE=; b=FvWGRdSmBIfXq+6RTINbaZWH6M
 jCfaarTvsdAVH23uAOnFAmOuDBSnMOHq2A8EIIHwKRbK4ErWs1VLonj7FeeMOrdwUyLDlScr2rQro
 hXvHcA59VXeenu2g0ezf7jRZ8EjSMZxkhzcVJLfOujfIO4PEEQKZTi5z8Y43MmIMjYm6pwwcNI5fh
 zqt9cJzzzjv7WFLPNRo/rPCe/IlNhEbUH31mZwIR0cLxCkwqImSgFvOGI9Zum7YFzLtkoX8dj7swl
 QhGG4QDCoPrh7FZs7Z+jMA+9yxEgV86liNGzT5/51hnEpN6ocBuaC4eSXrtcdlXWTj1CVdC76psSZ
 R0FTO9gw==;
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhbTl-00C92I-OZ
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 17:20:03 +0000
Received: by mail-oi1-x22e.google.com with SMTP id f184so167061oig.3
 for <linux-rockchip@lists.infradead.org>; Fri, 14 May 2021 10:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XImWdEYC3gDQdFM+D/yVM45WqAeLrw/TsyXb3e1uXWE=;
 b=pYqHTTuxdGSEP9E4YGxU1o/AuIx8kIVyQcdFUPBpnp6pp4ZEObg2iQfOEHjGyzfTVX
 x9sjsK6uX8ry7n6s3RB/sgqbXx83W3owc4VpWBTepSMNkQ5RmaCIfIZ4/WL+RoDfK9vl
 DlrroWVzEZjDNIzXdaIMu1AY3gO3HRTPSyDlsWBnJmhIcEL2XTV2/+oBYn8Ndl40e+xB
 zmysYtZBOJNR4cnX8g7JuhUs74LimbklGkRDTx782cPSPtoEKwVlIY6WUiyneiKqkyWd
 Ki4YW/NtmQNWpMEBEhOIEOgTWmhSIgfjsP5OvGAc63IMq386UCZe16SrUwCZ1OXflC/C
 a8Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XImWdEYC3gDQdFM+D/yVM45WqAeLrw/TsyXb3e1uXWE=;
 b=VnfRt5z2v41oU7yuOrc6X0tR3bz8L2pz1TQf/h4U1hgLq54FnUYdbRAHQx0brYbG/S
 YB0fZdnqGD/tQLoNN7xSUMiPtLkd5SxdwLhLZMUL1hKP1ZfkdcwbExQrtpkz2uFpNHVI
 faUfdKaAbsL/6JPGTZsTRNNJWUzpf0ZYMJ680rH+CwIpCcANl6x00a6meLX3d75uGVBO
 ufHunqO9n9FvVlncYrUGDOcCQ7zPoIPvCDqraLvUbq0UMbQ0vDpLuS8O9FGXM5+oKNgf
 6zdoip7wBWu6i2dATa3v3PU3Kq6igLRnvVRNX6B0etkjEu7OeKsZvXyfgZSnNfFor81T
 vDPA==
X-Gm-Message-State: AOAM531tn+A8Cb0mqkRrZzvEl3mQWFJlneFcmg2HpQ+CE295tMqLTX3E
 VaUFwTAIbuqJYe8k5uRSYOY=
X-Google-Smtp-Source: ABdhPJyVvlmz5ONd0vvjUhfdgkH8DXQm7uJ/noA95b1cQMV54bqY4SzZCdeOWf0Pbx5Q67mHUW/SQQ==
X-Received: by 2002:aca:6505:: with SMTP id m5mr33381113oim.93.1621012799713; 
 Fri, 14 May 2021 10:19:59 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id x14sm1302547oic.3.2021.05.14.10.19.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 May 2021 10:19:59 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: alsa-devel@alsa-project.org
Cc: broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v10 3/4] dt-bindings: Add Rockchip rk817 audio CODEC support
Date: Fri, 14 May 2021 12:19:39 -0500
Message-Id: <20210514171940.20831-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210514171940.20831-1-macroalpha82@gmail.com>
References: <20210514171940.20831-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_102001_837475_80D2C48C 
X-CRM114-Status: GOOD (  10.51  )
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

Create dt-binding documentation to document rk817 codec.
New property name of rockchip,mic-in-differential added to control if
the microphone is in differential mode or not.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Tested-by: Maciej Matuszczyk <maccraft123mc@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/mfd/rk808.txt         | 186 ++++++++++++++++++
 1 file changed, 186 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentation/devicetree/bindings/mfd/rk808.txt
index 04df07f6f793..56121039154f 100644
--- a/Documentation/devicetree/bindings/mfd/rk808.txt
+++ b/Documentation/devicetree/bindings/mfd/rk808.txt
@@ -23,6 +23,7 @@ Optional properties:
   default output clock name
 - rockchip,system-power-controller: Telling whether or not this pmic is controlling
   the system power.
+- wakeup-source: Device can be used as a wakeup source.
 
 Optional RK805 properties:
 - vcc1-supply:  The input supply for DCDC_REG1
@@ -63,8 +64,16 @@ Optional RK809 properties:
 - vcc9-supply:  The input supply for DCDC_REG5, SWITCH_REG2
 
 Optional RK817 properties:
+- clocks:	The input clock for the audio codec
+- clock-names:	The clock name for the codec clock. Should be "mclk".
+- #sound-dai-cells: Needed for the interpretation of sound dais. Should be 0.
+
 - vcc8-supply:  The input supply for BOOST
 - vcc9-supply:  The input supply for OTG_SWITCH
+- codec:	The child node for the codec to hold additional properties.
+
+- rockchip,mic-in-differential: Telling if the microphone uses differential
+				mode. Should be under the codec child node.
 
 Optional RK818 properties:
 - vcc1-supply:  The input supply for DCDC_REG1
@@ -275,3 +284,180 @@ Example:
 			};
 		};
 	};
+
+	rk817: pmic@20 {
+		compatible = "rockchip,rk817";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
+		clock-output-names = "rk808-clkout1", "xin32k";
+		clock-names = "mclk";
+		clocks = <&cru SCLK_I2S1_OUT>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;
+		wakeup-source;
+		#clock-cells = <1>;
+		#sound-dai-cells = <0>;
+
+		vcc1-supply = <&vccsys>;
+		vcc2-supply = <&vccsys>;
+		vcc3-supply = <&vccsys>;
+		vcc4-supply = <&vccsys>;
+		vcc5-supply = <&vccsys>;
+		vcc6-supply = <&vccsys>;
+		vcc7-supply = <&vccsys>;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-name = "vdd_logic";
+				regulator-min-microvolt = <950000>;
+				regulator-max-microvolt = <1150000>;
+				regulator-ramp-delay = <6001>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vdd_arm: DCDC_REG2 {
+				regulator-name = "vdd_arm";
+				regulator-min-microvolt = <950000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_3v3: DCDC_REG4 {
+				regulator-name = "vcc_3v3";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_1v8: LDO_REG2 {
+				regulator-name = "vcc_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd_1v0: LDO_REG3 {
+				regulator-name = "vdd_1v0";
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG4 {
+				regulator-name = "vcc3v3_pmu";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-name = "vccio_sd";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_sd: LDO_REG6 {
+				regulator-name = "vcc_sd";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_bl: LDO_REG7 {
+				regulator-name = "vcc_bl";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_lcd: LDO_REG8 {
+				regulator-name = "vcc_lcd";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <2800000>;
+				};
+			};
+
+			vcc_cam: LDO_REG9 {
+				regulator-name = "vcc_cam";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+		};
+
+		rk817_codec: codec {
+			rockchip,mic-in-differential;
+		};
+	};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
