Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C992BCD4F23
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 19:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OS0parn62LJr6ppFZIzaU/XJmJ/YAqmL7wQIFbRQNT8=; b=mIdQ0MtIqe9VXP
	uuBycxaEL+i7f35tKvD0IDQJTfAIli+KFJl7Qw7fZRjIYJRGbUjFAKquDhZQ43ZRiycN2n2BWvv8s
	V09pPh37s+2lTAy2jlDdZZOV5Ar16tWyppfb2zFAtHjkgHvTR3yA5zmJ0Ayna84EiFUo7wcTTyEUb
	TPVPsIac/iXpuInhgwxITXG3/IbmqLpe0/kGyDvwx86Lo3AQBjS7qj10mz8HTMJ0TC+54+vnDQBI+
	EbA7oyKAvjSO4IYwPIfIwrvWme2C6sCy0L2F5yGyGOmIv4xjdIFuw7kRfsYnbQwz3VUi2uCAwpZH/
	br2bmRiQj5XxnyUCn+KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slvMi-00000005kXH-0yuM;
	Wed, 04 Sep 2024 19:08:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slvLd-00000005k2V-0sKC;
	Wed, 04 Sep 2024 19:07:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NaiuGOuLjEcZvHvGqRCefrntjSu/WmLQe5fe+Gwnyc0=; b=BFrJavYxqG/Q2tQdc9VTFQA479
	glLt7MF5MHqZXSN8C4BeWwYjnsjzZg44KJ03yStUcNJ41lxxb2Oo8zal+hTw/9ViTiRtWyDmhOaeb
	4+Y+K0I2dk197KnEd+Jowcpo3lxDLC8EB4fyd/xPXX4hl3CeQnhxaCRCjOuq6tgPd9g5n/fZbmjKp
	8zLfetfYiXMfNCHKt4T5NLtYzlWml7spE999yctOT9sTYftc/N2yBsaHz7Ccwq6c0CrL+q+FRG7CA
	wCW0HF5VK3FidGNADO+ia3B0yQtMAH0VJByCN7VZjRFYNOJkUeLsejDrOPA18JNPTAOdzSxNatIMR
	FdHT7xvw==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1slvLX-0002Po-E2; Wed, 04 Sep 2024 21:07:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: broonie@kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	lgirdwood@gmail.com
Cc: marcin.juszkiewicz@linaro.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh@kernel.org,
	linux-sound@vger.kernel.org,
	conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH 0/3] Fixes for the audio setup on the rk3588-nanopc-t6
Date: Wed,  4 Sep 2024 21:06:59 +0200
Message-ID: <172547678278.2721598.1373635152279792250.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240830203819.1972536-1-heiko@sntech.de>
References: <20240830203819.1972536-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_120721_274059_CFEA1E35 
X-CRM114-Status: GOOD (  12.25  )
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

On Fri, 30 Aug 2024 22:38:16 +0200, Heiko Stuebner wrote:
> The Nanopc-T6 board does contain some devicetree errors, that came to
> light with recent changes to the board.
> 
> clock and port properties need to be part of the codec-binding like used
> on other codecs already and one property needs to be removed from the
> board.
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: rockchip: drop hp-pin-name property from audio card on nanopc-t6
      commit: 01c007567944913c29e6e19af241d0ba4e59ce24

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
