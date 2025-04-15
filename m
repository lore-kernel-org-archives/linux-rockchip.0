Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C949C369AB
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Apr 2025 03:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pMVAkC07h2kDQj8nu0a5Gd+UJDi32sOUSl3a1RHfOuU=; b=DfBn0gO/WF+TJY
	tssUrf7uCRjm0b0MkKzS9akWbzsPprXm60Ke9j1Y+h3k5nE85EdDC4wzfUuMEJQY9z5eZsRjI4b71
	TFRRMLYAce3VnGd1VEyeKeKmb8ijatSv9/RewtJFw3bwQCkRk7gqhtt32KBla6k33xwV++i4vlkvX
	2pW4EH+7K+J9nzAXKh267u61FYG0W+DQBNX6mW23j4krGAOLIf5FgxhUag4elmf351uz0194qjuaM
	YiIY31Z4G6pGLZe3nxg8wdoAo4mbgMc1ILIwioa2QTrkx6FHQDELf4o44Kf4c1FODKnvN7eyC5YBz
	kAEmXlz1/ElrJw42GT5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4WtS-00000004Iwd-24yJ;
	Tue, 15 Apr 2025 03:23:26 +0000
Received: from mail-m93185.xmail.ntesmail.com ([103.126.93.185])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4WtO-00000004IvP-2Zj6;
	Tue, 15 Apr 2025 03:23:25 +0000
Received: from localhost.localdomain (unknown [103.29.142.67])
	by smtp.qiye.163.com (Hmail) with ESMTP id 11e30c12c;
	Tue, 15 Apr 2025 11:23:16 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH v4 1/2] dt-bindings: power: rockchip: Add support for RK3562 SoC
Date: Tue, 15 Apr 2025 11:23:13 +0800
Message-Id: <20250415032314.44997-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaTk9IVkseTUtKGUNMSU0fHlYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKS0hVSUJVSk9JVU1MWVdZFhoPEhUdFFlBWU9LSFVKS0lPT09IVUpLS1
	VKQktLWQY+
X-HM-Tid: 0a963778f7e203afkunm11e30c12c
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MU06Tgw4QzJWDhoBPzA8IyNC
	TQowCRJVSlVKTE9PTUNMSEJDQ0lNVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQUhPSkw3Bg++
DKIM-Signature: a=rsa-sha256;
	b=eks/hiRoFswef8TBnnQ/HRPkLNJNe+HTLIZD0broMQAbfrO1Eb9izIp/1iI04uXYMJgvoTKVXJN2ZKSpb9ESOa4bC/LT+SPdnp+3rE7JGme0rrWxoXLfzza+dRxmLH3k5cdaxt8ZwvKvV6JyhCTGKjGzcvbh0+pAvrLPKmuXlmI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=DIAZD5Zf36u+hUjWhCqbjryBN+xHXYlsFrV7UxyUzSw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_202323_191768_878652DB 
X-CRM114-Status: GOOD (  11.11  )
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
Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---

Changes in v4:
- Collect review tag from Heiko

Changes in v3:
- squash the header file and the binding document
- Update license

Changes in v2:
- rename to rockchip,rk3562-power.h
- update the subject
- use dual license

 .../power/rockchip,power-controller.yaml      |  1 +
 .../dt-bindings/power/rockchip,rk3562-power.h | 35 +++++++++++++++++++
 2 files changed, 36 insertions(+)
 create mode 100644 include/dt-bindings/power/rockchip,rk3562-power.h

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index ebab98987e49..f494b7710c09 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -40,6 +40,7 @@ properties:
       - rockchip,rk3366-power-controller
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
+      - rockchip,rk3562-power-controller
       - rockchip,rk3568-power-controller
       - rockchip,rk3576-power-controller
       - rockchip,rk3588-power-controller
diff --git a/include/dt-bindings/power/rockchip,rk3562-power.h b/include/dt-bindings/power/rockchip,rk3562-power.h
new file mode 100644
index 000000000000..5182c2427a55
--- /dev/null
+++ b/include/dt-bindings/power/rockchip,rk3562-power.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2022-2024 Rockchip Electronics Co., Ltd.
+ */
+#ifndef __DT_BINDINGS_POWER_RK3562_POWER_H__
+#define __DT_BINDINGS_POWER_RK3562_POWER_H__
+
+/* VD_CORE */
+#define RK3562_PD_CPU_0		0
+#define RK3562_PD_CPU_1		1
+#define RK3562_PD_CPU_2		2
+#define RK3562_PD_CPU_3		3
+#define RK3562_PD_CORE_ALIVE	4
+
+/* VD_PMU */
+#define RK3562_PD_PMU		5
+#define RK3562_PD_PMU_ALIVE	6
+
+/* VD_NPU */
+#define RK3562_PD_NPU		7
+
+/* VD_GPU */
+#define RK3562_PD_GPU		8
+
+/* VD_LOGIC */
+#define RK3562_PD_DDR		9
+#define RK3562_PD_VEPU		10
+#define RK3562_PD_VDPU		11
+#define RK3562_PD_VI		12
+#define RK3562_PD_VO		13
+#define RK3562_PD_RGA		14
+#define RK3562_PD_PHP		15
+#define RK3562_PD_LOGIC_ALIVE	16
+
+#endif
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
