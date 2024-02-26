Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD779C54E51
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Feb 2024 18:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Kr58KSWEnRg+bN2YOyFXJsuLaZApDEWi9qb685F+1jc=; b=2/UMpIhDIUxq7W
	ZOplOPqBahw7PerAMT8w/SvY04UsUAIHSBdjZq2nVvBeBum+dp5Hs2OuKfwf5gH6r8m6a4c5SiH7p
	Oxfc0aarkm82h9nx3bKQVHXXkciFRqnbFQ1/iJzd2esjyTCWsDnI5voD5GphDPFyROysVbLGCHzMv
	wbBPBhFXoK6KgMVxyrDoJpNEBsuFKwcoro2m6XnEz5d6HDE39GedJ5v6K0ovKq9SER0/7/QzLFJ0K
	h58+xnsiC7UMeEWTX8vooRzBEtsiv197gORsqbs5411zNkr7ItqJ5D/FyVBfXeemi0bU3/lVn3lsv
	+Hje01buXE3BGzp5fk3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1refdW-00000002AEC-0Mn8;
	Mon, 26 Feb 2024 18:23:34 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1refdQ-00000002ACc-1WrB;
	Mon, 26 Feb 2024 18:23:29 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1dc1ff3ba1aso28120345ad.3;
        Mon, 26 Feb 2024 10:23:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708971807; x=1709576607; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Oq9kS8EeuXsGUVpRBBrLiDhME6a4wGuEkqHoj3EbhjU=;
        b=mDi1qSKtCOT8DJ6Gb7hpc4k73ojAmLj3nbp2ZQjaXuXqoTC7wi6wOS45jIc7d/XrmP
         M+yk19BVARqnCTR1m/Qrs7zo4tR//QNy/l+v9YiGkxjuHCC+LTnVB5nehDnqBEV9L2Q0
         KIhQLArC+PujAB+mflhmrEaJJB0IV6J+/txuWpWnk2iRFAAj1TA6LAhgIUev1oTq3d53
         A2y9qEXHyV8NSXTodwVf+lD5mQ/IrLea5ob7ofPcZ4UbSPhAgyJuYXXPH+PFVhkH9wsR
         7wnRpeJGFg6txStduKodMBYNwlgwybpfsbGR/y4i9nT3rTL1a4d3EeAH3pkNg+Ldf0X0
         ZTIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708971807; x=1709576607;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Oq9kS8EeuXsGUVpRBBrLiDhME6a4wGuEkqHoj3EbhjU=;
        b=mBvd+tUj8UNlJr4mCy1y/Be5aWdAKc1Li6wC+f6m3kVk2byI63ZUVg+Bx7+M/6rWG+
         Su4uf7d6Jq6yQl+VFtJYrbLyrmzD/6VaLfpOMTD/y8PwWx8KlsuTo6EGRxQRw9NHaetw
         QWkEvGF7xTx21Hqg8yNhi0UTyRbec6ZULzJuW+K+JnVYrMs6l06QLT2DJoV6uu4rbeG6
         JglT8zIiy93uNihaO0UWbUB6o4RoUfzVgKXxGmIQvoUZlzyo/k37QalRSvAAklrBS/aX
         erzb1uKdSPh9RIiZnRUOMaVkBJ4V1HNXFD59ydUat3NgP+o3ZeJRbAmRDuspt7eKi9Hx
         CQ6w==
X-Forwarded-Encrypted: i=1; AJvYcCXaBVv7ACSFas17SiLE4NggnER0Qsa4OeR0rW+36ESeKe/1VMg/JfREPfPY3cmVLe//3gBM+HtgJDGdKFXynYczhQnsZAPtq/AdhY8FRe+w7kpL6/2mL6jy62n7qdlf9jPoclEoeqDwiMDuTFCbbJ8ILMqACFxPPJE=
X-Gm-Message-State: AOJu0YzfljC43/SaHaWsHtDp7Z24WAIcL6vv1LP5p6Ux8gmaHYc10Ug7
	nb4Sb4eQ9yyDXsjl4NFm5AOJ8pdbSj3OIF8efiXcUMN6JFic+KJi
