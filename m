Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CD7CC52D7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 07:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+lGgpVyPBBh260K2BnIlzy+cCMIkmbPvgp8PN3zaH2E=; b=Qd3Qv9/h9XB+dP
	5ZhASdVEEEaNJBnuPRYAKaWaaHlqcQX47razG/sM3ii0T0oQW/3XgabPCqfDpxDuYVk27QQ4dx3yf
	h00WJXScqIYBGTteCPXoosh3CnAcBvjxqJtPWm6rnjRgQikwsqS/ZeZt07NN8yJ8uK6qYhb+hg+Nk
	M8d46ksMGFBOQio27vFgyl/QDpFM2bzgmmkxssuYzU6WEChgWVVbJDyZ3n/ax+8jP/w7L5ff82fdB
	yz3Cm9P/yqYdcePmdUXEWixSB6sRo6uuxaNOGiXpmulwPkIKAAU+249y0fP0qkKs553P/haQkHsZW
	DU8oI4gaCwYgBD9tKRFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgfwK-00000007weF-3lI1;
	Wed, 21 Aug 2024 07:39:32 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgfuw-00000007wQi-17Lt;
	Wed, 21 Aug 2024 07:38:08 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724225882;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QRzBb+guxB9XMhkJIfvjYWWTeQw1F4QkWpzvZuQPj7g=;
	b=lApmBPWwevQr3QpBhIXLHUfbQ67JF8AsLszdll8Oi6lZJ0Qnhx2y2tHwmuZ5ZVFtgWq4nY
	hbZKI7raryz95qdJSzCNtVAsI/ZJra0mpt9PpFEiwC6Vf6G26I91A75DnRaGomC/zlMp2F
	gf2M7XW8tSVd2UjXPkieIbi/GmmY4SBP3qn3ZHwYeEvFmYecYcj0/qA+yPKPruNS/sJMVa
	T6MK/tB0DErb8mJHLXgja2UY3A0CmDMk9qTo0QqN4xs87CnO+Qqyd0lmv5NcstdYbrIvSr
	3agqyD2cYnADzqPyKrUQ0FgkO5+OXXXGNssliUcQf3RB4j4R97NV0KCfqg7nxw==
To: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] Improve error handling in Rockchip Inno USB 2.0 PHY driver
Date: Wed, 21 Aug 2024 09:37:52 +0200
Message-Id: <cover.1724225528.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_003806_620395_34C27078 
X-CRM114-Status: UNSURE (   7.52  )
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

This is a small series that improves error handling in the probe path
of the Rockchip Innosilicon USB 2.0 PHY driver, by returning the actual
error code in one place and by using dev_err_probe() properly in multiple
places.  It also performs a bunch of small, rather trivial code cleanups,
to make the code neater and a bit easier to read.

Changes in v2:
  - Expanded into a small series, after a suggestion from Heiko [1] to
    use dev_err_probe(), because it all happens in the probe path

Link to v1: https://lore.kernel.org/linux-phy/5fa7796d71e2f46344e972bc98a54539f55b6109.1723551599.git.dsimic@manjaro.org/T/#u

[1] https://lore.kernel.org/linux-phy/4927264.xgNZFEDtJV@diego/

Dragan Simic (3):
  phy: phy-rockchip-inno-usb2: Perform trivial code cleanups
  phy: phy-rockchip-inno-usb2: Handle failed extcon allocation better
  phy: phy-rockchip-inno-usb2: Improve error handling while probing

 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 63 ++++++++-----------
 1 file changed, 25 insertions(+), 38 deletions(-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
