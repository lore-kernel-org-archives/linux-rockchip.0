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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 298C1C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 16:08:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 70D8161003
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 16:08:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 70D8161003
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cSTQrHF5fZWTPxVxxijq3W6O0qRU+sAdbEja+U3qd34=; b=FtIxKRFSLjHvcfQwdmhnjsu6m
	XQzR/e1evlAi5O9GmxaM2JcpgiILuASACI38SVKlbUjVEn0OlU0OHrAfRXDJxAIrdKkzuLAbTHpJQ
	Xzx/4hK18tqXI2N8BHPIM0X6H0rQCJ3JbX1uqCi9gJWe5+OdhQx5i5Er7bPOYlSMjQdLOzam6smt2
	VYzMJYXmQYy/r7T8yd5vTL4OwmBvYu2rLHQI9YqVBvF4pQm9gyEESF1hmjAuEOnFW6a7pF+oaGARf
	BtIsFr3jzGr7evbvu6ZDnT4zAn6P6zoEEZ+hCoAQjYOM1k71NelEKh9gbVlACNcUCpNMoV9aUn7hS
	Ol5Pbr/og==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYsvD-00CXve-0X; Tue, 20 Apr 2021 16:08:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYsv9-00CXtu-7X
 for linux-rockchip@desiato.infradead.org; Tue, 20 Apr 2021 16:08:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=12xoJC8I/0jBFBQ6uTjCdcTJY4GOeJNX+Bl1LJtzWP8=; b=3CWX3Er4T50m3KaZEHZk9OhXOG
 P1wtPESX4BneAia3Ks2Iv8dym1AL30uZFWCcIDtrv2e1fzrCaKhpUZRhR0Q7W5f+CGRwdBDlfRrpj
 MJj1FabLDRUSd/ruw2mlXhPKAfu5weZj0J8DU0mqg6at539c78CoC7yRFd9AqMSU00l5tMLbyrPTn
 IQXnzxZwIVqLi5sXJ7m7iUWIquZE+i0I9c/Gqwvn/VexoF/uYx6Mzrw896n99PDGBZwPrVGMkhmcE
 TEO7WzhSLjUBliBlw1thQaJcEUd/IcMXw9dKdlBldALFsEs08qv4UWCMoN2aAGr9z+JKa58rs1FRT
 FlLw85Aw==;
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYsv3-00CG8Z-LR
 for linux-rockchip@lists.infradead.org; Tue, 20 Apr 2021 16:08:14 +0000
Received: by mail-oi1-x229.google.com with SMTP id d25so1951789oij.5
 for <linux-rockchip@lists.infradead.org>; Tue, 20 Apr 2021 09:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=12xoJC8I/0jBFBQ6uTjCdcTJY4GOeJNX+Bl1LJtzWP8=;
 b=G7jm/Yam0WwdVJCS/CDN+oXqZYSYYvANUNbi9M8uORILKNhtccbkQZWZFKWtYUh5zu
 fmXD4CB0/BQ1fmiNaDsgT/HtN7kekBsqKNfBNW/fwrll71WbOsGTX6Y6+7Et3XjziFWd
 nyVxkMKd6R46UT1KZ1n+/uPTcsrUkswjCAjQ4Jz1N0i4mm+ogzi0kfCQ/Oh4Z8sSc+dk
 IcYypzam4YUViIWFLkJD6YyC4EiL0EpeKVNYRkcxTr7UArkGuwenscO0m8tQ1DOMK4+Y
 FZh9KQXdhbXosPujic/K3gF+TOdXdXiZSGTbDlq5Gf4z9D0TmUS86dllE5azjIfLzdRk
 lDhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=12xoJC8I/0jBFBQ6uTjCdcTJY4GOeJNX+Bl1LJtzWP8=;
 b=Rykoi8e0vd4jTe+5N9WXuMBG1wUkGwWUpQYUQqB1cATx18ejINSromvHNvnaZb7kKf
 SXwuW14/3UTw2fEB3ddhnse557Kx9A/qypw0dNr47dbflVMaGcO10eYcmUjWlKMCCFLB
 KA+kiWa0Dg4OcoXZjCLhbZsaYy4/28OWbTK39jJh5LOKp4eLrZG0LhFoVSVrPdBU/18y
 PwOjK6XsSK4VSr0O0O0PpuDvedUhNFQ++z7k6/Vs1fcVZzKYZYCtOBnQI7dSSSC7KIja
 GTM45Z/xqsKOVumx74ngThNgwF8J7HA5xOric7VfolUV/TjXpNVhuUKH5HDZNwK+/mu/
 XtUQ==
X-Gm-Message-State: AOAM533ze5psCYkP6ZWJ15oyc2UcaZtfhqe4r3YRDR6JF/tyb1lcARqE
 Bpv546L4rHVITeDiSp9oqFE=
X-Google-Smtp-Source: ABdhPJxnIsUzsLKcT2K+8x1/eiGdYFczArt58MVmcFmfXRNXcC94kQ2ecJEGomo5nvJVw4qw+hWk4w==
X-Received: by 2002:a05:6808:1444:: with SMTP id
 x4mr3736124oiv.142.1618934888333; 
 Tue, 20 Apr 2021 09:08:08 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id y6sm4497057otk.42.2021.04.20.09.08.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Apr 2021 09:08:07 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: alsa-devel@alsa-project.org
Cc: broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [v7 4/4] arm64: dts: rockchip: add rk817 codec to Odroid Go
Date: Tue, 20 Apr 2021 11:07:47 -0500
Message-Id: <20210420160747.22942-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210420160747.22942-1-macroalpha82@gmail.com>
References: <20210420160747.22942-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_090809_725556_57DA79FB 
X-CRM114-Status: GOOD (  14.24  )
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

Add the new rk817 codec driver to the Odroid Go Advance.

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

 .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 36 +++++++++++++++++--
 1 file changed, 34 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 97fb93e1cc00..5356bcf6d99c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -161,6 +161,29 @@ blue_led: led-0 {
 		};
 	};
 
+	rk817-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,name = "rockchip,rk817-codec";
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,widgets =
+			"Microphone", "Mic Jack",
+			"Headphone", "Headphones",
+			"Speaker", "Speaker";
+		simple-audio-card,routing =
+			"MICL", "Mic Jack",
+			"Headphones", "HPOL",
+			"Headphones", "HPOR",
+			"Speaker", "SPKO";
+		simple-audio-card,hp-det-gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_2ch>;
+		};
+		simple-audio-card,codec {
+			sound-dai = <&rk817>;
+		};
+	};
+
 	vccsys: vccsys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v8_sys";
@@ -265,11 +288,14 @@ rk817: pmic@20 {
 		reg = <0x20>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
+		clock-output-names = "rk808-clkout1", "xin32k";
+		clock-names = "mclk";
+		clocks = <&cru SCLK_I2S1_OUT>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int>;
+		pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;
 		wakeup-source;
 		#clock-cells = <1>;
-		clock-output-names = "rk808-clkout1", "xin32k";
+		#sound-dai-cells = <0>;
 
 		vcc1-supply = <&vccsys>;
 		vcc2-supply = <&vccsys>;
@@ -428,6 +454,10 @@ regulator-state-mem {
 				};
 			};
 		};
+
+		rk817_codec: codec {
+			mic-in-differential;
+		};
 	};
 };
 
@@ -439,6 +469,8 @@ &i2c1 {
 
 /* I2S 1 Channel Used */
 &i2s1_2ch {
+	resets = <&cru SRST_I2S1>, <&cru SRST_I2S1_H>;
+	reset-names = "reset-m", "reset-h";
 	status = "okay";
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
