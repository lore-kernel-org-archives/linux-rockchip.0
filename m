Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ABFD606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 16:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NLAehoYS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Cc:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=xB+lNZ5nGosJmxynu/NomqZ5o/FXmGOt43BJLXbskVw=; b=NLAehoYSJMXmz0r/tS4cLzVCYm
	KmaKKZ0koRWsTjfaVmpUKRUjgIK5AkwTPo1y+nTZbDkiwg1Mq9+XX3aNIEepQT3g3mzQXfAIcz7Vc
	Ac7eLQlv7aRHRqvcXOB4IqfjcCrnHLT8AhR/GA8dC8dQQxST3+CDpdDv0exVveYUCXkt/cfegNAHM
	L9/bkjO/9TkjBSbTJlXV+9W/z16YJoYQMYUt/LDkaFtBbeH4iOh/d8jNNzvJhYLli9IXbCgI9rK+z
	B7uGWQkwt3ul4zvuEM+UQjSmIsQQ4sboEIQEUwKf7JVxCZMB4IJTPw3sqAJTgM0KmjaiXJ4PXqkdN
	nCCzUOmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTiF0-00000009PxV-2qJz;
	Wed, 18 Nov 2026 16:10:34 +0000
Received: from woodpecker.gentoo.org ([140.211.166.183] helo=smtp.gentoo.org)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTiEx-00000009Pwr-3wZh
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 16:10:33 +0000
Received: from 9.b.8.c.1.6.8.7.6.b.f.2.6.1.2.4.c.6.e.0.c.6.2.0.0.b.8.0.1.0.0.2.ip6.arpa (unknown [IPv6:2001:8b0:26c:e6c:4216:2fb6:7861:c8b9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: chewi)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 23975342899;
	Wed, 18 Nov 2026 16:03:16 +0000 (UTC)
Message-ID: <08cc96c5171fc969b074371692e6d95d46eba60b.camel@gentoo.org>
Subject: PCI: dw-rockchip: Unable to boot Quartz64 Model B from NVMe since
 reset changes
From: James Le Cuirot <chewi@gentoo.org>
To: Wilfred Mallawa <wilfred.mallawa@wdc.com>
Cc: Niklas Cassel <cassel@kernel.org>, Manivannan Sadhasivam	
 <manivannan.sadhasivam@oss.qualcomm.com>, Bjorn Helgaas
 <bhelgaas@google.com>, 	linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Shawn Lin	 <shawn.lin@rock-chips.com>
Date: Wed, 18 Nov 2026 16:03:11 +0000
User-Agent: Evolution 3.60.2 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_081032_011559_92320BB2 
X-CRM114-Status: UNSURE (   4.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.2 (----)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hello Wilfred,

Unfortunately, since your commit "PCI: dw-rockchip: Implement
.reset_root_port() and use for link down" (b376b3ff9cb0527), I have been
basically unable to boot my Quartz64 Model B from NVMe. Sometimes if I wait
long enough, it will eventually work, albeit very slowly. If I revert this
(and 4e9f69d08253) against 7.3.5, then it boots normally. Here is the relevant
output.

rockchip-dw-pcie 3c0000000.pcie: host bridge /pcie@fe260000 ranges:
rockchip-dw-pcie 3c0000000.pcie:       IO 0x00f4100000..0x00f41fffff -> 0x00f4100000
rockchip-dw-pcie 3c0000000.pcie:      MEM 0x00f4200000..0x00f5ffffff -> 0x00f4200000
rockchip-dw-pcie 3c0000000.pcie:      MEM 0x0300000000..0x033fffffff -> 0x0300000000
rockchip-dw-pcie 3c0000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G
rockchip-dw-pcie 3c0000000.pcie: PCIe Gen.2 x1 link up
rockchip-dw-pcie 3c0000000.pcie: PCI host bridge to bus 0000:00
pci_bus 0000:00: root bus resource [bus 00-0f]
pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] (bus address [0xf4100000-0xf41fffff])
pci_bus 0000:00: root bus resource [mem 0xf4200000-0xf5ffffff]
pci_bus 0000:00: root bus resource [mem 0x300000000-0x33fffffff]
pci 0000:00:00.0: [1d87:3566] type 01 class 0x060400 PCIe Root Port
pci 0000:00:00.0: ROM [mem 0x00000000-0x0000ffff pref]
pci 0000:00:00.0: PCI bridge to [bus 01-ff]
pci 0000:00:00.0:   bridge window [io  0x0000-0x0fff]
pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff]
pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff 64bit pref]
pci 0000:00:00.0: supports D1 D2
pci 0000:00:00.0: PME# supported from D0 D1 D3hot
pci_bus 0000:01: busn_res: can not insert [bus 01-ff] under [bus 00-0f] (conflicts with (null) [bus 00-0f])
pci 0000:01:00.0: [1e0f:0009] type 00 class 0x010802 PCIe Endpoint
pci 0000:01:00.0: BAR 0 [mem 0x00000000-0x00003fff 64bit]
pci 0000:01:00.0: 4.000 Gb/s available PCIe bandwidth, limited by 5.0 GT/s PCIe x1 link at 0000:00:00.0 (capable of 31.504 Gb/s with 8.0 GT/s PCIe x4 link)
pci 0000:01:00.0: ASPM: default states L1
pci 0000:00:00.0: bridge window [mem 0xf4200000-0xf42fffff]: assigned
pci 0000:00:00.0: ROM [mem 0xf4300000-0xf430ffff pref]: assigned
pci 0000:01:00.0: BAR 0 [mem 0xf4200000-0xf4203fff 64bit]: assigned
pci 0000:00:00.0: PCI bridge to [bus 01-ff]
pci 0000:00:00.0:   bridge window [mem 0xf4200000-0xf42fffff]
pci_bus 0000:00: resource 4 [io  0x0000-0xfffff]
pci_bus 0000:00: resource 5 [mem 0xf4200000-0xf5ffffff]
pci_bus 0000:00: resource 6 [mem 0x300000000-0x33fffffff]
pci_bus 0000:01: resource 1 [mem 0xf4200000-0xf42fffff]
pcieport 0000:00:00.0: PME: Signaling with IRQ 86
pcieport 0000:00:00.0: AER: enabled with IRQ 95
pcieport 0000:00:00.0: Recovering Root Port due to Link Down
nvme nvme0: pci function 0000:01:00.0
nvme 0000:01:00.0: enabling device (0000 -> 0002)
rockchip-pm-domain fdd90000.power-management:power-controller: sync_state() pending due to fdeb0000.rga
nvme nvme0: D3 entry latency set to 10 seconds
hwmon hwmon2: temp1_input not attached to any thermal zone
nvme nvme0: passthrough uses implicit buffer lengths
nvme nvme0: 4/0/0 default/read/poll queues
 nvme0n1: p1 p2 p3 p4 p5
