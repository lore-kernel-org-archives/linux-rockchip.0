Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE326C2BA1A
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=utLMxQ2NIV7usoLLw4I7+lYkp2ohb0O8W2sUPZxEYb8=; b=TOCvCbsoaN+gO+
	jD8+6ommUnwYIEZCR7T+Pnz101Mp/nTSYNot00Vc1lICoi3f2WKfY5i5850Z42JDTemCak84pnE56
	rnTyaCDwyqAsUuCUDhT5wO1zmz7J4G52Bc4abA1U1AKx8VldMrT/RHzHQLv4rYaXkb+lmpezz2QZw
	rqqUGAW2Aw5kMdIRLQSkAwIlKSu59d5Zpr/Xj6jnerwMhbPHrP/D+NBxk0rY42VYWc0demLn99paq
	SgUtg/Iob46ImVpjmMiVKo6wr1uQOQBaGxZDsztLSn6j8gZIdeIeddoxo90uen1N4xXnlRrD3/UyN
	o1zuhZuPF1A/D5f9Blfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJH7e-0000000CBUC-35RC;
	Mon, 17 Jun 2024 18:30:30 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJH6z-0000000CB10-1y75;
	Mon, 17 Jun 2024 18:29:55 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-57cb9efd8d1so2230880a12.0;
        Mon, 17 Jun 2024 11:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718648987; x=1719253787; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KKQczdLEOKiZY5ksbDm+uWKIxh3GrP7H2rbcDsplBLE=;
        b=YbGnFrTE1jvp/KjWmVdmSNqtpEed5AZWQ6GUlTwajBQSBd/S6g+DSS2UjM9YPbC6ih
         hWrfh2qQaY7EEvxbYRxx7/M84LiElcBpHdFDKpbnqd957Om0UU//tdATiNAwe4wd9b6S
         Uplf4fnVSkiR1XECmwBGxfgd8OAllwEvoDbQVzJg02Qi0VdAy5kyB2vkpVhmAv6T5FSK
         9rCrqsw/BrDScRug/q+GK09iYAiH+w7xnTLeFNHaBit2Kyw/eG2U3ZdaZA8AwEB5HqZh
         5BoCipZoGZlySL1WSREYYgHLrPf7X17JCJIEIO2mYVHnhtv7A7jfaT2KdHcx3bOU4nZa
         fy/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718648987; x=1719253787;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KKQczdLEOKiZY5ksbDm+uWKIxh3GrP7H2rbcDsplBLE=;
        b=IxsKDzpI4AtiYk9QCSBYHXrg4DOMSUMReiTuy4ZgBIOMIn+btbIeb3NgSpwqw4xdzY
         ez6WCloz7+32npEkP+gT6Zh0kDCF+4qcojE/4BWW4aA2FFMLqWZeKkJ5Ha+mhBja7sTB
         KQqG/4NlQdkZTDUqyJ9yePh86+aTWkmPNGg93uGqUa8ZMh1+FIeqM/4ed0ghCJ2eaUwj
         tc1awn5oy4IkG5zozlNHUWQbnqKptXaSfqrzgIGpFXX0yP/4pqmWWksw3s4ncDUKDMXK
         BkZvlSGk2RibqJo+2KpxOhWmaxwCOPqp71d3zuWEAfgclhXl5XrEunm/KO2Cie7uOhmz
         A8jA==
X-Forwarded-Encrypted: i=1; AJvYcCXB7GZn6XXUH3SUVGBlBNZxVA4qF+ZVr+YAeKgyz0nZH8sZW4u3FhSPxTkHhuzOhMfewNBKe6buzFoZJImREcwpGmHikpzhi09qbd7gsojubCfBrXgzOTJ/R061RQjteTz3UPqDXdDRFjn435nkknr2n4fp+UNj/eY=
X-Gm-Message-State: AOJu0Yx+ZauxQbSKZTD9Ocb7OLrwfnl0a3RwAmv8kGzsNKLYgqBykyRH
	iU0mNID1S+pQ09XylEIFbMafG7w1xXj0oLSIxJx/H6E7YZlJTU3JezOM8XheQxr6wg==
X-Google-Smtp-Source: AGHT+IGmWbahDJPDjyV8+kQptapzHcWa85iX57RgFcz6qMDU6c0xaMiQttmChlLXgAzjRXUEraObFw==
X-Received: by 2002:a17:906:3643:b0:a6f:6bad:b5a9 with SMTP id a640c23a62f3a-a6f94c047c4mr29901466b.7.1718648986800;
        Mon, 17 Jun 2024 11:29:46 -0700 (PDT)
Received: from latitude-fedora.lan ([2001:8f8:183b:6864::d35])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f8a6e58bdsm115397666b.187.2024.06.17.11.29.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 11:29:46 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 17 Jun 2024 22:28:56 +0400
Subject: [PATCH v5 6/8] arm64: dts: rockchip: Add OPP data for CPU cores on
 RK3588
