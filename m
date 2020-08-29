Return-Path: <SRS0=/3g+=CH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC2CFC433E7
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 15:58:52 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B9E4F207DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 15:58:52 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zY3QngUk";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="HGBNFfvy"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B9E4F207DA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5wbxBshJDBGYFbB4uJa+9IdAp2JU5hkPXAOdR7lZv48=; b=zY3QngUkH74oNnaEMMpfofXJ3
	/PfNDZcvwFtg0SiVJ05aTyQilemf5rMVeajtPzFH2W+QrrJXN5NrZgev8TBHCb3wsJ2KW54hBAkvK
	J3V1wzNBb4J1kjHtfwFS5oj09V/hIAqLnfKQLaEcFPZZ440av4KvFDMuUyDAj6afumoRtxIN4HFT/
	WHoDvZuspldXmO3S6NYoXPtMuaqGg2fHLzQl5rwQ+XRCKcN4au0zum+AG3ULmE/jRPpOmODzYWT9t
	XqoUyQPoyFiPya4p2K0/FlBN8WoaO5QOkw1MYUQu6bF0bzkeHf9MHVZfeHyc2LrPWk/atrNkP+Tts
	ReucTSrgQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kC3Fh-00046i-2B; Sat, 29 Aug 2020 15:58:49 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kC3Fd-000454-OJ
 for linux-rockchip@lists.infradead.org; Sat, 29 Aug 2020 15:58:47 +0000
Received: by mail-pj1-x102f.google.com with SMTP id q1so909647pjd.1
 for <linux-rockchip@lists.infradead.org>; Sat, 29 Aug 2020 08:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nxwHm2VuekYt0XLlgyTrwGM7XhV6Ku6W16NQioEm9rE=;
 b=HGBNFfvyMj8caxJEkMJIH+GwBZwuc1YGxYnJDZg72pKvag+ZXcPerRI1ZfqsUqbNFV
 UA8Qw+ucvmwZXAS/GwB/c5PwyslGZ2Pqwyxw+wQYAgoeY3lpgaZuFiuKrEv+1sXyko9y
 L4KcLYJkntDkdfdN47yYDBJP0UieAFTndfERE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nxwHm2VuekYt0XLlgyTrwGM7XhV6Ku6W16NQioEm9rE=;
 b=EgAF78o1r9HhQ2RLNmvjGqn8ApNqBPoqwEJliTGsUx843sScD73KEmc60SXDX/7cHW
 UfzqHHNyGb7Ic4M23Agg+Hk/yvtmcm5KU2qqlLVPYgk/uRv6cfSltpK1PqWtHG0XuZLt
 dcGz2E8rcUAPd2l9HLt1KTB9eSHBst5QkgYJ/muM8Zekzx1afD2KLoKmHydZSAvMiNBf
 MhP4hkdf4U5JJSQ9Bdq7to0b8LIOnDVG/sVgdzxB84b6SvIDx8N/0GpbEeGoBiYAINHi
 ovGjLJkQuYf5gk2aAME/i5nvsGW0CCP2zwYX5UlBE3N68MZNhfxPUFdVISi6JLE6IDgL
 e5Eg==
X-Gm-Message-State: AOAM532HVZM833HBapXtDBWRoaU0YELW1HeP8rrKQh2UOxC8yPw3YK0g
 tUSKwsAYhTlJCdY+iIgpk6ou+6nkO3ZWSQ==
X-Google-Smtp-Source: ABdhPJzce9I/TRSbam4Qr9dItMOQaXfYbhUChv8CxER+mpC8zi9SawY3xte4Hpdg7etGhAQzjPSnow==
X-Received: by 2002:a17:90b:100e:: with SMTP id
 gm14mr3474554pjb.39.1598716722795; 
 Sat, 29 Aug 2020 08:58:42 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9460:cfb8:90a:fedd])
 by smtp.gmail.com with ESMTPSA id
 j20sm3131714pfi.122.2020.08.29.08.58.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Aug 2020 08:58:42 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 2/7] arm64: dts: rockchip: px30: Add Engicam EDIMM2.2
 Starter Kit
Date: Sat, 29 Aug 2020 21:28:18 +0530
Message-Id: <20200829155823.247360-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200829155823.247360-1-jagan@amarulasolutions.com>
References: <20200829155823.247360-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200829_115845_904732_4C5F3B35 
X-CRM114-Status: GOOD (  15.67  )
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

Engicam EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive
Evaluation Board.

Genaral features:
- LCD 7" C.Touch
- microSD slot
- Ethernet 1Gb
- Wifi/BT
- 2x LVDS Full HD interfaces
- 3x USB 2.0
- 1x USB 3.0
- HDMI Out
- Mini PCIe
- MIPI CSI
- 2x CAN
- Audio Out

SOM's like PX30.Core needs to mount on top of this Evaluation board
for creating complete PX30.Core EDIMM2.2 Starter Kit.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- move carrier enablement nodes in carrier dtsi

 .../dts/rockchip/px30-engicam-common.dtsi     | 39 +++++++++++++++++++
 .../dts/rockchip/px30-engicam-edimm2.2.dtsi   |  7 ++++
 2 files changed, 46 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
new file mode 100644
index 000000000000..4e85c1a690e5
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+/ {
+	vcc5v0_sys: vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "vcc5v0_sys";	/* +5V */
+	};
+};
+
+&gmac {
+	clock_in_out = "output";
+	phy-supply = <&vcc_3v3>;	/* +3V3_SOM */
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 50000 50000>;
+	snps,reset-gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&sdmmc {
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	card-detect-delay = <800>;
+	vqmmc-supply = <&vcc_3v3>;
+	vmmc-supply = <&vcc_3v3>;	/* +3V3_SOM */
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m1_xfer>;
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
new file mode 100644
index 000000000000..cb00988953e9
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+#include "px30-engicam-common.dtsi"
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
