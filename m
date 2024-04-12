Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DC57C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 02:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nto6Pa9ooZAMy25Di5YSqbmz5OCIPG2mXynSXg7fG78=; b=o5SO8hMxm16zbp
	j1OBM+xz6G0B9FqjNpVdEhW33wBWqKEba6ebTZEhMIQYqo3mM2fWAasc2wsfUghQsuhO58S517IqI
	Zdsmo5aBnfuM9thkjj6CjOpEdyLVy35uhuC/y9g1P0JceIVGWKXcy3tLenCw1sXi5Lw7WyNwoT1m1
	1M7ZFMjDGilvX0bppD59PD6AdsXM04QwulfYUh6Kd9b08lC/caDs6z6ql0RIHW3jD2xC8Tqypg0KW
	3lAHXoukgBz+qfIp1UxK6sg2MbCmv1uJAk0lQOBsqqyLogd5r+WvYJTFFJH16W11aaoHqp9m+2R6K
	S18/dMXaxdSFsKPnjlig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rv6nC-0000000Evhp-2ZVd;
	Fri, 12 Apr 2024 02:37:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rv6n9-0000000Evfq-15CA;
	Fri, 12 Apr 2024 02:37:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6A3426212B;
	Fri, 12 Apr 2024 02:37:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 046D5C2BD10;
	Fri, 12 Apr 2024 02:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712889446;
	bh=2Pm+KvVtx+Rp3GxiSajmnx2imcEuNTM/DMGG9mYaQDw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mtw3AC77hdVPhPhnSGFX+Pq+rVHdX4/izbfWTNrU7/ZYbJ/1FYg64KF8PuxTQNIMI
	 3V3YgKHQp/hP3iwZGGSFMYNkzZ/WqsIw8UusWKoR5RNBM+ASRVz86WMXO25EfUEpL0
	 oa0RAhZtMjfK7gN1r21bv80bZsTNNjoaBe9nQy4VP98M+jteI66g4CxUE+wkVJ18F0
	 WJac1DWu2pA6FrC/Jgxe0SBu52L4soK29D6wnMQJoXfXf4Jq6XXAqKw59waF9HFr1F
	 AXJ7sAdhhSqNXpXKn7dNFZb6hM0CoOYAtHY2IHM+efrGw3Yx4YY7w7PxZcxIlyxrNX
	 qQ2NT7OOn3SMQ==
From: Damien Le Moal <dlemoal@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/2] PCI: rockchip-host: Fix rockchip_pcie_host_init_port() PERST# handling
Date: Fri, 12 Apr 2024 11:37:20 +0900
Message-ID: <20240412023721.1049303-2-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240412023721.1049303-1-dlemoal@kernel.org>
References: <20240412023721.1049303-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_193727_370479_3D0E44BB 
X-CRM114-Status: GOOD (  10.27  )
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

The PCIe specifications (PCI Express Electromechanical Specification rev
2.0, section 2.6.2) mandate that the PERST# signal must remain asserted
for at least 100 usec (Tperst-clk) after the PCIe reference clock
becomes stable (if a reference clock is supplied), and for at least
100 msec after the power is stable (Tpvperl, defined by the macro
PCIE_T_PVPERL_MS).

Modify rockchip_pcie_host_init_port() to satisfy these constraints by
adding a sleep period before bringing back PESRT# signal to high using
the ep_gpio GPIO. Since Tperst-clk is the shorter wait time, add an
msleep() call for the longer PCIE_T_PVPERL_MS milliseconds to handle
both timing requirements.

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