nvme nvme0: frozen state error detected, reset controller
rk_gmac-dwmac fe010000.ethernet eth0: Register MEM_TYPE_PAGE_POOL RxQ-0
rk_gmac-dwmac fe010000.ethernet eth0: PHY [stmmac-0:01] driver [RTL8211F-VD Gigabit Ethernet] (irq=POLL)
dwmac4: Master AXI performs any burst length
rk_gmac-dwmac fe010000.ethernet eth0: No Safety Features support found
rk_gmac-dwmac fe010000.ethernet eth0: IEEE 1588-2008 Advanced Timestamp supported
rk_gmac-dwmac fe010000.ethernet eth0: registered PTP clock
rk_gmac-dwmac fe010000.ethernet eth0: configuring for phy/rgmii link mode
rockchip-dw-pcie 3c0000000.pcie: PCIe Gen.2 x1 link up
pcieport 0000:00:00.0: Root Port has been reset
nvme nvme0: restart after slot reset
nvme nvme0: D3 entry latency set to 10 seconds
nvme nvme0: 4/0/0 default/read/poll queues
pcieport 0000:00:00.0: AER: device recovery successful
pcieport 0000:00:00.0: Recovering Root Port due to Link Down
nvme nvme0: frozen state error detected, reset controller
rockchip-dw-pcie 3c0000000.pcie: PCIe Gen.2 x1 link up
pcieport 0000:00:00.0: Root Port has been reset
nvme nvme0: restart after slot reset
nvme nvme0: D3 entry latency set to 10 seconds
nvme nvme0: 4/0/0 default/read/poll queues
pcieport 0000:00:00.0: AER: device recovery successful
pcieport 0000:00:00.0: Recovering Root Port due to Link Down
nvme nvme0: frozen state error detected, reset controller
rockchip-dw-pcie 3c0000000.pcie: PCIe Gen.2 x1 link up
pcieport 0000:00:00.0: Root Port has been reset
nvme nvme0: restart after slot reset
nvme nvme0: D3 entry latency set to 10 seconds
nvme nvme0: 4/0/0 default/read/poll queues
pcieport 0000:00:00.0: AER: device recovery successful
pcieport 0000:00:00.0: Recovering Root Port due to Link Down
nvme nvme0: frozen state error detected, reset controller
rockchip-dw-pcie 3c0000000.pcie: PCIe Gen.2 x1 link up
pcieport 0000:00:00.0: Root Port has been reset
nvme nvme0: restart after slot reset
nvme nvme0: D3 entry latency set to 10 seconds
nvme nvme0: 4/0/0 default/read/poll queues
pcieport 0000:00:00.0: AER: device recovery successful
pcieport 0000:00:00.0: Recovering Root Port due to Link Down
nvme nvme0: frozen state error detected, reset controller
rockchip-dw-pcie 3c0000000.pcie: PCIe Gen.2 x1 link up
pcieport 0000:00:00.0: Root Port has been reset
nvme nvme0: restart after slot reset
nvme nvme0: D3 entry latency set to 10 seconds
nvme nvme0: 4/0/0 default/read/poll queues
pcieport 0000:00:00.0: AER: device recovery successful
pcieport 0000:00:00.0: Recovering Root Port due to Link Down
nvme nvme0: frozen state error detected, reset controller
rockchip-dw-pcie 3c0000000.pcie: PCIe Gen.2 x1 link up
pcieport 0000:00:00.0: Root Port has been reset
nvme nvme0: restart after slot reset
nvme nvme0: D3 entry latency set to 10 seconds
nvme nvme0: 4/0/0 default/read/poll queues
pcieport 0000:00:00.0: AER: device recovery successful
pcieport 0000:00:00.0: Recovering Root Port due to Link Down
nvme nvme0: frozen state error detected, reset controller
rockchip-dw-pcie 3c0000000.pcie: PCIe Gen.2 x1 link up
pcieport 0000:00:00.0: Root Port has been reset
nvme nvme0: restart after slot reset
nvme nvme0: D3 entry latency set to 10 seconds
nvme nvme0: 4/0/0 default/read/poll queues
pcieport 0000:00:00.0: AER: device recovery successful
pcieport 0000:00:00.0: Recovering Root Port due to Link Down
nvme nvme0: frozen state error detected, reset controller
nvme nvme0: D3 entry latency set to 10 seconds
nvme nvme0: 4/0/0 default/read/poll queues
pcieport 0000:00:00.0: Root Port has been reset
(and so on...)

Regards,
Chewi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
