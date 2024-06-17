Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7A6BC27C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 18:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1jCb45XWKc6hbPaSiycS6kHiCZJcs4IPBh+fty2t2cI=; b=m8HBB1UCDA7DZ1
	Yri7qpHbP1QmwAL+NI826HaNDo9lAqlM3T5AsU1e7TNBwTorVUj5XRoet0o58xwLUTcJAnCfK95Fg
	rLiwj0B+0QRQrISB0TqEhT7a9rmeLdveJjqfci8pY4mHH46AIdspYqHim9uWqFnrihF5UWFP2X8ZO
	lerv8WV/4ixIeut1866DDSnPYSnEogFWt+1jLUG6HegLF4gMF73MokblgXFJl+PY3ME4NHStMX9G9
	/KnbgXW1u+CFDgY57CbebSP44rwsA8IJBu0qXsBj2dRIoS4QyHmqzC0+m5lVgAXtlzOaY7INvxuM9
	WeNRxbHM51IvkhDQASRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJH7w-0000000CBiw-3Tz4;
	Mon, 17 Jun 2024 18:30:48 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJH75-0000000CB6p-3hqm;
	Mon, 17 Jun 2024 18:30:03 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a6f8ebbd268so127632566b.0;
        Mon, 17 Jun 2024 11:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718648994; x=1719253794; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mi6aVHL3QaHHJ3tI7hDY8xFdrO8LAbtMSLI9IrukgKs=;
        b=DllaKyQEAWmyRVaflt/kfSYg/WFPQoqI7s6IgUfp2qaj4kBtHE2tO2rcfV80bMoGK1
         y8dmQleQ/daxnsTVhZH2Arld27wMP1M07iftsEjm0xdprN5YUhE3MDxVv27In0kbmNbF
         WPPDssWkF2nzjY8SdB9p4Z52Wbpni/eO1NzSwVaU6YeDqQ1XSwWfzyb/8wPAln7s/kO3
         9LRsng/y9epeTLoUtrIo8LzFLP2AhMhWAdbtZqYEiOi0Gjg23WNXPnZtrMYH1VbmvnVG
         ppSyz1nIx098Bk/0hC8J4xZqdB8XNR6QUeGqRQNcR1HlXVqyfD47+RASBDw2PEjpw1Yk
         N8og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718648994; x=1719253794;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mi6aVHL3QaHHJ3tI7hDY8xFdrO8LAbtMSLI9IrukgKs=;
        b=YhhxZWaGE4rlhLnlnRj5/zBpixdxU/DAaeeKvB3vBZqfIVM6O9IbArsoFjKOJSuTGq
         erlymWx+Avy+LvKy2JFMkNsPmBq9m7vz0J0+cTx4Cn11iB62oc6tbH//iikgXLX0CB1Y
         /bPLixMvlzcNCl+4gxQ+BF1M/LGyfie6jw7ic4XqrJZdSGSB6leNhtFfF5TK/+xsZWx5
         ar4jnD5t28cWtRDhCIBSeudRVztqkAKhYNR7IqUuAPfN977fCVz7IZVSxljMIqGsLtg9
         Uy6Z+2hSVOdVKf2in9SOcxnFB2PxLKiVf6B6XqdxUzT3rE7jlpUHoK7aB5cNeWz3CqnC
         mxww==
X-Forwarded-Encrypted: i=1; AJvYcCXb+EchkRiu9A5lwRfy18xVgELPsBHUu/TEcOs6DiX0rmgCRTAJU56mu/XelNjXYpt7Zh0HcT6T7CxBSsb4YErY5KMGHz+y2dQeGVjJctHDp5BEiSAkec1JN0CcSGioAyttfLw+V73/NhDw5KPUIp0MrN1fU2fyMGE=
X-Gm-Message-State: AOJu0YzTnke10T9fG3/shYuG2L+Te1LjBJwcAGS6NaWGIH/RDKYCyFIi
	AXEH5jSS0+WAAz1qjiMGL5q3q+3BmUKHyFJFv7fMZ5DdPyYtUlZS
X-Google-Smtp-Source: AGHT+IFSSaODbqGau5beLtfxdks8DVDSeWiXWQ1UwtzXba87HIcD1jrRNMLASa7svvdJxgKgZlzToQ==
X-Received: by 2002:a17:906:1d0f:b0:a6f:1e1b:f9ea with SMTP id a640c23a62f3a-a6f95054920mr23742566b.31.1718648994301;
        Mon, 17 Jun 2024 11:29:54 -0700 (PDT)
Received: from latitude-fedora.lan ([2001:8f8:183b:6864::d35])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f8a6e58bdsm115397666b.187.2024.06.17.11.29.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 11:29:53 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 17 Jun 2024 22:28:58 +0400
Subject: [PATCH v5 8/8] arm64: dts: rockchip: Split GPU OPPs of RK3588 and
 RK3588j
