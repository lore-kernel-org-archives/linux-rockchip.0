Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D26BC021A0
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Feb 2025 23:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yB+G2u/KQ5wxIesb97lL8vZrAGsYhclFmO3HzzD7Qno=; b=3JLlyV90+tNZox
	QlmrDSKFk8avTEFP+xAUEU/uarfGoQfjNY91XpHJPYZH0766HAID3yQ7qtXUL7RUTxYq58vggU0xl
	8TP848rWTrRENMuXxUbi7WxcumnEb2Gi//SC9RCNhVfw9UAyWKGPDSa+Di+37Fez2JR2vMCeT0KXy
	l2DX3YkRpqif6tqG5MmeBFxaaJxu1tVYH/R7zdUcM/KCFmixt+Hk0r3qweFk8Enp/X6/MaxlZjeBf
	ak7zkIYADSBMtRXIOP2kmK/KNCDn/cmLgYU5XJkikDOcizwVFvydu51AcF2MyUFa9ILm5TDhrxRAn
	xlNwQqRQittL7ZG5Thgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjRpU-00000000uu1-1chn;
	Sat, 15 Feb 2025 23:44:12 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjRh8-00000000tbn-1ZCk;
	Sat, 15 Feb 2025 23:35:35 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739662524; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Rp8oG8yo5qp97iwkTtUAA7Ub4uhzZpUsAaNm08Ym5zGdocSoQVW/KDZd5pwINbS5Dymladefw/OT8ficYdQanCiVAdH8RCnqm0kZ7cXe4Bn3PGJw5nJniB6UhvdCYtqeLxapwTw5IHVlVav2FfwvkWmtmkYMtSX8IkZTN9cmdxA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739662524; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=nkTYGZH4Rt/BPhTK2ejZD5jUHBOvZFPBqU3mnd4WxfA=; 
	b=mx7PUbBzqpLR6QX0juTUHDydxSOOb4rkFh0JMFvSSgxFFe1cqHC0fo6tmAKUEi9iz5Y0k7iJFfOoxm10R5gIqFiD3mYR6ut94mR/EA+0y2Zfu6EzYtIBHrsC2C1R2qgERk5SeEl3maoGQ50uIBSInxZnjjkrOniajn6XxjfzJjE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739662524;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=nkTYGZH4Rt/BPhTK2ejZD5jUHBOvZFPBqU3mnd4WxfA=;
	b=JEPxZCZ47CMhcYq8rtnbwSGj1yxwvOkJLUsfMEp9Kv2sIdlK4OzK72GrnwOELZW3
	N6GKcTnVHkAsVNkK9bIjIlN9XtmY0OohD5FkQgdPq+1JJgZxZiNYT0KAmlKpxKk5ewb
	ixEAo/Ou4kHgg6Oz5UbM3NfP47nWROIxEsEYu+7c=
Received: by mx.zohomail.com with SMTPS id 1739662523221570.4640147388758;
	Sat, 15 Feb 2025 15:35:23 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Sun, 16 Feb 2025 00:34:54 +0100
Subject: [PATCH 5/6] arm64: dts: rockchip: Add thermal trim OTP and tsadc
 nodes
MIME-Version: 1.0
Message-Id: <20250216-rk3576-tsadc-upstream-v1-5-6ec969322a14@collabora.com>
References: <20250216-rk3576-tsadc-upstream-v1-0-6ec969322a14@collabora.com>
In-Reply-To: <20250216-rk3576-tsadc-upstream-v1-0-6ec969322a14@collabora.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250215_153534_470296_9322D5B4 
X-CRM114-Status: GOOD (  10.30  )
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Thanks to Heiko's work getting OTP working on the RK3576, we can specify
the thermal sensor trim values which are stored there now, and with my
driver addition to rockchip_thermal, we can make use of these.

