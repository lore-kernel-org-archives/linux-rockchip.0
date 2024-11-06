Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 886F6D44D59
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Nov 2024 13:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=quKU2ieSb6uI1nVhRr16GtvjL/e0P2Xe3R5MeI10svA=; b=0TuJldyI1DN0u4
	LdHmEW7UMdlJghXCsEBIJTWAyKyRki9U3lc/FUYCxI9yvRHZRM7OKsjw/W278HbOdCyrxSzxWXytq
	mvn0RH84jMWY7ODmznxfl33jxDHlpd86rO6HtCjTfwzpH7uHhKzFIzyeAl679qtIF0U5tRaT7zmJK
	iA+MnlVg4gBaVXmefvolc0N8BYbeRreUCFt+eFONUpQzowUbMOJRaMCN3xkvEfQ1hu55eAl8R5bxC
	9Qze/uIqw7+JrZFVXyfjKQyByLJej51cUKvoOZg7ZjNWN5MTIbUpaHUCWR3XVM81Ka5o0qs7mjBw3
	3xjVMhitFlJwHD4zXMZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8fuK-00000003NXN-1mQ7;
	Wed, 06 Nov 2024 13:17:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8fIX-00000003F80-05GP;
	Wed, 06 Nov 2024 12:38:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Ta5KNS21UEn6OXLlp807nLSpRRb7UzRnrUsb9sZkcIs=; b=GMXE5ianbRdR/UjEa6+5nNK/8X
	DmuFbVFNKg0C29lqCkZwI6X0pXfhZ8jqcJPmaKgF5Sm9K6aoBaJdbkF9m5b00hhUlgBleaSIwFGvq
	XXmBDEkM1vursvBqLN3SvOKu11KOY9tBu4tFkXYrSLDqUEDD20joQYNAvJkXaP98XMAKJAtOzBAmY
	++0J5y/cBmBY8mW64OYszATX0FgnUsvvG249uG9Rh070tOJDheXyMrizJ1dq89+/m/Hn10nR5iy/N
	ajnDT1lkTFmPaVdpvbhA/AMgS5d0GsYqYK5aQHrengHvqnoPNHFvgsUKw8IqVr515zFaemesZUJkg
	XjCYtdPw==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t8fIV-0007A8-HI; Wed, 06 Nov 2024 13:38:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@cherry.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] arm64: dts: rockchip: add and enable DSI2 on rk3588
Date: Wed,  6 Nov 2024 13:37:55 +0100
Message-ID: <20241106123758.423584-1-heiko@sntech.de>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_043809_255539_3F3D5F5E 
X-CRM114-Status: GOOD (  10.60  )
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

This adds the dcphy and dsi2 controller nodes and adds an overlay
for the Tiger-Haikou Video-Demo adapter that provides a DSI display.

Heiko Stuebner (3):
  arm64: dts: rockchip: add mipi dcphy nodes to rk3588
  arm64: dts: rockchip: add dsi controller nodes on rk3588
  arm64: dts: rockchip: add overlay for tiger-haikou video-demo adapter

 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  98 +++++++++++
 .../rk3588-tiger-haikou-video-demo.dtso       | 153 ++++++++++++++++++
 3 files changed, 252 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou-video-demo.dtso

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
