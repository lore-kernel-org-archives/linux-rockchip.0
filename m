Return-Path: <SRS0=rMIB=JR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9086C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 16:08:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 40E7B61003
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 16:08:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 40E7B61003
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/DXPTa3HKLOFNY02rHVSMVaUJssk+o8HIerCfFvmoq8=; b=LeTbS3WvdcA13h1tki+s2DTkM
	X/thHETZ8c0X4rfmVngh+1YCVzMh8+hinaxg+x+jxfdp1GsNNTEEois4YBYb1EGdFFbotAmuy9MN+
	6krBASUvMy6LMtrmYDE4fk8GYKVsB4zE1+wiDV88Vilnhw+iDV0h10sXkIBgmS+mNMx5ZCSPbXERl
	dnHBdHqEE0XvwKk+E/Px8KdHr3g0+jz0q4+uE/urefNkh9zx7z1Il08pB2W5GyngQk5Un7b3Bh4rc
	W9zeltIEDUaplTJqRMxqGh8+gt0o/0zfdzOAhkf57hogVZXZRVC/qZsX5u+tGoV4Q0OGhIFuK00x8
	w/TpDYfQg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYsv9-00CXuE-KT; Tue, 20 Apr 2021 16:08:15 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYsv5-00CXt0-0J
 for linux-rockchip@desiato.infradead.org; Tue, 20 Apr 2021 16:08:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=p1qHwnaBTDthiM+9t1GT5R2bsDtwJjFX49Na00F1rvk=; b=YmwZ5vmvmWO/j/gWKEMh9WPZwb
 fovH3sP0BhE39RTUtFzwRh1DGwBgqVKNo/QwR5ly1ngYrkX19Ylftvb1ZiPLzUCGTEKsx62XMv6bp
 yXP1hMOM3eMqXfPtO7LLZXT7x/uo0/hvmTgiUQkqCpLXjNS449MyLY+zkq+qE78ibG+TAUZ3tBzZi
 6dMA/DuZ3uQ1BPB8zv8Q5wR3YIs7zHU93P5WWJDsGn8Qb6smv1kUi9bRoaAOusaQxdxgErF3LZnm2
 o4TOAP82IvtaFfklR4xC9D7SjpFbZhRUvOxQXIbThpyFXuAvnweHgWtc/rMpgFAGS1qnG5mypHiO9
 F3mw+iaw==;
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYsv2-00CG85-3a
 for linux-rockchip@lists.infradead.org; Tue, 20 Apr 2021 16:08:09 +0000
Received: by mail-ot1-x333.google.com with SMTP id
 65-20020a9d03470000b02902808b4aec6dso31505267otv.6
 for <linux-rockchip@lists.infradead.org>; Tue, 20 Apr 2021 09:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p1qHwnaBTDthiM+9t1GT5R2bsDtwJjFX49Na00F1rvk=;
 b=TXyBeGb1GVp05kXs7UySvAzqCzvCrBRbqNlixBkaF3pYcrbrXRYLhSYMANQp/cHwRN
 uwBE+0uOPuLmx1H1AHrP4D6zozHmNpgIorTJ6o4ZBKh9AUs71pMnIsYlNAiF9/03jtba
 QOh2m8C+OaTgt8XP5Fe9Lhbet5AueZ5MywIDcvSba4dgtDcMGZ6ffdB6qucJSntNdPvS
 XmYnuLrwa9HRvFdr3E2az6cYFe1p6H9OaYR7pUT2IG4pr48EcW1mz9WYzfzECQ7k06Zj
 oy6hXZowC0Stlv/G8R1rDmKW3Rlad8YTuO6qc8lWMcU9Zp8GsBWMm/PpNcFxo5urtZnL
 FvXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p1qHwnaBTDthiM+9t1GT5R2bsDtwJjFX49Na00F1rvk=;
 b=X5hvbzD9GBQxUwep5SNhZugLwTbGZmLYUHo3DX7DkLqx4wgLFH4EergAwAaAOP5+1z
 XliFx3sSrtW7nGmyW96k1rIMoQJKdC/kw/SpL1wFOUsHn8k4+G1PbMITPM1O5uKaYCSR
 VsTj9vyKZO3ZE6t5MIKN2WgS2GbSFzA7p3kcpE5DDtBhVGBNQ1X3C5PPeuwgJvjdZrMB
 /KPVnI25cJScv+TAyDmgn+Oq/enTJogVIoAyMMqgpFljbmc4HWbOIrxfA2qa4WhXMtnM
 yWWB6BiY3iAX4E1xbyu4mY5GahP6F5Jrm5omak3E6IGAku0CmsegO/n6ab3iHWBEJjBA
 c8nA==
