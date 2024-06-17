Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3377AC27C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 18:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqUgBwzEkmr0NZLL51Yp/mlfSPIzHZiS7s5BvGNKT5c=; b=4Y7CBfMFJKTUgE
	bVkCqE+/WXG+GU696kw5Wk9Enu2hHLHHtIPRPWfY0nDV1Rk0uGH8mPBaHbv+Ri32VZIqoT4DoE8JZ
	PlqLEKsOMoTrcNeNOeDau4OyWAjwDl1maGuOj/zaSq7CzVg5S5S9L2gCnWrZqvWLBLITKs7BahxZ0
	AfNXsoMPZwRcLuXoXfj+dy4Olz36zSESH1Ho+gFcoFhvoiptwv6v+Spoh03rc9lS+sJy0vY7GmmVv
	J2GLeajdQSYqQ917SazTSXbMzqpMI7kif8aSLDW/45IXnzeN/ThXb9vMtajvbr9XZKwmH5N+mQNC7
	hZRPtoQS2bQ1OEDoj8Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJH7p-0000000CBcA-0jYo;
	Mon, 17 Jun 2024 18:30:41 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJH73-0000000CB45-0lBk;
	Mon, 17 Jun 2024 18:30:01 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a6f13dddf7eso565780966b.0;
        Mon, 17 Jun 2024 11:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718648991; x=1719253791; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/gIdEIvbMDrmnrZNpEG2mYTheifxVrjfELjOF2EAXlQ=;
        b=I6URnQzxRQhHjmDxH1SfZT5D9f6HsVySt6v9EYNM4MrNvgHvOFiZbYJuBfuWbhIxCm
         uj6mcLXX/tiT33IjhV9dAF8LmPVpWS5pzJttnKQ5QXY7Tui9suxshhaMcAP7o3TqN0LG
         QqxfertL5P/KrEOsi+fQTfYMWkUGxhRNetUWo+Dph6DMQtSZ2Z64mGV3TLqnEOekL/if
         qkt/e6Pj/BfxoeytF+wkw2HCO+DIjX0kmscIxnkj4a6pYjhoQvTz506Wb3k2Zn7rpnTP
         dgVAEb3h2gaUi3ZSjPJKNpOwdi3WyB5U+SpuzN3oqgKmD3TD6+RGL+8ALRWhpd7J9fjo
         b7cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718648991; x=1719253791;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/gIdEIvbMDrmnrZNpEG2mYTheifxVrjfELjOF2EAXlQ=;
        b=Oc9w4YByDPE7+f/Y31urkjY6f0dvgyV8DQsyDJjlduP4+vip6AiaOflPtJWu8GdaOS
         J2cjXixCbVVDgN4bk+iY1xPCcgiwpH2WzFoDON8RaYsYU1G4pjRm1Fe4uMyNZ0h5JF6I
         AUWPmljIKjU32DDp0KeQLEr2ttiPJyP7Kx1LFP3C6zJcnziyz0RTUgZZWOfURSuye0e8
         wWVT/0vVmkhi1TEPFPliDztTukl5FW3V4WOBVZUIL0Yzr4Sesc+8xWX/PDiIezmL/Ean
         UbLsnDReqipiRT/SFnb0Q3A/FkgeKrx8bVQklVoWiEDMF5p+cblLeIUoZCozIsWod371
         vBhw==
X-Forwarded-Encrypted: i=1; AJvYcCV1SWItKNlZJl0b787xL/8mcSIn2Sv8sq07uAyjDFaxYSytvItovlkTqjBO5CB+f0woaxd2eU/DXtruTlVdysLMwtyoBAM7VMhL7mA+NAMKbgtbI8aVlUmmJvweubWNXgZBhd+y8bZMvo3pWkMB+QurJzPsrchiRyk=
X-Gm-Message-State: AOJu0YzuVLbSp44m5SSlEXkfTO5T4vR7dag/EL59V1096cD2L4Tm1TXE
	yqT+qinfGPj/Em2o4YELMs9Y3gz20FW8iiA2vKTgouASCHerSmTX
X-Google-Smtp-Source: AGHT+IGxtlWZi7OlzUSA5/V0aa2jJMNFKKU21CTRD337ilM22mWB124cbV/KHSY2+Nr88qWjg9DCVQ==
X-Received: by 2002:a17:906:3b46:b0:a6f:277c:d890 with SMTP id a640c23a62f3a-a6f60dc362amr688721966b.56.1718648990713;
        Mon, 17 Jun 2024 11:29:50 -0700 (PDT)
Received: from latitude-fedora.lan ([2001:8f8:183b:6864::d35])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f8a6e58bdsm115397666b.187.2024.06.17.11.29.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 11:29:50 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 17 Jun 2024 22:28:57 +0400
Subject: [PATCH v5 7/8] arm64: dts: rockchip: Add OPP data for CPU cores on
 RK3588j
MIME-Version: 1.0
Message-Id: <20240617-rk-dts-additions-v5-7-c1f5f3267f1e@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1718648960; l=3675;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=9usg1860HeLN2D86kwAGVsch0yxyMQiUOvKvhiX96F0=;
 b=7qkTQpuDo2mnr2AksYS5eW7EJtXMddKluUT3j2BIeU1VziywewZDKtSMHT8+bGsuRwNzNZAFz
 b/X7C7+JSK/DwNleZDa/3++SYYeZ4QAj5dZ6D+I/8RWiDgsuLhaJa81
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_112953_656831_3AAE6B59 
X-CRM114-Status: UNSURE (   9.97  )
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

RK3588j is the 'industrial' variant of RK3588, and it uses a different
set of OPPs both in terms of allowed frequencies and in terms of
applicable voltages at each frequency setpoint.

Add the OPPs that apply to RK3588j (and apparently RK3588m too) to
enable dynamic CPU frequency scaling.

OPP values are derived from Rockchip downstream sources [1] by taking
only those OPPs which have the highest frequency for a given voltage
level and dropping the rest (if they are included, the kernel complains
at boot time about them being inefficient)

[1] https://github.com/rockchip-linux/kernel/blob/604cec4004abe5a96c734f2fab7b74809d2d742f/arch/arm64/boot/dts/rockchip/rk3588s.dtsi

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588j.dtsi | 108 ++++++++++++++++++++++++++++++
 1 file changed, 108 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588j.dtsi b/arch/arm64/boot/dts/rockchip/rk3588j.dtsi
index 0bbeee399a63..b7e69553857b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588j.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588j.dtsi
@@ -5,3 +5,111 @@
  */
 
 #include "rk3588-extra.dtsi"
+
+/ {
+	cluster0_opp_table: opp-table-cluster0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-1416000000 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <750000 750000 950000>;
+			clock-latency-ns = <40000>;
+			opp-suspend;
+		};
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <887500 887500 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1704000000 {
+			opp-hz = /bits/ 64 <1704000000>;
+			opp-microvolt = <937500 937500 950000>;
+			clock-latency-ns = <40000>;
+		};
+	};
+
+	cluster1_opp_table: opp-table-cluster1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-1416000000 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <750000 750000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <787500 787500 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <875000 875000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2016000000 {
+			opp-hz = /bits/ 64 <2016000000>;
+			opp-microvolt = <950000 950000 950000>;
+			clock-latency-ns = <40000>;
+		};
+	};
+
+	cluster2_opp_table: opp-table-cluster2 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-1416000000 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <750000 750000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <787500 787500 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <875000 875000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2016000000 {
+			opp-hz = /bits/ 64 <2016000000>;
+			opp-microvolt = <950000 950000 950000>;
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

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
