Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0261810987B8
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 01:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLA/734oc0l+Hq7wHuXoTtYipj3vlJAO2nYWRM21h0w=; b=ePC+8YCFXqoZTb
	3m2W55vWxzUKePN7xM+oliHYKOmD85Ye2SBNaBDpfjiYf+ojB3TZ2ZsNYwI+NwSqpxmQLtRiuV1U9
	oy+IsLshs6xPGSB/TrNKi1VXPcHsru7LAIa1y19ILk1hqZVwtGGh+jRMGvYrOblTGV6PbdX06QJ6J
	1iSp4KiMT6/NedgyEqu5yZtl8b/tx+2T5JoDyY4CQF9dJmDl+mZJBrHl2eG/HE1fDzipQvontPwkU
	0njrUCeAlFoJRsF6PyVeRyr/xwi4L4QGMIpBfbFXErbovXR8Nxs7jMXHhEVajMMMi3EPPTjTjXL/s
	DzvG0+pGVYfZ3M0omqnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5DWG-00000002TqA-3YEb;
	Wed, 25 Mar 2026 01:58:52 +0000
Received: from mail-m1973176.qiye.163.com ([220.197.31.76])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5DWC-00000002Tn2-1xa2
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 01:58:49 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 382e78d81;
	Wed, 25 Mar 2026 09:58:43 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-trace-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Steven Rostedt <rostedt@goodmis.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v5 2/3] Documentation: tracing: Add PCI controller event documentation
Date: Wed, 25 Mar 2026 09:58:31 +0800
Message-Id: <1774403912-210670-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1774403912-210670-1-git-send-email-shawn.lin@rock-chips.com>
References: <1774403912-210670-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9d22b72f9a09cckunm61c156f0a55897
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU5LGlYZTkIeHU4aThkfSUxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=T25oK54011WllIvrtGUBvYeaP2ibH5Eum1pnPUYo8ntQlhBjIeHDZ3YzhuKtttuvYpPJJJyEZ9ISdLzoVI97zwD1F5esX+AaX8gA5X0Tuxgu8Wf4zhn3CLRC+ePN/JX9gfXPRuEWgm9bhQkfhr1WevV1jgB3P/qJkBgukU9nAF0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=GDNTzFg7mWA3WGCmaG5bEv/LuzxprcU2vL1BmwDw0fg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_185848_711913_9AAD9F74 
X-CRM114-Status: GOOD (  13.71  )
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

The available tracepoint, pcie_ltssm_state_transition, monitors the LTSSM
state transition for debugging purpose. Add description about it.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v5: None
Changes in v4: None
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
index 036db96..5d9bf469 100644
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
