Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 925FFC636CC
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Feb 2023 08:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fK9UykpN02fj8BcBISN6kFP+qddCKxcwo8BKXglpWFc=; b=fYaIHsDzlhWojt
	Rf7806HLo9LnjSamAj4HNUEaLcv3sQVPHuMO4Pa2M76WdIIkLCWIQWUwaySqUCqw9WjdmXiO/imy/
	EQEOKZ3Fmn8X7HhbjXXr6Shm+9P9LTAVKq4ux0VPARZSwsuumAMdgwSUOjP5bVIjKItN+uRKE0lzR
	3R3/5e/oP2wBK7zNJWqeyYmNi16aqHs7SPg/sol0lLC4FvcGaaJ8hMJE8SMgJjg87sqv1PSk0TWPX
	1bIFfqTfzMd54rdZFRjguYxkTBus6cRnpKANWevQWIakRxrtt6pdAmmqli/dpg5pEZ3Xiaye2PjY3
	bbEskwVMryYDGiABP69g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOEE1-004kM1-2e; Sat, 04 Feb 2023 08:48:45 +0000
Received: from smtp-out1.suse.de ([2001:67c:2178:6::1c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOEDi-004kGR-El; Sat, 04 Feb 2023 08:48:28 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 527A338287;
	Sat,  4 Feb 2023 08:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1675500501; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=Stm/m2B/9hUfLU25PcD4DccBXwZ4/L08ExZxt8Kx59E=;
	b=okhQadyX20tUNehggjaD80fQahhsHpA+0fRtcBW9lKjtO3OxNVpUuwbAy1QMeBU/AfbNjI
	LSkgluKiaJSKtIrR0Vr27xfjRD55s1bRQjSv/0atClBXufDDnC95mOqYcbIW3ris3fAmY0
	0ykwU+9tMgb4pbML5CL0mF4vJnpo/AQ=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 0F60D133F5;
	Sat,  4 Feb 2023 08:48:19 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id vRikNNMb3mMKLAAAMHmgww
	(envelope-from <wqu@suse.com>); Sat, 04 Feb 2023 08:48:19 +0000
From: Qu Wenruo <wqu@suse.com>
To: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: sebastian.reichel@collabora.com,
	heiko@sntech.de
Subject: [PATCH RFC 0/5] arm64: rockchip: enable PCIE3 controller and its phy for Rock5B boards
Date: Sat,  4 Feb 2023 16:47:57 +0800
Message-Id: <cover.1675498628.git.wqu@suse.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230204_004826_691594_94D89A1C 
X-CRM114-Status: GOOD (  16.23  )
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

This series is based on the existing upstream work from Sebastian
Reichel:
https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=rk3588

And I'm a completely newbie to arm64 world, thus if there is something
wrong, feel free to point out and I'm pretty happy to learn from the
failure.

[BACKGROUND]
RK3588S and RK3588 have PCIE supports, it's done by the following 3
controllers:

- PCIE2.0x1 lane @fe180000 (both RK3588S and RK3588)
- PCIE2.0x1 lane @fe190000 (both RK3588S and RK3588)
  Thes two are all connected to a naneng combo phy each, normally shared
  with SATA or USB.

- PCIE2.0x1 lane @fe170000 (RK3588 exlusive)
  This one is also connected to a naneng combo phy, normally shared
  with SATA or USB.

- PCIE3.0x4 lanes @fe15000 (RK3588 exclusive)

And unlike other boards, ROCK5B is utilizing PCIE extensively, its
network controller (RTL8125 2.5Gbps Ethernet) is connected to the
PCIE2.0 lane at fe190000, and an M.2 slot is attached to the PCIE3.0x4
lanes.

[WORKING]
Currently the series is able to bring up the PCIE3.0x4 lanes and
properly boot from an NVME at that M.2 slot of Rock5B boards.

[NOT WORKING]
All PCIE2.0 lanes connected to naneng combo phy are not working.
I tried forward porting the extra handling from downstream, but it only
results hanging at probing (causing RCU stall).

[EXTRA WANRING]
- PCI MSI initialization warning
  WARNING: CPU: 7 PID: 1 at drivers/pci/msi/msi.h:121 pci_msi_setup_msi_irqs+0x38/0x4c

  This seems to be caused by the fact that we are still using legcacy
  msi irqs?

  I checked up the gic and its dts, can not figure out why (all pretty
  the same just like rk3399 and rk3568).
  Any help would be appreciated.

- pci_bus 0000:01: busn_res: can not insert [bus 01-ff] under [bus 00-0f] (conflicts with (null) [bus 00-0f])
  The vendoer kernel also has this problem, but my RK3399 board with
  upstream kernel didn't trigger this at all, but something else like:

    pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring

  Then:

    pci_bus 0000:01: busn_res: [bus 01-1f] end is updated to 01

  Not sure if it's something missing or can be just ignored.

[PCI DMESG]
With this patchset, the PCI initialization and nvme would look like this:

[    0.142984] rockchip-dw-pcie fe150000.pcie: host bridge /pcie@fe150000 ranges:
[    0.143653] rockchip-dw-pcie fe150000.pcie:       IO 0x00f0100000..0x00f01fffff -> 0x00f0100000
[    0.144463] rockchip-dw-pcie fe150000.pcie:      MEM 0x00f0200000..0x00f0ffffff -> 0x00f0200000
[    0.145261] rockchip-dw-pcie fe150000.pcie:      MEM 0x0900000000..0x093fffffff -> 0x0900000000
[    0.154022] rockchip-dw-pcie fe150000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G
[    0.360415] rockchip-dw-pcie fe150000.pcie: PCIe Gen.3 x4 link up
[    0.361099] rockchip-dw-pcie fe150000.pcie: PCI host bridge to bus 0000:00
[    0.361731] pci_bus 0000:00: root bus resource [bus 00-0f]
[    0.362236] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] (bus address [0xf0100000-0xf01fffff])
[    0.363113] pci_bus 0000:00: root bus resource [mem 0xf0200000-0xf0ffffff]
[    0.363744] pci_bus 0000:00: root bus resource [mem 0x900000000-0x93fffffff pref]
[    0.364450] pci 0000:00:00.0: [1d87:3588] type 01 class 0x060400
[    0.365005] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x3fffffff]
[    0.365583] pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x3fffffff]
[    0.366159] pci 0000:00:00.0: reg 0x38: [mem 0x00000000-0x0000ffff pref]
[    0.366801] pci 0000:00:00.0: supports D1 D2
[    0.367193] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
[    0.368647] pci_bus 0000:01: busn_res: can not insert [bus 01-ff] under [bus 00-0f] (conflicts with (null) [bus 00-0f])
[    0.369681] pci 0000:01:00.0: [1d97:5216] type 00 class 0x010802
[    0.370277] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x0000ffff 64bit]
[    0.370975] pci 0000:01:00.0: reg 0x30: [mem 0x00000000-0x0001ffff pref]
[    0.372130] pci 0000:00:00.0: BAR 0: no space for [mem size 0x40000000]
[    0.372742] pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x40000000]
[    0.373381] pci 0000:00:00.0: BAR 1: no space for [mem size 0x40000000]
[    0.373988] pci 0000:00:00.0: BAR 1: failed to assign [mem size 0x40000000]
[    0.374628] pci 0000:00:00.0: BAR 14: assigned [mem 0xf0200000-0xf02fffff]
[    0.375259] pci 0000:00:00.0: BAR 6: assigned [mem 0xf0300000-0xf030ffff pref]
[    0.375923] pci 0000:01:00.0: BAR 6: assigned [mem 0xf0200000-0xf021ffff pref]
[    0.376590] pci 0000:01:00.0: BAR 0: assigned [mem 0xf0220000-0xf022ffff 64bit]
[    0.377281] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
[    0.377762] pci 0000:00:00.0:   bridge window [mem 0xf0200000-0xf02fffff]
[    0.426841] pcieport 0000:00:00.0: PME: Signaling with IRQ 33
[    0.427487] pcieport 0000:00:00.0: AER: enabled with IRQ 33
[    0.625353] nvme nvme0: pci function 0000:01:00.0
[    0.625774] nvme 0000:01:00.0: enabling device (0000 -> 0002)
[    0.717069] nvme nvme0: Shutdown timeout set to 8 seconds
[    0.723025] nvme nvme0: allocated 64 MiB host memory buffer.
[    0.816820] nvme nvme0: 1/0/0 default/read/poll queues
[    0.818079] sdhci-pltfm: SDHCI platform and OF driver helper
[    0.820678]  nvme0n1: p1 p2

Qu Wenruo (5):
  drivers: phy: rockhip: remove 24M and 25M clock handling for naneng
    combphy
  dt-bindings: pci: controller: add pcie controller binding for RK3588
  drivers: pci: controller: add PCIE controller driver for RK3588
  arm64: dts: rockchip: add PCIE3 controller and phy for RK3588
  arm64: dts: rockchip: enable PCIE3 controller and phy for Rock5B
    boards

 .../bindings/pci/rockchip-dw-pcie.yaml        |   5 +-
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |  22 +++
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      | 128 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  16 +++
 drivers/pci/controller/dwc/pcie-dw-rockchip.c |   1 +
 .../rockchip/phy-rockchip-naneng-combphy.c    |  17 ---
 6 files changed, 170 insertions(+), 19 deletions(-)

-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
