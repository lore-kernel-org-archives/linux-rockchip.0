Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 565FCC48285
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jan 2024 18:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWOlUVvfQH3gOwnqc1+PiT2ACTrarn9E+LZrdQL+l+8=; b=MdrxWpFSgYw5ze
	3VN6CGKyq4soTyfSzHXLgMoBH04CZXjQVgul3S3je0E8zsasSIZAqHgWvscnDA5DXbQQPIw3GmC2C
	wqbsjcWpll8cefqsZogSLHaKpCPQUAxI+P5Zzl2OSP2Lq03xLoVX0lyNXj3ilmvRgolaBDTvEaTfh
	YfT1qxUiuFBIHqJkdB+TpxqiBjPQYrqhpXgcsu8ko0GBZKZPpe0p4Yuwb6fTaZYC1iGNG8ZXSlWiK
	xl23jk6wOO8avqX8fBZiAk8zr79/pnfNNDaxFW+CzdrQ3St7Bm3RcROsv/7XGviLC9gHJDgs6DKUx
	rmpyrwYQFvWodQgtiZoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUskE-000000007OD-2TQV;
	Tue, 30 Jan 2024 18:22:02 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUsjz-0000000079t-1FiD;
	Tue, 30 Jan 2024 18:21:49 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-33ae6dfa923so1878076f8f.1;
        Tue, 30 Jan 2024 10:21:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706638905; x=1707243705; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TCgr8fam0PZwcsY4iS5GHvHyFYZQiFYZ6P//7dIPCFI=;
        b=amUlBL5xZ6puIty4AJBIUL9pZjB/XjF0jzF1PRmlfiC9ntWHfLD0z/DUQXp1kUQvSk
         Xln1RpMC8jHaoXD4+7Vn7rLifr0UrwS/6Lw4GRhlQ6n+aEFQSCfvVOgrR5Tuuv++Cwd/
         ao3qNohA3htalQi6VjvDVgakVRPfM8+KYcebsl7qrbJy/PEtiuUx2IZ/xG4AbK6pQT/R
         ctAZxw85RNkld6OjPzC099hBghZ1beQEZIk06fsOjvwsQihFQRoNZ/AxWVwTdBHLNCeI
         qOJrZXdgQNtY5KWR46e5H7+FYPWQmR3ytwCiv+Re6r/cLOcOod1Ft8F1LPppKxwRrCPT
         Csgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706638905; x=1707243705;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TCgr8fam0PZwcsY4iS5GHvHyFYZQiFYZ6P//7dIPCFI=;
        b=EogZo6DiIqelVmpfsDnRNEnGJNIbeetjxMytCT1Pkw+S2wKJJ7Ovl/wI5qtzGKG+/O
         dlJrK0JIE03Mzx463uE/kHPN5Dp493CWE2NIu6vfB/m2aGbtQTcDz4wZzTHbntDWBQzC
         lBgb1U7ERbZiMvnrYesf4kEMg0AXmggZbfobQw4aXqWyHsJekDSi9GXubrgxFvPzsVYt
         SaFhw+ZUIaM8+PDt6ejJp8pmJPt/mrNgQNFOrw9VnhOkE/eD1bX+7XKlg/yn5mp2j9Rs
         Ibwwa7cfJbyMGBjIgEeNj0ef94iBmHFlmaYZucl1DToV9UuBefrulLKJ0dRW3GdD57cS
         at6A==
X-Gm-Message-State: AOJu0YyVH00bipaGxeb+0fWrVP4vLYr66B5gJbPXU8U/eV6fToDnaA/2
	3CQ5iM+KOOzR3DSXvJqvtVjwgrIJA1wuZyPbyVHbRdbx6TqLNLRF
X-Google-Smtp-Source: AGHT+IEaGClGMCGaMap75kEkKgVtQ/kO1vzv7boK9OwuWCkBIx23u3amrCwLk/Im7kbuzD8yEt8yYQ==
X-Received: by 2002:a5d:4048:0:b0:33a:f431:3489 with SMTP id w8-20020a5d4048000000b0033af4313489mr4002337wrp.56.1706638904893;
        Tue, 30 Jan 2024 10:21:44 -0800 (PST)
