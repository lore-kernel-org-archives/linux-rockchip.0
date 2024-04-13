Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0203EC4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 00:41:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5vk6rK1EFbyoAqnIeBOCdHYeYHcalWD6VVKl+0bHTk=; b=w9WbgRTTjL1eiP
	QnbA3sNW83m+RBS3gsvXdLH7SjPu3k6+JfKym9aSkup2EPALPeUr1O2mtrMsTVpOewgreUX+ZjfoF
	N0dPWuYUp0oMRZzGN44RCxmp5Smk7ZWaws2HzTgEXShFS3YBeH9EGQ8k6I9GvTyKerMcOMzxo9BLY
	NQzYmgWlxD/LgMQmUO4P3vTo3MpUmuPEY1U9PCZomWovZ0Xx5g/S0Srw+xKVAdgZqCHgsa5BulBPt
	K7vGuc0j+xbuSRTA5QeoSo4jFp+nNtajEbeuMqVvP0bCd4An6GhPUE8mdj1StpZe4jAPwl7gKbOaH
	J+drisbZUtiiYgUbF7Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRSW-00000001rA1-3Enq;
	Sat, 13 Apr 2024 00:41:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRSS-00000001r7t-3X2U;
	Sat, 13 Apr 2024 00:41:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 03CAE62263;
	Sat, 13 Apr 2024 00:41:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBC1BC113CC;
	Sat, 13 Apr 2024 00:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712968885;
	bh=NtNcpT66BU8hBTnj7sbWjZt20HoXWq77pHUKJT0WyEQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=R+2QEfe6PxLVwEr9KiLSOqwZ4M4N6nqMKDmOPS+fyvLfkpzdjyltMMw1xkaepxEwx
	 56E2rlaJr3E4Yy172dUmpBgH5rNUJCzKkmhv1Y+pLFm6mHtThCCRrJeRFUl1Iwd8ks
	 giTcQsmnjQeN15K3cPPrmfV/ydLSes44NFELbVyOX10DGow4ExLSI2vmUQJWheCjVx
	 XolSjVGTv9rzg+U3oRszT2z6kKFZk8CyDVV4MbUXkHJHXcgvzUfYy5lIS8zZtJ2sv7
	 Qrgn9y1wVLM/CH/pAOQYvsqjO9kdBq4Ir5z1qojtyr0XD/shAhsZ02p8OaVkSXkb6b
	 vTuTVIvHNYYEQ==
From: Damien Le Moal <dlemoal@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/2] PCI: rockchip-host: Wait 100ms after reset before starting configuration
Date: Sat, 13 Apr 2024 09:41:20 +0900
Message-ID: <20240413004120.1099089-3-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240413004120.1099089-1-dlemoal@kernel.org>
References: <20240413004120.1099089-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_174128_971262_8237D5FC 
X-CRM114-Status: GOOD (  11.18  )
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
rockchip_pcie_host_init_port() to add this 100ms sleep after deasserting
PERST# using the ep_gpio GPIO.

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
