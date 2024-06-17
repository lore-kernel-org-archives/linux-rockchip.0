Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27BB7C2BA1A
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 18:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82RSKTu6oa6L6GiIFhtqb4aQuib2QeWiwM9REcAs1xg=; b=inhMBsIH5b17TP
	N+H1yeAQYCbaMgw361Y2DSGKosXmlp7I6b/YPKehvUT/teQq6HtSGa04pCUXfkHAnblDC8OClG7b1
	L75RHg7rljAORptSr0j0VBIVn1XYGI8r8u1X89tt3/r2kAyGHzVNKe2vNMO/kB9H3nVO68O8WERAj
	RdrNqFu/gneALuQLTUD0CZ/6hCRl8AJqzGfS0IEsdWlaQsrUCaOi350+tSPgA9Ko78OEVvFNXt4wB
	aG5+6K5Wc3IZzzttpiF18P23df1LqzrS9uw43Fvf8s3jjpbVqgoGryZr5D32sgH28IxrQFrcu6uH4
	n5cWcrQL7ex4UV6KShAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJH6x-0000000CB0j-1SwA;
	Mon, 17 Jun 2024 18:29:47 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJH6j-0000000CAtJ-0T8Q;
	Mon, 17 Jun 2024 18:29:37 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a6f21ff4e6dso636241966b.3;
        Mon, 17 Jun 2024 11:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718648971; x=1719253771; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nVonfiq4f59IHUKUAX8AnKpc2cNQELA1mct+qJNl1Vw=;
        b=LT3QEQGDrHswAfGJEBSj1pLgNDZ4T3XUuMbCw+TD58he3vdRbguvuqP/XZ5ILxZJ3r
         bti8zNqq9g3JrD7DlwRyu7ghuvqTAngrPcFWr1FRP4ON2lJLwq58enYxs3nKJqwzF+QX
         64VTtQ3+n7gdR7e4w3+YCj+nevxsw6nOURtMFTpfG1Q+NJysBfkGfwAew91daWbQcv2p
         aqwQdC3TlhVVvzGcY+Hjcf/BSx7yaV0YQxDVnBREqmAg1mrYr4KshBqn9cNODr1MmMfb
         0OfSTiuXNbKY9rw71X6QLyjG7zryzBPrN8gSashjjxsWLAcIRhpQmHMrPOP+vizpuHIm
         HPWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718648971; x=1719253771;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nVonfiq4f59IHUKUAX8AnKpc2cNQELA1mct+qJNl1Vw=;
        b=VpJ3PRNvkNUmc/5NqU7PpbzjQmGB7Q8R6l+9FXATKMzDAVsf693suqYwPI94KNvKro
         7XFfQRREAcQKvLcfDdQkRalzbpdVZ57PncrYKnZ8fk+1ZMbVJId4BOARLlN39PFO3L2Q
         SENdGNhtpotQQLBiNv2xA5uVgLcz5ZQeHIlyb8kfcnGFWg58GcCpKa8HGkLkyr1569oh
         7iJNwZ8slCbIAd/JjXSncyXezF2Zn6L7te3kgjaqSUDFxSNHvmCsAJeLEvLpaFYTtD3g
         l6WV0ZjenuzLpR6ilGGmE+qaTmTxA++w2bvwcnh+y2aTTOhRacWuHpeYEacTG9SnAmRL
         bhyA==
X-Forwarded-Encrypted: i=1; AJvYcCUzdkX2tzL4XVIN0Pv44fQ+CvKsZkIUVtOXcdttIUqi+abHcD7ymqwAReLNWt4K17+kjRg35G77WKQbo0CR8WgYYPzy1EchRR5GuEey4DPB/0v4Waf3Zalvuy3MmtBVs883cWQJFWP56vqAoJWECZw6Yxb/TtKSVgI=
X-Gm-Message-State: AOJu0Yz5cpRHmyQ5Jwf/SOoZCBNPperXbT0YejmIT5l0N8mHQbiu9rUQ
	NH+Z9un0GwPJSxGNReaxP6fHIJNBe9f8uRu1gACDo1f7r2nSPDns
X-Google-Smtp-Source: AGHT+IGvPp2igZrxUodZ9RzzYGZfSWNMZ2rzakrVZ7pVDh231IomqTQnvW9THxLEd9ZKvJIiM6mMlQ==
X-Received: by 2002:a17:906:a20a:b0:a6f:27e2:812c with SMTP id a640c23a62f3a-a6f60d20ec2mr656510666b.22.1718648971388;
        Mon, 17 Jun 2024 11:29:31 -0700 (PDT)
Received: from latitude-fedora.lan ([2001:8f8:183b:6864::d35])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f8a6e58bdsm115397666b.187.2024.06.17.11.29.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 11:29:31 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 17 Jun 2024 22:28:52 +0400
Subject: [PATCH v5 2/8] arm64: dts: rockchip: enable thermal management on
 all RK3588 boards
MIME-Version: 1.0
Message-Id: <20240617-rk-dts-additions-v5-2-c1f5f3267f1e@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1718648960; l=4390;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=GLoGqcAXYJtVZt3gd8x4dkalr9Ohm0Jc46GDbBCQXL8=;
 b=AANNJutcxjEk0OT/3bKc+ECgHkNcB0/TnaPQghhnxpHUZnLdd/9VW8l4besJnSFB7Ck3IE/5H
 8+a24TQ9dkMA4pGhjkN66HooFFAmJHXNSPYT7agM+Yma6JTmTLMlGHH
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_112933_222335_F96A6F7D 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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

This enables the on-chip thermal monitoring sensor (TSADC) on all
RK3588(s) boards that don't have it enabled yet. It provides temperature
monitoring for the SoC and emergency thermal shutdowns, and is thus
important to have in place before CPU DVFS is enabled, as high CPU
operating performance points can overheat the chip quickly in the
absence of thermal management.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts          | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts              | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts              | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts               | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts           | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi           | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts              | 4 ++++
 8 files changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts b/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
index 98c622b27647..c667704ba985 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
@@ -673,6 +673,10 @@ regulator-state-mem {
 	};
 };
 
+&tsadc {
+	status = "okay";
+};
+
 &u2phy0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
index 709d348cf06b..03fd193be253 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
@@ -466,3 +466,7 @@ regulator-state-mem {
 		};
 	};
 };
+
+&tsadc {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index 7be2190244ba..7c3696a3ad3a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -1131,6 +1131,10 @@ &sata0 {
 	status = "okay";
 };
 
+&tsadc {
+	status = "okay";
+};
+
 &u2phy0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts b/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
index 009566d881f3..230e630820b4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
@@ -376,6 +376,10 @@ &sdmmc {
 	status = "okay";
 };
 
+&tsadc {
+	status = "okay";
+};
+
 &u2phy2 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 4e2bf4eaef2b..afcc38a5bed8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -749,6 +749,10 @@ regulator-state-mem {
 	};
 };
 
+&tsadc {
+	status = "okay";
+};
+
 &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts b/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
index 9090c5c99f2a..d0021524e7f9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
@@ -648,6 +648,10 @@ regulator-state-mem {
 	};
 };
 
+&tsadc {
+	status = "okay";
+};
+
 &u2phy2 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index 6b9206ce4a03..77bcf0f6b028 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -601,6 +601,10 @@ regulator-state-mem {
 	};
 };
 
+&tsadc {
+	status = "okay";
+};
+
 &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 8e2a07612d17..c671a61d3aef 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -697,6 +697,10 @@ regulator-state-mem {
 	};
 };
 
+&tsadc {
+	status = "okay";
+};
+
 &u2phy0 {
 	status = "okay";
 };

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
