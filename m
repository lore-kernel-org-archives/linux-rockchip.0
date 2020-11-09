Return-Path: <SRS0=v4M2=EP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE9CC5517A
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:11:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5BA1720644
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:11:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="YtZ0oKt3";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="XbDlzlt6"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5BA1720644
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DIaQ+Y2vkqEQCitwidSjvacYDThbpqzofGktyLe2nIQ=; b=YtZ0oKt37+mKgl3W1jku767IY
	4q9r9Gs2ViO0VIT1ATY58knq1u37Oio5227mQh1iCKbhZZ+I46Z4mSorCVFHGMgiCbIMBCjghV26r
	rFNwy7+jCwnJuzCPdHF3bz3QzUlsB/sHGFP9lJDeBy7it3i8CdBvuWL/NrppI3wCPOoQKOj5mn5rT
	QIifp3gpc7ahWfBXi6ur+QDMaLDhd2It2Af2cO60ODlrTVMkUKaqbKr010OJNQdpTSHihe3YtWXra
	Cc2q5DCE+1XjVaz/GdC/RUZRSsSDhv9ftG1f85I50aqRTqaEaRXIEkZ5vkcuinEIny2dtbc7+vjTK
	uAkznNZIQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcBdi-0006CC-1J; Mon, 09 Nov 2020 18:11:38 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcBd8-0005rq-03
 for linux-rockchip@lists.infradead.org; Mon, 09 Nov 2020 18:11:03 +0000
Received: by mail-pg1-x541.google.com with SMTP id e21so7807861pgr.11
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2020 10:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wjZIs3gsKOhZP3Z4DFYN/Q2HQQloeesXH2rTefzKVgk=;
 b=XbDlzlt6WmKkQkPsiKciH+cq0Mr5brzczNjGactRkpwCTdYWbacfVrCFtQ+c/GeN7M
 3ZXOcLGq2MVN59gjOvscRkJ+oqFdG53rvCpZLmeubK5QvCVe4jIzJoemkGfEluEFU6Z6
 wurQNCXC+ENc0AjbQ46lb+4LtPP4xXaTlIevw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wjZIs3gsKOhZP3Z4DFYN/Q2HQQloeesXH2rTefzKVgk=;
 b=HUw5kR6w8Y/pDjVU+PxXRa/xWMBWxM7prhEz1dVwFN2VCzs3qhBO82fiAVQW/vD0XT
 qNc4YkmrohBFeLZkmQfY8u8Sbj2v5oH5HweLTZMamIelgWW1TlQUUTcBSuKkA4PAOV2Z
 nWRRMK41LpvoaaESRfHsc4n8AUQeE8zaluluTEGHVi1ZGg5hoSm1GplADw2YzpygCNVv
 z3k2k2rxScctwCLdwcBha0Xfa5kYsfzvu25RNnseNmd0KorTP/RWH9A65DuNOkfWuBNv
 pW2FR6xkBCgPx21Fl7fTJJI7Ght5utM8HkjwzydiPsNaNByZaizJ7lX3bdRDbdgP6z0v
 46yw==
X-Gm-Message-State: AOAM533nqwvTs65vSQINGHp6OV6FLW/O5/A106B3US/YgQdSqbiUaUzM
 RuuYHlFnkfYOCxiDCjHtIXTBuw==
X-Google-Smtp-Source: ABdhPJwkWlnfvR8Ho9XK/H7l6qEQW5AvXUjbLbczYApNsFndtaEzyy6OkbglbRiV8oEEHL7M1EieoQ==
X-Received: by 2002:a17:90a:5b0a:: with SMTP id
 o10mr386043pji.197.1604945459840; 
 Mon, 09 Nov 2020 10:10:59 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7a4:c0f0:b8ab:4687:594d])
 by smtp.gmail.com with ESMTPSA id 136sm12027685pfa.132.2020.11.09.10.10.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 10:10:59 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 4/9] arm64: dts: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
 10.1" OF
Date: Mon,  9 Nov 2020 23:40:12 +0530
Message-Id: <20201109181017.206834-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201109181017.206834-1-jagan@amarulasolutions.com>
References: <20201109181017.206834-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201109_131102_132321_B91C92CA 
X-CRM114-Status: GOOD (  16.22  )
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

dt-bindings: arm: rockchip: Add Engicam PX30.Core C.TOUCH 2.0 10.1" OF

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

10.1" OF is a capacitive touch 10.1" Open Frame panel solutions.

PX30.Core needs to mount on top of C.TOUCH 2.0 carrier with pluged
10.1" OF for creating complete PX30.Core C.TOUCH 2.0 10.1" Open Frame.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../px30-engicam-px30-core-ctouch2-of10.dts   | 77 +++++++++++++++++++
 2 files changed, 78 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-ctouch2-of10.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 5a53979b7057..1ab55a124a87 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-ctouch2-of10.dts b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-ctouch2-of10.dts
new file mode 100644
index 000000000000..47aa30505a42
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-ctouch2-of10.dts
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+/dts-v1/;
+#include "px30.dtsi"
+#include "px30-engicam-ctouch2.dtsi"
+#include "px30-engicam-px30-core.dtsi"
+
+/ {
+	model = "Engicam PX30.Core C.TOUCH 2.0 10.1\" Open Frame";
+	compatible = "engicam,px30-core-ctouch2-of10", "engicam,px30-core",
+		     "rockchip,px30";
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm0 0 25000 0>;
+	};
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+
+	panel {
+		compatible = "ampire,am-1280800n3tzqw-t00h";
+		backlight = <&backlight>;
+		power-supply = <&vcc3v3_lcd>;
+		data-mapping = "vesa-24";
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
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
