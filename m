Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0635DC77B76
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 22:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jE6c47dzN6+ihT9idk21tE+ZZuTTEcmGHTHkEQ+3w4g=; b=YLYYRcIiWq6I5v
	+7XnPVAUTU+2HCCtGhgZ2rwIMTQbXvbhsHsZxkzxgDTW5I3YUuOrq+qAi2+mFc8CEdFEgCoUr5roc
	jnJH4wEPm8AKSE8ZQO68w6YXDGQTky3QLo2rQ0vbcRLAzqC2p0dFqkOXvMzJhD8UYPJejOQvykREV
	+78deIOJ6FYwHd+MgiKJX1RkksqTYxPRYc7lCVp8Y6CwAZv8jKi5ANL6kMTDgmy5qcIWnDI1RQzIt
	F9Xs6jMOrNtgpoLRmExJlIbJ17s/fZLeTTzcDSboxRsc2BL0YXfFgEEeGzInGNaDUsWs1WRlIKvlr
	QkoC8xHP3k/CFXUHPl6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poXZr-000JHM-23;
	Mon, 17 Apr 2023 22:44:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poXZp-000JGd-12;
	Mon, 17 Apr 2023 22:44:02 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1poXZf-0007IA-MH; Tue, 18 Apr 2023 00:43:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Martijn Braam <martijn@brixit.nl>,
	Rob Herring <robh+dt@kernel.org>,
	Caleb Connolly <kc@postmarketos.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	linux-rockchip@lists.infradead.org,
	Peter Robinson <pbrobinson@gmail.com>,
	Ondrej Jirman <megi@xff.cz>,
	linux-arm-kernel@lists.infradead.org,
	Jarrah Gosbell <kernel@undef.tools>
Cc: Heiko Stuebner <heiko@sntech.de>,
	=?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>
Subject: Re: [PATCH] arm64: dts: rk3399-pinephone-pro: Add support for volume keys
Date: Tue, 18 Apr 2023 00:43:50 +0200
Message-Id: <168177137686.3957008.3968889356953831815.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230405123813.2272919-1-pbrobinson@gmail.com>
References: <20230405123813.2272919-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_154401_360176_17E71977 
X-CRM114-Status: UNSURE (   9.51  )
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

On Wed, 5 Apr 2023 13:38:13 +0100, Peter Robinson wrote:
> From: Ondrej Jirman <megi@xff.cz>
> 
> These are implemented via regular ADC, so regular polling is needed,
> for these keys to work.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rk3399-pinephone-pro: Add support for volume keys
      commit: d3150ed535805403291b95fd84b00b0b5ef41096

With Volume Down increased to 600mV as suggested by Ondrej

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
