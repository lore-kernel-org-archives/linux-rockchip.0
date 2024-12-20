Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EF67E7718A
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 11:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAdKItFMORAdVdiZ4NAuCjghFHiRBNSv+42Uqd2/+w0=; b=jKnRoHGO29J7gj
	4QXyBCnZp3a4sCT7RW5S3tS2NJ60CA3tQxoc89MgQlehCo83kwNsRDabCV7sHAu+V+meby7btCkSI
	wzoQAaBIjxbtAc66bLxpz5ZRf7bteqJl0UGJK7zhRftOlKN7igW1txRhAlaWqxaG4Gzi5wTdoVGEI
	uWAAqqbsHAHTg817GGpKjA1z0KKuCQusScUFkBJ5CyciNzKsR+Jq+UxmEB73eq5wTjzK5JcGm0nka
	7R/EiJAclLRisFc/idf2mo6nSKnECq+xddqIxrUkyemVYh7jYEMWFu/tkv+FFVp4tFzm2UPTuDKJ3
	ktRXx4gxtVO6d+Dn9EHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOaxt-00000004ith-45t0;
	Fri, 20 Dec 2024 11:14:41 +0000
Received: from mail-m49195.qiye.163.com ([45.254.49.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOanj-00000004f5N-2Ie5
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 11:04:14 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 657128c4;
	Fri, 20 Dec 2024 19:04:08 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 06/38] dt-bindings: add power-domain header for RK3562 SoC
Date: Fri, 20 Dec 2024 19:04:04 +0800
Message-Id: <20241220110407.3511882-2-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220110407.3511882-1-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220110407.3511882-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU9JGlZCTRpITUIYQ0xJS0hWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3bd382303afkunm657128c4
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NQg6SBw*HzIUTQgfNlEZSQM1
	Sg5PCQpVSlVKTEhPTUJJTU9CTUhCVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKT01KNwY+
DKIM-Signature: a=rsa-sha256;
	b=WXrs3RzKuVZXIk9oP/2Zbgq+t+z/nmHqD54n7+cgMvEeWAjzxzLLOtTYgBhS/zKthx26Rgw6vIac4vCsvTKia5GFZinXLta8GFuFOTLpgMsZDP7fmxPEf/AnKi0NTgTJlCQsDcbF6d06gB9SdVCpqXJ2Y0Y00kqkcOnz/GshrC0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=zMGPlpYrd/m7qRd3Nmmda9ixN5q5NdvFUwfJJMa/9bw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_030412_057567_EBD666F9 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
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
---

 include/dt-bindings/power/rk3562-power.h | 35 ++++++++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 include/dt-bindings/power/rk3562-power.h

diff --git a/include/dt-bindings/power/rk3562-power.h b/include/dt-bindings/power/rk3562-power.h
new file mode 100644
index 000000000000..616b5b9be3e1
--- /dev/null
+++ b/include/dt-bindings/power/rk3562-power.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0 */
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