Add them to the devicetree for the SoC.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 75 ++++++++++++++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 73df515a3937414d89515b4ddccf71f33f6a4fe7..c55d7096a3e985d48240c2cab3de572b9ece2b23 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1441,6 +1441,48 @@ gpu_leakage: gpu-leakage@21 {
 			log_leakage: log-leakage@22 {
 				reg = <0x22 0x1>;
 			};
+			bigcore_tsadc_trim_l: bigcore-tsadc-trim-l@24 {
+				reg = <0x24 0x1>;
+			};
+			bigcore_tsadc_trim_h: bigcore-tsadc-trim-h@25 {
+				reg = <0x25 0x1>;
+				bits = <0 2>;
+			};
+			litcore_tsadc_trim_l: litcore-tsadc-trim-l@26 {
+				reg = <0x26 0x1>;
+			};
+			litcore_tsadc_trim_h: litcore-tsadc-trim-h@27 {
+				reg = <0x27 0x1>;
+				bits = <0 2>;
+			};
+			ddr_tsadc_trim_l: ddr-tsadc-trim-l@28 {
+				reg = <0x28 0x1>;
+			};
+			ddr_tsadc_trim_h: ddr-tsadc-trim-h@29 {
+				reg = <0x29 0x1>;
+				bits = <0 2>;
+			};
+			npu_tsadc_trim_l: npu-tsadc-trim-l@2a {
+				reg = <0x2a 0x1>;
+			};
+			npu_tsadc_trim_h: npu-tsadc-trim-h@2b {
+				reg = <0x2b 0x1>;
+				bits = <0 2>;
+			};
+			gpu_tsadc_trim_l: gpu-tsadc-trim-l@2c {
+				reg = <0x2c 0x1>;
+			};
+			gpu_tsadc_trim_h: gpu-tsadc-trim-h@2d {
+				reg = <0x2d 0x1>;
+				bits = <0 2>;
+			};
+			soc_tsadc_trim_l: soc-tsadc-trim-l@64 {
+				reg = <0x64 0x1>;
+			};
+			soc_tsadc_trim_h: soc-tsadc-trim-h@65 {
+				reg = <0x65 0x1>;
+				bits = <0 2>;
+			};
 		};
 
 		gic: interrupt-controller@2a701000 {
@@ -1852,6 +1894,39 @@ tsadc: tsadc@2ae70000 {
 			rockchip,hw-tshut-temp = <120000>;
 			rockchip,hw-tshut-mode = <0>; /* tshut mode 0:CRU 1:GPIO */
 			rockchip,hw-tshut-polarity = <0>; /* tshut polarity 0:LOW 1:HIGH */
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			tsadc@0 {
+				reg = <0>;
+				nvmem-cells = <&soc_tsadc_trim_l>, <&soc_tsadc_trim_h>;
+				nvmem-cell-names = "trim_l", "trim_h";
+			};
+			tsadc@1 {
+				reg = <1>;
+				nvmem-cells = <&bigcore_tsadc_trim_l>, <&bigcore_tsadc_trim_h>;
+				nvmem-cell-names = "trim_l", "trim_h";
+			};
+			tsadc@2 {
+				reg = <2>;
+				nvmem-cells = <&litcore_tsadc_trim_l>, <&litcore_tsadc_trim_h>;
+				nvmem-cell-names = "trim_l", "trim_h";
+			};
+			tsadc@3 {
+				reg = <3>;
+				nvmem-cells = <&ddr_tsadc_trim_l>, <&ddr_tsadc_trim_h>;
+				nvmem-cell-names = "trim_l", "trim_h";
+			};
+			tsadc@4 {
+				reg = <4>;
+				nvmem-cells = <&npu_tsadc_trim_l>, <&npu_tsadc_trim_h>;
+				nvmem-cell-names = "trim_l", "trim_h";
+			};
+			tsadc@5 {
+				reg = <5>;
+				nvmem-cells = <&gpu_tsadc_trim_l>, <&gpu_tsadc_trim_h>;
+				nvmem-cell-names = "trim_l", "trim_h";
+			};
 		};
 
 		i2c9: i2c@2ae80000 {

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
