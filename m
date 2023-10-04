Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D998FE776F4
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Oct 2023 09:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EszZzOpkn8B7vesO8fxxM62NqH/u2YMz3E8QM2vkAtM=; b=USlaPiIp3Lyp8e
	NedT4wnaWK/uqLdVLokiEuUD8/USTeju4AB7GOaglZPlwyeTKcOO6XHtKZD/6FxXNdvENAFvrQQ3g
	AndSv54KEmO2hjqwFtmMHqO7EWgiZbV3koSGF6CN1tEZ95y2g+9rVXKJ3EuCVa9t0mTXIV/baFg7l
	6o874AnfleHfvbwNgo3v8Q0+xQa7OkpidKhEDiG2Yo9T+mducG0okgouAEEI/Pb8DtPgGPrF17loW
	xG+cwFH+ZhNr7CU3p/+uiIr6waQBIcctmpehq70/rotfFDSAQftJhSk/pOtLmYdV5Mms5BeLrTvww
	hJ4DXTyAyVmySh881h1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qny0H-00H1fH-2N;
	Wed, 04 Oct 2023 09:17:13 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93] helo=mx07-00178001.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qny0E-00H1cx-2L;
	Wed, 04 Oct 2023 09:17:12 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3945iOOM022001;
	Wed, 4 Oct 2023 11:17:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=ea5OiJ9ON12vBbfkNy54tXC0IDhxfzZ9TFeWkUVfTzY=; b=Bp
	CeNshxTmQXJ+TECc/X+BSOla0/oT8MMmHcSQoDxxa41X1nMVukezWhetPHT1FyB3
	ZGInwCsWdXgyMnBAqi2OaXOEImaHtDNYPeBzvyskwaf9v6Uo+BRnlNIruXbZQ1lH
	cLL0y6cAS++ETKoxA2LZBkDyeXnbTBeRs0e6PSe9w7F8HWc8oID00hDLAHIbZT+r
	ZkwiNK2HY+KEzp/4yF8jtPzwBURDEZvF81AXgfPOKCB2RpmsF9bdcKGF+XDRjo8d
	zn/Ri4z992i6xkcote6BUc16vS4x/ImPe0GTHs7ds1JR8HanSO6pCu+Jn7/CqTuf
	KrC444TxsVwUE9n3aUmw==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3teajd04xf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Oct 2023 11:17:04 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9C2CC100057;
	Wed,  4 Oct 2023 11:17:03 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 945FF22A6DF;
	Wed,  4 Oct 2023 11:17:03 +0200 (CEST)
Received: from localhost (10.201.20.120) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 4 Oct
 2023 11:17:03 +0200
From: Hugues Fruchet <hugues.fruchet@foss.st.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hans
 Verkuil <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
        Maxime Coquelin
	<mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>
CC: Hugues Fruchet <hugues.fruchet@foss.st.com>,
        Andrzej Pietrasiewicz
	<andrzej.p@collabora.com>
Subject: [PATCH 6/7] arm64: dts: st: add video decoder support to stm32mp255
Date: Wed, 4 Oct 2023 11:15:51 +0200
Message-ID: <20231004091552.3531659-7-hugues.fruchet@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231004091552.3531659-1-hugues.fruchet@foss.st.com>
References: <20231004091552.3531659-1-hugues.fruchet@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-04_01,2023-10-02_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_021711_040176_12DEF4C6 
X-CRM114-Status: GOOD (  10.50  )
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
 arch/arm64/boot/dts/st/stm32mp251.dtsi | 6 ++++++
 arch/arm64/boot/dts/st/stm32mp255.dtsi | 8 ++++++++
 2 files changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index 5268a4321841..0ca421ede0ae 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -46,6 +46,12 @@ ck_icn_ls_mcu: ck-icn-ls-mcu {
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
index 4f2b224fe077..105ef2d71c77 100644
--- a/arch/arm64/boot/dts/st/stm32mp255.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp255.dtsi
@@ -8,6 +8,14 @@
 / {
 	soc@0 {
 		rifsc: rifsc-bus@42080000 {
+			vdec: vdec@480d0000 {
+				compatible = "st,stm32mp25-vdec";
+				reg = <0x480d0000 0x3c8>;
+				interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "vdec";
+				clocks = <&ck_icn_p_vdec>;
+				clock-names = "vdec-clk";
+			};
 		};
 	};
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
