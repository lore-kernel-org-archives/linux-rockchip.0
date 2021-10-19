Return-Path: <SRS0=otL+=PH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBB73C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 12:02:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B6B3160EE3
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 12:02:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B6B3160EE3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=te3KiuhPFwtaqu58RRbfr12mDbdzaxrW4YC531jUatk=; b=GRlbm6AWbr3k6t
	uQj1YvbFf8ojKU8muL1n8zouKxdzClS9+B8FOEg240iafBXsSgFkoqDNFVciKy/GCk23tpZdCvP+f
	kNnAal6o5SbVWR4vrlI+c3d1hIIp3LpZiG4e4qDqmstO8ipaEbt1ZWUInd6pIvG5USkXOwELU5LUY
	aKxwKcTGTZoh6Q5Sicomv1fjJ3BWGNqH22PRAX5HC7HlwNWre3Yw9H5xtKCCZyHUO/sM1id71Kth7
	znHVDdTtmJL+f/md6YRr8IgB8o0qqHaCd2JKx4nCWEzI6dqwTR2ihPknkPeYFp2qo9uuvtZpaoCay
	chlH57qTrNIfnPHLyNTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcnp5-001210-0c; Tue, 19 Oct 2021 12:02:27 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcnp3-00120b-7q
 for linux-rockchip@lists.infradead.org; Tue, 19 Oct 2021 12:02:26 +0000
Received: by mail-pl1-x62d.google.com with SMTP id b14so3725891plg.2
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Oct 2021 05:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VstgBb1WpAFxmjgEF016s8/N6/G+uWbCOyA3bqA7yQQ=;
 b=TEA9MLqbOVq7RmcYakd/vziXUhkxFHx37bojiSprOG0B+lJljwJ3j8RTVyJBupUm7y
 BsCv9dM5yV0Y3rOiGvPTTHgBlnTMdAPNKEpM0lXj1seh3nMtseBRliPvxebKOWniXi90
 EXvh+7M4LagBLuy9DIwmuZyCW8KDENmbYU1/J5qXQxjIyIHXL61mJejhQKbC2Px+43EU
 10Q3LPuZHm7xw3p9WOKmhrqY/esfqW3biW9TGeFRDLE7s2ZUzDBSMPT4FWkedcfF2gr3
 ylELmaBb/HkMgjt6p3saFqt0yDnl5w1KFCuoUIGeNb3LStbQB6v2dhX0Ilt1EMQiJu0i
 2WsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VstgBb1WpAFxmjgEF016s8/N6/G+uWbCOyA3bqA7yQQ=;
 b=HLgv2mzuyNz4nQ1lXNJAuaZkx88u8LicatrgoGbXsGKuY3IxQUBzbX/OsyFXVXzwmh
 X/z0eL59kxmbB4fQDIZ/HR6kq3pnlvO0ZjsNAhQDoi16qfUHYJvLeaau+utMSdICZdGN
 504sgLLFPtgcP05NVjbyBTYeVJAtMwdzUZUAbVo3fP+JEUO2q8ArM6LHtiPI+8ImrJsS
 c/RZXokkU3IzLEkqHj/KOJ1c7tsO4ySBhSRy4+74DamThI77PPo5KbCWanaw4pnQxb06
 eEpcxdkHEVMMe95vhiGGfZWBMPK6SLZzYLfuK/TQZ6jlte1nXOjLvQjoedkjK+/SWfDZ
 JoxA==
X-Gm-Message-State: AOAM531sGkxdoCXfMPsr7lYkNlXZ4TlxmrhUGdurfKeYAGlwScoAAI+K
 c7ey+yfmXk4e6RRmY+0XYo0=
X-Google-Smtp-Source: ABdhPJxIoXyH2q5MFgLvewo8I/0kFS3bsLZV6rGrGRmcdHiOhFs/xoHutOFv7TkODOqxHrjgPRSCaA==
X-Received: by 2002:a17:90a:cc15:: with SMTP id
 b21mr6267146pju.113.1634644943521; 
 Tue, 19 Oct 2021 05:02:23 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id 197sm16048248pfv.6.2021.10.19.05.02.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Oct 2021 05:02:22 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: lorenzo.pieralisi@arm.com,
	bhelgaas@google.com
Cc: Punit Agrawal <punitagrawal@gmail.com>, robh@kernel.org, kw@linux.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org
Subject: [PATCH] PCI: rockchip: Enable the phy driver when controller is
 enabled
Date: Tue, 19 Oct 2021 21:02:15 +0900
Message-Id: <20211019120215.793794-1-punitagrawal@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_050225_311587_4D653725 
X-CRM114-Status: GOOD (  12.06  )
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

The PCI controller on rk3399 requires the phy to correctly initialise
the PCIE phy. Without phy initialisation the host and end-point
controllers cannot be used.

To prevent building an unusable PCIe driver on rk3399, enable the phy
driver when the host or end-point driver is enabled.

Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
---
Hi,

I've been caught out many times when booting off of PCI and finding
that the kernel cannot find rootfs due to the missing phy driver. The
patch should prevents this by fixing the Kconfig dependency
enablement. 

Thanks,
Punit

 drivers/pci/controller/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index 326f7d13024f..1965df38c4a3 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -214,6 +214,7 @@ config PCIE_ROCKCHIP_HOST
 	depends on PCI_MSI_IRQ_DOMAIN
 	select MFD_SYSCON
 	select PCIE_ROCKCHIP
+	select PHY_ROCKCHIP_PCIE
 	help
 	  Say Y here if you want internal PCI support on Rockchip SoC.
 	  There is 1 internal PCIe port available to support GEN2 with
@@ -226,6 +227,7 @@ config PCIE_ROCKCHIP_EP
 	depends on PCI_ENDPOINT
 	select MFD_SYSCON
 	select PCIE_ROCKCHIP
+	select PHY_ROCKCHIP_PCIE
 	help
 	  Say Y here if you want to support Rockchip PCIe controller in
 	  endpoint mode on Rockchip SoC. There is 1 internal PCIe port
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