MIME-Version: 1.0
Message-Id: <20240617-rk-dts-additions-v5-6-c1f5f3267f1e@gmail.com>
References: <20240617-rk-dts-additions-v5-0-c1f5f3267f1e@gmail.com>
In-Reply-To: <20240617-rk-dts-additions-v5-0-c1f5f3267f1e@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
 Chen-Yu Tsai <wens@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1718648960; l=6206;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=FnSNCV3/dY8Km0myfhW8fZDwqPdlrAVPS2pOSSMxu0E=;
 b=NSfEjqlSUm3OIowcgGHMo+o9tFxYS2NjNAH5PvVTjFVqj4xfZ8uqiB/bGBy4tNb42b3PJ/FMu
 tqeYJL5KUQWCA+VAI+O9+/OeQxYWSrwBRQu2I7U6D0CUG7O7elFsnjA
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_112949_820033_62F8B2C5 
X-CRM114-Status: GOOD (  17.62  )
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

By default the CPUs on RK3588 start up in a conservative performance
mode. Add frequency and voltage mappings to the device tree to enable
dynamic scaling via cpufreq.

OPP values are adapted from Radxa's downstream kernel for Rock 5B [1],
stripping them down to the minimum frequency and voltage combinations
as expected by the generic upstream cpufreq-dt driver, and also dropping
those OPPs that don't differ in voltage but only in frequency (keeping
the top frequency OPP in each case).

Note that this patch ignores voltage scaling for the CPU memory
interface which the downstream kernel does through a custom cpufreq
driver, and which is why the downstream version has two sets of voltage
values for each OPP (the second one being meant for the memory
interface supply regulator). This is done instead via regulator
coupling between CPU and memory interface supplies on affected boards.

This has been tested on Rock 5B with u-boot 2023.11 compiled from
Collabora's integration tree [2] with binary bl31 and appears to be
stable both under active cooling and passive cooling (with throttling)

[1] https://github.com/radxa/kernel/blob/stable-5.10-rock5/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
[2] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/u-boot

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi | 149 +++++++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588.dtsi     |   1 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi    |   1 +
 3 files changed, 151 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi
new file mode 100644
index 000000000000..35bbc3c2134f
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi
@@ -0,0 +1,149 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/ {
+	cluster0_opp_table: opp-table-cluster0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-1008000000 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <675000 675000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <712500 712500 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1416000000 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <762500 762500 950000>;
+			clock-latency-ns = <40000>;
+			opp-suspend;
+		};
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <850000 850000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <950000 950000 950000>;
+			clock-latency-ns = <40000>;
+		};
+	};
+
+	cluster1_opp_table: opp-table-cluster1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1416000000 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <725000 725000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <762500 762500 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <850000 850000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2016000000 {
+			opp-hz = /bits/ 64 <2016000000>;
+			opp-microvolt = <925000 925000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2208000000 {
+			opp-hz = /bits/ 64 <2208000000>;
+			opp-microvolt = <987500 987500 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2400000000 {
+			opp-hz = /bits/ 64 <2400000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+	};
+
+	cluster2_opp_table: opp-table-cluster2 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1416000000 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <725000 725000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <762500 762500 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <850000 850000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2016000000 {
+			opp-hz = /bits/ 64 <2016000000>;
+			opp-microvolt = <925000 925000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2208000000 {
+			opp-hz = /bits/ 64 <2208000000>;
+			opp-microvolt = <987500 987500 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2400000000 {
+			opp-hz = /bits/ 64 <2400000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+	};
+};
+
+&cpu_b0 {
+	operating-points-v2 = <&cluster1_opp_table>;
+};
+
+&cpu_b1 {
+	operating-points-v2 = <&cluster1_opp_table>;
+};
+
+&cpu_b2 {
+	operating-points-v2 = <&cluster2_opp_table>;
+};
+
+&cpu_b3 {
+	operating-points-v2 = <&cluster2_opp_table>;
+};
+
+&cpu_l0 {
+	operating-points-v2 = <&cluster0_opp_table>;
+};
+
+&cpu_l1 {
+	operating-points-v2 = <&cluster0_opp_table>;
+};
+
+&cpu_l2 {
+	operating-points-v2 = <&cluster0_opp_table>;
+};
+
+&cpu_l3 {
+	operating-points-v2 = <&cluster0_opp_table>;
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
index 0bbeee399a63..7462cc1e1007 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
@@ -5,3 +5,4 @@
  */
 
 #include "rk3588-extra.dtsi"
+#include "rk3588-opp.dtsi"
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index a379269147c4..c7fecf8fe7ec 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -5,3 +5,4 @@
  */
 
 #include "rk3588-base.dtsi"
+#include "rk3588-opp.dtsi"

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
