Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44AE1C2A062
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jan 2026 19:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4vfboymtl5bjPfh6kwQi0rV0h2525x39fT+z+ExfDso=; b=pX9RvS53oVa9TK
	5jhBQO6mDkIJDJz6lweFCC6QFjDIzjphvSwfhFtSKa+8bRuBbeAG23TbZ+OzeRsXSRj3Z7ZSVA/sM
	LBJZuXNmHoMxIIsRHOfPj3QzQZZtLeOcSvGWrpfT0yUzvQxNfmViGUhPiUdK5ZqerMeikZb+cAWHm
	eFfmzVm/i95OKW8Cej73YYvy/+F2W5yQwyA6dMWkpNaVkt5mdCSVQwYbqo+STFQEWisJ9u4Tb0BrG
	FPdvD3HSHjuMubuTc0n4Gy5Rh5voGmAGgeqjNFiQlFvtI+vHrcyJ5MhJ23SVdVMvMQYwh9jX5Y1SX
	fx4rM4kqdApoXoSt4i5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcTZN-0000000AOnQ-1QsG;
	Sun, 04 Jan 2026 19:15:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcTZJ-0000000AOk5-001M;
	Sun, 04 Jan 2026 19:15:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=7ZAirxahpgyv2z35ClKFg4ev2ynFZjLlATTEemx6ato=; b=EsiJ7jJ/tuLDK01ZIsxeQ5cnsK
	Y6EEPxutmQ9g7Rtnrc12qw6o9aqlnhbu++6BuSeKPFJbbcLYaG7ngIP0uBaaTkarMmsIJ4BUxPIek
	gIZdounEOlpZTS+TL7IDNCWSfGF5rOys7dVhhQtIzCXOqMIvg8FeY7Evt3iy2L9o62lHxczuRoY3X
	rS2kkpzef+301nIIJaritT4FOuvP3613TlVnJlMlQZ+GGIAj/kfsJhiIQEZ9wbZ35xhRQOeNPhwjq
	6n22EtS2QAED37EwR4Zph9nhXUZWKDH1F7siXFSuhDEjMumjAAOcRcCwO4IOUO906t4UOEWoFoPHx
	6xABJIOA==;
Received: from i53875ac4.versanet.de ([83.135.90.196] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vcTZ9-0012Mf-Iq; Sun, 04 Jan 2026 20:15:04 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	uwe@kleine-koenig.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] Support for QNAP TS133 variant
Date: Sun,  4 Jan 2026 20:14:43 +0100
Message-ID: <20260104191448.2693309-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260104_111513_047440_A589990E 
X-CRM114-Status: GOOD (  14.52  )
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

This adds support for the TS133 variant of the NAS series.

It turns out this variant is build around the RK3566 instead of RK3568
as all the other are. This is "fixable" by not including the
soc dtsi in the board files and not in the shared tsx33 dtsi.

While adding the devicetree I also realized that some things are
wrong in the common dtsi:
- the shared sata controller for all variants is sata2
- the TS133 does not have a "copy-key"


The specific mcu-compatible of course needs the mfd series from [0]
to be merged first.

[0] https://lore.kernel.org/linux-devicetree/20260104173310.2685852-1-heiko@sntech.de/


Heiko Stuebner (5):
  arm64: dts: rockchip: Move SoC include to individual QNAP TSx33 boards
  arm64: dts: rockchip: Fix the common combophy + SATA on QNAP TSx33
    devices
  arm64: dts: rockchip: Move copy-key to TSx33 board files
  dt-bindings: arm: rockchip: add TS133 to RK356x-based QNAP NAS devices
  arm64: dts: rockchip: Add TS133 variant of the QNAP NAS series

 .../devicetree/bindings/arm/rockchip.yaml     | 14 ++--
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3566-qnap-ts133.dts   | 71 +++++++++++++++++++
 .../boot/dts/rockchip/rk3568-qnap-ts233.dts   | 18 ++++-
 .../boot/dts/rockchip/rk3568-qnap-ts433.dts   | 18 ++++-
 .../boot/dts/rockchip/rk3568-qnap-tsx33.dtsi  | 21 ++----
 6 files changed, 118 insertions(+), 25 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-qnap-ts133.dts

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
