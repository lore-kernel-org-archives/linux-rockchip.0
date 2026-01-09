Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B61E6D232D3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 03:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zdF2X2N09UMOti+E14mstkUaOO4M9R6aBLRSVnnW9C0=; b=UMZ7oJJQzocYBW
	V9LFlj3633hDmRHelL+IMJM58LHyCphuOj/APRIQb9yHXELTXjfd65YZthXWqEOikIZAHP4V/EMG8
	ZIlOTql5kZwC9sfNy2W/QMaNNlF9rN2Al1RARq61EupdaId4qXfQqYHdu1V/n7eAK+d7r0iIxdBjR
	Mm3s0ER2HPnSY+mHid39iILYcuYCzvkNgspPvzv6iQcSOLsFcTaYQoCKXVQjPEl0HofeT3M9umorl
	anc4SuIKynDy8alz2o/6kFswNgXil5aJoheynwIFA/g89dxhxsf0rdSnO44EGoyN3NZZCl3k/KMdp
	gxvZ6Vqy/ZIBM9xLsBcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve3Ck-00000001Ai5-1Szf;
	Fri, 09 Jan 2026 03:30:26 +0000
Received: from mail-m3291.qiye.163.com ([220.197.32.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve3Ci-00000001AgW-10uo
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Jan 2026 03:30:25 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30079383f;
	Fri, 9 Jan 2026 11:30:20 +0800 (GMT+08:00)
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
Subject: [PATCH v2 2/3] Documentation: tracing: Add PCI controller event documentation
Date: Fri,  9 Jan 2026 11:29:48 +0800
Message-Id: <1767929389-143957-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1767929389-143957-1-git-send-email-shawn.lin@rock-chips.com>
References: <1767929389-143957-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9ba0ce18f709cckunm22b4d6c66ba24
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkpPTFZPQ0seSk1PGk5DGUJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUJDQ0
	xVSktLVUtZBg++
DKIM-Signature: a=rsa-sha256;
	b=GRA+VPa7x561UGIY01XJaPAMGI6fxMn6JuSCwA9i6CC2NZ+320nr5ZKJBGUr7WyZ93xKVoGm3JRWgyMmIpyLIQVCCWWwQpi0mnCfhy6LaIzyzWk1TeQbq+q2Sh2TSekmdZ6M5HtAn6Z/1G9JfirhEcBMriFqbDl9WmQdJ3osbS4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=KJlKjShPuR5n49PnlmzBndjHgapvw97Q1f3mXNv5yPQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_193024_470665_EA01EE13 
X-CRM114-Status: GOOD (  11.28  )
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
transistion for debugging purpose. Add description about it.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2: None

 Documentation/trace/events-pci-conotroller.rst | 41 ++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 Documentation/trace/events-pci-conotroller.rst

diff --git a/Documentation/trace/events-pci-conotroller.rst b/Documentation/trace/events-pci-conotroller.rst
new file mode 100644
index 0000000..8253d00
--- /dev/null
+++ b/Documentation/trace/events-pci-conotroller.rst
@@ -0,0 +1,41 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+======================================
+Subsystem Trace Points: PCI Controller
+======================================
+
+Overview
+========
+The PCI controller tracing system provides tracepoints to monitor controller level
+information for debugging purpose. The events normally show up here:
+up here:
+
+	/sys/kernel/tracing/events/pci_controller
+
+Cf. include/trace/events/pci_controller.h for the events definitions.
+
+Available Tracepoints
+=====================
+
+pcie_ltssm_state_transition
+-----------------------
+
+Monitors PCIe LTSSM state transition including state and rate information
+::
+
+    pcie_ltssm_state_transition  "dev: %s state: %s rate: %s\n"
+
+**Parameters**:
+
+* ``dev`` - PCIe root port name
+* ``state`` - PCIe LTSSM state
+* ``rate`` - PCIe bus speed
+
+**Example Usage**:
+
+    # Enable the tracepoint
+    echo 1 > /sys/kernel/debug/tracing/events/pci/pcie_ltssm_state_transition/enable
+
+    # Monitor events (the following output is generated when a device is linking)
+    cat /sys/kernel/debug/tracing/trace_pipe
+       kworker/0:0-9       [000] .....     5.600221: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_EQ2 rate: 8.0 GT/s
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
