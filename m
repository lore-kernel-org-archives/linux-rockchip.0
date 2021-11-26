Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2DB7C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 18:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpu36IiY9JaRIsCSuiX63l1+XrAxpifOkSNF7k0N9lY=; b=KqCcOt/jMB7aRB
	RuCvD3z2NAYfSQZgcHQZuJNr/ZoCeSnVPngmH4aCokbapuiDqfU41KivzZBmEq1gojfO2tC70GVbB
	I8IRDdDoTX9ec4RjoGOw4TtpuHeP6gODFKcwq3JamsByqfx9w3mggg8HUXAGB/BqCdhLQ/ZNsT54w
	MqKs5aKi8EJ1JP/lYCRJaLX4qMdffs+mDLjqANfubucmBA3DiZb0usYApDDsr46Dvpf4iq7QF1Q4K
	30K7mY0KKJzquOHwuPtSCkDXjakpCp5VnDGK2xF2JkPehT/N06ZIQeYxVoRYnMtrebvC3SjvewxAP
	fJlKWPH9v1LiZNdoR18Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqfl3-00BSzj-S5; Fri, 26 Nov 2021 18:15:37 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqfl1-00BSyI-3n
 for linux-rockchip@lists.infradead.org; Fri, 26 Nov 2021 18:15:36 +0000
Received: by mail-wr1-x429.google.com with SMTP id o13so20312269wrs.12
 for <linux-rockchip@lists.infradead.org>; Fri, 26 Nov 2021 10:15:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ahw/QenqQyKXJUA0nTYOkumXqWeROPUf/bI0w/XDAUc=;
 b=MIiRpXwFRLfny63efM06n6kJ2s1h+iNfMePA6PSjBY2bO0CwEzgQjZ5nzPf0bpS1y9
 jnSrUVXnfF/qkRj4evru5ggjjA1mgOtyPd1mnVDo9/QDAWeoXdI/1z0BbDqviGBBCD7+
 DY6Xiq7cs8KhuHaXVf4ib//0NTnpwtLzbmoMej4oisXfPp2dNXzzkIjEVOllX2K8GMxv
 j3Xk2XC181nNqYoO8fNqCPXOsMti4UbkJ2OM3FOKKD7EmY3M4Tsc4pUDEV4nk6mGf/qM
 1i7J0tXlgnHG5ZhS3ZosRy66L/UjMad/kGtQ24MEQiPyqkeQHGgJp79sOtovExkJ+QJG
 w3wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ahw/QenqQyKXJUA0nTYOkumXqWeROPUf/bI0w/XDAUc=;
 b=qxT/G2eUoourqYz5L4n/iIXeZ2Y3+/Z4p3HEsq+ICpO7zdRLr29X9oP6zMiE5WQerc
 b/vAWdlsHE7Feg9ner0pAcclsZQZt/LfBaFWSqZaSvOkRFBJNcj1Wdk4vG4umeEJHTQu
 LD942bHd14ZEcXpvOnZwyY4WpH15ZX3h8Fblk9StrFLg2j+uH5avjTa/lvavShrQiYRm
 k8tP6iYVA2rjfwJXxZB1WLADiqLLmLh48OEklFd974lnmMZph/IULtiNAz4K+YdPlVHA
 IIf3GzibUPLg6PsR+ZOhOZD2HhsMNAHQo7KuiwM77HhSHbDgN/iTCUcBb4P2qrw44XjP
 sRUA==
X-Gm-Message-State: AOAM533U0YNJj09CutnT7jPzLI1f+JBis0OIFHq9gFXIJlzXeKdv+7t4
 MR/M/rifd4SyW7zyZQVsqL4R9Q==
X-Google-Smtp-Source: ABdhPJz2UCPzO58at6onpT/w1UzbhZq/SyFPTenYXL7cuMCyaWnbsAnBNtmwL1aQxpesUsmSZfvB7Q==
X-Received: by 2002:adf:f0c8:: with SMTP id x8mr16199318wro.290.1637950532783; 
 Fri, 26 Nov 2021 10:15:32 -0800 (PST)
Received: from localhost.localdomain ([2a01:e34:ed2f:f020:70b:e5b5:f868:20cf])
 by smtp.gmail.com with ESMTPSA id
 r83sm11744735wma.22.2021.11.26.10.15.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Nov 2021 10:15:31 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: daniel.lezcano@linaro.org
Cc: robh@kernel.org, arnd@linaro.org, heiko@sntech.de, ulf.hansson@linaro.org,
 rjw@rjwysocki.net, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 lukasz.luba@arm.com, Robin Murphy <robin.murphy@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Helen Koike <helen.koike@collabora.com>,
 Brian Norris <briannorris@chromium.org>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH v2 2/5] arm64: dts: rockchip: Add powerzones definition for
 rock960
Date: Fri, 26 Nov 2021 19:14:55 +0100
Message-Id: <20211126181500.3404129-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211126181500.3404129-1-daniel.lezcano@linaro.org>
References: <20211126181500.3404129-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_101535_233336_585B9662 
X-CRM114-Status: GOOD (  11.14  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Add the powerzones description. This first step introduces the big,
the little and the gpu as a powerzone place.

Cc: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
   V1: Initial post
   V2:
     - Move description in the SoC dtsi specific file
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 25 ++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index d3cdf6f42a30..3c0dbc0cb2bc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -76,6 +76,8 @@ cpu_l0: cpu@0 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			#powerzone-cells = <0>;
+			powerzone = <&PKG_PZ>;
 		};
 
 		cpu_l1: cpu@1 {
@@ -88,6 +90,8 @@ cpu_l1: cpu@1 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			#powerzone-cells = <0>;
+			powerzone = <&PKG_PZ>;
 		};
 
 		cpu_l2: cpu@2 {
@@ -100,6 +104,8 @@ cpu_l2: cpu@2 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			#powerzone-cells = <0>;
+			powerzone = <&PKG_PZ>;
 		};
 
 		cpu_l3: cpu@3 {
@@ -112,6 +118,8 @@ cpu_l3: cpu@3 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			#powerzone-cells = <0>;
+			powerzone = <&PKG_PZ>;
 		};
 
 		cpu_b0: cpu@100 {
@@ -124,6 +132,8 @@ cpu_b0: cpu@100 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <436>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			#powerzone-cells = <0>;
+			powerzone = <&PKG_PZ>;
 
 			thermal-idle {
 				#cooling-cells = <2>;
@@ -142,6 +152,8 @@ cpu_b1: cpu@101 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <436>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			#powerzone-cells = <0>;
+			powerzone = <&PKG_PZ>;
 
 			thermal-idle {
 				#cooling-cells = <2>;
@@ -791,6 +803,17 @@ spi5: spi@ff200000 {
 		status = "disabled";
 	};
 
+	powerzones {
+
+		PKG_PZ: pkg {
+			#powerzone-cells = <0>;
+                        powerzone = <&SOC_PZ>;
+		};
+
+		SOC_PZ: soc {
+		};
+	};
+
 	thermal_zones: thermal-zones {
 		cpu_thermal: cpu-thermal {
 			polling-delay-passive = <100>;
@@ -2027,6 +2050,8 @@ gpu: gpu@ff9a0000 {
 		clocks = <&cru ACLK_GPU>;
 		#cooling-cells = <2>;
 		power-domains = <&power RK3399_PD_GPU>;
+		#powerzone-cells = <0>;
+		powerzone = <&PKG_PZ>;
 		status = "disabled";
 	};
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
