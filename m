Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DE4CC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Aug 2024 14:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HYj2qMG0u16DKcik1w1b9eh5RUWAhiATKoodr0QK1yg=; b=EkvjZ9X+u90gkJ
	F2HLZx4/CCM2xSp8tMcqR8fqB6QLuI/lTz6ExKbtqzQv1efQYu1w3R6m61KFF1IzR+/Y1Od5S1H7+
	B1t6YdZf1DOXAOIJATix9zU8L9i/rEsIwviCfQtDcVYk6O8PyV8KvgzyEzMZwMY+0ypLjGE88JLH+
	loF/j2LAl2eixq1q3J7C5ysjJo16CowZWf8e4H92J2Hwa0rpXCGoHfW1O4M5Uy0o6Bh0K7Clu3EWa
	mvKQfp48yk5Rfbmtw9BRbyT9aEg4KGNAwHi3MGQzTBZ/cJyGGMrQW6HxqzGh2Jzww6NmEQq/g50Z5
	l1GDTRcoX5CXmOlCO7iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sd9Fk-0000000Fe1R-1o2I;
	Sun, 11 Aug 2024 14:09:00 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sd9F8-0000000FdvW-2o4c;
	Sun, 11 Aug 2024 14:08:25 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 6724240CF8;
	Sun, 11 Aug 2024 16:08:17 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dfrF0iKQAmrr; Sun, 11 Aug 2024 16:08:16 +0200 (CEST)
From: Yao Zi <ziyao@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1723385296; bh=UNVNR/ZqPyzz34eJw5rBf+oEyAv4KDBkWcUQLDbLptw=;
	h=From:To:Cc:Subject:Date;
	b=PC7Oi5lD0TwnijadOykhVgXBuwvR6s4D3KPnmLQs6bLFUW0yvZkyxkA6u2+WYvf9w
	 g7mj1Ugs1gSj0CJNLB9tlC5f1bw4Z1dCs7dYFNsIm7QQ6ExJ8c4KsBgN8Wl2/GFR4o
	 8C3D58lvT9q2H1PoGvb0BAj+WXtYjIjEubLugmK7gry9w1Z84j9HjnasBak2gROdnc
	 xAEggK4C/OJW2l6X+KbHjxJ+Abbg8G5Hxuerdf7gXAAw/FSeb4qVs99DrkIzjDrqOQ
	 ti17eJQAtbGhEr8T7iW955lj1wLcvZ/3GXSTdk9RFo81Ql6d9QE82P2ox/+Cw3FUez
	 Vxpdlgo+ytVNA==
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Ondrej Jirman <megi@xff.cz>
Cc: Celeste Liu <CoelacanthusHex@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH v2 0/4] Add initial support for Rockchip RK3528 SoC
Date: Sun, 11 Aug 2024 14:07:21 +0000
Message-ID: <20240811140725.64866-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240811_070823_173704_9B498700 
X-CRM114-Status: GOOD (  11.41  )
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

Rockchip RK3528 is a quad-core ARM Cortex-A53 SoC designed for
multimedia application. This series add a basic device tree with CPU,
interrupts and UART nodes for it and is able to boot into a kernel with
only UART console.

Has been tested on Radxa E20C board[1] with vendor U-boot, successfully
booted into initramfs with this log[2].

[1]: https://docs.radxa.com/en/e/e20c
[2]: https://gist.github.com/ziyao233/b74523a1e3e8bf36286a572e008ca319

Changed from v1:
- fix stdout-path
- style improvements
https://lore.kernel.org/all/20240803125510.4699-2-ziyao@disroot.org/

Yao Zi (4):
  dt-bindings: serial: snps-dw-apb-uart: Document Rockchip RK3528
  dt-bindings: arm: rockchip: Add Radxa E20C board
  arm64: dts: rockchip: Add base DT for rk3528 SoC
  arm64: dts: rockchip: Add Radxa e20c board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../bindings/serial/snps-dw-apb-uart.yaml     |   1 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   |  22 +++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 182 ++++++++++++++++++
 5 files changed, 211 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528.dtsi

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
