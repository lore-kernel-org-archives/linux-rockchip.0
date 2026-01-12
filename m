Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DFA9D25031
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 01:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qbEikYrF9nT0nV03M1aMY8dKjND3vDTCcgETpNs0ZwQ=; b=IKbxqSRmTHTc62
	LZ+1j5NjhuORcEkHpBlS39y/Nux2Q1l4TRb9RDd5YINCpxPpFZi5wDHeCmSD1ylQOavFgGnncXM+s
	1RX1vlkGh29d96PePlTvl0aa8QT3hugw+OHlYh7OozzTb1Sm6kGK8FoX6KGhozVwYImjbeLphW+b4
	GYfXAtO0kWyPehMHv9nEdcFwCUUU2FmVR6z7/VwnFJ4G3JHSVdUOEF4M3Yl3M+/WdhyAf5E+Bv2NI
	k6aSNt8zv4mus7eRdE2XT6y3izPnNf2/JcCVEdfDIxX1acm/RaOqjpy7d/pp/hBZPY4uujOcQC77B
	EcW74jfTibOhegP3xYIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf6br-00000004cwZ-0uHU;
	Mon, 12 Jan 2026 01:20:43 +0000
Received: from mail-m32106.qiye.163.com ([220.197.32.106])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf6bp-00000004cty-1oRu
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 01:20:42 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 303e91922;
	Mon, 12 Jan 2026 09:20:30 +0800 (GMT+08:00)
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
Subject: [PATCH v3 2/3] Documentation: tracing: Add PCI controller event documentation
Date: Mon, 12 Jan 2026 09:19:59 +0800
Message-Id: <1768180800-63364-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1768180800-63364-1-git-send-email-shawn.lin@rock-chips.com>
References: <1768180800-63364-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bafca4f3c09cckunme7c7221b25b204
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxkdGVYeHxoeGkoZQhpKTElWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=DDJXQQXXevGUrEwIRp2Q+7eNb9izplE0xp8Pm0od0lIqhT/HO0ICHV8QiivaqcP/ocs1q9VFwscyixbDBthnVwElUHYMVWi+yZxvP9VF1d/NHzdG8QlEiyP7DAWg6Du9fvTxMTC27zpLL67AnGUN4Qg//ajDlEY+RQX3DkwzUjI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=jrtqB0XixpQ4tlxWZHgOuOxBO23AIyReEKgVZo9dQFk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_172041_636588_95E8F3A0 
X-CRM114-Status: GOOD (  14.06  )
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

The available tracepoint, pcie_ltssm_state_transition, monitors the LTSSM state
transition for debugging purpose. Add description about it.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v3:
- Add toctree entry in Documentation/trace/index.rst(Bagas Sanjaya)
- fix mismatch section underline length(Bagas Sanjaya)
- Make example snippets in code block(Bagas Sanjaya)
- warp context into 80 columns and fix the file name(Bjorn)

Changes in v2: None

 Documentation/trace/events-pci-controller.rst | 42 +++++++++++++++++++++++++++
 Documentation/trace/index.rst                 |  1 +
 2 files changed, 43 insertions(+)
 create mode 100644 Documentation/trace/events-pci-controller.rst

diff --git a/Documentation/trace/events-pci-controller.rst b/Documentation/trace/events-pci-controller.rst
new file mode 100644
index 0000000..cb9f715
--- /dev/null
+++ b/Documentation/trace/events-pci-controller.rst
@@ -0,0 +1,42 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+======================================
+Subsystem Trace Points: PCI Controller
+======================================
+
+Overview
+========
+The PCI controller tracing system provides tracepoints to monitor controller
+level information for debugging purpose. The events normally show up here:
+
+	/sys/kernel/tracing/events/pci_controller
+
+Cf. include/trace/events/pci_controller.h for the events definitions.
+
+Available Tracepoints
+=====================
+
+pcie_ltssm_state_transition
+---------------------------
+
+Monitors PCIe LTSSM state transition including state and rate information
+::
+
+    pcie_ltssm_state_transition  "dev: %s state: %s rate: %s\n"
+
+**Parameters**:
+
+* ``dev`` - PCIe controller instance
+* ``state`` - PCIe LTSSM state
+* ``rate`` - PCIe date rate
+
+**Example Usage**:
+
+.. code-block:: shell
+
+    # Enable the tracepoint
+    echo 1 > /sys/kernel/debug/tracing/events/pci_controller/pcie_ltssm_state_transition/enable
+
+    # Monitor events (the following output is generated when a device is linking)
+    cat /sys/kernel/debug/tracing/trace_pipe
+       kworker/0:0-9       [000] .....     5.600221: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_EQ2 rate: 8.0 GT/s
diff --git a/Documentation/trace/index.rst b/Documentation/trace/index.rst
index 0a40bfa..6101317 100644
--- a/Documentation/trace/index.rst
+++ b/Documentation/trace/index.rst
@@ -55,6 +55,7 @@ applications.
    events-nmi
    events-msr
    events-pci
+   events-pci-controller
    boottime-trace
    histogram
    histogram-design
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
