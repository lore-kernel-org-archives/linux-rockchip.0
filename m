Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0588C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 12:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RkF2Nqkl4pqC0+4zihUQvBc7iyhG4le1IHcn+RK77GM=; b=UjDn8FWyY4Z+M/
	AyI/kuxNk6LZiLdiHyyNKRxo3PiS0HjpKhJhtctj6F1Qtf9ODu2kGzpBGsl4aVp7InEHjpFiq8sTR
	5a5n3H+Qf/vnJ7mmIysX8oka7INkSQhkQqujYMOa/oJRfvkidsPTE8xxzHPJnfWJMuULVlBqak0n9
	E0D19NiMQLAK6APL6eGeQos7uPm9u04+e3vxsTe01rx/P6vidqdw9Y50Xz0UsXhSzpygflAvre2Fz
	UqFWdVtvyRai8p7XiaHlxhhDHckZ7vNPagil76Zm99+Dk3wVut4dkx5TC7bPKDVBofR2dowwdXqaD
	EeztlLlyshioXnVPbpGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkPu6-00BBcv-Sf; Fri, 29 Apr 2022 12:39:22 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkPtg-00BBGR-G6; Fri, 29 Apr 2022 12:38:58 +0000
Received: by mail-qv1-xf32.google.com with SMTP id iy15so5207941qvb.9;
 Fri, 29 Apr 2022 05:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=u+dxdp5rrl14/eORvrLB8L3RavPWDRGDtxwA0AijHS0=;
 b=EANN7oTOPbgNT6aPWLJ3jidqnFmPU/PO2+Gua9a0sPGBRzbptwMDRo0wKSgRLbHsK9
 gkuuic9aitbXcvRhkO6zzQyqTQzBgSnE9LTCMRanDZq/RJqYJ18NEKqx811n/xtqX0GX
 2KIS12D8Ln39n+JKaXCBlNXnP6u5G26GU6QJs6trZtWoJOov+siVqD/PdRxEopdJUQdt
 RUPJtzwhVVpImWLB8Vgcg6M3mStk1mu/dY5rBv9gJDYGGrYK91iRZpun21OoeY2uvRTV
 DP7nAZf4fI4JOYSm9kLGa85vnjWGFLy4zg9xTLY2Z/wBvRum7myBWlXAb5e9NcEgIWXj
 hCeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=u+dxdp5rrl14/eORvrLB8L3RavPWDRGDtxwA0AijHS0=;
 b=JDMtybxz+jQ/hdCq73sSoJuAEWH7GlREdO1BvMmjZ589+Rwe+0J64hoN7QxqcBagk7
 HcjsfEPYJ72Qnmc5K5zIsRVJJgbuta7u+wsW150R3Bbt1ePoNxw0hI/GBDE+4/kUw8ck
 N8rfAlD8Fe1WKpd51eWLrAqyQGOBDi2yWNPrH6AqAuAJlmy9db8aMhfZwnOBbwRJN8b1
 ulZ8crU2oneF0FqzePBKiZHrLv16gAJc2/VQh+xV2CYav13SKks03I/JHb6l8UaXtULQ
 /WptgPQezzac76YAQdqAGmPudvZ4crAF3rsddiIS4WYRtalG2IDYEJtzdWils/2prLn6
 tjKQ==
X-Gm-Message-State: AOAM531ge+JjJU26bQiaj7ouCBChrgS6H1DQgItvBeOH4Y0mR4S/RN/o
 0fa+znbvWgCFIgIuxaXHjaOwy8TCqzKjaePY
X-Google-Smtp-Source: ABdhPJwD6ARY0Qg7OhPhaRZ2aJoyeHoWzMfqlNR6k0S7Sh2YZmG5qHY1oEVs8qx99m23l9ocRQp3PQ==
X-Received: by 2002:a0c:d6ce:0:b0:443:f22e:6dd with SMTP id
 l14-20020a0cd6ce000000b00443f22e06ddmr28013580qvi.111.1651235918751; 
 Fri, 29 Apr 2022 05:38:38 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 v126-20020a37dc84000000b0069f9c375519sm1431644qki.46.2022.04.29.05.38.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Apr 2022 05:38:38 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>
Cc: heiko@sntech.de, Peter Geis <pgwipeout@gmail.com>,
 Marc Zyngier <maz@kernel.org>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v9 0/5] Enable rk356x PCIe controller
Date: Fri, 29 Apr 2022 08:38:26 -0400
Message-Id: <20220429123832.2376381-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_053856_640668_583795B0 
X-CRM114-Status: GOOD (  14.57  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

This series enables the DesignWare based PCIe controller on the rk356x
series of chips. We drop the fallback to the core driver due to 
compatibility issues. We reset the PCIe controller at driver probe to
prevent issues in the future when firmware / kexec leaves the controller
in an unknown state. We add support for legacy interrupts for cards that
lack MSI support (which is partially broken currently). We then add the
device tree nodes to enable PCIe on the Quartz64 Model A.

Patch 1 drops the snps,dw,pcie fallback from the dt-binding
Patch 2 resets the PCIe controller to prevent configuration bugs
Patch 3 adds legacy interrupt support to the driver
Patch 4 adds the device tree binding to the rk356x.dtsi
Patch 5 enables the PCIe controller on the Quartz64-A

Changelog:
v9:
- move reset_control_assert out of rockchip_pcie_resource_get
- fix various formatting mistakes
- fix a checkpatch warning

v8:
- add core reset patch
- simplify IRQ enable/disable functions
- drop spinlock
- only enable/disable IRQ requested
- only pass the IRQ register bits used to irq functions

v7:
- drop assigned-clocks

v6:
- fix a ranges issue
- point to GIC instead of ITS

v5:
- fix incorrect series (apologies for the v4 spam)

v4:
- drop the ITS modification, poor compatibility is better than
  completely broken

v3:
- drop select node from dt-binding
- convert to for_each_set_bit
- convert to generic_handle_domain_irq
- drop unncessary dev_err
- reorder irq_chip items
- change to level_irq
- install the handler after initializing the domain

v2:
- Define PCIE_CLIENT_INTR_STATUS_LEGACY
- Fix PCIE_LEGACY_INT_ENABLE to only enable the RC interrupts
- Add legacy interrupt enable/disable support


Peter Geis (5):
  dt-bindings: PCI: Remove fallback from Rockchip DesignWare binding
  PCI: rockchip-dwc: Reset core at driver probe
  PCI: rockchip-dwc: Add legacy interrupt support
  arm64: dts: rockchip: Add rk3568 PCIe2x1 controller
  arm64: dts: rockchip: Enable PCIe controller on quartz64-a

 .../bindings/pci/rockchip-dw-pcie.yaml        |  12 +-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  34 +++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  52 ++++++++
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 119 +++++++++++++++---
 4 files changed, 191 insertions(+), 26 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
