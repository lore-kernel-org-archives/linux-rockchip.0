Return-Path: <SRS0=v4M2=EP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D992BC56202
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:11:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4946E20678
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:11:07 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="3MgJeKU+";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="LA85quk+"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4946E20678
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xLXhEiR/7p8fIMpU90Khghi8U/ZZCMckbFiK8ONb9As=; b=3MgJeKU+o/JgtgWMkiHuw5ePj
	Po3kbHX93to6/+teRT3Yn+uLqBUkM5ePaO6SYX5XQSUp3TTdOaXPrmkPDda98sgyVnIolkL6UdjOP
	wA67bzE0jQ+PzFRpjEB5eFAzgffBI+rNJ4eAo8b9+GhEE/IuvnHPp/ajVu+PODAThshM4ghQfx8xX
	hLB4PUWsszSZuHVQ+k1E9PHjIFsW1t1aK6sPscymJg+nkfWNnc+/NQQiZBy0TbTvr2+GdbVjDpNA1
	deuSqqd1O6/jZbn+l/YBb53PTum3aAMfxGRi4j/0qXyFks6U+wgUjaibRIWXXF4a3vNTbTB/y1uz4
	0dI6ul46Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcBd8-0005sd-F0; Mon, 09 Nov 2020 18:11:02 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcBcz-0005nI-9R
 for linux-rockchip@lists.infradead.org; Mon, 09 Nov 2020 18:10:55 +0000
Received: by mail-pg1-x536.google.com with SMTP id r10so7804840pgb.10
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2020 10:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=I/doRDnqd7SYfemjv9cY2JSDkvbAWwoc31fGT87WuQI=;
 b=LA85quk+LrPn1jIVBFNSfrEVVRrmba/7sY2cWOTM3kKQO62zUfbsBFXHvdCirkBZgr
 vmGv5ExQefGhJRF3w8Sb0sUvrArxC3C68mHIQ7S1Gd+Asot58lvsBycqqAWIWjLZSAI5
 a8yv1qLTkkoq7wVVxsESYACY4Cr5wtyCIeDZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I/doRDnqd7SYfemjv9cY2JSDkvbAWwoc31fGT87WuQI=;
 b=J0MhKwpV3qFtUNFWXQ9fscOWTJcYqy1YO8EpA5OPGyXZ1ftd8UFGPtdzuzX2nHkExW
 hN/iT4d5KAsEaBbl+B15/8ka59yrvS3k5xFy7kMcgMgPyrs9eXU8DVPIa9pKOkYocKSd
 w0sjNXAyoYvOOUpfqgjDyxAtS5j2mkLhzm8ET4+0/FZDeuhgLg9t42t5mNyelvH+o19K
 xzDnzETAGxFyMqXzUWTQSHbRsLu3EZhBNWL6EDYyAXP5VeEwrgc3R+BHXLNCRF4iJ6mY
 Z45tD/ab09bbUASe9jpzKvfJFYs8t/7xvEXModKRRj33psMmKY9FearwhDQq/r4mTFD9
 P7aw==
X-Gm-Message-State: AOAM532WuqvKjEYg/wRIbTXgnVz5k61xiXEKIwxyOT3QQI7xYxbSkiMs
 5naK6zppEgAjJoVTu4kZ7NAMrQ==
X-Google-Smtp-Source: ABdhPJyKqZfB/JAW7OQ56zGLwKYIoyzxmNFSF5+jGJ63Ca7KP9lhDKulQRQbT/CqG41lNfkp0aAS9g==
X-Received: by 2002:a05:6a00:228a:b029:18b:212a:1af7 with SMTP id
 f10-20020a056a00228ab029018b212a1af7mr15158126pfe.55.1604945450906; 
 Mon, 09 Nov 2020 10:10:50 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7a4:c0f0:b8ab:4687:594d])
 by smtp.gmail.com with ESMTPSA id 136sm12027685pfa.132.2020.11.09.10.10.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 10:10:50 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 2/9] arm64: dts: rockchip: px30-engicam-edimm2.2: Enable LVDS
 panel
Date: Mon,  9 Nov 2020 23:40:10 +0530
Message-Id: <20201109181017.206834-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201109181017.206834-1-jagan@amarulasolutions.com>
References: <20201109181017.206834-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201109_131053_420314_868317D7 
X-CRM114-Status: GOOD (  12.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Engicam PX30.Core EDIMM2.2 developement Kit has on board 10" LVDS
panel from yes-optoelectronics.

This patch adds panel enablement nodes on respective dts(i) files.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../dts/rockchip/px30-engicam-common.dtsi     |  4 ++
 .../dts/rockchip/px30-engicam-edimm2.2.dtsi   | 59 +++++++++++++++++++
 .../dts/rockchip/px30-engicam-px30-core.dtsi  |  5 ++
 3 files changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
index fbbdbb0a40af..8fdd7ff2fdf9 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
@@ -25,6 +25,10 @@ &gmac {
 	status = "okay";
 };
 
+&pwm0 {
+	status = "okay";
+};
+
 &sdmmc {
 	cap-sd-highspeed;
 	card-detect-delay = <800>;
diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
index cb00988953e9..449b8eb6454e 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
@@ -5,3 +5,62 @@
  */
 
 #include "px30-engicam-common.dtsi"
+
+/ {
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm0 0 25000 0>;
+	};
+
+	panel {
+		compatible = "yes-optoelectronics,ytc700tlag-05-201c";
+		backlight = <&backlight>;
+		data-mapping = "vesa-24";
+		power-supply = <&vcc3v3_lcd>;
+
+		port {
+			panel_in_lvds: endpoint {
+				remote-endpoint = <&lvds_out_panel>;
+			};
+		};
+	};
+};
+
+&display_subsystem {
+	status = "okay";
+};
+
+&dsi_dphy {
+	status = "okay";
+};
+
+/* LVDS_B(secondary) */
+&lvds {
+	status = "okay";
+
+	ports {
+		port@1 {
+			reg = <1>;
+
+			lvds_out_panel: endpoint {
+				remote-endpoint = <&panel_in_lvds>;
+			};
+		};
+	};
+};
+
+&vopb {
+	status = "okay";
+};
+
+&vopb_mmu {
+	status = "okay";
+};
+
+&vopl {
+	status = "okay";
+};
+
+&vopl_mmu {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
index db22f776c68f..cdacd3483600 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
@@ -192,6 +192,11 @@ regulator-state-mem {
 				};
 			};
 
+			vcc3v3_lcd: SWITCH_REG1 {
+				regulator-boot-on;
+				regulator-name = "vcc3v3_lcd";
+			};
+
 			vcc5v0_host: SWITCH_REG2 {
 				regulator-name = "vcc5v0_host";
 				regulator-always-on;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
