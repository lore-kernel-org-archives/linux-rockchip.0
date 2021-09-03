Return-Path: <SRS0=3Vai=NZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 088F8C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Sep 2021 23:17:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BCFB7610A1
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Sep 2021 23:17:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BCFB7610A1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EFmBlD6hVlkeaplZKH9CZxfzH30zg5kWG3+cEohSIVM=; b=ucQwrdGpe0ou/2
	cPCmwkMrJi7QHGocyBAcjqw5ysjQSkw3uac5dqhBgihNkTDeFoBcuC1SwmJadrzMMkWCF/KEaDYOJ
	k5NIcQmEstn6k2G7g+8ohhu5iQn5mtsJlMayS3VjwzXSR7SD68nYeui1C/FtpE9QhTZBQN1vzig8E
	yoBgg4Hyrx6bSc/tb6gOdEhitqWhnbxVt4Wi4gr5SvLnsMG+jNMYCwrxuWMO/YoFBRJ5x5fl3Ge0S
	2zgiUBB+bPFbTPzXDSuxWZ/LHAxSofbuW/wOFSgTHW7Jzrty/NO6/WV3tMoDGPDiYNXyISpq1AoIH
	XMzW1twp6Kb07/VwlwqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mMIRL-00D9vU-6K; Fri, 03 Sep 2021 23:17:43 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mMIQM-00D9Rj-Cc; Fri, 03 Sep 2021 23:16:43 +0000
Received: by mail-ej1-x644.google.com with SMTP id i21so1111373ejd.2;
 Fri, 03 Sep 2021 16:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xnw6WzrVj6kVz7+rhXWWV0P1D+1rQjUWR64V6tXpcQc=;
 b=LUy4S5O3JpUY6Tl+oGYBAq42NZWaI/sMarxUr2Acgv4qDjateQV1MESdAljoiBEN5x
 voXVsB2Jjo6tEcDBWlh6PERG6UG72yEuWJph9IP19xZeNdhdRuAjZUE6R2i+AyXsTREX
 38f9EpjowbY2D6zHtIxOGh14Z48HWkUiAdQPNRWxdosm4GeOKzpYtC5t7IgY/YcUs4aT
 h+Esers0HD8QmxvAjnID+HmlKmJAFvCuj6HT2ETpWZ+NUgX39BcfYd6vxM6pimt0iugO
 cTbBswjwVVKQUWJVwIOyQoJHQfnnMQhob8bnYYA4x8on413eq553u3Tv00w1k0JV6eel
 arjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xnw6WzrVj6kVz7+rhXWWV0P1D+1rQjUWR64V6tXpcQc=;
 b=AhsiAJCPik/BMv5MKVLZrc6YA1Xv+zkobRmMEtiCNoGtSIZ8q4ns6IoCOUdr1PgirX
 vGtFMPNDU8krTs0lq05dQwWaQhF+38xrtpU4n9tDvVf0PLJoR22WI+pPLxkK7/ihQOuo
 eCr0+QjrT6KULaL6qjI7pV6rUJ/qCS3Omg/AmAdekHeG3QhAqWz2mxuVsKA/EhnWF9W9
 820XcH/BW4ygp/qiKlSOEXwq46fsBEFh4IVwhkEBa1z0cmH1zP13Z2KOaW7w5veVaeiT
 i66sGPws+x50upwyZmrzlUCSFDcK5S4ACGQuQNKFCpAe903Z09ld5mrmbwpI/IjVk7Iy
 V5rg==
X-Gm-Message-State: AOAM531gkHOJi2UdztZKZsfTDVMJR3dAfDpqsDWVltMso+6wwO8b5K7e
 KP+0fYpHdUwj3rfcJQ5OU0M=
X-Google-Smtp-Source: ABdhPJxzM4YsGJ8U585f3WpC8RcJQjrrCZEpX0sY4ISI8TQzQaDLnqZogbWyNKtyY5x1UIrRhBzMcQ==
X-Received: by 2002:a17:906:8399:: with SMTP id
 p25mr1324360ejx.449.1630711000888; 
 Fri, 03 Sep 2021 16:16:40 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id r11sm214068ejy.71.2021.09.03.16.16.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 16:16:40 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/4] arm64: dts: rockchip: add analog audio on Quartz64
Date: Sat,  4 Sep 2021 01:15:36 +0200
Message-Id: <20210903231536.225540-5-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210903231536.225540-1-frattaroli.nicolas@gmail.com>
References: <20210903231536.225540-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210903_161642_476520_6BE94385 
X-CRM114-Status: GOOD (  13.76  )
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

On the Quartz64 Model A, the I2S1 TDM controller is connected
to the rk817 codec in I2S mode. Enabling it and adding the
necessary simple-sound-card and codec nodes allows for analog
audio output on the PINE64 Quartz64 Model A SBC.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 35 ++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index a244f7b87e38..3a87c0240b30 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -58,6 +58,20 @@ led-diy {
 		};
 	};
 
+	rk817-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,name = "Analog RK817";
+		simple-audio-card,mclk-fs = <256>;
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+		simple-audio-card,codec {
+			sound-dai = <&rk817>;
+		};
+	};
+
 	vcc12v_dcin: vcc12v_dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -199,8 +213,13 @@ rk817: pmic@20 {
 		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
 
+		#sound-dai-cells = <0>;
+		clock-names = "mclk";
+		clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int_l>;
+		pinctrl-0 = <&pmic_int_l>, <&i2s1m0_mclk>;
 		rockchip,system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
@@ -389,9 +408,23 @@ regulator-state-mem {
 				};
 			};
 		};
+
+		rk817_codec: codec {
+		};
+
 	};
 };
 
+&i2s1_8ch {
+	status = "okay";
+	rockchip,trcm-sync-tx-only;
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s1m0_sclktx
+		     &i2s1m0_lrcktx
+		     &i2s1m0_sdi0
+		     &i2s1m0_sdo0>;
+};
+
 &mdio1 {
 	rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
