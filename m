Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CAB7C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 13:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20NdMErJFZtkRRA1dzYBYHGgaO4X7OaVVs6q06QIbdk=; b=Fh13aPbqlqEm+I
	jcTBCwCZDZg/rytPZqpz09EQnw/iFm7Qj6XkofNEQz+B7ZPH8ldHH6VlYCJ0ps1ad9F2BhFepCIuv
	mHhZO+H9rWu5hRKIkpi75C/uW8Jke9SmXSm1fdMkAgu3ZwxGUIjWNal42JJLSVOEW8+HojTtKCXww
	SGgGxw6FbU6DUEB6tygb1NIGeW8MxE5V8hCPWrLC6LxHd112Eevy12Jgur2qSBBFNQR3VcDVRe8v9
	4uH516aGDVsm3Il4Gir39FgoLXdkQt8WLN4LP5ZqPPCfMr+D+YqJQMfbfI0Ar+rPNGWSMT794LHMd
	YM3emM8BIwG8j7J+5e6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njL9p-00EYTX-IE; Tue, 26 Apr 2022 13:23:09 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njL8k-00EXks-92; Tue, 26 Apr 2022 13:22:04 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout4.routing.net (Postfix) with ESMTP id CFDF4101299;
 Tue, 26 Apr 2022 13:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1650979317;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VGWdXOAbKYFsWdQ08Ig6m7ORNvxHvLu8Lks5JJidff8=;
 b=xVPVZVvS74xKRcCQuThE/vqu2FFK5C2u8JUAvtrHNfv79ipesUm4A62gY5k7RfwhcLjC7a
 tapzdOkHEpT4hNE8OUGpGOTaTg52fx4GTSCaYKDHw298zTf0KCKuMTGoPeCYBanajnPW7U
 70XtulkRSbzFo6d7nt6dLD1fdWyXD1w=
Received: from localhost.localdomain (fttx-pool-80.245.77.37.bambit.de
 [80.245.77.37])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id BD203401C9;
 Tue, 26 Apr 2022 13:21:56 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [RFC/RFT v2 03/11] dt-bindings: phy: rockchip: add PCIe v3 constants
Date: Tue, 26 Apr 2022 15:21:31 +0200
Message-Id: <20220426132139.26761-4-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220426132139.26761-1-linux@fw-web.de>
References: <20220426132139.26761-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 74afaeeb-5fdb-4ebf-b1d4-688c81efa547
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_062202_501279_55A156EB 
X-CRM114-Status: GOOD (  12.21  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Add constants that can be used in devicetree and driver for
PCIe v3 phy.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
v2:
- new patch because splitting out this file
- rename file from snps to rockchip
---
 include/dt-bindings/phy/phy-rockchip-pcie3.h | 21 ++++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 include/dt-bindings/phy/phy-rockchip-pcie3.h

diff --git a/include/dt-bindings/phy/phy-rockchip-pcie3.h b/include/dt-bindings/phy/phy-rockchip-pcie3.h
new file mode 100644
index 000000000000..93e57edd337d
--- /dev/null
+++ b/include/dt-bindings/phy/phy-rockchip-pcie3.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
+/*
+ * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
+ */
+
+#ifndef _DT_BINDINGS_PHY_ROCKCHIP_PCIE3
+#define _DT_BINDINGS_PHY_ROCKCHIP_PCIE3
+
+/*
+ * pcie30_phy_mode[2:0]
+ * bit2: aggregation
+ * bit1: bifurcation for port 1
+ * bit0: bifurcation for port 0
+ */
+#define PHY_MODE_PCIE_AGGREGATION 4	/* PCIe3x4 */
+#define PHY_MODE_PCIE_NANBNB	0	/* P1:PCIe3x2  +  P0:PCIe3x2 */
+#define PHY_MODE_PCIE_NANBBI	1	/* P1:PCIe3x2  +  P0:PCIe3x1*2 */
+#define PHY_MODE_PCIE_NABINB	2	/* P1:PCIe3x1*2 + P0:PCIe3x2 */
+#define PHY_MODE_PCIE_NABIBI	3	/* P1:PCIe3x1*2 + P0:PCIe3x1*2 */
+
+#endif /* _DT_BINDINGS_PHY_ROCKCHIP_PCIE3 */
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
