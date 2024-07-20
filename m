Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A169C3DA49
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Jul 2024 21:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wnRUfCjaR0kTEMbl9d9/FjWyN13gavu19ea2IM+5p0Y=; b=sHmcbngWEd8Ijr
	RQakf47SWhLTxkRTDd4huROKzGx9EyDxeMkg9cx7LBSljvipO3KnyUHw0xINhZUf0CYi8kf3KIzTW
	VByQLG2u6UZq04jlU/NRzyN7QgVzU7HgXv98iy6HUrd1FKc1bkmv/8aE99tz+8LLs7P/KJtiEHzXC
	cRlEwrPH1T8tqo+qu19YPmtEp+pNCIxEMlkXXzGFFWwNsSHkSduFhumfwOquemBf5A5Lm8mN3E9Lo
	UjIBPFmlUtKsa2OG5KreSMlvb3Y/WynG32qMnqtTQbMKTI5aVG+AIW34lrTdR9c8bPsSSxv8FEDaU
	zo/8z+/Y/WlM9+3VczAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVHKt-00000005fIL-2TcJ;
	Sat, 20 Jul 2024 21:09:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVHKC-00000005f1R-2kjj;
	Sat, 20 Jul 2024 21:09:05 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sVHKB-00061D-79; Sat, 20 Jul 2024 23:09:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/8] Expand available features on Qnap TS433
Date: Sat, 20 Jul 2024 23:08:46 +0200
Message-Id: <20240720210856.778014-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240720_140904_711951_D86CA043 
X-CRM114-Status: GOOD (  10.15  )
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

Thanks to the nicely supported rk3568, the hardest part for adding things,
is to pull things from the vendor-kernel and translating them to mainline
standards.

This series allows the TS433 to use all 4 bays [0], wiggle some LEDs and
access devices connected to all 3 usb ports.


[0] I only have two drives right now, but I tested both the internal
sata connector as well as the PCIe connected sata controller.


Heiko Stuebner (8):
  arm64: dts: rockchip: add PCIe supply regulator to Qnap TS433
  arm64: dts: rockchip: enable second PCIe controller on the Qnap ts433
  arm64: dts: rockchip: enable uart0 on qnap ts433
  arm64: dts: rockchip: enable usb ports on qnap ts433
  arm64: dts: rockchip: add stdout path on Qnap TS433
  arm64: dts: rockchip: enable sata1+2 on Qnap-TS433
  arm64: dts: rockchip: add board-aliases for Qnap-TS433
  arm64: dts: rockchip: add hdd leds to Qnap-TS433

 .../boot/dts/rockchip/rk3568-qnap-ts433.dts   | 224 +++++++++++++++++-
 1 file changed, 223 insertions(+), 1 deletion(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
