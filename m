Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E2AEC4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 00:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p64sK4jtRESh70t1N/uD+v6pUjN7Lj30JA5NWyzOBw4=; b=h/mjIwm3cIFx/D
	iOQLYwX3jQQp5vkxjsyJhdCtoMBdJxFiozBlgtrLnrBxRya5fwPAHI+Z7wUoiPoDbrQYN2JvZZ1YF
	Gwxtc2h01a23oyT9pDysA5AZy3Sasm5JiHApTObfywVIqVwaPxRh9pumEXlK8XtbpRo7yUUYY8ry4
	J2W6HWXmUNt0oJPtzY/Mk7U1amOE+qCVxjFIdNJpjm9j7x1dZGVk7a1s31UVgUKbBENz0lu6Z5lHn
	ZNXwc/vCWk+n2X1gQhWmzAJrqrO4EKaJAA5IkWiUSPcOeCPMDXTIJluJEnNo/MaWVYtSNNwLXT38Z
	Vw51by1hrezX5NLGChCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRSh-00000001rFu-2FX5;
	Sat, 13 Apr 2024 00:41:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRSW-00000001r7V-30nI;
	Sat, 13 Apr 2024 00:41:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9BA6D62256;
	Sat, 13 Apr 2024 00:41:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63620C2BD10;
	Sat, 13 Apr 2024 00:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712968884;
	bh=XpYhNOv4ZHsSL532m9ktfz4Uqkztrb/PULdnHkhHXSE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=s4r5SxP62X6JE4fUhs5yNnHIfrZy75SUM1MNtonnbzhKUAW3oYbKH2AhoxBYRZNgY
	 arclyENZfljBegg9gEnS/N1RxmWef0toYsmRtXT9jAvcQPTO82PKczPVIr98nlu+8n
	 U8WRtt9vwTuOIjE2rC7RSxDS00BTC2emIPONu6x/8BgfM90mSZoeYKuaaY9Bc5pz7Z
	 7h7Mi9c3hW3fphmz/dFH1ddSdccM5xkJip5aRXmS8f0ySI6AfofS5/U6HJDbd6rp9k
	 ojue8bHQkJgrK7xVu65ZfATou3Lx11bWloe17vAz06HqOEAdfCZLNLE/s1O/hEpWxu
	 ojxrb2i/5ro5w==
From: Damien Le Moal <dlemoal@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/2] PCI: rockchip-host: Fix rockchip_pcie_host_init_port() PERST# handling
Date: Sat, 13 Apr 2024 09:41:19 +0900
Message-ID: <20240413004120.1099089-2-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240413004120.1099089-1-dlemoal@kernel.org>
References: <20240413004120.1099089-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_174132_907647_CCA7D710 
X-CRM114-Status: UNSURE (   9.45  )
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

The PCIe specifications (PCIe CEM r5.1, sec 2.9.2) mandate that the
PERST# signal must remain asserted for at least 100 usec (Tperst-clk)
after the PCIe reference clock becomes stable (if a reference clock is
supplied), and for at least 100 msec after the power is stable (Tpvperl,
defined by the macro PCIE_T_PVPERL_MS).

Modify rockchip_pcie_host_init_port() to satisfy these constraints by
adding a sleep period before deasserting PERST# using the ep_gpio GPIO.
Since Tperst-clk is the shorter wait time, add an msleep() call for the
longer PCIE_T_PVPERL_MS milliseconds to handle both timing requirements.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-host.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 300b9dc85ecc..fc868251e570 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -322,6 +322,7 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
 			    PCIE_CLIENT_CONFIG);
 
+	msleep(PCIE_T_PVPERL_MS);
 	gpiod_set_value_cansleep(rockchip->ep_gpio, 1);
 
 	/* 500ms timeout value should be enough for Gen1/2 training */
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
