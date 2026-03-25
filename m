Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E53611093176
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 01:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VpZMC6drqrsYlyLQOEWhPKspHJ7wkrOn86skKNCTvbQ=; b=EC5BLr7iasJT8f
	TxCQjpWlRYUsF/u8gKHKwbXww7T0wVAnusIT/10Etwrrqa16wM2MDBMFN38nK3q1mm5P35xxEFeFM
	LogD0ng6+FLLdih97Ujc/Uxqr76zhCZuETspXyoKERK+8T6mBNuqA8skhS/0+3fnQVOL3k0QtCZYn
	5P79z+/CV0pZ86FEbo0M77SStbC86HXQeMEBHDunbXNu5CkWZJBCPxTT2emjV7KmRopF8kpyBaPPJ
	a03IE8uuIuBY/J1fYo9nD5BsbY6DBX+msTNdylgZ4f+LYH5dVX7kk/MTl8FBKy2Kto5eQUTH3b8MH
	1CreYgXGUKzzxevLc4fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5DWE-00000002Tog-0Itc;
	Wed, 25 Mar 2026 01:58:50 +0000
Received: from mail-m49238.qiye.163.com ([45.254.49.238])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5DW8-00000002TmK-3Ldc
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 01:58:48 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 382e59d50;
	Wed, 25 Mar 2026 09:58:38 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-trace-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Steven Rostedt <rostedt@goodmis.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v5 0/3] PCI Controller event and LTSSM tracepoint support
Date: Wed, 25 Mar 2026 09:58:29 +0800
Message-Id: <1774403912-210670-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9d22b717fc09cckunm61c156f0a55845
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx0aTlYdHUpIThoaTkwaH0tWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=LMJDq85hB549w4GkDDs7h1WRqkUJJQA763ivP6GKIpLJI4qb/QwHo3g43pKIMjrX88G/INoElzOCsriu+8EVO0dZa0t8H0i1qfk3x8P3tlOW6cFADUH8vQFgrFM/eKPdqQYu7Mro732FYz+nVKnFK+SVQHpcvsA9ylfyYDDR/wI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=iL3uRr9ioLVWGXzImJsgsnPLVa9xILg7XkTqZ91to80=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_185846_160461_0FDFDF62 
X-CRM114-Status: GOOD (  12.37  )
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


This patch-set adds new pci controller event and LTSSM tracepoint used by host drivers
which provide LTSSM trace functionality. The first user is pcie-dw-rockchip with a 256
Bytes FIFO for recording LTSSM transition.

Testing
=========

This series was tested on RK3588/RK3588s EVB1 with NVMe SSD connected to PCIe3 and PCIe2
root ports.

