Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CADD8C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 10:31:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 370A861A48
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 10:31:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 370A861A48
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HMr4mi/cQTNYFrRfmYFfLjJK/YyMxyVoOdarp+xAnlg=; b=p7N63vwCDLeKp12KofdXz1BMKQ
	IBESfrfHGizrArWVgQdNnJK/OXCx8VBXAiiCEHqVmkQg96L4TEpl5ki1QjZiNRX6z4zqQyXHPn14N
	KsyBzrNgDFx9wXwzMIfcL10BLsx1koFNPK0GORcuddIVuyhQ6Dw1bP0OgUktqB3UYjri3HoD4XXkx
	F8xqGKE8XKFB8ZwwTrmMaEwqZNs0aJb/Tk+qC0yM/URXJd7uV1hmJBXuCmKMveo2e47oecJW6EOGD
	nWCypZVug3bs9yd2GnyZm4QHOyfPp5KE9Yl1ty3T8+s9h/wVKFNYIZUWNdSXUkTl+Qqw3wLAoQyAi
	gYBdYilQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPjkr-003JU7-Lz; Fri, 26 Mar 2021 10:31:49 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPjkF-003JGC-Rx; Fri, 26 Mar 2021 10:31:14 +0000
Received: from localhost (unknown [192.168.167.130])
 by lucky1.263xmail.com (Postfix) with ESMTP id E631EA87AB;
 Fri, 26 Mar 2021 18:30:26 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P7215T139863821305600S1616754626406300_; 
 Fri, 26 Mar 2021 18:30:27 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6d319d0584b9d27c38933a3256da6195>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: robh+dt@kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: robh+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 cl@rock-chips.com, huangtao@rock-chips.com, kever.yang@rock-chips.com,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v6 08/11] dt-bindings: add power-domain header for RK3568 SoCs
Date: Fri, 26 Mar 2021 18:30:24 +0800
Message-Id: <20210326103024.15120-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210326102738.14767-1-zhangqing@rock-chips.com>
References: <20210326102738.14767-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_103112_395586_E47598D1 
X-CRM114-Status: GOOD (  10.82  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

According to a description from TRM, add all the power domains

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 include/dt-bindings/power/rk3568-power.h | 32 ++++++++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 include/dt-bindings/power/rk3568-power.h

diff --git a/include/dt-bindings/power/rk3568-power.h b/include/dt-bindings/power/rk3568-power.h
new file mode 100644
index 000000000000..6cc1af1a9d26
--- /dev/null
+++ b/include/dt-bindings/power/rk3568-power.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __DT_BINDINGS_POWER_RK3568_POWER_H__
+#define __DT_BINDINGS_POWER_RK3568_POWER_H__
+
+/* VD_CORE */
+#define RK3568_PD_CPU_0		0
+#define RK3568_PD_CPU_1		1
+#define RK3568_PD_CPU_2		2
+#define RK3568_PD_CPU_3		3
+#define RK3568_PD_CORE_ALIVE	4
+
+/* VD_PMU */
+#define RK3568_PD_PMU		5
+
+/* VD_NPU */
+#define RK3568_PD_NPU		6
+
+/* VD_GPU */
+#define RK3568_PD_GPU		7
+
+/* VD_LOGIC */
+#define RK3568_PD_VI		8
+#define RK3568_PD_VO		9
+#define RK3568_PD_RGA		10
+#define RK3568_PD_VPU		11
+#define RK3568_PD_CENTER	12
+#define RK3568_PD_RKVDEC	13
+#define RK3568_PD_RKVENC	14
+#define RK3568_PD_PIPE		15
+#define RK3568_PD_LOGIC_ALIVE	16
+
+#endif
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
