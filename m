Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D194C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 16:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XvZipTdVhzMteicRpISqU07X+ysW50fBoOWW9lAdcGg=; b=BPWGOt/oZQ64k1
	ziSaXV+JcBBlPx20kzBlovewpiS5qEjI5XVHL8lbCLkqSHrLevjIQsORVlX4Lri2mNQvnlDl69ETd
	55Lm09Li/AlFtH6iqE4xz4Bghg/QTHjFWIkNmI2eGix4ib+LxyzEik9uWyQhoCfueYbIDuNO2nc1s
	8oRXR+GZtknFJCcQJ3tN5rVNkL7GtUdMB/RAMSZYMt+QTQSUviiZjsB5GJUB7dqdz/Cd/s05Mn3+6
	Vp6WUDZb/rXEm3qG16A5hY2X+898S+kGd2TZ2zOv2PXq13eD9jd7t5u6SKbxT+Luw231bj+FmLM/O
	JIc1fCxRQw9Cxi6xWhKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PcK-00FqxF-GD; Thu, 23 Jun 2022 16:23:40 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Pc0-00Fqrp-9r; Thu, 23 Jun 2022 16:23:21 +0000
Received: from jupiter.universe (unknown [95.33.159.255])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C6CAE66017DF;
	Thu, 23 Jun 2022 17:23:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656001398;
	bh=vN4kmY04mNzLCL12mBQfRLfsXojEK7HYIW1GyujY8kM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LjjJ3BBhRSWk+DCNGq1XPan72wthJeiJRv/2nX8Lf4MjO4EsHRBIzyeuXBRkyE61X
	 hAreAW2ux3llnlfgHOkaAY+a7yM315WIRzLoBwg08XpCEkhdltfUNcDUdJb7SkLsFj
	 BbRLbXBQbt6Z/gYA6PHUKQUn160EGifMiC0OdjsBtuaCzdp41TZ/iU3Vc25BLTBM0w
	 Kv8r+Y0Smufk+GXmLPs56L1BrJXFIQBxK1v6dMGXSSIqBcfS/TiarlGfJBgjWOC3hO
	 kQek1IfDyt4U7ryUcp3pJ1gV82j28lfpDRjcdVzEzZccXefrwT/ll3lfdUQljmjgmz
	 pU3lKGX5ziB9w==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 7078B480126; Thu, 23 Jun 2022 18:23:16 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Finley Xiao <finley.xiao@rock-chips.com>,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH 2/6] dt-bindings: add power-domain header for rk3588
Date: Thu, 23 Jun 2022 18:23:05 +0200
Message-Id: <20220623162309.243766-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623162309.243766-1-sebastian.reichel@collabora.com>
References: <20220623162309.243766-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_092320_517715_FFD04BA2 
X-CRM114-Status: GOOD (  11.25  )
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

From: Finley Xiao <finley.xiao@rock-chips.com>

According to a description from TRM, add all the power domains.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 include/dt-bindings/power/rk3588-power.h | 69 ++++++++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 include/dt-bindings/power/rk3588-power.h

diff --git a/include/dt-bindings/power/rk3588-power.h b/include/dt-bindings/power/rk3588-power.h
new file mode 100644
index 000000000000..69f7e9060250
--- /dev/null
+++ b/include/dt-bindings/power/rk3588-power.h
@@ -0,0 +1,69 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __DT_BINDINGS_POWER_RK3588_POWER_H__
+#define __DT_BINDINGS_POWER_RK3588_POWER_H__
+
+/* VD_LITDSU */
+#define RK3588_PD_CPU_0		0
+#define RK3588_PD_CPU_1		1
+#define RK3588_PD_CPU_2		2
+#define RK3588_PD_CPU_3		3
+
+/* VD_BIGCORE0 */
+#define RK3588_PD_CPU_4		4
+#define RK3588_PD_CPU_5		5
+
+/* VD_BIGCORE1 */
+#define RK3588_PD_CPU_6		6
+#define RK3588_PD_CPU_7		7
+
+/* VD_NPU */
+#define RK3588_PD_NPU		8
+#define RK3588_PD_NPUTOP	9
+#define RK3588_PD_NPU1		10
+#define RK3588_PD_NPU2		11
+
+/* VD_GPU */
+#define RK3588_PD_GPU		12
+
+/* VD_VCODEC */
+#define RK3588_PD_VCODEC	13
+#define RK3588_PD_RKVDEC0	14
+#define RK3588_PD_RKVDEC1	15
+#define RK3588_PD_VENC0		16
+#define RK3588_PD_VENC1		17
+
+/* VD_DD01 */
+#define RK3588_PD_DDR01		18
+
+/* VD_DD23 */
+#define RK3588_PD_DDR23		19
+
+/* VD_LOGIC */
+#define RK3588_PD_CENTER	20
+#define RK3588_PD_VDPU		21
+#define RK3588_PD_RGA30		22
+#define RK3588_PD_AV1		23
+#define RK3588_PD_VOP		24
+#define RK3588_PD_VO0		25
+#define RK3588_PD_VO1		26
+#define RK3588_PD_VI		27
+#define RK3588_PD_ISP1		28
+#define RK3588_PD_FEC		29
+#define RK3588_PD_RGA31		30
+#define RK3588_PD_USB		31
+#define RK3588_PD_PHP		32
+#define RK3588_PD_GMAC		33
+#define RK3588_PD_PCIE		34
+#define RK3588_PD_NVM		35
+#define RK3588_PD_NVM0		36
+#define RK3588_PD_SDIO		37
+#define RK3588_PD_AUDIO		38
+#define RK3588_PD_SECURE	39
+#define RK3588_PD_SDMMC		40
+#define RK3588_PD_CRYPTO	41
+#define RK3588_PD_BUS		42
+
+/* VD_PMU */
+#define RK3588_PD_PMU1		43
+
+#endif
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
