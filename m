Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE782C48BF6
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Feb 2024 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MW+uQq+orUjJ8WwiZ3jY8BhfYtx/ZjTJewTTVMVpwQg=; b=YE+Uj/mZpUiVVx
	GyZDxVwcnkhBGRnffEVIHok3a80Wau7eRMy5aL+CVeEREqTeDksO1W7m8AUO4N1FGw1nGQlWZGmTO
	91Gl1ctUC/C767HnDQhmAYeTFg/Ak8Od42IE1lxXXnqNPYl7CTxKb2gFnJqG88rm+4PkdUekrk+0K
	1WNGMeUG9Y4CIHFj03gROHhY3J8FC+gUZkzwmxORShp3Asodw8/0SHTxgmkmD5wnJOIphQzdro0Um
	hOA8cQQcxzmKuFMnrOTvljcU55GqPQnc0zq7DhzlBsbeLpcrRAz42c8eFnagtKW8jBruOOCmOrATU
	ogcYBx4qY6zw8s77S+OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfm50-0000000Esw0-0PIB;
	Thu, 29 Feb 2024 19:28:30 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfm3q-0000000EsGr-1Ygc;
	Thu, 29 Feb 2024 19:27:20 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2d28387db09so14622591fa.0;
        Thu, 29 Feb 2024 11:27:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709234835; x=1709839635; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a8pIF69B3+vCEfVyDdwwj/eV/I9z+Zc+q5b1+o/fwOY=;
        b=XQFDtHVcyHrxCArx6SWJ+gde4uRxDVIwLDwshyPlB5cgWwah8OuUE3vjIM2YguUrqs
         MQR0k6MtizYs2rc//MiVsWkISIYBFgtrqoTkbVEMJzhH6iItzsEDLq8AYv6FZo8LeLNy
         7+uB0lN0wS844kJFUhsHtRg7c8eltbKsjDgJdb8OC+cw4sGQBfPvRShvcx7N4ezseEYB
         f3RgZSa+C1r2YDjozBxWs9x9P0XNAEDfxNBmZlKYIGjgygWwqrC9QqS2Zaervryy0pMM
         Hzi9xfO0xzYHSTiTZ9cNxrFgePzE3jUhCZ8R6eZ8aC/+bTDPigci5NeuJ8jJO6Uf4IuV
         KgvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709234835; x=1709839635;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a8pIF69B3+vCEfVyDdwwj/eV/I9z+Zc+q5b1+o/fwOY=;
        b=QtlL79ehePErB5sIBi8G7Trow31zNW+6kkiezjByjkW0izZ68wqnBWM3yXwZYU22OL
         C5sIRAT/+D1Xp1ihPGXTskNaGrCELL6Hq2tXYNCrivDkmFX2RibdppMa/uw1+fM9yvsR
         OL3bQM72OBfjRXfpWQyyD7SN/v2wp2fPEczkKg3N0pDGc3ZidxiGrVzslZVLJz22MvDq
         ccoCezNYldU17RH/TAIdJ++MhPMIOiDFC1LaTfF5V2Nt6Z5wA6UGRm2F/Z5i9KtjDAi2
         R23MLDdBgriKi0wT6zGq9zmsyMlmEQzGWPbt4s01X3dt9eGUZYxhvcPbx76C+h/02QRM
         uXxA==
X-Forwarded-Encrypted: i=1; AJvYcCW414+PPAbNqc7yaeMJplAWwWE6cZsO/60KwheNOdRMc7D6DpinIT9y/yXV3KcXnxevojv/ISKufV06LzTId5jiT9qlp8+16TLmy86AcPx0XGKviJx9eeGUBRaI79+gNn0rNpwMJn3tlzesEXEQy1/ZXGpH7b6Mxkg=
X-Gm-Message-State: AOJu0YyN9C9tLW/CzRZk8rhOhLpAirg5SR/OtCWJ5RBAN/sCsRKhT+yc
	bq3ximl+snBINw1f8PbuEG31Hw96CG196AqkqrKoOchhGzS6z23o
X-Google-Smtp-Source: AGHT+IFdEd2RYXTkQHnppetkRnPxVnjNwWo7EOTHuMMvCLx724tUqzZ30NaYb3Avu9qRLku1FgXVlg==
X-Received: by 2002:a19:f80c:0:b0:513:fad:3a79 with SMTP id a12-20020a19f80c000000b005130fad3a79mr2169278lff.41.1709234835537;
        Thu, 29 Feb 2024 11:27:15 -0800 (PST)
Received: from [172.30.32.188] ([2001:8f8:183b:6ebc::d35])
        by smtp.gmail.com with ESMTPSA id j20-20020a05600c1c1400b00412bca49a5bsm2853944wms.42.2024.02.29.11.27.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 11:27:15 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 29 Feb 2024 23:26:36 +0400
Subject: [PATCH v3 5/5] arm64: dts: rockchip: Add further granularity in
 RK3588 CPU OPPs
MIME-Version: 1.0
Message-Id: <20240229-rk-dts-additions-v3-5-6afe8473a631@gmail.com>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
In-Reply-To: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
 Chen-Yu Tsai <wens@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1709234816; l=5519;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=j/++tKpf6nxbbeFDehv27/TaZ3F22dBnSGotJt3JR3A=;
 b=tzN5fmgoHAnEdXpez23vQkmx1XeBtubWfNRVPi+kjuzKwBQ26lA/DVX4u4pp+xiQzv6TShJfT
 nXrscsS74dmC2+s4BeMzPAbU4r8/Gbj+Zb4sS4yUglJHYPXwx79momW
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_112718_506432_31733827 
X-CRM114-Status: GOOD (  10.16  )
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
be comprehensive). Though dmesg complains about these OPPs being
'inefficient':

[    9.009561] cpu cpu0: EM: OPP:816000 is inefficient
[    9.009580] cpu cpu0: EM: OPP:600000 is inefficient
[    9.009591] cpu cpu0: EM: OPP:408000 is inefficient
[    9.011370] cpu cpu4: EM: OPP:2352000 is inefficient
[    9.011379] cpu cpu4: EM: OPP:2304000 is inefficient
[    9.011384] cpu cpu4: EM: OPP:2256000 is inefficient
[    9.011389] cpu cpu4: EM: OPP:600000 is inefficient
[    9.011393] cpu cpu4: EM: OPP:408000 is inefficient
[    9.012978] cpu cpu6: EM: OPP:2352000 is inefficient
[    9.012987] cpu cpu6: EM: OPP:2304000 is inefficient
[    9.012992] cpu cpu6: EM: OPP:2256000 is inefficient
[    9.012996] cpu cpu6: EM: OPP:600000 is inefficient
[    9.013000] cpu cpu6: EM: OPP:408000 is inefficient

[1] https://lore.kernel.org/linux-rockchip/CABjd4YxqarUCbZ-a2XLe3TWJ-qjphGkyq=wDnctnEhdoSdPPpw@mail.gmail.com/T/#me92aa0ee25e6eeb1d1501ce85f5af4e58b3b13c5

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 87 +++++++++++++++++++++++++++++++
 1 file changed, 87 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index bd39c5c47bfb..6b4ecc7ab37d 100644
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
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