MIME-Version: 1.0
Message-Id: <20240617-rk-dts-additions-v5-8-c1f5f3267f1e@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1718648960; l=5293;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=cu+UhDK5oOLgPtUwnbvA8VAbLQ3CEl/qKKmthR966F0=;
 b=Iq78YcGu6PRbj8M7jUOSV+GJvF6MJXQR89ZqGUZvfYky+6DBrijA5RY/wW0J84sIVnfWYtxCZ
 //IhTsdQgWkBA3n9buJjiMSdZhSv/EG5BXyaHQOAdqrE8yf/6UsUwqT
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_112956_085328_EDD27F77 
X-CRM114-Status: GOOD (  12.47  )
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

RK3588j uses a different set of OPPs for its GPU, both in terms of
allowed frequencies and in terms of voltages.

Move the GPU OPPs table into per-variant .dtsi files to accommodate
for this difference.

The table for RK3588j is adapted from Rockchip downstream sources [1],
while RK3588 one is moved verbatim into the per-variant .dtsi file.
The values provided for RK3588 in the downstream sources match those
in the original commit.

[1] https://github.com/rockchip-linux/kernel/blob/604cec4004abe5a96c734f2fab7b74809d2d742f/arch/arm64/boot/dts/rockchip/rk3588s.dtsi

Fixes: 6fca4edb93d3 ("arm64: dts: rockchip: Add rk3588 GPU node")
Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 38 -------------------------
 arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi  | 41 +++++++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588j.dtsi     | 33 +++++++++++++++++++++
 3 files changed, 74 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 758aff5e040b..3d918874aa02 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -451,46 +451,8 @@ gpu: gpu@fb000000 {
 			     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH 0>,
 			     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH 0>;
 		interrupt-names = "job", "mmu", "gpu";
-		operating-points-v2 = <&gpu_opp_table>;
 		power-domains = <&power RK3588_PD_GPU>;
 		status = "disabled";
-
-		gpu_opp_table: opp-table {
-			compatible = "operating-points-v2";
-
-			opp-300000000 {
-				opp-hz = /bits/ 64 <300000000>;
-				opp-microvolt = <675000 675000 850000>;
-			};
-			opp-400000000 {
-				opp-hz = /bits/ 64 <400000000>;
-				opp-microvolt = <675000 675000 850000>;
-			};
-			opp-500000000 {
-				opp-hz = /bits/ 64 <500000000>;
-				opp-microvolt = <675000 675000 850000>;
-			};
-			opp-600000000 {
-				opp-hz = /bits/ 64 <600000000>;
-				opp-microvolt = <675000 675000 850000>;
-			};
-			opp-700000000 {
-				opp-hz = /bits/ 64 <700000000>;
-				opp-microvolt = <700000 700000 850000>;
-			};
-			opp-800000000 {
-				opp-hz = /bits/ 64 <800000000>;
-				opp-microvolt = <750000 750000 850000>;
-			};
-			opp-900000000 {
-				opp-hz = /bits/ 64 <900000000>;
-				opp-microvolt = <800000 800000 850000>;
-			};
-			opp-1000000000 {
-				opp-hz = /bits/ 64 <1000000000>;
-				opp-microvolt = <850000 850000 850000>;
-			};
-		};
 	};
 
 	usb_host0_xhci: usb@fc000000 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi
index 35bbc3c2134f..0f1a77697351 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi
@@ -114,6 +114,43 @@ opp-2400000000 {
 			clock-latency-ns = <40000>;
 		};
 	};
+
+	gpu_opp_table: opp-table {
+		compatible = "operating-points-v2";
+
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <675000 675000 850000>;
+		};
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <675000 675000 850000>;
+		};
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <675000 675000 850000>;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <675000 675000 850000>;
+		};
+		opp-700000000 {
+			opp-hz = /bits/ 64 <700000000>;
+			opp-microvolt = <700000 700000 850000>;
+		};
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <750000 750000 850000>;
+		};
+		opp-900000000 {
+			opp-hz = /bits/ 64 <900000000>;
+			opp-microvolt = <800000 800000 850000>;
+		};
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <850000 850000 850000>;
+		};
+	};
 };
 
 &cpu_b0 {
@@ -147,3 +184,7 @@ &cpu_l2 {
 &cpu_l3 {
 	operating-points-v2 = <&cluster0_opp_table>;
 };
+
+&gpu {
+	operating-points-v2 = <&gpu_opp_table>;
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588j.dtsi b/arch/arm64/boot/dts/rockchip/rk3588j.dtsi
index b7e69553857b..bce72bac4503 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588j.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588j.dtsi
@@ -80,6 +80,35 @@ opp-2016000000 {
 			clock-latency-ns = <40000>;
 		};
 	};
+
+	gpu_opp_table: opp-table {
+		compatible = "operating-points-v2";
+
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <750000 750000 850000>;
+		};
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <750000 750000 850000>;
+		};
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <750000 750000 850000>;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <750000 750000 850000>;
+		};
+		opp-700000000 {
+			opp-hz = /bits/ 64 <700000000>;
+			opp-microvolt = <750000 750000 850000>;
+		};
+		opp-850000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <787500 787500 850000>;
+		};
+	};
 };
 
 &cpu_b0 {
@@ -113,3 +142,7 @@ &cpu_l2 {
 &cpu_l3 {
 	operating-points-v2 = <&cluster0_opp_table>;
 };
+
+&gpu {
+	operating-points-v2 = <&gpu_opp_table>;
+};

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
