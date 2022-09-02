Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 877D9ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Sep 2022 06:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=afI7gpMQzbsWox8FHmJkbuLCQGnqSnirJed0MXpgtso=; b=b4VSi3liBHfhw5
	n8HSxgId91iYdnNbnRBQeWALDzMGlNE4hma54c3TExcrOtvVgom+Nr9MWt81+G5BvKvZX83bd6XVe
	a9QE9mDsDud6M06Yky4N9yEJ+5nVopHKy9n3mu91H8XLUwFiXQkmo40PHpnurK2twDv9YMd2sITB/
	9mq+6sf9kWDJgdv8YYbnjGpUFwkr2p7pU9pBf4ytOUQ0wbZwGb4MGT09UBAqTJ/yb9/FdSxZLUWZ+
	Kvq6j5D4Bkptz2LhMH6q+xlcGWa5ZCqLXWjwSeH7pLK2oCJJ4WG4JqYygumcpgfq/iu2o14LK77Rc
	y3IV3nrUGIJf1HBhj+2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU0WT-000zrj-5P; Fri, 02 Sep 2022 06:51:25 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU0WI-000zmi-Jh
	for linux-rockchip@lists.infradead.org; Fri, 02 Sep 2022 06:51:16 +0000
Received: by mail-pj1-x1030.google.com with SMTP id mj6so1167277pjb.1
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 23:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=vZHYMRZyWlyW2jlBdgxed8KmgG5fMCMo0+ikPtTJWgQ=;
        b=gdWMtBFhnryJ+Z3D74PXL2uiNgjWJxhxK+HrKtz93vj1ZO8BvWbt81GyyWEUeU4PYS
         W8x/MEDihQBH/iJSR0Ci8EOCDVYc2HW8cAcoKzZuOqnfJLVvQlyP1ONlnOmsyCn/m8Eo
         cgl8x5LQh230PAZgr+kh9uNC+nCXhDEZg6a2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=vZHYMRZyWlyW2jlBdgxed8KmgG5fMCMo0+ikPtTJWgQ=;
        b=zmyCgTo4uF7MjmhGr5VKgDdVYkVGS2IBaIJNViRseD7iQQVl+memoJvFRW+o9IjeDh
         bnbloBttJTvJ0OTVZSCg/2LjYebm5H41o23SEzZrAkw5auIY1jIc/pnkWzmsLTMKsCxe
         MCGKRL6g1fBQd0qBW7IzxFJcIg/RPGLCCvCMbthjg3iTOzVFjZBNxxdtc3FGe+SRfWUJ
         JtD0AjJNfU5yeXIXG9uTsqSxYO71QEMzlqdAXFM9BFdEmuvgncJBhZVwvrC8AI8al02a
         H3w5pCDKjwY6Z9v0oWbTa2wm2eligXMrus74ds8q3mv1Vz85sZKuCdfaLpRFEC1zi+S4
         x/LA==
X-Gm-Message-State: ACgBeo2xpHa2YNQTZ1Z3YtvF5fwIQV5B/95Wlto1hsXKX8LKYRPGrZ9C
	yono8Qs3FVZjn0gvr201QVBPfA==
X-Google-Smtp-Source: AA6agR7FVosOCHr7koSgjgyHxpaptX6ySR/hYr2g04aXBfZn9ah7vdT2XuYO8u3qW+XsDhLOFlsspQ==
X-Received: by 2002:a17:90a:748c:b0:1ff:f437:d36c with SMTP id p12-20020a17090a748c00b001fff437d36cmr2548512pjk.0.1662101474101;
        Thu, 01 Sep 2022 23:51:14 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:e40:9bbb:af2b:bca3])
        by smtp.gmail.com with ESMTPSA id e17-20020a17090301d100b00172a2a41064sm769815plh.298.2022.09.01.23.51.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 23:51:13 -0700 (PDT)
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
Subject: [PATCH v4 2/3] arm64: dts: rockchip: Add RK3399-T OPP table
Date: Fri,  2 Sep 2022 12:20:56 +0530
Message-Id: <20220902065057.97425-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220902065057.97425-1-jagan@amarulasolutions.com>
References: <20220902065057.97425-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_235114_666737_0BE05BA0 
X-CRM114-Status: GOOD (  13.89  )
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
Changes for v4:
- update opp-table node names
Changes for v3:
- new patch

 .../arm64/boot/dts/rockchip/rk3399-t-opp.dtsi | 114 ++++++++++++++++++
 1 file changed, 114 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi
new file mode 100644
index 000000000000..1ababadda9df
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
+	cluster0_opp: opp-table-0 {
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
+	cluster1_opp: opp-table-1 {
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
+	gpu_opp_table: opp-table-2 {
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
