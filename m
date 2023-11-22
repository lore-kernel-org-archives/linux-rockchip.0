Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0516C61D97
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 12:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+jH/jQa9+PQRU4FIBipbdoIYhzgCE2b/MZf6sdfGFO4=; b=Ec0JtcOWO7TzTy
	Y4CUSHEnLJvMhwx62tQa+WfoEG3Fc2+grfc35e62I7gkexYIwgGAEQMg/snYWhby0cb/iQ9dGSPiF
	9bK0hwp28zi1mAVPWlHP8O+tTm0300+XuSylbqRSx3oeD4ocXT34f5fiJdatcZ6WSWSEDH4I+RYlE
	1FuHn5lBBXVJxLRDNY/2DBT5RdNINYhYNAefWuBCir9Qx4SwbUrRhOyo2jOIZNzacP1WwqXEwxaDa
	k6kPDHYzZRPshZMaGTOKMHDOexT5OCrB2ypy06UzFpioDGZ0ZIjKqVGpvQFIe08wMOUmJIUp2xRH5
	pWMIqFxkU2XUzbcks4DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mH2-001n8c-2d;
	Wed, 22 Nov 2023 12:24:08 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mGz-001n66-1h;
	Wed, 22 Nov 2023 12:24:06 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailout.west.internal (Postfix) with ESMTP id D36E63200B2B;
	Wed, 22 Nov 2023 07:24:03 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Wed, 22 Nov 2023 07:24:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1700655843; x=
	1700742243; bh=jhTsnmAl5/DmW6EKKVEBlGQazQUFkpjvjuIRfHHxlxE=; b=M
	iO1O0W5Lh8PT2bOZTYcDns2zJTBjmh/QCPr3pD5trFpFWYHvY72qPR3QYk8zq41Z
	aen+RvAgf//xad5kOS0QC8sx6CqL5Bae6OPfuPg46XgEbKHQS3W69k6nF6tkiMYp
	3qvIM/O6IsWh+OMVrDt1yhl9EMA75E2cIR7TlQKqnEiaty3E5QIG+uvZS9Feir3J
	rTI5zVr8liBGfPq+hmwSuZlH7AMCTboYpFedeZ1sGAR9DqR6BeMfUhH6TDuiWSVn
	3xGgFJas6b6IJG/0rMOniEUdiglXqE4gzW+tTKWAzUwcajdosbuO6wCdt6urIKi3
	beZzB0SUMQhZpZv8Gsu2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1700655843; x=
	1700742243; bh=jhTsnmAl5/DmW6EKKVEBlGQazQUFkpjvjuIRfHHxlxE=; b=V
	09sdPuJk0L9uXPv+3w9+QajkMcEWG0rXeJMMIPQTzmConfbBmA7E1vBi1/7b5we2
	7Kri+gC20rjQV6Q4YVaamN5vwdVJTVFWv/FDrD0L841vFum+lxjTMeLhnpwsFVrt
	5cD2hzmxOQs21vVh9f5elbweJ8r9bffyuwZCr2raStfv0isG6b7oVM0i1I8st1ol
	yMuQiKRCd/8WuejFK7r1ysnDnutvL64Hv0o6VRUQ4icpnvLptzpkBXCAi2f1MhVx
	t9N9qaPLJiHmaieJmKyDZNK+HXi+xStl8KkWmzz2gZNDpQsdmmDArPWf1bBhohHP
	7ZpbjO4O9q75Hxw+dFThw==
X-ME-Sender: <xms:4_JdZRlRni9WTiU-55r4E2SkeiT0pev4HMqa-D-cUdhppDTK0ppkgQ>
    <xme:4_JdZc0ZRzzJCmO0d5adqWq_fIRsdCkUybyNmUys57DN0936YvyJylRskARoNhgtT
    SixBBQYAA>
X-ME-Received: <xmr:4_JdZXqC0BHSGs6MUZsWNPRw-7eTbow5FQoCAjK0468V8kXa_ka2UR-pR1a7TaA_F-HXWhi7ldGYjOLCrTbtmlPgEDLCXFkAmYs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddgfeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:4_JdZRmWXERlxT8JbKzdq-ZWzKo7w3QZeyGiBTmqGmdONZBh5dlXcQ>
    <xmx:4_JdZf0ilpNOWiakwZaS_i8dxjF62HYvUubVMtBO-uXN3f4gMOnA4w>
    <xmx:4_JdZQvQfuLQcDUS45UqyAURAzo12lJXaQWn7_-FJAugYQiQ3p_f3g>
    <xmx:4_JdZUmxjl8kK8ba_CXNGJj8ofcKUZHzEs06EXXdzDGL8DKjMsVrmA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 22 Nov 2023 07:23:58 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 22 Nov 2023 23:23:55 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Tim Lunn <tim@feathertop.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v2 7/9] ARM: dts: rockchip: Add rv1109 SoC
Date: Wed, 22 Nov 2023 23:22:30 +1100
Message-Id: <20231122122232.952696-8-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231122122232.952696-1-tim@feathertop.org>
References: <20231122122232.952696-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_042405_596610_EEC577CC 
X-CRM114-Status: GOOD (  13.33  )
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

The Rockchip rv1109 SoC is a dual core version of the rv1126. It is
otherwise identical and shares the same device tree config.

This patch introduces a dtsi file to drop the additional cpu nodes.
Taken from Rockchip BSP kernel.

Signed-off-by: Tim Lunn <tim@feathertop.org>

---

Changes in v2:
- new patch

 arch/arm/boot/dts/rockchip/rv1109.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1109.dtsi

diff --git a/arch/arm/boot/dts/rockchip/rv1109.dtsi b/arch/arm/boot/dts/rockchip/rv1109.dtsi
new file mode 100644
index 000000000000..9cbaa08ab1b8
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1109.dtsi
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
+ */
+
+/dts-v1/;
+
+#include "rv1126.dtsi"
+
+/ {
+	compatible = "rockchip,rv1109";
+
+	cpus {
+		/delete-node/ cpu@f02;
+		/delete-node/ cpu@f03;
+	};
+
+	arm-pmu {
+		interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>, <&cpu1>;
+	};
+};
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
