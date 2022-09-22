Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55F7EC6FA8B
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Sep 2022 06:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oUvbGqSKv2QwjNaWReJMftzhPwYvMP23H0dVnyLNWMo=; b=xUVtrdNopLYyDS
	ALlkVrSo5H4jDBVZGW1WDUhxRU1ciOPsccqW+Qdlt1D9f+e47NHN2645CaFYor/G1AF3VI4DpWn6G
	6ZkaiPkbuxulby4PVkKFe94SAmm6+3iOKbKLdjH0GI0izeyKbhxxBxbFypGxB1sTMCyUckE5Gw2e/
	uY/XDnJhqLTCNBSVcnRRBZRmasP6VW3vbP+FxC2v3J/oSWrtE3u+nrNwpdpVcIBQqq2Vk77RIyYuX
	aIJ4SC/EVLeg9HbDMTOaEBsNTyhYlTow/XDWvBFLDhZaDfBGW39M6rlNnvNlXjW+ITA815dp5p91h
	mCu6RcH548K5z42jUZfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obFzV-00DdYI-MU; Thu, 22 Sep 2022 06:47:21 +0000
Received: from mx-out2.startmail.com ([145.131.90.155])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obFzS-00DdVM-TC
	for linux-rockchip@lists.infradead.org; Thu, 22 Sep 2022 06:47:20 +0000
From: "Marty E. Plummer" <hanetzer@startmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=startmail.com;
	s=2020-07; t=1663829235;
	bh=8cHr03Akvf/JAs1pWX8gng9ZDy97uXyu223thOWfuBc=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:From:Subject:To:Date:Sender:
	 Content-Type:Content-Transfer-Encoding:Content-Disposition:
	 Mime-Version:Reply-To:In-Reply-To:References:Message-Id:Autocrypt;
	b=MvqZVC4a9CoXF9JzIGNISfAlJ/FMktQhvyV3suOgCPnjkSWt3CD/lU7BCbKr1PeDM
	 i9XK6iZ+e466LSL7sYhmi25f9koj83wUDBkMwWfO2PzxVom3BOSU2MN3ISxSsU5u8D
	 56//6X9bO/CtV+0h7L2l2zaJ8uGBzbkmU7jn85xkHZMUp0r7MYFH2atDuJlIVoq9Qr
	 AzZ6ZX5BzvuHjPN0kDn4+AtMRkO02+P11w3HmM+nTmPZx5jktnlH4BVYwSTM3lE3X1
	 Q0flZ41QcUaC1kz3O9Kt1BHonP2yzONHS8PRKdJZamGSYF6CX8k50IqQyhqj0NFjYr
	 4clpDDeqMqxZw==
To: U-Boot Mailing List <u-boot@lists.denx.de>
Cc: Simon Glass <sjg@chromium.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
	"Marty E. Plummer" <hanetzer@startmail.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Philipp Tomsich <philipp.tomsich@vrull.eu>,
	linux-rockchip@lists.infradead.org
Subject: [RFC PATCH 1/4] rockchip: rk3288: enable u-boot.rom for speedy
Date: Thu, 22 Sep 2022 01:47:00 -0500
Message-Id: <20220922064704.1740759-2-hanetzer@startmail.com>
In-Reply-To: <20220922064704.1740759-1-hanetzer@startmail.com>
References: <20220922064704.1740759-1-hanetzer@startmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_234719_113200_5141677F 
X-CRM114-Status: UNSURE (   6.31  )
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

Trivial change, builds a bootable u-boot.rom properly.

Signed-off-by: Marty E. Plummer <hanetzer@startmail.com>
---

 arch/arm/mach-rockchip/rk3288/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-rockchip/rk3288/Kconfig b/arch/arm/mach-rockchip/rk3288/Kconfig
index e8c57843a3..99bf2397e6 100644
--- a/arch/arm/mach-rockchip/rk3288/Kconfig
+++ b/arch/arm/mach-rockchip/rk3288/Kconfig
@@ -37,7 +37,9 @@ config TARGET_CHROMEBOOK_MINNIE
 
 config TARGET_CHROMEBOOK_SPEEDY
 	bool "Google/Rockchip Veyron-Speedy Chromebook"
+	select HAS_ROM
 	select BOARD_LATE_INIT
+	select ROCKCHIP_SPI_IMAGE
 	help
 	  Speedy is a RK3288-based clamshell device with 2 USB 2.0 ports,
 	  micro HDMI, an 11.6 inch display, micro-SD card,
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
