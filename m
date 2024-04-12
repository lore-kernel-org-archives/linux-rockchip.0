Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1837C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 02:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fp9HpxjYYpgt7ax7L7I29fncNxjYgmMcxgYFoam0KPw=; b=V3M4aunDZYITg6
	HeC3bA2qQ96HP9QBVyFyxWssSUouZ52S7D9EYj0PiRqdij4tfAgmW+oUHv3RTegr1BUkuY6UvhASs
	Oqu4DxmpuJFxZwiYHkbsWzFYSZJF2Uk7mWR0tiK5QvBKKyq/MjXZVuJ8PRf6PX2nIQ9e0wFMOeyRG
	PIjFGaXvZUUgoG1nJJ3LFqWobsNmIFr9+hRGnp2qgirLFYxntFEjDYrW49W3VoKuNx9aH7udhLH6q
	ob92UzN0r2y+Z3IJX6rZQX7Rx34lBbM5EYNge+kx2tVzc4Yikkh567F2BwPEIARGRJ7M326ZoPXQ8
	8mtpw1txwo150W66/8nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rv6nJ-0000000EvlJ-48mf;
	Fri, 12 Apr 2024 02:37:37 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rv6nA-0000000EvgA-0dLk;
	Fri, 12 Apr 2024 02:37:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9CF33621B6;
	Fri, 12 Apr 2024 02:37:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C1ECC072AA;
	Fri, 12 Apr 2024 02:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712889447;
	bh=I7Um91ihJEBjAcgbJPQ4e+rjRLE/Ij77urBAYeI8Q6w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=o/dYubegiZ4gf3MSr9DjSLRSlMwresgXdJBUh8US9olY4PxM6bGUT+2r3CDlmo6mU
	 BKOgJ50S5Ak/DUl5d03Tb01FyRn1DdkY1bvuAdQhM9cwnq042n8n8jgCo9lLdXug9g
	 DTIKap5eXU9RycMKbgnXldtKP8NqKBtn0hOQ7R+bkuABT4PwaCowYpdBAYYXyg1Pb8
	 48T+yh69oeEzAEqPkSDSKCPxo+iuhISC2LL2Yj+SbDjZMa8jeFfd5r4zGa1twRXV3l
	 /PGgpdTeYmzwV/MBZJ+34trEPIfePCa03cn5vsjkaFLWiwLoCBbmqhotNXp4jpvjRG
	 mUAMThciy507A==
From: Damien Le Moal <dlemoal@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/2] PCI: rockchip-host: Wait 100ms after reset before starting configuration
Date: Fri, 12 Apr 2024 11:37:21 +0900
Message-ID: <20240412023721.1049303-3-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240412023721.1049303-1-dlemoal@kernel.org>
References: <20240412023721.1049303-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_193728_255683_7D37BDB4 
X-CRM114-Status: GOOD (  11.88  )
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

The PCI Express Base Specification r6.0, section 6.6.1, states that the
host should wait for at least 100 msec from the end of a conventional
reset (PERST# is de-asserted) before sending a configuration request to
ensure that the device is able to respond with a "Request Retry Status"
completion.

Add the PCIE_T_RRS_READY_MS macro to define this wait time and modify
rockchip_pcie_host_init_port() to add this 100ms sleep after bringing
back PESRT# signal to high using the ep_gpio GPIO.

Suggested-by: Bjorn Helgaas <helgaas@kernel.org>
Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-host.c | 2 ++
 drivers/pci/pci.h                           | 7 +++++++
 2 files changed, 9 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index fc868251e570..cbec71114825 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -325,6 +325,8 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 	msleep(PCIE_T_PVPERL_MS);
 	gpiod_set_value_cansleep(rockchip->ep_gpio, 1);
 
+	msleep(PCIE_T_RRS_READY_MS);
+
 	/* 500ms timeout value should be enough for Gen1/2 training */
 	err = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_BASIC_STATUS1,
 				 status, PCIE_LINK_UP(status), 20,
diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
index 17fed1846847..c93ffc5e6e1f 100644
--- a/drivers/pci/pci.h
+++ b/drivers/pci/pci.h
@@ -16,6 +16,13 @@
 /* Power stable to PERST# inactive from PCIe card Electromechanical Spec */
 #define PCIE_T_PVPERL_MS		100
 
+/*
+ * End of conventional reset (PERST# de-asserted) to first configuration
+ * request (device able to respond with a "Request Retry Status" completion),
+ * from PCI Express Base Specification r6.0, section 6.6.1.
+ */
+#define PCIE_T_RRS_READY_MS	100
+
 /*
  * PCIe r6.0, sec 5.3.3.2.1 <PME Synchronization>
  * Recommends 1ms to 10ms timeout to check L2 ready.
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
