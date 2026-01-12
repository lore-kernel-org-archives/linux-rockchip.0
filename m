Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03DBBD2502E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 01:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQwxYke2MUOwa/l/s4wXE7WPm/+UrhV9P6jW1hsBeqA=; b=DdcB3fG0ifyslr
	DF6imCYKZEq7EHi3R6d2ExGtLSQPWhppccbR8qoE30SfQB4HnnLDp4OJsjqQZ7Pf4lvxBOa3xsCMp
	SfRLzKhlOrbaUlDfD2819N7fhiPXI9R3kCmr9TsTf2p+cYf9p5OgFCUkKDwcKtdHI4N7HOtu1JSUr
	fSlVZD26Cdsdl7rqm+4MIB8RvRmfAZCK5PjnpGC8M6XMjsKBJlg4E7w2UnWqQUBCpPw8M5qFdzIQG
	Jht1K6h+hvIed7Mc8oSWEWppUQpa+dCdlJPrECfv3ODQx7EJPSSEkdwbKTRaJRplf8rZgIL0TjxBR
	cUPJt95Fwna7ZqRnprIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf6bo-00000004cuk-0uxM;
	Mon, 12 Jan 2026 01:20:40 +0000
Received: from mail-m1973195.qiye.163.com ([220.197.31.95])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf6bl-00000004ctw-0jKk
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 01:20:38 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 303e9191b;
	Mon, 12 Jan 2026 09:20:27 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-trace-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 1/3] PCI: trace: Add PCI controller LTSSM transition tracepoint
Date: Mon, 12 Jan 2026 09:19:58 +0800
Message-Id: <1768180800-63364-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1768180800-63364-1-git-send-email-shawn.lin@rock-chips.com>
References: <1768180800-63364-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bafca448409cckunme7c7221b25b1e3
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh4ZS1YZGhpJSx0aGUgeTUtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE
	pVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=fxmbcvl9QU7SQ960M8nAwr/VIUbe5NvESmiUx+PmKotOuoeblAq0CiYirx4jKgTjCn5TNq8jStqyT3zbhKGQWqxe6N1/YSpdTbSNkQfCQu1qH9/UrupucJTM8UpJBdOA293C1pux521fxpMhugcaTy5SU9el55au+OgrUE5d3aE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=NJvs7o/RNR1z93AUHCN9w99dXiQC+cJHE/GqfadvgSk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_172037_735834_013A711B 
X-CRM114-Status: GOOD (  13.32  )
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

Changes in v3:
- add TRACE_DEFINE_ENUM for all enums(Steven Rostedt)

Changes in v2: None

 drivers/pci/trace.c                   |  1 +
 include/trace/events/pci_controller.h | 52 +++++++++++++++++++++++++++++++++++
 2 files changed, 53 insertions(+)
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
index 0000000..f38eedf
--- /dev/null
+++ b/include/trace/events/pci_controller.h
@@ -0,0 +1,52 @@
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
+TRACE_DEFINE_ENUM(PCIE_SPEED_2_5GT);
+TRACE_DEFINE_ENUM(PCIE_SPEED_5_0GT);
+TRACE_DEFINE_ENUM(PCIE_SPEED_8_0GT);
+TRACE_DEFINE_ENUM(PCIE_SPEED_16_0GT);
+TRACE_DEFINE_ENUM(PCIE_SPEED_32_0GT);
+TRACE_DEFINE_ENUM(PCIE_SPEED_64_0GT);
+TRACE_DEFINE_ENUM(PCI_SPEED_UNKNOWN);
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
+		__print_symbolic(__entry->rate,
+			{ PCIE_SPEED_2_5GT,  "2.5 GT/s" },
+			{ PCIE_SPEED_5_0GT,  "5.0 GT/s" },
+			{ PCIE_SPEED_8_0GT,  "8.0 GT/s" },
+			{ PCIE_SPEED_16_0GT, "16.0 GT/s" },
+			{ PCIE_SPEED_32_0GT, "32.0 GT/s" },
+			{ PCIE_SPEED_64_0GT, "64.0 GT/s" },
+			{ PCI_SPEED_UNKNOWN, "Unknown" }
+		)
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
