Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C8FAC02181
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jan 2025 06:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6MIvyQ+zVaSlTV4Nqr4WI0IHOQcFbWGVmpa59Cz0RN0=; b=h4LVEUwyMsXkoa
	SWDzc51qXjVCM9VjJku+PkbTRBzVI+X0Q39Y0jENg6+X6WieUn4EmZdJS6yaCbgXaNzYfzgCOAGjl
	WXCQtVOE7AiRqKUS4e1zFS80DaeXzJ3aWoTXKEUrDFSv7PfzGYYsdBkdHTH1lXU5fifiBf2aEvJwI
	20G3SMMOlyJv1w38VQyqpd1FXJ+P35w4kTiIBSpTxMBLwHCxWGgxeoG3hhZPRbJdAtypXhacNqeQ4
	WE0MFuhFlR/qr2P25S+DnBSCanDgNlz3XUzArtcWsfLNo8hdX2HLVxsV2p/GDqi0NZtY0sAkh1A00
	NIo9RfL4dfLd4cqM6UZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taUdf-00000009Y7e-2RPY;
	Wed, 22 Jan 2025 06:54:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taUbe-00000009Xvo-3ECz;
	Wed, 22 Jan 2025 06:52:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C67995C4AD0;
	Wed, 22 Jan 2025 06:52:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA25EC4CED6;
	Wed, 22 Jan 2025 06:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737528773;
	bh=I763Oa/eMnsSlbkfcMXLpMoWKkAVbmdkHlpluk14S2U=;
	h=From:To:Cc:Subject:Date:From;
	b=sd47wlCr0vdUjmjxCSegDkO6VOc07MkgL79bE+w0NKECtY4aPCZU1g6CFGTqdfuAe
	 SZvfwqXvGbdY7cIUSA9/Zo0ckUg+QJb0kxFnh2dCqPfejKLCvCn5HeHbXqdhZDMq87
	 hD/fdQEGdoy1R5SadPhaNhHtTdTpvj162AaYvXh0uxRnKYUWldWKfRx8sysLUF60Fh
	 PQNPV0F334lhpPeC041/0hnii0Y4G2AkwdwOFjsQuSYYBdbyx3ZNdvHeW9W9eF2D0M
	 P7Z5EBHKMyq5jqZpZQofY8ELXCc4tdPCGw6SibbxjD41Tovte4uJhocGIhYFjDuurH
	 empItcXx2e4gA==
From: Arnd Bergmann <arnd@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] phy: rockchip: fix Kconfig dependency more
Date: Wed, 22 Jan 2025 07:52:44 +0100
Message-Id: <20250122065249.1390081-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_225254_853456_01E01C90 
X-CRM114-Status: GOOD (  11.97  )
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
Cc: linux-rockchip@lists.infradead.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Zhang Yubing <yubing.zhang@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>

A previous patch ensured that USB Type C connector support is enabled,
but it is still possible to build the phy driver without enabling
CONFIG_USB (host support) or CONFIG_USB_GADGET (device support), and
in that case the common helper functions are unavailable:

aarch64-linux-ld: drivers/phy/rockchip/phy-rockchip-usbdp.o: in function `rk_udphy_probe':
phy-rockchip-usbdp.c:(.text+0xe74): undefined reference to `usb_get_maximum_speed'

Select CONFIG_USB_COMMON directly here, like we do in some other phy
drivers, to make sure this is available even when actual USB support
is disabled or in a loadable module that cannot be reached from a
built-in phy driver.

Fixes: 9c79b779643e ("phy: rockchip: fix CONFIG_TYPEC dependency")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/phy/rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
index 2f7a05f21dc5..dcb8e1628632 100644
--- a/drivers/phy/rockchip/Kconfig
+++ b/drivers/phy/rockchip/Kconfig
@@ -125,6 +125,7 @@ config PHY_ROCKCHIP_USBDP
 	depends on ARCH_ROCKCHIP && OF
 	depends on TYPEC
 	select GENERIC_PHY
+	select USB_COMMON
 	help
 	  Enable this to support the Rockchip USB3.0/DP combo PHY with
 	  Samsung IP block. This is required for USB3 support on RK3588.
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
