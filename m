Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 234FFC47073
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jan 2024 10:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4TyHNnbGJAraYnCTuxHPvK7jxt1ALLXx54Iib483G4=; b=2R0czpSB9uPkSY
	vvogWXuDpuFTQriQZcQMILzxb4PvFdbPCrd2gZbJBY2ZGwmWCSdcBPnvd8nOqWY/7f7JiZJ/3Iqy+
	ia0O9B8J1AWCJKAwL6Mtg4HjFvJJCKCv0j1+zCdirMOD/beOoV1kM+rHna/1YvsiXmG1CPObEbSm2
	NcZ5G6Hpz+LvOlyIXEEsxQBR9yRSyvbuQfkdujvGMKHROYyQgHxQpsCLalgMy4d12Oaf2y03Vp5bv
	K2Pr/T16Lv5sxkULCANT98nlxTQxHPi0lyAIs6kGB+dv91zvetsv0gOCoprbp9zLzoLJGsCaFiZLN
	kkg6OKZMgUekEM2fx8ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNW7c-00B5Py-2O;
	Wed, 10 Jan 2024 10:47:44 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNW7W-00B5Ky-0g;
	Wed, 10 Jan 2024 10:47:40 +0000
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40A9ZYnX004069;
	Wed, 10 Jan 2024 11:47:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=RzpMNEvKBGGGTMPiOngvcKf35zE8+NpmtuX2iQNIWo4=; b=5K
	vR+K5tEzBimYP1uMuVUax+BLvN2FHxszYZDlzgsbJnVve2JjdKoaE6CF87RsRK/6
	DxA+s2Qzaf42q8pAEj/+iGFxeaN+5SY2P9ku8eFyPkewxu8FUNF7btkX7L9h4nxF
	ZoRXaKx6s/U7gMb3S23DxEH/jdXAeGQy3fxmAU9OtpVW4ijcvQA3TmJ9nKHXxRGe
	5hSrFDWp9J8w1VBYTZLgvNX2xMVxolx5AASIdQNUKO1j+py45TTWUeuVfyQ9ywUx
	NOrRtg9VDqxLFw5dmsUJ9uOQLtU6IWgkdk3shEh+oUu9iiLyLykvwwc3OdPH0DdV
	qd9e9lIS+TOgWvX+MKwQ==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3vfjpnwk0x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 Jan 2024 11:47:04 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2C264100049;
	Wed, 10 Jan 2024 11:47:04 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1FBB826C046;
	Wed, 10 Jan 2024 11:47:04 +0100 (CET)
Received: from localhost (10.201.20.120) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 10 Jan
 2024 11:47:03 +0100
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
Subject: [RESEND PATCH v6 4/5] arm64: dts: st: add video decoder support to stm32mp255
Date: Wed, 10 Jan 2024 11:46:41 +0100
Message-ID: <20240110104642.532011-5-hugues.fruchet@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240110104642.532011-1-hugues.fruchet@foss.st.com>
References: <20240110104642.532011-1-hugues.fruchet@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-05_08,2024-01-05_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_024738_538920_2DA64056 
X-CRM114-Status: GOOD (  10.78  )
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
index 124403f5f1f4..cd6c4f627739 100644
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
