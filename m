Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01FA0C5B543
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Jun 2025 15:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGe6IhrQAM6lQ2gxP1ghSCAoHfgzhBdVYm9mT8z6V8k=; b=xSkysMbXyYvaZO
	IabMYKiIF6TZ2s2jwmRXwclPbaFYF90pHYUZbD95rA9wpbAtg3v7P961sKjPu12jrNCwc5hYYbQAu
	71FgY7AsFBSMnfhsZGSrIx71lNUEDCEVbENbDZqZIQCW6P+wexwFJSc9zEEP/8IEkxadk0110dAUt
	6l2V4QmG0e09Vvo9q/wZZp0MEidpvKC9kkdUpSG2I1vAci+2daKVpCFXdnpUHMtw53HlE3HSH/+jN
	twCMGoe3TkSnHWj6uirmtaJFyhmD0kqjeYYVURKaRdoMg48niW6s7dH3d5cQGqFHSJ3T5pjH66zSc
	gaiVG6C079PTLNdzMAyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNvnh-00000001pFR-209a;
	Sat, 07 Jun 2025 15:49:41 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNvne-00000001pEV-2DLp;
	Sat, 07 Jun 2025 15:49:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=Q5
	Ms93Khz/oAEynWixPmT3I+2jyhZg/bPBQtyT4UV60=; b=Yoq6TCtqv3swQV5HpA
	43HND+U/e1hn+2zn94r44R5j5TG2Qv6yWIWfdRI6ZOY8fxLlA/1oDhsGFKuMt2R3
	n/7G6nM+ZoOsRGOpd4M7l0D38ctOBsiGsXOIAmHcxZhBsQxeVOsm9RLIbDpmgQSm
	XFTUsjll2M+cMT8XDtrIZvHqM=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g1-1 (Coremail) with SMTP id _____wDnzz17X0RoTZo8Gw--.4221S4;
	Sat, 07 Jun 2025 23:49:17 +0800 (CST)
From: Hans Zhang <18255117159@163.com>
To: lpieralisi@kernel.org,
	bhelgaas@google.com,
	kwilczynski@kernel.org,
	shawn.lin@rock-chips.com,
	heiko@sntech.de
Cc: robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Hans Zhang <18255117159@163.com>
Subject: [PATCH 2/2] PCI: rockchip: Remove redundant PCIe message routing definitions
Date: Sat,  7 Jun 2025 23:49:13 +0800
Message-Id: <20250607154913.805027-3-18255117159@163.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250607154913.805027-1-18255117159@163.com>
References: <20250607154913.805027-1-18255117159@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDnzz17X0RoTZo8Gw--.4221S4
X-Coremail-Antispam: 1Uf129KBjvJXoWxJr48KFWxXr1xtFWfXFWDurg_yoW8Zry8pr
	WUJ3y0yF4xKw43u3W3XF4fXa17Xa9rtF4qvrn29a13KF1fW34rGa4UZF43Grn8JrW8Xrn2
	k390kayDtrZ8GrDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zEWrWrUUUUU=
X-Originating-IP: [124.79.114.92]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/1tbiWxRlo2hEXgkg6gAAs4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_084938_943982_FDBBCE79 
X-CRM114-Status: UNSURE (   6.58  )
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

The Rockchip driver contained duplicated message routing and INTx code
definitions (e.g., ROCKCHIP_PCIE_MSG_ROUTING_TO_RC,
ROCKCHIP_PCIE_MSG_CODE_ASSERT_INTA). These are already provided by the
PCI core in drivers/pci/pci.h as PCIE_MSG_TYPE_R_RC and
PCIE_MSG_CODE_ASSERT_INTA, respectively.

Remove the driver-specific definitions and use the common PCIe macros
instead. This aligns the driver with the PCIe specification and reduces
maintenance overhead.

Signed-off-by: Hans Zhang <18255117159@163.com>
---
 drivers/pci/controller/pcie-rockchip.h | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 5864a20323f2..12bc8da59d73 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -215,20 +215,6 @@
 #define RC_REGION_0_TYPE_MASK			GENMASK(3, 0)
 #define MAX_AXI_WRAPPER_REGION_NUM		33
 
-#define ROCKCHIP_PCIE_MSG_ROUTING_TO_RC		0x0
-#define ROCKCHIP_PCIE_MSG_ROUTING_VIA_ADDR		0x1
-#define ROCKCHIP_PCIE_MSG_ROUTING_VIA_ID		0x2
-#define ROCKCHIP_PCIE_MSG_ROUTING_BROADCAST		0x3
-#define ROCKCHIP_PCIE_MSG_ROUTING_LOCAL_INTX		0x4
-#define ROCKCHIP_PCIE_MSG_ROUTING_PME_ACK		0x5
-#define ROCKCHIP_PCIE_MSG_CODE_ASSERT_INTA		0x20
-#define ROCKCHIP_PCIE_MSG_CODE_ASSERT_INTB		0x21
-#define ROCKCHIP_PCIE_MSG_CODE_ASSERT_INTC		0x22
-#define ROCKCHIP_PCIE_MSG_CODE_ASSERT_INTD		0x23
-#define ROCKCHIP_PCIE_MSG_CODE_DEASSERT_INTA		0x24
-#define ROCKCHIP_PCIE_MSG_CODE_DEASSERT_INTB		0x25
-#define ROCKCHIP_PCIE_MSG_CODE_DEASSERT_INTC		0x26
-#define ROCKCHIP_PCIE_MSG_CODE_DEASSERT_INTD		0x27
 #define ROCKCHIP_PCIE_MSG_ROUTING_MASK			GENMASK(7, 5)
 #define ROCKCHIP_PCIE_MSG_ROUTING(route) \
 	(((route) << 5) & ROCKCHIP_PCIE_MSG_ROUTING_MASK)
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
