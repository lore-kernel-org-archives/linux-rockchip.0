Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFEB360A2629
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 09:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=x+DlLPd8;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=samsung.com header.i=@samsung.com header.a=rsa-sha256 header.s=mail20170921 header.b=lJTqO4zD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Cc:To:In-Reply-To:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=MpSuhjAaNLj3r8bSyGfEkl6IiII/KbQiGLA9aIbEaYM=; b=x+DlLPd8go+X/gvmwhzpmaIHbC
	vgmLAd6oVEG6Vt8zy+RgChUGW76/qisH5j4crpH/zMFvqnFehuE84qvnGenJz+PIcxnQnLi50x/5w
	qxn33KQK/DS5U7C/vTa9XW8+svK7aKcWWFPvGzpmYwHwHt38wz1pRiywFFgU8zLdQbh/r7jUGXs5Z
	j6RjZwzceTuxxvJWoxWBt3PaHHNFiCZuqHdIEEQy4X4T1jbutg2TbwwvRaXmhqlKvxeV7RxQLhHLl
	9b7hqaxGSsb6iYQMofFtu9PEqjhTHnWbXGmirBaqNQNJNNOo9xU1anAkedOMBUrGB0C6/onEuMhTL
	KwrBhvow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnFu-000000068Pz-1KUb;
	Tue, 24 Nov 2026 09:56:06 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnFm-000000068MZ-1CH3
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 09:56:03 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20261124095556euoutp01d508d3b984c3deef79fad5a098b90a11~q8pykJSh40406004060euoutp01V
	for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 09:55:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20261124095556euoutp01d508d3b984c3deef79fad5a098b90a11~q8pykJSh40406004060euoutp01V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1795514156;
	bh=06AQXyihJq/OEvwcZMATqFb1XaBS16clhoCnTaBSROQ=;
	h=From:Date:Subject:In-Reply-To:To:Cc:References:From;
	b=lJTqO4zD+PB7K66c1WmgMyxjayLU/IN7CjD4ccWJvUcW/TfFPAn8blRjLAGnxUINq
	 Z7+Wi23Px2QiGbMg5ITc1Ov4KMVtxrdd95dmsF/mYnBknG/ZxF3mcwFo3b7Lber4GX
	 vDAJ+4H8s2nOHdHVkl4TB3mWZgxDyq3q7yfZVRxc=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20261124095555eucas1p1bf8a1e59f2197aafda6bc4f048384eec~q8pyNkyh21824718247eucas1p1R;
	Tue, 24 Nov 2026 09:55:55 +0000 (GMT)
Received: from AMDC4942.eu.corp.samsungelectronics.net (unknown
	[106.210.136.40]) by eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20261124095554eusmtip24b9eb202848a11b54137244f0282c269~q8pxZUQWH3142631426eusmtip2b;
	Tue, 24 Nov 2026 09:55:54 +0000 (GMT)
From: Michal Wilczynski <m.wilczynski@samsung.com>
Date: Tue, 24 Nov 2026 10:53:58 +0100
Subject: [PATCH v8 1/5] dt-bindings: phy: Add starfive,jh7110-inno-hdmi-phy
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261124-jh7110-inno-hdmi-phy-v8-1-5e3008122cba@samsung.com>
In-Reply-To: <20261124-jh7110-inno-hdmi-phy-v8-0-5e3008122cba@samsung.com>
To: Vinod Koul <vkoul@kernel.org>,  Neil Armstrong
	<neil.armstrong@linaro.org>,  Manivannan Sadhasivam <mani@kernel.org>, Rob
	Herring <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
	Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,  Emil Renner
	Berthing <kernel@esmil.dk>,  Hal Feng <hal.feng@starfivetech.com>, Dominique
	Belhachemi <db@domibel.de>,  Michal Wilczynski <m.wilczynski@samsung.com>,
	Andy Yan <andyshrk@163.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-riscv@lists.infradead.org,  Marek
	Szyprowski <m.szyprowski@samsung.com>,  Icenowy Zheng
	<zhengxingda@iscas.ac.cn>,  Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	Joshua Peisach <jpeisach@ubuntu.com>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2057;
	i=m.wilczynski@samsung.com; h=from:subject:message-id;
	bh=6AQm50xtAvbrSQTSn64RxXqfjCuQ7qgMNyPcGxB0fq8=;
	b=owGbwMvMwCGWumv6zndzRCIZT6slMWSzxmuq14sV/uf5x3FGacaLf0oXq/0WH8xNzNl//IJlz
	rG556P+d5SyMIhxMMiKKbKc3RhtJPmP4Wn58ce/YOawMoEMYeDiFICJiH9k+O/2y7lZdHbMbX2h
	LTphQpWWh2N0tr9ewt58T9locsD6xjJGhuk/n3z+wB4vuSAh3FDmlaf0lX1bEmeabayYJ/e8I2r
	XAgYA
X-Developer-Key: i=m.wilczynski@samsung.com; a=openpgp;
	fpr=CDB15B3219FE00E577C7E3FA65BA97B9EE9C1459
X-CMS-MailID: 20261124095555eucas1p1bf8a1e59f2197aafda6bc4f048384eec
X-Msg-Generator: CA
X-RootMTR: 20261124095555eucas1p1bf8a1e59f2197aafda6bc4f048384eec
X-EPHeader: CA
X-CMS-RootMailID: 20261124095555eucas1p1bf8a1e59f2197aafda6bc4f048384eec
References: <20261124-jh7110-inno-hdmi-phy-v8-0-5e3008122cba@samsung.com>
	<CGME20261124095555eucas1p1bf8a1e59f2197aafda6bc4f048384eec@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_015559_435128_8CAF118E 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -4.4 (----)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add the dt-binding for the StarFive JH7110 Innosilicon HDMI PHY.

This device is a child of the starfive,jh7110-hdmi-subsystem node. It
functions as both a PHY provider for the controller and as a clock
provider for the variable pixel clock (hdmi_pclk), which it generates
from its refoclk.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
---
 .../phy/starfive,jh7110-inno-hdmi-phy.yaml         | 49 ++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-inno-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-inno-hdmi-phy.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..8dbd113b1534a37d00dfd60454f300531a813b8b
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-inno-hdmi-phy.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/starfive,jh7110-inno-hdmi-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: StarFive JH7110 Innosilicon INNO HDMI PHY
+
+maintainers:
+  - Michal Wilczynski <m.wilczynski@samsung.com>
+
+description:
+  The PHY portion of the StarFive JH7110 INNO HDMI IP.
+
+properties:
+  compatible:
+    const: starfive,jh7110-inno-hdmi-phy
+
+  clocks:
+    maxItems: 1
+    description: Reference oscillator.
+
+  '#clock-cells':
+    const: 0
+
+  '#phy-cells':
+    const: 0
+
+required:
+  - compatible
+  - clocks
+  - '#clock-cells'
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  # Shown as a child of the HDMI subsystem node; see
+  # Documentation/devicetree/bindings/display/starfive/starfive,jh7110-hdmi-subsystem.yaml
+  # for the full node.
+  - |
+    phy {
+        compatible = "starfive,jh7110-inno-hdmi-phy";
+        #clock-cells = <0>;
+        clocks = <&xin24m>;
+        #phy-cells = <0>;
+    };
+
+...

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
