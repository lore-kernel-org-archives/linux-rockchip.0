Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8540E77180
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 13:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwU0cF14lcfoKYloRuLa0bUc/6xGfnfo3giVMUkOzwU=; b=FXPNm8ROoSepkR
	KnIddadgZe3ISq5ACkYzfUYJxBiuy4k1LYGlRlnD8yRCVNs35olN6AluWVYV2m+gnmZjT04uRvF+A
	AwwabKjoxwWLzFDDdsQD3kOABm2pdQrSVvoS74/5xartO8aCEiAd1awMBhAgFKI0BJoCPQDlqV+Sq
	MBuhnVNeBok0kJ95/fcD7OK5TFRmJPxQOT7uM/2EA+LvO04jGLOsMkbkITRwUrj5+VpCgGLRXPGa+
	ikw79vgEAsZfrfh5H3kxM7VHRghP5jIYN7C31O85flcZ9LywRhPhTNTRi9bYCt9ZCk/67tO/3qBZA
	MK0czLDFM3WZThG0M3AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLMtR-0000000F0Ht-3kLt;
	Wed, 11 Dec 2024 13:36:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLMtM-0000000F0G2-0Lr9
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 13:36:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=R9lBjZ6tDVvMKIREOyk6TGliSqKT8aHMEJAwiMtdOyQ=; b=zM//ss40BGNXDHNmTTy3hkHpRP
	uj6S96rA0fph/TK7cj+nByD8HM/Fyu0J52DWtmDvsloXp7QPuhB5wCtirY1D2noKvSQq1EIxpK/Rd
	nPdAqxJpP/0PRFFhJRizcI1GMgn5Z5KAZUeQeihSf/rMdJ/sdlOlRDgWmBBGtB6LbsrxvhQF/hqds
	m91Cz9GXFAZGXzs1QuGwHGQ+dKBRwFzNJW6Tm+fmgdY2NYYkmUFlIPE+0bDteHdCZ+M6WFFL/uSzr
	SFSaKkOm5KDd5efAAnmaYe3g2TPuige0kmEEaS6ByKqutUAxqCJLM1g9mhF1wMzQtSH40SapCDwQh
	bqRuuCPA==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tLMtK-0003YG-NT; Wed, 11 Dec 2024 14:36:38 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Vicente Bergas <vicencb@gmail.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: PCIe missing on RK3399
Date: Wed, 11 Dec 2024 14:36:38 +0100
Message-ID: <4929144.F8r316W7xa@diego>
In-Reply-To: <CAAMcf8DL27-PYdEJ4eX1-PJnQDWB0osgHR0gbHAcr_oRniWOOg@mail.gmail.com>
References: <CAAMcf8DL27-PYdEJ4eX1-PJnQDWB0osgHR0gbHAcr_oRniWOOg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_053640_124931_D297D315 
X-CRM114-Status: GOOD (  15.18  )
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

Hi Vicente,

Am Mittwoch, 11. Dezember 2024, 13:55:01 CET schrieb Vicente Bergas:
> i've tested the Linux kernel 6.13-rc1 and rc2 and in both cases PCIe
> is not detected on the RK3399 platform (rk3399-gru-kevin), whereas the
> kernel version 6.12.3 works fine.
> 
> 6.13 configuration is based on the same one as 6.12 and there aren't
> any significant PCI-related differences.
> 
> The messages from dmesg on 6.13 don't show any PCI-related errors.
> 
> Does somebody know what is going on?

so I just booted a rk3399-puma-haikou with a pci-nvme-adapter in the
pcie slot. And I get:

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 6.13.0-rc2-00101-g260ae63734ff-dirty (hstuebner@phil) (aarch64-linux-gnu-gcc (Debian 14.2.0-6) 14.2.0, GNU ld (GNU Binutils for Debian) 2.43.1) #1134 SMP PREEMPT Tue Dec 10 21:06:34 CET 2024
...
[    3.428114] rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
[    3.435978] rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff -> 0x00fa000000
[    3.445478] rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff -> 0x00fbe00000
[    3.455298] rockchip-pcie f8000000.pcie: using DT '/pcie@f8000000' for 'ep' GPIO lookup
[    3.455332] of_get_named_gpiod_flags: parsed 'ep-gpios' property of node '/pcie@f8000000[0]' - status (0)
[    3.455359] gpio gpiochip4: Persistence not supported for GPIO 22
[    3.499404] usb 3-1: new high-speed USB device number 2 using xhci-hcd
[    3.664293] rockchip-pcie f8000000.pcie: PCI host bridge to bus 0000:00
[    3.671770] pci_bus 0000:00: root bus resource [bus 00-1f]
[    3.677936] pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff]
[    3.685680] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] (bus address [0xfbe00000-0xfbefffff])
[    3.696474] pci 0000:00:00.0: [1d87:0100] type 01 class 0x060400 PCIe Root Port
[    3.704852] hub 3-1:1.0: USB hub found
[    3.709114] pci 0000:00:00.0: PCI bridge to [bus 00]
[    3.714682] hub 3-1:1.0: 4 ports detected
[    3.719334] pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff]
[    3.727028] pci 0000:00:00.0: supports D1
[    3.731523] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
[    3.739745] pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
[    3.748858] pci 0000:01:00.0: [144d:a804] type 00 class 0x010802 PCIe Endpoint
[    3.757011] pci 0000:01:00.0: BAR 0 [mem 0x00000000-0x00003fff 64bit]
[    3.764358] pci 0000:01:00.0: Max Payload Size set to 256 (was 128, max 256)
[    3.772374] usb 4-1: new SuperSpeed USB device number 2 using xhci-hcd
[    3.780132] pci 0000:01:00.0: 8.000 Gb/s available PCIe bandwidth, limited by 2.5 GT/s PCIe x4 link at 0000:00:00.0 (capable of 31.504 Gb/s with 8.0 GT/s PCIe x4 link)
[    3.803225] pci_bus 0000:01: busn_res: [bus 01-1f] end is updated to 01
[    3.810659] pci 0000:00:00.0: bridge window [mem 0xfa000000-0xfa0fffff]: assigned
[    3.819082] pci 0000:01:00.0: BAR 0 [mem 0xfa000000-0xfa003fff 64bit]: assigned
[    3.827302] pci 0000:00:00.0: PCI bridge to [bus 01]
[    3.832873] pci 0000:00:00.0:   bridge window [mem 0xfa000000-0xfa0fffff]
[    3.844769] pci_bus 0000:00: resource 4 [mem 0xfa000000-0xfbdfffff]
[    3.856277] pci_bus 0000:00: resource 5 [io  0x0000-0xfffff]
[    3.862618] pci_bus 0000:01: resource 1 [mem 0xfa000000-0xfa0fffff]
[    3.869750] pcieport 0000:00:00.0: enabling device (0000 -> 0002)
[    3.876911] pcieport 0000:00:00.0: PME: Signaling with IRQ 85
[    3.884054] nvme nvme0: pci function 0000:01:00.0
[    3.889336] nvme 0000:01:00.0: enabling device (0000 -> 0002)
[    3.915282] nvme nvme0: 6/0/0 default/read/poll queues
[    3.993297]  nvme0n1: p1 p2

So there seems to be not some general failure.

Does
	# ls /sys/devices/platform/f8000000.pcie
list some "waiting_for_supplies" or something?




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
