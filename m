Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F7B3C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 16:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eRhUFg6AUoRJ+erXdKyGOayfHSUQbXPgq+axinSOR0w=; b=3Dj+EdF16Q2b2u
	DilCEg5gqMRuqnMOOv5tBKF80z/ZNaW1pkvwSrmwGmRLCT0FX40iV1w439pCMCAU2j1sAapoy5pqK
	jojNqDyEKN02p0dnB+C8+JKbGCtLz/zVdyb5qx2OMWzxf4JmAfmgmJVxV+BqS+WZuJpFPGg+YnhHn
	OKlTrGfwu9/7QIaR6nk2wYbGxXK3z4QCOBaipxCAWIzTxBh+YcrGMBTWm7mjakyMknVFuWIikACJD
	VVPbXQKraJIflsNnn0OvYk629LamXQbHr7kc235zTKX4wLS5DaY3hBYoJgQzBF2D1ykXiDbqTEBKO
	lWyVjZ+FyPvwiLGBqpXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PNM-00Fox2-Cp; Thu, 23 Jun 2022 16:08:12 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PNH-00Foug-8I
	for linux-rockchip@lists.infradead.org; Thu, 23 Jun 2022 16:08:08 +0000
Received: from jupiter.universe (unknown [95.33.159.255])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DE89E66017E6;
	Thu, 23 Jun 2022 17:08:05 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656000485;
	bh=3PoFyOi2PuVN5eAkHhfUKGlEfV4vRXqknVKhZCnAjEw=;
	h=From:To:Cc:Subject:Date:From;
	b=QPA4ELcpdYYx23MTDi2g6vAWdqpF8SHoQ8U9hYwtymzt3F1+9y2O/V5CNRJaAydd9
	 U/HycEVJK79Xi9PqqkkRlDmDfUsmCDZkqVC+mk9ZRN/adqtsqUNDyIeLxURGSu0s+n
	 zgnPPVmRc0fldbgAq+yjPy4m5sIOFvfGxPpRcyLgQYGX3AbQKtihPPvtQPRAiMp3aA
	 /ks74AETRVPKPsXYvhDPhz0tCYEFTi8rLTeNM4Q5nHvl6gyiq82uSOb8doJ3wXRuJL
	 C1TKh4v3lxLRZzrl/8tf3uMF3Ft82PXyKhDWvdz2hTpXP/HR1OkB6JPqt8/MitHb+q
	 VyaeJSKxR61lQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 9D2C1480122; Thu, 23 Jun 2022 18:08:03 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 0/2] RK3588 GPIO Support
Date: Thu, 23 Jun 2022 18:07:59 +0200
Message-Id: <20220623160801.240779-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_090807_466991_9D2749C9 
X-CRM114-Status: UNSURE (   7.64  )
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

This has been part of a bigger patchset adding basic rk3588 support.
Since that gets more and more out of hand, I'm now sending patches
for each subsystem as individual patchset. Previou patchet:

https://lore.kernel.org/all/20220504213251.264819-1-sebastian.reichel@collabora.com/

Changes:
 * None (except for collecting Acks)

-- Sebastian

Jianqun Xu (1):
  gpio: rockchip: add support for rk3588

Sebastian Reichel (1):
  dt-bindings: gpio: rockchip: add gpio-ranges

 Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml | 2 ++
 drivers/gpio/gpio-rockchip.c                                   | 3 ++-
 2 files changed, 4 insertions(+), 1 deletion(-)

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