Received: from [172.30.32.188] ([2001:8f8:183b:50fb::d35])
        by smtp.gmail.com with ESMTPSA id u18-20020a5d4352000000b003392b1ebf5csm11374254wrr.59.2024.01.30.10.21.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 10:21:44 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 30 Jan 2024 22:21:16 +0400
Subject: [PATCH v2 4/4] arm64: dts: rockchip: Add further granularity in
 RK3588 CPU OPPs
MIME-Version: 1.0
Message-Id: <20240130-rk-dts-additions-v2-4-c6222c4c78df@gmail.com>
References: <20240130-rk-dts-additions-v2-0-c6222c4c78df@gmail.com>
In-Reply-To: <20240130-rk-dts-additions-v2-0-c6222c4c78df@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1706638888; l=4728;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=aJBlbBzLk35xluhYDDqKkPd7JghGWbRpRxQd2L86Bv0=;
 b=Wcw/w/Kf9x9YIWkZW/nCSxBwgCUVj9Q/t9fnjkvjyk30DG0la7ddy2b/FyVw3hAsYmpAVW46t
 JPdQ6dguXM1BgvVzctgFPWbpC0MaBl+PXUuTfTqB36+9z6OOdVTsKPy
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_102147_530480_7CBB0B36 
X-CRM114-Status: GOOD (  10.46  )
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

This introduces additional OPPs that share the same voltage as
another OPP already present in the .dtsi but with lower frequency.

The idea is to try and limit system throughput more gradually upon
reaching the throttling condition for workloads that are close to
sustainable power already, thus avoiding needless performance loss.

My limited synthetic benchmarking [1] showed around 3.8% performance
benefit when these are in place, other things equal (not meant to
be comprehensive though).

[1] https://lore.kernel.org/linux-rockchip/CABjd4YxqarUCbZ-a2XLe3TWJ-qjphGkyq=wDnctnEhdoSdPPpw@mail.gmail.com/T/#me92aa0ee25e6eeb1d1501ce85f5af4e58b3b13c5

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 87 +++++++++++++++++++++++++++++++
 1 file changed, 87 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index af8b932a04c1..506676985a7e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -360,6 +360,21 @@ cluster0_opp_table: opp-table-cluster0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
+		opp-408000000 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <675000 675000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <675000 675000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-816000000 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <675000 675000 950000>;
+			clock-latency-ns = <40000>;
+		};
 		opp-1008000000 {
 			opp-hz = /bits/ 64 <1008000000>;
 			opp-microvolt = <675000 675000 950000>;
@@ -392,6 +407,27 @@ cluster1_opp_table: opp-table-cluster1 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
+		opp-408000000 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+			opp-suspend;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-816000000 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1008000000 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+		};
 		opp-1200000000 {
 			opp-hz = /bits/ 64 <1200000000>;
 			opp-microvolt = <675000 675000 1000000>;
@@ -422,6 +458,21 @@ opp-2208000000 {
 			opp-microvolt = <987500 987500 1000000>;
 			clock-latency-ns = <40000>;
 		};
+		opp-2256000000 {
+			opp-hz = /bits/ 64 <2256000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2304000000 {
+			opp-hz = /bits/ 64 <2304000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2352000000 {
+			opp-hz = /bits/ 64 <2352000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
+			clock-latency-ns = <40000>;
+		};
 		opp-2400000000 {
 			opp-hz = /bits/ 64 <2400000000>;
 			opp-microvolt = <1000000 1000000 1000000>;
@@ -433,6 +484,27 @@ cluster2_opp_table: opp-table-cluster2 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
+		opp-408000000 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+			opp-suspend;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-816000000 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1008000000 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+		};
 		opp-1200000000 {
 			opp-hz = /bits/ 64 <1200000000>;
 			opp-microvolt = <675000 675000 1000000>;
@@ -463,6 +535,21 @@ opp-2208000000 {
 			opp-microvolt = <987500 987500 1000000>;
 			clock-latency-ns = <40000>;
 		};
+		opp-2256000000 {
+			opp-hz = /bits/ 64 <2256000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2304000000 {
+			opp-hz = /bits/ 64 <2304000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2352000000 {
+			opp-hz = /bits/ 64 <2352000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
+			clock-latency-ns = <40000>;
+		};
 		opp-2400000000 {
 			opp-hz = /bits/ 64 <2400000000>;
 			opp-microvolt = <1000000 1000000 1000000>;

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
