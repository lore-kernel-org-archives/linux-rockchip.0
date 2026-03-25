Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 730B91075269
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 01:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VwKAVkCFw6IvLoRiLn2+67QCbsQ109xNwqU8dybzxy0=; b=EHkWTboZTYrzVK
	IW0/2E9qpOtfjnBciEeu2Pf/or0VSJ+lomSOkkM6hanEfdJzE7qZ8R3IHRl2VnwvRuCr3fdLPXH1p
	5Ofj/X4J0EvYF3x6pyEHzjpAiVDm15RgdqBQ3WdfSMn2SCGxZCM5UPfueVSfBsHEj3db/SBqdk4kt
	MpggRTD3hc4KCaTTlx04uHRpeDfvMwPNTr/iMim18FJqMTytHjut1YViGlJt81hnaRfoRnhfrFK8L
	faF1VvzWXGhUcTDTSgr2j7vacGE2vrTLpVREdhD7za+BLJJfLESQMbiRNdfRkaQwRahJ8TqqMinog
	4TriRlkTxCm9FXUkTbPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5DWC-00000002ToG-3wHs;
	Wed, 25 Mar 2026 01:58:48 +0000
Received: from mail-m49244.qiye.163.com ([45.254.49.244])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5DW9-00000002Tml-3nNG
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 01:58:47 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 382e59d5b;
	Wed, 25 Mar 2026 09:58:41 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-trace-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Steven Rostedt <rostedt@goodmis.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v5 1/3] PCI: trace: Add PCI controller LTSSM transition tracepoint
Date: Wed, 25 Mar 2026 09:58:30 +0800
Message-Id: <1774403912-210670-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1774403912-210670-1-git-send-email-shawn.lin@rock-chips.com>
References: <1774403912-210670-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9d22b7256909cckunm61c156f0a5586c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh4eS1ZOTEtLSkNDTR5OSEpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE
	pVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=h7RxCBkeNdV3RdS1lL07SH+zn9re32xt2UAL9i4tKl7hfxKg5oUcvxmx8t2UQDmVajPAA+NirUI6MCkqOkCa3nC+Rk4Ps9m8F9/uHdW3sO0o7/xCuBgBaC1yJDNXptRVndtg2ZWutSEVeppWEiAlUg5IVsmzxoPU8UcAgNIxRSc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=QSGJAYrwVyaJSE6SdOF9MFVaSP3OU7Hp4gce1A1jKiI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_185846_164480_79F7FF82 
X-CRM114-Status: GOOD (  14.76  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Some platforms may provide LTSSM trace functionality, recording historical
LTSSM state transition information. This is very useful for debugging, such
as when certain devices cannot be recognized or link broken during test.
Implement the pci controller tracepoint for recording LTSSM and rate.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v5:
- use EM/EMe instead
- remove reg/unreg function and back to use TRACE_EVENT

Changes in v4:
- use TRACE_EVENT_FN to notify when to start and stop the tracepoint,
  and export pci_ltssm_tp_enabled() for host drivers to use

Changes in v3:
- add TRACE_DEFINE_ENUM for all enums(Steven Rostedt)

Changes in v2: None

 drivers/pci/trace.c                   |  1 +
 include/trace/events/pci_controller.h | 58 +++++++++++++++++++++++++++++++++++
 2 files changed, 59 insertions(+)
 create mode 100644 include/trace/events/pci_controller.h

diff --git a/drivers/pci/trace.c b/drivers/pci/trace.c
index cf11abc..c1da9d3 100644
--- a/drivers/pci/trace.c
+++ b/drivers/pci/trace.c
@@ -9,3 +9,4 @@
 
 #define CREATE_TRACE_POINTS
 #include <trace/events/pci.h>
+#include <trace/events/pci_controller.h>
diff --git a/include/trace/events/pci_controller.h b/include/trace/events/pci_controller.h
new file mode 100644
index 0000000..a4b387c
--- /dev/null
+++ b/include/trace/events/pci_controller.h
@@ -0,0 +1,58 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM pci_controller
+
+#if !defined(_TRACE_HW_EVENT_PCI_CONTROLLER_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _TRACE_HW_EVENT_PCI_CONTROLLER_H
+
+#include <uapi/linux/pci_regs.h>
+#include <linux/tracepoint.h>
+
+#define RATE					\
+	EM(PCIE_SPEED_2_5GT,  "2.5 GT/s")	\
+	EM(PCIE_SPEED_5_0GT,  "5.0 GT/s")	\
+	EM(PCIE_SPEED_8_0GT,  "8.0 GT/s")	\
+	EM(PCIE_SPEED_16_0GT, "16.0 GT/s")	\
+	EM(PCIE_SPEED_32_0GT, "32.0 GT/s")	\
+	EM(PCIE_SPEED_64_0GT, "64.0 GT/s")	\
+	EMe(PCI_SPEED_UNKNOWN, "Unknown")
+
+
+#undef EM
+#undef EMe
+#define EM(a, b)	TRACE_DEFINE_ENUM(a);
+#define EMe(a, b)	TRACE_DEFINE_ENUM(a);
+
+RATE
+
+#undef EM
+#undef EMe
+#define EM(a, b)	{a, b},
+#define EMe(a, b)	{a, b}
+
+TRACE_EVENT(pcie_ltssm_state_transition,
+	TP_PROTO(const char *dev_name, const char *state, u32 rate),
+	TP_ARGS(dev_name, state, rate),
+
+	TP_STRUCT__entry(
+		__string(dev_name, dev_name)
+		__string(state, state)
+		__field(u32, rate)
+	),
+
+	TP_fast_assign(
+		__assign_str(dev_name);
+		__assign_str(state);
+		__entry->rate = rate;
+	),
+
+	TP_printk("dev: %s state: %s rate: %s",
+		__get_str(dev_name), __get_str(state),
+		__print_symbolic(__entry->rate, RATE)
+	)
+);
+
+#endif /* _TRACE_HW_EVENT_PCI_CONTROLLER_H */
+
+/* This part must be outside protection */
+#include <trace/define_trace.h>
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