X-Gm-Message-State: AOAM532vhb5PHdGfI46QpIu2xvnXyYsZSo/h494NeOVadOitn3e7J1Wr
 gfpSCBer3BHKuDOEnpezarxmHqMPRQE=
X-Google-Smtp-Source: ABdhPJxQ5o8M3ALAqpNjQ+YQ9FMH6ZJfgZ5JDRbYczSu3bGxEw5F4cJCiHe+L9XY642UaL8L/5oXyQ==
X-Received: by 2002:a9d:3e4a:: with SMTP id h10mr14160235otg.252.1618934885942; 
 Tue, 20 Apr 2021 09:08:05 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id y6sm4497057otk.42.2021.04.20.09.08.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Apr 2021 09:08:05 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: alsa-devel@alsa-project.org
Cc: broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [v7 3/4] dt-bindings: Add Rockchip rk817 audio CODEC support
Date: Tue, 20 Apr 2021 11:07:46 -0500
Message-Id: <20210420160747.22942-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210420160747.22942-1-macroalpha82@gmail.com>
References: <20210420160747.22942-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_090808_174953_6C371CA4 
X-CRM114-Status: GOOD (  12.69  )
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

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
Changes in v7:
 - Removed ifdef around register definitions for MFD.
 - Replaced codec documentation with updates to MFD documentation.
 - Reordered elements in example to comply with upstream rules.
 - Added binding update back for Odroid Go Advance as requested.
 - Submitting patches from gmail now.
Changes in v6:
 - Included additional project maintainers for correct subsystems.
 - Removed unneeded compatible from DT documentation.
 - Removed binding update for Odroid Go Advance (will do in seperate series).
Changes in v5:
 - Move register definitions from rk817_codec.h to main rk808.h register
   definitions.
 - Add volatile register for codec bits.
 - Add default values for codec bits.
 - Removed of_compatible from mtd driver (not necessary).
 - Switched to using parent regmap instead of private regmap for codec.
Changes in v4:
 - Created set_pll() call.
 - Created user visible gain control in mic.
 - Check for return value of clk_prepare_enable().
 - Removed duplicate clk_prepare_enable().
 - Split DT documentation to separate commit.
Changes in v3:
 - Use DAPM macros to set audio path.
 - Updated devicetree binding (as every rk817 has this codec chip).
 - Changed documentation to yaml format.
 - Split MFD changes to separate commit.
Changes in v2:
 - Fixed audio path registers to solve some bugs.

 .../devicetree/bindings/mfd/rk808.txt         | 181 ++++++++++++++++++
 1 file changed, 181 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentation/devicetree/bindings/mfd/rk808.txt
index 04df07f6f793..31eaabd2e179 100644
--- a/Documentation/devicetree/bindings/mfd/rk808.txt
+++ b/Documentation/devicetree/bindings/mfd/rk808.txt
@@ -63,6 +63,11 @@ Optional RK809 properties:
 - vcc9-supply:  The input supply for DCDC_REG5, SWITCH_REG2
 
 Optional RK817 properties:
+- clocks:	The input clock for the audio codec
+- clock-names:	The clock name for the codec clock. Should be "mclk".
+- codec:	The child node for the codec to hold additional properties.
+- mic-in-differential: Telling if the microphone uses differential mode. Should
+		       be under the codec child node.
 - vcc8-supply:  The input supply for BOOST
 - vcc9-supply:  The input supply for OTG_SWITCH
 
@@ -275,3 +280,179 @@ Example:
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
+		rk817_codec: codec {
+			mic-in-differential;
+		};
+	};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
