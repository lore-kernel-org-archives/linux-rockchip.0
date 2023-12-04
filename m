Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2221C10DCE
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 15:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3WtS8kOT6oU7jrewwCdRw7fCbP3NTApPqxGlYMmxZ1k=; b=TmS6SgDxyEeUKK
	H2y2Z9NJIUXC1PiR9RFE+FnCTJrXXQT709qtw+15lQHhlcvrskZdtslVgbV/GNaiTc3iKGyyNyUzr
	neV0mbRQeozyokU7PLqn2alozhXR/QFz3eBDnFqL1MbHAcfnmOnRkhMN2nOziav5x5h8d8vCL4Vkw
	EWnJM+8DQP+qAq1s38Z8/Jt4yilziy1DIn2gWryiz3eUVWF4oZUQBHeisGLTGiKtYZ3932S009+TB
	n9hk6unu5zA7gd+v7ig1KydxTO5tPQ1Uc7VkFcSR/JjNq0sTgssMPLM1YSXMcpYWd8wSUdzDAbA4W
	WLZSdHgH74xczEBUNRMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAAzJ-004yPL-2r;
	Mon, 04 Dec 2023 15:36:02 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAAzF-004yNu-2V;
	Mon, 04 Dec 2023 15:35:59 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-54c846da5e9so1812074a12.3;
        Mon, 04 Dec 2023 07:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701704156; x=1702308956; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M4KCr8eFfVtiTY0UwfeXIsAJIrQ2O8jUkXkezbt/EUU=;
        b=EH8UNqRslpZaRDsBRQXC6emf5IMP2Tu6RRfBiseHxu8ZWfKNKIp1olbFHcaYZ1jc1e
         HFjg654vlNyqKo5nbdEEo+xF+j53ntY7PLITBIgS0GFSvS/c9eKPNlMNVkNSDv2zEtrJ
         ozX0UkX2r1JUKnV4ku8H7IHx+KODs9akzp/iZdjNAd1CMbv57dLv+EGI2WBLY4ULa5nc
         8cTJ4a75uewbuWdBFQv9dcgprVdXj0ABeZiJwIJ9TIZh+dMC/wiqyfXa2ustRG23XMua
         z53RZbz7RMGclgw+YWuykGOr1FTHXvZcFLTjVUsZi1rm56Zc4jE7fVfxWk2qVZZiEyHQ
         x+1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701704156; x=1702308956;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M4KCr8eFfVtiTY0UwfeXIsAJIrQ2O8jUkXkezbt/EUU=;
        b=vEex1WvGn8UiBnnYeW1BS9q4XIc4QH0rrDAGpzuCdrtDMVIuoja1yLzm6NH2Bp+ndI
         uTXoDT6JPvhyMhDFFZKWtkjibQUq8igPaWi3/x3OD5Py9SHA/EFfOVWOkxS4tFEtTlGI
         94+irS8Ek5h7bZxaHlYOhNjxmLpkGhIQyTL90kyz0f/KPCAuVKiQsnXE0rdBStNjOCqO
         lImLPHDgH4gu2KtD6TQMIL+PHLXIsa/fSSzvLO5q+m1Ui2NRUXx0jmaJdjj3HtHZTw0H
         MqBgCjQqPJZa/Xx/dM+AjDR+IjQ4Goa+9P7CYUBbov+dnwe8mPoF7O6DSbRORxhr8FLW
         XpKQ==
X-Gm-Message-State: AOJu0Yz6hB3TzdxEzS0XzpD98LuIzL3+LIsbon9324eLSWhA6smN+zya
	VVraWXk3KrAOJJLAOEb70Q==
X-Google-Smtp-Source: AGHT+IFsgq+IPGY1SqpjKBG4HvTIebHZNY6WdDwKfgZJbPVxuvps5zNljdKoL3nUYUk0d7D8Ekvfgg==
X-Received: by 2002:a50:954c:0:b0:54b:2894:d198 with SMTP id v12-20020a50954c000000b0054b2894d198mr3329077eda.4.1701704156091;
        Mon, 04 Dec 2023 07:35:56 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:55ff:210b:5393:c9d7])
        by smtp.gmail.com with ESMTPSA id h20-20020a05640250d400b0054c77ac01f4sm693194edb.51.2023.12.04.07.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 07:35:55 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 2/3] ARM: dts: rockchip: Add GPU node for RK3128
Date: Mon,  4 Dec 2023 16:35:46 +0100
Message-ID: <20231204153547.97877-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231204153547.97877-1-knaerzche@gmail.com>
References: <20231204153547.97877-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_073557_838012_0DF65854 
X-CRM114-Status: GOOD (  12.00  )
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

RK3128 SoCs have Mali400 MP2 GPU.
Add the respective device tree node and the correspondending opp-table.

The frequencies and voltages of the opp-table have been taken from
downstream kernel.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 44 ++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 0676d8b22a1e..414b690f96e4 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -101,6 +101,27 @@ opp-1200000000 {
 		};
 	};
 
+	gpu_opp_table: opp-table-1 {
+		compatible = "operating-points-v2";
+
+		opp-200000000 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <975000 975000 1250000>;
+		};
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <1050000 1050000 1250000>;
+		};
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <1150000 1150000 1250000>;
+		};
+		opp-480000000 {
+			opp-hz = /bits/ 64 <480000000>;
+			opp-microvolt = <1250000 1250000 1250000>;
+		};
+	};
+
 	timer {
 		compatible = "arm,armv7-timer";
 		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
@@ -131,6 +152,29 @@ smp-sram@0 {
 		};
 	};
 
+	gpu: gpu@10090000 {
+		compatible = "rockchip,rk3128-mali", "arm,mali-400";
+		reg = <0x10090000 0x10000>;
+		interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "gp",
+				  "gpmmu",
+				  "pp0",
+				  "ppmmu0",
+				  "pp1",
+				  "ppmmu1";
+		clocks = <&cru ACLK_GPU>, <&cru ACLK_GPU>;
+		clock-names = "bus", "core";
+		operating-points-v2 = <&gpu_opp_table>;
+		resets = <&cru SRST_GPU>;
+		power-domains = <&power RK3128_PD_GPU>;
+		status = "disabled";
+	};
+
 	pmu: syscon@100a0000 {
 		compatible = "rockchip,rk3128-pmu", "syscon", "simple-mfd";
 		reg = <0x100a0000 0x1000>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
