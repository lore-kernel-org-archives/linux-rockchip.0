Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B103C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Aug 2024 12:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ezWyMtyweEZlF8hzP2DA3NCMIqdKKo5M3VbGQNLKwc4=; b=jOrw49kLkw3qe0
	xn4W0iO1/rIAcn/It89dIsNzy3KjIuujVk+SL0FqN2MUxmXImRn2byXmZ0q5MTjfTIfpoalmqNSfe
	KI8b+O4aZ73nEIsoSviz+1zTyCuCSDZgvtTXyiu9wNrNYAiYJDSChKuEXsnnQ4qfBZ6edN6cYQfOj
	W+/UKWgoWohPxyI+AVaAbtmIC6YUoTk/O/AllnetAKOWxZ+urnfIAxJxScJumQJNUWf8Az5GiNXX5
	xJsjj1pPQsmrHy8VNAvZBDeXoced/MxUATr3BdLegFBoen3oIA0v2yi0N+bUKYoKq6+hdjlsTtm+e
	OrTHyttq6KG5CSkve4Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saEJc-0000000BQlg-0mTO;
	Sat, 03 Aug 2024 12:56:56 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saEJ4-0000000BQcW-0tbb;
	Sat, 03 Aug 2024 12:56:24 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 64E6440FB8;
	Sat,  3 Aug 2024 14:56:16 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LHZTQguMCRpp; Sat,  3 Aug 2024 14:56:15 +0200 (CEST)
From: Yao Zi <ziyao@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1722689775; bh=XUdycKTMsv2E+8uiwBLcx3vvlfuC0EfEfFUu8fsc0qc=;
	h=From:To:Cc:Subject:Date;
	b=BVlIp2J8Sotye/3zXBAv47A5xoMBCOYr43urZqm4jiM918NSw325d0y/9f5ZJiVyA
	 gqCpo1LsM0M0DMID1EtJZt6wcdpzi6w0jP7JJe2fpwdnlL3Euc7EcTyolCwPB+lRf3
	 IJz3p2oVKav7c8DcbKtzuWOJgZISFAxUoNOrSHH2iv4PgElJbcCC6/UwM4ZghOj2Ir
	 vIS4YPvjdHu8RQwm2AA4e9IyG0IKw69XMWwH9avBjHk19fdGUGrFZYE4Wllg/Z4kNn
	 1W86Kk76SS8ed4zsoI0SZ4aw4piIxu/qa5KfKPNl2kyaAOp+36nCT4iQSZNPzlONyW
	 +Fzdf2O0pznDQ==
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
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH 0/4] Add initial support for Rockchip RK3528 SoC
Date: Sat,  3 Aug 2024 12:55:07 +0000
Message-ID: <20240803125510.4699-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240803_055622_689347_803D016E 
X-CRM114-Status: GOOD (  11.02  )
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


base-commit: 94ede2a3e9135764736221c080ac7c0ad993dc2d
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
