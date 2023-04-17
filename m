Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CDFDC77B76
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 21:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2rkFU/wo1MfxeG+X0rdcb0LLQaQejYLq6pbKAs4xWvo=; b=TBU6HosSH7k2cW
	jRXkwEmjlnN3Zgll4AvN0AygoX2G7RCJJ0wEIqodQne9QPjoaXWmU4IltIBy/1HzUoenZQpZEHBdz
	/59q8pFEtZaCR/EFvxeP1fg3hvRHfJ9HALhcUp3KYjwmONSgQykyfxWAHqXrGaF7Wn6yemf2jJhS+
	p9saig0awMr88U3Xu5ERoFLjwc1rFSUL+0X8UugsdJYJwVJzykmmOb+/nSOg+SEPhSPjLcsAu0nIq
	QOaRVV8tQ3vwCOrR8w/npH90qiXkd4b8676jVpKSJTIUjKCS0+QNXaovH20Gb/fubChXbUKpo14QR
	v83/r/r4i+pcKfGgEQiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poWaZ-0007Ug-0G;
	Mon, 17 Apr 2023 21:40:43 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poWaW-0007T1-0V
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Apr 2023 21:40:41 +0000
Received: from jupiter.universe (dyndsl-091-248-191-155.ewe-ip-backbone.de [91.248.191.155])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E188F6603237;
	Mon, 17 Apr 2023 22:40:38 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681767639;
	bh=Zy3MICZq0edItGGvNVv7JbY0H31jFDBsewz9BSHcSVU=;
	h=From:To:Cc:Subject:Date:From;
	b=NB2JB7f9EoGT0vbjzPHkeKdLRfrLKL+xjH6lxqHx0XLsCVAWuzoWHDI/V1GLq2dxl
	 UkHtfCrhoaPDukP54l3XfTH9uNwk4XZCXceN0ALejXwTLqjzuFQHknaXbbzlQAWQqc
	 a60pmg0Fd9/NrTJsPsd4e1cZpAEQKEUgNHLSKJdf37PDEv0yQmJvv6Ie7zUuRQixPG
	 2MBLyaFdNSfEjXugs3i0FY4b6Q/WduTJdAbxUgBd7S47i0VkSi07J+CQS6+gwss7ef
	 c05DysDbCSnBNT+sy6QS5nt+lnGVgtS/Au5/+s/Jtn4sGiuNjkxbkufci7znyhNgPK
	 Fk8cJvcWJwAKg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id F3C634807E2; Mon, 17 Apr 2023 23:40:35 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Marc Zyngier <maz@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Peng Fan <peng.fan@nxp.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Peter Geis <pgwipeout@gmail.com>,
	XiaoDong Huang <derrick.huang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v3 0/2] Add Rockchip RK3588 GIC ITS support
Date: Mon, 17 Apr 2023 23:40:33 +0200
Message-Id: <20230417214035.101190-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_144040_328056_49C9C26D 
X-CRM114-Status: UNSURE (   7.78  )
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

Hi,

This adds GIC ITS support to Rockchip RK3588, which is affected
by an integration issue effectively breaking shareability support.
PCIe2 support will follow in its own series.

Changelog:
 * Changes since PATCHv2
  - https://lore.kernel.org/lkml/20230417150038.51698-1-sebastian.reichel@collabora.com/
  - apply changes requested by Marc Zyngier
 * PATCHv1
  - https://lore.kernel.org/lkml/20230227151847.207922-1-lucas.tanure@collabora.com/
  - uses of_dma_is_coherent() instead of providing errata info from kernel
 * RFCv1
  - https://lore.kernel.org/lkml/20230310080518.78054-1-lucas.tanure@collabora.com/
  - uses 0x0201743b IIDR for quirk detection and misses errata #

Greetings,

-- Sebastian

Sebastian Reichel (2):
  irqchip/gic-v3: Add Rockchip 3588001 errata workaround
  arm64: dts: rockchip: rk3588: add GIC ITS support

 Documentation/arm64/silicon-errata.rst    |  3 ++
 arch/arm64/Kconfig                        | 10 +++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 17 +++++++++++
 drivers/irqchip/irq-gic-v3-its.c          | 35 +++++++++++++++++++++++
 4 files changed, 65 insertions(+)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
