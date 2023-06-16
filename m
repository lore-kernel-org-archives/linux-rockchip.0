Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41AF1EB64D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 21:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FN33bYtmdVlxHtSUK5XQ/H+JiqkMNYL/Hklzp2iv0No=; b=QXDcphpRcdeKvC
	mJxPZ9Q+xI/Mj8msL+ImmXEd+KrefNFk/ihf2hACU+/VWuFBzDdQauB9pjpjxl/gpaYVufX72fbZw
	Afec9Ykf4//HavUgFsSPfk5IrUB+ekMjNxlK2TgP561sfYsX5Lic+cibdBB6JVcQefe1Tt/lDlx9L
	Bx7h316Mw/6spDWxyiFcoPb7PUGPi9PoYpDR/n/MWLjNsiP200iMmqm+OSMq7uL+IeOQDgoSFG3bM
	dQJJpMoJ7umOi7YHUaxDn5dUmcohN7FZgCCbkr1gnixtaecAzRa89bY9frp8WjtuwAu55Z2ZYSM/z
	lHN5vqnUjbuaJoFOyVvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAGiY-001s6W-2Y;
	Fri, 16 Jun 2023 21:10:50 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAGiU-001s5e-35;
	Fri, 16 Jun 2023 21:10:48 +0000
From: Furkan Kardame <f.kardame@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1686949841;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=JdxjyzA67lWb7maxLfNvNw/UmIDnBYJDt9QpevBMwuw=;
	b=rsnLYooEO6tbFC5VaNAnrx/Vhg+uxi/PdN2tW33y+3sSLbHAkpUTDOO0373WpNGyG5bXKa
	OFKkTOeGSSfgBZFzRcq+ajg2GwzqzJ1YTl0luHBt6JhLB+VeperXGN6gsGdjimQWRnpMmL
	9THA2C1psW5urDvI0JwdUgMnf6GOEZdIJYLy+y3CR1KYbbO3LU3I980IRxQglihhj8o1aQ
	pnlFxLr8d9LUz9qjs4NLen1fSQK3A2Fm9PkiPWPMoL+IAr7QKeVhsWxITI7PHk/CoRSxnc
	BzUpK7gZAOC63Cu3+TXLAXiJGlPXWceUSq4wJ4VL7JJV8PJ0hbkZwOz10X97uw==
To: pgwipeout@gmail.com
Cc: heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Furkan Kardame <f.kardame@manjaro.org>
Subject: [PATCH 0/2] Add support for Firefly Station P2 aka rk3568-roc-pc
Date: Sat, 17 Jun 2023 00:10:18 +0300
Message-Id: <20230616211020.55755-1-f.kardame@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_141047_484139_C51560C7 
X-CRM114-Status: UNSURE (   6.82  )
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

Patch 1 adds the requisite dt-binding.
Patch 2 adds Firefly Station P2 device tree

This does give a warning though, not sure how to resolve it.

Please review and apply at your convenience.

Furkan Kardame

Furkan Kardame (2):
  dt-bindings: arm: rockchip: Add Firefly Station P2
  arm64: dts: rockchip: add dts for Firefly Station P2 aka rk3568-roc-pc

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../arm64/boot/dts/rockchip/rk3568-roc-pc.dts | 689 ++++++++++++++++++
 3 files changed, 695 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
