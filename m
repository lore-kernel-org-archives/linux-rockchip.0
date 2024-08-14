Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2EBEC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 15:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oEe5a3rMj/H1VmzX10EKLQ1XosD3nLM7LH0tw6u5abA=; b=MO1/xvQ8d/Gb6n
	51E9FYuv5aQj6cfUAKTBj16uOu2ZVWLBWEie8U7hGJjSRpgTVyEq85KWte8ak5PrtGnFkBB/Gcs7m
	G9rWeftfqn9I1AhuronUagGUo9nH58k3vHyQaB75W7zvnV2Bseuq0dIsYimVywVlgds04kaMbmLq+
	M03GNOS0q5XpMK88zPK3wb6oy0bsNsj8awcpL2z6efQSeV6TlEQuL/Fy6RiNNizXIvhSBweLjcJY+
	2BWvSeioBbGT9dv/Rfk/64cGmUw3chlbfZ+H5zZruBvInhKMDE2B8tD/JfbbSJbaTg2n0Gdydlnoz
	8KU3Sva1wt266g78Ws2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seGJY-00000007YEM-3Qzu;
	Wed, 14 Aug 2024 15:53:32 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seGIt-00000007Y2f-3Dww;
	Wed, 14 Aug 2024 15:52:53 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 8FD7A41ABE;
	Wed, 14 Aug 2024 17:52:46 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WLbjJhDSXSZ9; Wed, 14 Aug 2024 17:52:45 +0200 (CEST)
From: Yao Zi <ziyao@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1723650765; bh=1qewHqlWASIAhVOdfGLDw/liKY4yxKBTes4LCOBtdAw=;
	h=From:To:Cc:Subject:Date;
	b=OJAMElNXqVlglRAYXLuq0LVQdY6/GlLJY/w3rMG9FTqNoHZCcuJkXuQEAwRMn2913
	 cmci5SF/O25pSe6TByle42/sYeLD7lQidNBvp6Oum0JgOnyvNxC2Z+5nXw/BnK0aqR
	 imn5JouvITG8x6EqrVcmAtFVyKCbvnhp86z+7qpxCOrLklSVXZbap9TNSzkKhucVMR
	 lN/9zZPCUbdDenw47wodAG13Y8MXeVzzHnSjvs5Pq1AaQeIBfvEX/GPvad2X0gTekm
	 2CXozr8QPDPH/hOiEjqPNasQyttAT+HBVSMZtl8C4gMb6N0/k2Wp49tyu+WmGh+guL
	 no/uUklLRfXnw==
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
Subject: [PATCH v3 0/4] Add initial support for Rockchip RK3528 SoC
Date: Wed, 14 Aug 2024 15:50:10 +0000
Message-ID: <20240814155014.18097-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_085252_244944_5D3014B0 
X-CRM114-Status: GOOD (  11.34  )
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
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   |  22 +++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 182 ++++++++++++++++++
 5 files changed, 211 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528.dtsi

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
