Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54F71C71135
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 09:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DFn8oWuuVGyRUcIoDjpHK3tkinXIlkE7X6HnowLOr+w=; b=Ka5vyzNuh11Gm9
	W0q+Ilg65yVtZAFeSU+HNpOXGvRbqsUT4XNoFH/gt5GXPlEiKhmt5mopa/J8fO2khncj1omGGLAj7
	r1bn1w0aZ95akfuBZo9FizDMg41DP/Qlreu9hg84IPJJHg3pOz02Aht6SozHINi9O1K/Iy58b8BDZ
	ce/LTagLlMFb3geYN2/gM25/vsLFqOfGfDhU8f6XqNNzeCU1i+V0riyMQiHgQtqbWFILYYlcKFImS
	4sOCU1LSNF1ea7NaMx/+zspEScNqBe3GZ33aMj/87Ffyw49BHb5ZoNVWh58T12imlZxwF5afBjfzF
	LAFJHmtIaM89BEeisAjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjbcY-00000001OiZ-3h2D;
	Thu, 29 Aug 2024 09:39:14 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjbRg-00000001ME2-3PNF;
	Thu, 29 Aug 2024 09:28:02 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 6A1724157B;
	Thu, 29 Aug 2024 11:27:55 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BgBux_5UOXgm; Thu, 29 Aug 2024 11:27:54 +0200 (CEST)
From: Yao Zi <ziyao@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1724923674; bh=H9lfUPv3T1mST3tzbqShCdPOuFcAKP3xRCkh/nwpKwM=;
	h=From:To:Cc:Subject:Date;
	b=Jq2XZ2WvwoOnB6Q/RKRhl9eBW6tXwK6poVcZiFavSh9HX2vyeZhJCqp0V12JOgMEp
	 Y9XDP4ECZvXkBPjktrReKakwSa30mOpNX6TVBYsPbMPqFwSdl0tJf8PVjE/cMGFun1
	 VfsEQATb/r/EDTUyFZiYfyZiH8Uf60RgzW+P4AlJP//1gbhh6OW0hlW7+0uON+nyLt
	 9HmOsGKWzpFWa4bHHQZ23F92rpFG8HoI8Zh4kDJgBHxPw+kBjbZnzBLz2/7C3jZrhG
	 IiUsd4HImvLCEYXDWtr+8AtB4rIZ2OSjAZXqWICiyIfnXvoS8kop/FZHsIrWs5zzbf
	 UeMHGrvhitAUQ==
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
	Ondrej Jirman <megi@xff.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Cc: Celeste Liu <CoelacanthusHex@gmail.com>,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH v4 0/4] Add initial support for Rockchip RK3528 SoC
Date: Thu, 29 Aug 2024 09:27:01 +0000
Message-ID: <20240829092705.6241-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_022801_296569_313A4A4B 
X-CRM114-Status: GOOD (  11.43  )
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

Changed from v3:
- move mmio devices into soc node
https://lore.kernel.org/all/20240814155014.18097-1-ziyao@disroot.org/

Changed from v2:
- fix fixed-clock nodename
https://lore.kernel.org/all/20240811140725.64866-1-ziyao@disroot.org/

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
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   |  22 ++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 189 ++++++++++++++++++
 5 files changed, 218 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528.dtsi

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