X-Google-Smtp-Source: AGHT+IGcMiAe18D+5u0jq2w+Qc6RGbcBVwo+6peup7V+MeX/rhw3iKmj2TOIPAmop9O04XOqDlG6/A==
X-Received: by 2002:a17:902:e9c4:b0:1db:f23f:678e with SMTP id 4-20020a170902e9c400b001dbf23f678emr6781170plk.15.1708971806955;
        Mon, 26 Feb 2024 10:23:26 -0800 (PST)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id v19-20020a170902d09300b001dba98889a3sm2353plv.71.2024.02.26.10.23.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 10:23:26 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] arm64: dts: rockchip: Add cache information to the Rockchip RK3566 and RK3568 SoC
Date: Mon, 26 Feb 2024 23:53:03 +0530
Message-ID: <20240226182310.4032-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_102328_426639_A0EE00F0 
X-CRM114-Status: GOOD (  12.13  )
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

As per RK3568 Datasheet and TRM add missing cache information to
the Rockchip RK3566 and RK3568 SoC.

- Each Cortex-A55 core has 32KB of L1 instruction cache available and
	32KB of L1 data cache available with ECC.
- Along with 512KB Unified L3 cache with ECC.

With adding instruction cache and data cache and a write buffer to
reduce the effect of main memory bandwidth and latency on data
access performance.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
[0] http://www.rock-chips.com/uploads/pdf/2022.8.26/191/RK3568%20Brief%20Datasheet.pdf
[1] https://dl.radxa.com/rock3/docs/hw/datasheet/Rockchip%20RK3568%20TRM%20Part1%20V1.1-20210301.pdf
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 37 ++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index c19c0f1b3778..49235efefb6b 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -56,6 +56,13 @@ cpu0: cpu@0 {
 			clocks = <&scmi_clk 0>;
 			#cooling-cells = <2>;
 			enable-method = "psci";
+			d-cache-line-size = <32>;
+			d-cache-size = <0x8000>;
+			d-cache-sets = <32>;
+			i-cache-line-size = <32>;
+			i-cache-size = <0x8000>;
+			i-cache-sets = <32>;
+			next-level-cache = <&l2>;
 			operating-points-v2 = <&cpu0_opp_table>;
 		};
 
@@ -65,6 +72,13 @@ cpu1: cpu@100 {
 			reg = <0x0 0x100>;
 			#cooling-cells = <2>;
 			enable-method = "psci";
+			d-cache-line-size = <32>;
+			d-cache-size = <0x8000>;
+			d-cache-sets = <32>;
+			i-cache-line-size = <32>;
+			i-cache-size = <0x8000>;
+			i-cache-sets = <32>;
+			next-level-cache = <&l2>;
 			operating-points-v2 = <&cpu0_opp_table>;
 		};
 
@@ -74,6 +88,13 @@ cpu2: cpu@200 {
 			reg = <0x0 0x200>;
 			#cooling-cells = <2>;
 			enable-method = "psci";
+			d-cache-line-size = <32>;
+			d-cache-size = <0x8000>;
+			d-cache-sets = <32>;
+			i-cache-line-size = <32>;
+			i-cache-size = <0x8000>;
+			i-cache-sets = <32>;
+			next-level-cache = <&l2>;
 			operating-points-v2 = <&cpu0_opp_table>;
 		};
 
@@ -83,8 +104,24 @@ cpu3: cpu@300 {
 			reg = <0x0 0x300>;
 			#cooling-cells = <2>;
 			enable-method = "psci";
+			d-cache-line-size = <32>;
+			d-cache-size = <0x8000>;
+			d-cache-sets = <32>;
+			i-cache-line-size = <32>;
+			i-cache-size = <0x8000>;
+			i-cache-sets = <32>;
+			next-level-cache = <&l2>;
 			operating-points-v2 = <&cpu0_opp_table>;
 		};
+
+		l2: l2-cache0 {
+			compatible = "cache";
+			cache-level = <3>;
+			cache-unified;
+			cache-size = <0x7d000>; /* L3. 512 KB */
+			cache-line-size = <64>;
+			cache-sets = <512>;
+		};
 	};
 
 	cpu0_opp_table: opp-table-0 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
