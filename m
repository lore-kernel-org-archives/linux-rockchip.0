Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BE17E776F4
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Oct 2023 09:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vWWBQnFuH1P4aDTkUm3PSPSGJCUdFaEhjHLSwK2MVW0=; b=ijNLewsWTrnfz8
	TFLpCpvs81n1fnqljzZKXBuFa8Hny79/H6oAJZghQlegsADSuTJNRnXF9Ax+e8Os/R+INZ33JOsP+
	mJnQKmfofS+sKx7KvTFRGMDUkYOHNCPdmd/tKcIOGQ6BDG2+h4JAZ9IYhzS/gLRx059XiMBa2ygCQ
	1DqLSA5GzhACs8bMol9ym+eMJdvpjDaM//muyx78RVygHi1O3k5BQDksE87oU67wEOyylN8WZ4qxW
	7THlDgb+zmvY0cXeUOjWq74Tp4VyCk0fa+JPLfxUx5wKbFHt7WgvnJC6zzfqO5ewUcPR59qIWa5wf
	HX5GwGLPpAQATCkrWTrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnxzb-00H1Ex-03;
	Wed, 04 Oct 2023 09:16:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnxzZ-00H1DV-1S;
	Wed, 04 Oct 2023 09:16:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=JVqHuVV3JttG4RzBiSL1T8HY6o/rE8x5S05xc9coNhs=; b=FN677jX8v0SYAajKbBIpVLmrUr
	UEI/73hd86engMXPd8JquUrO/uueHAWudbpyq5RE2TzrNB3rkQKpBoR79hNqbRDmRYHVtwZpglkeI
	lQqaTELDYb9sz4mAxtgeJFobckF99NiG+rP0k8QGEVBeYjFUNlxS8YFw4NBLhyjE/rXj2A3ljFjfj
	eFvPtBOCCMhmnlW0Do9yIWMazCiuh/WqKnfF4vhAZpMYGpuZEjcFCejEcxy30XeWvYooFG3wkH4sy
	48W1pV6jWM4Bfbve0IQiCO1aavVv+tpHKiebCPCioIPb+nbKyS+doZLMpz9h3rC1UWgvHMcxt6XC5
	yhrD+9Pg==;
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnxzS-00AeD5-1c;
	Wed, 04 Oct 2023 09:16:26 +0000
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39459iVV029811;
	Wed, 4 Oct 2023 11:16:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=JVqHuVV3JttG4RzBiSL1T8HY6o/rE8x5S05xc9coNhs=; b=jt
	g6xYavJeialzxMOd+Flg7pf3IXHsF07kL6N1/9jJPcj0vSz+XyUruNm/EgVEgau+
	JbG+nu0aLBYXJvmv+JkNuzh9eocv8KWrQMttnfuBEBVQGEDJfpWrmGReG0T0YNCH
	7f/B8GQaouSeamK293iLYI0mAIIGnUM0N0074IwiCoDFZytld+1JOM03XlTxNICM
	mqQxCexZHbV3wQnvzf7PJV0FMe3Yvf4WpLqcXMtZ/IxmMmEaioFkoN7sgVgg/8FQ
	QGuVDXS2h46NlEBsFwYTpt7nhEDRIiTzSQAcnFwR+2XjUI31pZ9N7ZVkJbif7N61
	hDwCfPXu0MociQg+PSJw==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3tew80nsd6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Oct 2023 11:16:00 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A300A100057;
	Wed,  4 Oct 2023 11:15:59 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9A47C22A6DE;
	Wed,  4 Oct 2023 11:15:59 +0200 (CEST)
Received: from localhost (10.201.20.120) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 4 Oct
 2023 11:15:59 +0200
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
Subject: [PATCH 1/7] dt-bindings: media: Document STM32MP25 VDEC video decoder
Date: Wed, 4 Oct 2023 11:15:46 +0200
Message-ID: <20231004091552.3531659-2-hugues.fruchet@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231004091552.3531659-1-hugues.fruchet@foss.st.com>
References: <20231004091552.3531659-1-hugues.fruchet@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-04_01,2023-10-02_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_101624_324639_5EFAC30D 
X-CRM114-Status: GOOD (  12.46  )
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

Add STM32MP25 VDEC video decoder bindings.

Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
---
 .../bindings/media/st,stm32mp25-vdec.yaml     | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/st,stm32mp25-vdec.yaml

diff --git a/Documentation/devicetree/bindings/media/st,stm32mp25-vdec.yaml b/Documentation/devicetree/bindings/media/st,stm32mp25-vdec.yaml
new file mode 100644
index 000000000000..cf41f704113f
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/st,stm32mp25-vdec.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/st,stm32mp25-vdec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32MP25 VDEC video decoder
+
+maintainers:
+  - Hugues Fruchet <hugues.fruchet@foss.st.com>
+
+description:
+  The STMicroelectronics STM32MP25 SOCs embeds a VDEC video hardware decoder
+  peripheral based on Verisilicon VC8000NanoD IP (former Hantro G1).
+
+properties:
+  compatible:
+    const: st,stm32mp25-vdec
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    vdec: vdec@580d0000 {
+        compatible = "st,stm32mp25-vdec";
+        reg = <0x580d0000 0x3c8>;
+        interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "vdec";
+        clocks = <&ck_icn_p_vdec>;
+        clock-names = "vdec-clk";
+    };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
