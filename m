Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA913C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 15:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQDy4t5qU+TsKSe91RyFWpujrBBMBomFE7J6M60C+44=; b=X5jimKbAyaTQ0Q
	6yhweOD46OhpCl20lcXr8tC/cG044GQVOf7TSesp4ZZn2Puwbc1mRKEnogEytHUqM0yz7V5V9538c
	5HY8hq5zL5mcezQ4E4Mw2J0WvfAY6DBiMOYqbdU8j1D60n1DOi4I2OxDZpuAa1Gn9fJ/DUh2lWbIP
	WgX51K+y/NJ2NFETzVaUsURD6NbmQxA+iZlyP3mgjzHMhsQbMiFPEXaaGZnaGvFNbeXuIlvTtP8LV
	PcbR2lwFphd07CKVM16+RIsUGM5cL8TzWCycyxO+Edv8j7/QbQ9BEAAeSr9Krvc3E9fizCYnhchLC
	SX0QpdetJxxwDqAdpVOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZu3H-00000009DyZ-0OJu;
	Fri, 02 Aug 2024 15:18:43 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZu1f-00000009DIc-2LNA;
	Fri, 02 Aug 2024 15:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722611822;
	bh=SWExRS/PWMp0B84ThEjdBRFIqsEtJzpNyT9yDX/hd6g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=4/XKt9/DyzMnnw5NzYTep6fTUXpqIOMUMu+ZY9AZnAcx7axqbsC+ABsZVllm1LDo4
	 1ev13kqLDw6L2I2aj17HdPSz5OMFba7aJm4no9ayJ1tWFJD2del/XIHmsa+CiEbS1Y
	 BUMlDad6OwgUy4dGXVJVJ+S3rRaxUPAsebyNulSIaPdXilUg5INf4ri9MIACATxbmu
	 uue4ye5XNFIQP61CLqF1Nb89IDdXHe313IBRdvBxJwxBNGSyY2g58aYl/7Y+SmBf35
	 Rywo03HHw/xDC4wUhO90VqDO/c9MZBCtCrBFBFTdxJmUQnQSiFPkBTT7Pd5VZ0Z0Hj
	 S2+HQkenUSULw==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id DED83378221A;
	Fri,  2 Aug 2024 15:16:59 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: Add power-domain header for RK3576 SoCs
Date: Fri,  2 Aug 2024 11:14:59 -0400
Message-ID: <20240802151647.294307-3-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240802151647.294307-1-detlev.casanova@collabora.com>
References: <20240802151647.294307-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_081703_988948_021C5738 
X-CRM114-Status: GOOD (  12.20  )
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

Define power domain IDs as described in the TRM.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
[reword]
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 include/dt-bindings/power/rk3576-power.h | 30 ++++++++++++++++++++++++
 1 file changed, 30 insertions(+)
 create mode 100644 include/dt-bindings/power/rk3576-power.h

diff --git a/include/dt-bindings/power/rk3576-power.h b/include/dt-bindings/power/rk3576-power.h
new file mode 100644
index 0000000000000..cb33a32c1aed9
--- /dev/null
+++ b/include/dt-bindings/power/rk3576-power.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
+#ifndef __DT_BINDINGS_POWER_RK3576_POWER_H__
+#define __DT_BINDINGS_POWER_RK3576_POWER_H__
+
+/* VD_NPU */
+#define RK3576_PD_NPU		0
+#define RK3576_PD_NPUTOP	1
+#define RK3576_PD_NPU0		2
+#define RK3576_PD_NPU1		3
+
+/* VD_GPU */
+#define RK3576_PD_GPU		4
+
+/* VD_LOGIC */
+#define RK3576_PD_NVM		5
+#define RK3576_PD_SDGMAC	6
+#define RK3576_PD_USB		7
+#define RK3576_PD_PHP		8
+#define RK3576_PD_SUBPHP	9
+#define RK3576_PD_AUDIO		10
+#define RK3576_PD_VEPU0		11
+#define RK3576_PD_VEPU1		12
+#define RK3576_PD_VPU		13
+#define RK3576_PD_VDEC		14
+#define RK3576_PD_VI		15
+#define RK3576_PD_VO0		16
+#define RK3576_PD_VO1		17
+#define RK3576_PD_VOP		18
+
+#endif
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