echo 1 > /sys/kernel/debug/tracing/events/pci_controller/pcie_ltssm_state_transition/enable
cat /sys/kernel/debug/tracing/trace_pipe

 # tracer: nop
 #
 # entries-in-buffer/entries-written: 64/64   #P:8
 #
 #                                _-----=> irqs-off/BH-disabled
 #                               / _----=> need-resched
 #                              | / _---=> hardirq/softirq
 #                              || / _--=> preempt-depth
 #                              ||| / _-=> migrate-disable
 #                              |||| /     delay
 #           TASK-PID     CPU#  |||||  TIMESTAMP  FUNCTION
 #              | |         |   |||||     |         |
      kworker/0:0-9       [000] .....     5.600194: pcie_ltssm_state_transition: dev: a40000000.pcie state: DETECT_ACT rate: Unknown
      kworker/0:0-9       [000] .....     5.600198: pcie_ltssm_state_transition: dev: a40000000.pcie state: DETECT_WAIT rate: Unknown
      kworker/0:0-9       [000] .....     5.600199: pcie_ltssm_state_transition: dev: a40000000.pcie state: DETECT_ACT rate: Unknown
      kworker/0:0-9       [000] .....     5.600201: pcie_ltssm_state_transition: dev: a40000000.pcie state: POLL_ACTIVE rate: Unknown
      kworker/0:0-9       [000] .....     5.600202: pcie_ltssm_state_transition: dev: a40000000.pcie state: POLL_CONFIG rate: Unknown
      kworker/0:0-9       [000] .....     5.600204: pcie_ltssm_state_transition: dev: a40000000.pcie state: CFG_LINKWD_START rate: Unknown
      kworker/0:0-9       [000] .....     5.600206: pcie_ltssm_state_transition: dev: a40000000.pcie state: CFG_LINKWD_ACEPT rate: Unknown
      kworker/0:0-9       [000] .....     5.600207: pcie_ltssm_state_transition: dev: a40000000.pcie state: CFG_LANENUM_WAI rate: Unknown
      kworker/0:0-9       [000] .....     5.600208: pcie_ltssm_state_transition: dev: a40000000.pcie state: CFG_LANENUM_ACEPT rate: Unknown
      kworker/0:0-9       [000] .....     5.600210: pcie_ltssm_state_transition: dev: a40000000.pcie state: CFG_COMPLETE rate: Unknown
      kworker/0:0-9       [000] .....     5.600212: pcie_ltssm_state_transition: dev: a40000000.pcie state: CFG_IDLE rate: Unknown
      kworker/0:0-9       [000] .....     5.600213: pcie_ltssm_state_transition: dev: a40000000.pcie state: L0 rate: 2.5 GT/s
      kworker/0:0-9       [000] .....     5.600214: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_LOCK rate: Unknown
      kworker/0:0-9       [000] .....     5.600216: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_RCVRCFG rate: Unknown
      kworker/0:0-9       [000] .....     5.600217: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_SPEED rate: Unknown
      kworker/0:0-9       [000] .....     5.600218: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_LOCK rate: Unknown
      kworker/0:0-9       [000] .....     5.600220: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_EQ1 rate: Unknown
      kworker/0:0-9       [000] .....     5.600221: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_EQ2 rate: 8.0 GT/s
      kworker/0:0-9       [000] .....     5.600222: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_EQ3 rate: 8.0 GT/s
      kworker/0:0-9       [000] .....     5.600224: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_LOCK rate: 8.0 GT/s
      kworker/0:0-9       [000] .....     5.600225: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_RCVRCFG rate: 8.0 GT/s
      kworker/0:0-9       [000] .....     5.600226: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_IDLE rate: 8.0 GT/s
      kworker/0:0-9       [000] .....     5.600227: pcie_ltssm_state_transition: dev: a40000000.pcie state: L0 rate: 8.0 GT/s
      kworker/0:0-9       [000] .....     5.600228: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_LOCK rate: 8.0 GT/s
      kworker/0:0-9       [000] .....     5.600229: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_RCVRCFG rate: 8.0 GT/s
      kworker/0:0-9       [000] .....     5.600231: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_IDLE rate: 8.0 GT/s
      kworker/0:0-9       [000] .....     5.600232: pcie_ltssm_state_transition: dev: a40000000.pcie state: L0 rate: 8.0 GT/s
      kworker/0:0-9       [000] .....     5.600233: pcie_ltssm_state_transition: dev: a40000000.pcie state: L123_SEND_EIDLE rate: 8.0 GT/s
      kworker/0:0-9       [000] .....     5.600234: pcie_ltssm_state_transition: dev: a40000000.pcie state: L1_IDLE rate: 8.0 GT/s
      kworker/0:0-9       [000] .....     5.600236: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_LOCK rate: 8.0 GT/s
      kworker/0:0-9       [000] .....     5.600237: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_RCVRCFG rate: 8.0 GT/s
      kworker/0:0-9       [000] .....     5.600238: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_IDLE rate: 8.0 GT/s
      kworker/0:0-9       [000] .....     5.600239: pcie_ltssm_state_transition: dev: a40000000.pcie state: L0 rate: 8.0 GT/s


Changes in v5:
- rebase
- use EM/EMe instead
- remove reg/unreg function and back to use TRACE_EVENT
- use trace_pcie_ltssm_state_transition_enabled()

Changes in v4:
- use TRACE_EVENT_FN to notify when to start and stop the tracepoint,
  and export pci_ltssm_tp_enabled() for host drivers to use
- skip trace if pci_ltssm_tp_enabled() is false.(Steven)
- wrap into 80 columns(Bjorn)

Changes in v3:
- add TRACE_DEFINE_ENUM for all enums(Steven Rostedt)
- Add toctree entry in Documentation/trace/index.rst(Bagas Sanjaya)
- fix mismatch section underline length(Bagas Sanjaya)
- Make example snippets in code block(Bagas Sanjaya)
- warp context into 80 columns and fix the file name(Bjorn)
- reorder variables(Mani)
- rename loop to i; rename en to enable(Mani)
- use FIELD_GET(Mani)
- add comment about how the FIFO works(Mani)

Changes in v2:
- use tracepoint

Shawn Lin (3):
  PCI: trace: Add PCI controller LTSSM transition tracepoint
  Documentation: tracing: Add PCI controller event documentation
  PCI: dw-rockchip: Add pcie_ltssm_state_transition trace support

 Documentation/trace/events-pci-controller.rst |  42 ++++++++++
 Documentation/trace/index.rst                 |   1 +
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 111 ++++++++++++++++++++++++++
 drivers/pci/trace.c                           |   1 +
 include/trace/events/pci_controller.h         |  58 ++++++++++++++
 5 files changed, 213 insertions(+)
 create mode 100644 Documentation/trace/events-pci-controller.rst
 create mode 100644 include/trace/events/pci_controller.h

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
