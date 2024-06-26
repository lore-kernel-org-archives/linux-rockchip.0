Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29B94C27C4F
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 20:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DGjR7F+iuybz3XsUgxf46D043QgsPXFtdCBlAHYEt+g=; b=18BOr6OjefkrZ+
	asMwKRw8bPg2laZ5tp2TLsvd3yun1hUPuMomFpQTBTXxj38D5T1So+IwcqtYKfQ4WLtmb/4xOLX+d
	gBdo3lWu6PmOA/2vAU8W9MQ7rUzVpadaby+sAM3Ekvqqagsl8hmxad+V/oaq6RWyf9kcCswocr2C0
	mg23FRdjM9f4H3ZdNwQGHyD+PDzYHlKhHZ4g87ot0IW7UvFsk+N7qWj8msjYAO815bER+6uEmpyBz
	jKk+8huLGKtzzKIh3+pjTpOsaGkPQ/XMY1UI0GFvVk1vRWLd2DDGhr2lXfEUDy3ymVg3slPDKegjl
	j2fkXWNULDK0VpZ4Sh7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMZ4Y-00000008B1F-2jwK;
	Wed, 26 Jun 2024 20:16:54 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMZ4M-00000008Axb-3XvC
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Jun 2024 20:16:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1719432984;
 bh=gisa5XIJQgj4fIi9thWyQwlkICVF+Giwy1GfZU8KFFs=;
 b=iSaWmHtv5d+YZb4ZcN1YPw4d/f/p6mTfFzqyflHBaeMyIg2pGirlt5CrYmIPF1G8MQhsEIUb1
 3f8zxsw0eFZPr8W+sfL9yPEh9OOlCbpTvI/9vJEx8bhUtcnCijfvf9VBPQ7fG8BQ6r16VoazRjA
 xllg8PDE8h7Pk2DzAfAi+Bv+RSrL6M7ViPg+IjiYCrKk/9Wfw7nXo0IWixlxRgjH74Yrvg2JlpA
 2pIKgwu6PxqV11XX3Qec0LC2ABN5iZOFt3HnUmGTPbHx3B/hcl09O7IPgv24U8V0npMqzDfYBwt
 NQxYDV95Y1tI/BXkYNcuk1PKlTJqd4CaetBeBecVDV8Q==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/2] arm64: dts: rockchip: Add Radxa ROCK 3B
Date: Wed, 26 Jun 2024 20:14:53 +0000
Message-ID: <20240626201502.1384123-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 667c7716c7901497dbde75c2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_131643_253639_D4EED82E 
X-CRM114-Status: UNSURE (   8.07  )
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

This series adds initial support for the Radxa ROCK 3B board.

The Radxa ROCK 3B is a single-board computer based on the Pico-ITX form
factor (100mm x 75mm). Two versions of the ROCK 3B exists, a community
version based on the RK3568 SoC and an industrial version based on the
RK3568J SoC.

Schematic for ROCK 3B can be found at:
https://dl.radxa.com/rock3/docs/hw/3b/Radxa_ROCK_3B_V1.51_SCH.pdf

Changes in v2:
- Drop rk809 dt-bindings patches, replaced by series at [1]
- Use regulator-.* nodename for fixed regulators
- Drop rockchip,mic-in-differential prop
- Shorten Ethernet phy reset-deassert-us to 50 ms
- Fix pcie pinctrl
- Add keep-power-in-suspend to sdmmc2
- Collect a-b tag

[1] https://lore.kernel.org/all/20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com/

Jonas Karlman (2):
  dt-bindings: arm: rockchip: Add Radxa ROCK 3B
  arm64: dts: rockchip: Add Radxa ROCK 3B

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-rock-3b.dts      | 780 ++++++++++++++++++
 3 files changed, 786 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
