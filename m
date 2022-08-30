Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD68BECAAD1
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 06:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1GZENKrfeCESs2vn0P/uCv6ezi2seZdKts8cHwHRrI=; b=dueatkjIIBiyo4
	coxMfKX0ep5PlTe54PNhBJexfLOkL9pmp3Br5kGS3SHe169SGIE+6npyQA+N15dfDnwEse6v6/OSD
	a/iXJ1JnO5cFe328pGzNHN1x7XMlMLvMM3FZgJYCW/e3clKm7tkAGGTyhp5cVkHLVThUK2EWqQ/KY
	bLMOKrVODWmXiPvQl68+3wYsVZ6bgnaYbDT3DIk76uVmmubVxx594JAIjKcLYSBDtPMLZFuabnr5b
	v2f09/0r4GmFO1uPzYZfBu2jMkoAVUuctXlwXMc8kaKHXekYhG19FYoqkwF+7CeKuMC5AOCJNo1zF
	h517MXHIgZQANcJwzbgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSv6S-00EYMe-Lv; Tue, 30 Aug 2022 06:52:04 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSv6M-00EYJ1-Q6
	for linux-rockchip@lists.infradead.org; Tue, 30 Aug 2022 06:52:02 +0000
Received: by mail-pj1-x1032.google.com with SMTP id j9-20020a17090a3e0900b001fd9568b117so7268161pjc.3
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Aug 2022 23:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=FhUz9eJE2XOu3UgXEAzPMUljoPBJG7NhYNYPepyAZw0=;
        b=oQRMAyIeAMFn4DY4zJ3Ik0osz4EPpbLiOJiMDfLctyRtLfvfLBbizSX7JFHe10q9a7
         /He4aWOJVN9coTY7m1NgWAAFV90txARa80wHJ6ZQOhB7ZiWWDQI2mg85hcFpVMvEY6hl
         RMYkw+NOtzyc+NC07/kPDUhW/Izt5PCZLqsaM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=FhUz9eJE2XOu3UgXEAzPMUljoPBJG7NhYNYPepyAZw0=;
        b=fmVcfkh0hqh6rBneG5+bjeav1QhQaZwSec/Svlz4zNOcK5oEDaA1R5aHKiBlI6+6cT
         /Zok2+EUGq0A9cIBK3GGTn4bFvaVtYsuHKGWp1y6959tdNnzpo6SBFbFbakhkiA+GJEw
         9m2dm1xcyajRkHcT/rqMT0GTsJftLpOq3o5fQ/jJiz0+4DwB8fSEnUET6NUdZGwNjtEq
         ecDpRFKZq28MxCd38lGEwihaxW90UJJZKJFc70g8P2TWwvRI9qM2Cl977RL7ZTDXtG0g
         MW0ZIZMtI+WpkGRcnwW2k8bImuNaqoBk5xlg18QmG8cLcGAB6wEydfmnqhbMLgXR8zDv
         lAtA==
X-Gm-Message-State: ACgBeo3Is6hh51AN4PovcMJEgDrrZqIaeHvbGyscc5ebMnLzjlwTnX8L
	7471/5iWP+ijTvGDe2x+GIB0Zg==
X-Google-Smtp-Source: AA6agR6XZYkNzdx6alsztuL0LBPi4vUoo/o+qOCworvgIncDm1t08KUm8Aty1z6QmgAhNfzXwZMpEQ==
X-Received: by 2002:a17:902:f711:b0:170:9e3c:1540 with SMTP id h17-20020a170902f71100b001709e3c1540mr19537990plo.22.1661842315093;
        Mon, 29 Aug 2022 23:51:55 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:8d7b:a73a:5272:1b81])
        by smtp.gmail.com with ESMTPSA id x14-20020a1709027c0e00b0016c78f9f024sm8854460pll.104.2022.08.29.23.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Aug 2022 23:51:54 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-amarula@amarulasolutions.com,
	Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 2/3] arm64: dts: rockchip: Add RK3399-T OPP table
Date: Tue, 30 Aug 2022 12:21:18 +0530
Message-Id: <20220830065119.120844-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220830065119.120844-1-jagan@amarulasolutions.com>
References: <20220830065119.120844-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_235201_202575_1378430B 
X-CRM114-Status: GOOD (  13.18  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

RK3399-T is down-clocked version of RK3399 SoC operated at 1.5GHz.

Add CPU operating points table for it.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- new patch

 .../arm64/boot/dts/rockchip/rk3399-t-opp.dtsi | 114 ++++++++++++++++++
 1 file changed, 114 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi
new file mode 100644
index 000000000000..b41c765bd07b
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi
@@ -0,0 +1,114 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2016-2017 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2022 Radxa Limited
+ */
+
+/ {
+	cluster0_opp: opp-table0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp00 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <875000 875000 1250000>;
+			clock-latency-ns = <40000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <875000 875000 1250000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <900000 900000 1250000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <975000 975000 1250000>;
+		};
+	};
+
+	cluster1_opp: opp-table1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp00 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <875000 875000 1250000>;
+			clock-latency-ns = <40000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <875000 875000 1250000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <875000 875000 1250000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <925000 925000 1250000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <1000000 1000000 1250000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <1075000 1075000 1250000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1512000000>;
+			opp-microvolt = <1150000 1150000 1250000>;
+		};
+	};
+
+	gpu_opp_table: opp-table2 {
+		compatible = "operating-points-v2";
+
+		opp00 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <875000 875000 1150000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <875000 875000 1150000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <875000 875000 1150000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <975000 975000 1150000>;
+		};
+	};
+};
+
+&cpu_l0 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_l1 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_l2 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_l3 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_b0 {
+	operating-points-v2 = <&cluster1_opp>;
+};
+
+&cpu_b1 {
+	operating-points-v2 = <&cluster1_opp>;
+};
+
+&gpu {
+	operating-points-v2 = <&gpu_opp_table>;
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
