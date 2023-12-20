Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE1F1C46CD3
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Dec 2023 08:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBl3y96LebiDRXRvL23MXZ1yNH85SXkzJxxpNM0bLHE=; b=iVBKXbKD1YSPlJ
	47S75d2jApBuNRi/iZIotI7b2mV8BlRrqOpqnOGiXxuuymFOri2S9TX5fRTTZ9bqJWKiy+2j+/Npp
	8+WAn6CZmiTsYeqZVJ8PZKoakAxG0iCbFz3AkJg5mJ0FKnaGD6QUvMM8Slz3mr3GPZDbf3koMPaB/
	gsT7WJ3fcSbAHdd7ABvcLyQ4fJJFfOcw8B+V23M6zUHJux2KGTV73bXimSS6lxNSWC7JDFUPIF45l
	T7XDSuKxtrgQg+pf2hc6H7NNO9vTW+r3clvkyXvJzGRiGM9hFmW+PNf0TzgxR5RIPIzV/Jo9pi8b+
	LWixqTyVlRdXpeQRvTpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFsEW-00GcpD-00;
	Wed, 20 Dec 2023 08:47:16 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFsES-00Gcmm-2Q;
	Wed, 20 Dec 2023 08:47:14 +0000
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3BK6RIS2020454;
	Wed, 20 Dec 2023 09:46:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=iSjyXXBlLU8CmpUXVSZCKnI2Y7L6CFxxoTsOMTlPK98=; b=5J
	8MzLQaskAPjpHPUjACMentSOKS0dRg+7B3xagfMHCAJ70qk0rFdSA5I35VKvuk4A
	GkYn6lbMuVVnIkKjfqVHk0MAErad8GZ0ptpv5yXo8hmZ7rgonwvmcjLzhO1UXuVK
	KmJAlE+HwhAGM9FaBPzHx9n9vZFODyRvutBzVkqH5Cwz5H91Xk4XZD9YfIIJ/oUb
	DMXgURNIhnu/5QZ4aP8ed/27HCq212hQeKzq7YfiInKTNaRpYn8NKfwgNXezDmyc
	P/GQI7uBGRTPJpPVx7JPVs8pLBa8pTsf1BpCqUbOX66kc+8428ktqt/WR26Mosc0
	uUzb+e1iP/0rARxK/44Q==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3v14420a7n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 20 Dec 2023 09:46:49 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B0220100063;
	Wed, 20 Dec 2023 09:46:48 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A57E820A75C;
	Wed, 20 Dec 2023 09:46:48 +0100 (CET)
Received: from localhost (10.201.20.120) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 20 Dec
 2023 09:46:48 +0100
From: Hugues Fruchet <hugues.fruchet@foss.st.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>,
        Sakari Ailus
	<sakari.ailus@linux.intel.com>,
        Benjamin Gaignard
	<benjamin.gaignard@collabora.com>,
        Laurent Pinchart
	<laurent.pinchart+renesas@ideasonboard.com>,
        Daniel Almeida
	<daniel.almeida@collabora.com>,
        Benjamin Mugnier
	<benjamin.mugnier@foss.st.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Mauro
 Carvalho Chehab <mchehab@kernel.org>,
        Hans Verkuil <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>
CC: Hugues Fruchet <hugues.fruchet@foss.st.com>,
        Marco Felsch
	<m.felsch@pengutronix.de>,
        Adam Ford <aford173@gmail.com>
Subject: [PATCH v3 4/5] arm64: dts: st: add video decoder support to stm32mp255
Date: Wed, 20 Dec 2023 09:46:40 +0100
Message-ID: <20231220084641.2076428-5-hugues.fruchet@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231220084641.2076428-1-hugues.fruchet@foss.st.com>
References: <20231220084641.2076428-1-hugues.fruchet@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-20_02,2023-12-14_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_004713_095684_86AA1DA7 
X-CRM114-Status: GOOD (  10.10  )
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

Add VDEC hardware video decoder support to STM32MP255.

Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
---
 arch/arm64/boot/dts/st/stm32mp251.dtsi |  6 ++++++
 arch/arm64/boot/dts/st/stm32mp255.dtsi | 10 ++++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index 96859d098ef8..8fc7e9199499 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -52,6 +52,12 @@ ck_icn_ls_mcu: ck-icn-ls-mcu {
 			compatible = "fixed-clock";
 			clock-frequency = <200000000>;
 		};
+
+		ck_icn_p_vdec: ck-icn-p-vdec {
+			#clock-cells = <0>;
+			compatible = "fixed-clock";
+			clock-frequency = <200000000>;
+		};
 	};
 
 	firmware {
diff --git a/arch/arm64/boot/dts/st/stm32mp255.dtsi b/arch/arm64/boot/dts/st/stm32mp255.dtsi
index e6fa596211f5..aea5096dac3c 100644
--- a/arch/arm64/boot/dts/st/stm32mp255.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp255.dtsi
@@ -6,4 +6,14 @@
 #include "stm32mp253.dtsi"
 
 / {
+	soc@0 {
+		rifsc: rifsc-bus@42080000 {
+			vdec: vdec@480d0000 {
+				compatible = "st,stm32mp25-vdec";
+				reg = <0x480d0000 0x3c8>;
+				interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&ck_icn_p_vdec>;
+			};
+		};
+	};
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
