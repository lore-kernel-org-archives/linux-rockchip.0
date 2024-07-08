Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 739A2C3271E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 22:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ob/roC0xdm7CJCYIBMi0CyhNKOKjxQsbUge5PwtGEhU=; b=MOdwcRnpme4JIi
	QhNBQMPV7xluvIhgfzqmuZsFLUO64rHQsWGqORPUXn3R5rElTNmb5AZxk+eHrYcKPfvbq/TtZiVRM
	RpkTmb3DdMQ9APQLIf9Pz7bvsHtTVh9D27NgcNBT5GcKuJN0loQAjw4kMpTkD353LIGM4YWuFScme
	Qauw0cF/cB2En+R0XxxFjT4LUspu34l1heTJ2SxgCH0wmYrZq9DdbrXC19/pfcEvUgsr9tDeUcVO+
	zQsM6Swl7NyJ+xUquGyw/f+KtfZzlbwatrpoA4f1+tLub6SMXlZmcNLkNachPJbeQ7WKl6eEsVFdg
	Aam+/JZassr6XMwTKcXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQwqI-00000005Dek-0Sdz;
	Mon, 08 Jul 2024 22:28:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQwpq-00000005DQn-2VXB;
	Mon, 08 Jul 2024 22:27:51 +0000
Received: from i5e8616d7.versanet.de ([94.134.22.215] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sQwpj-0006Hg-KE; Tue, 09 Jul 2024 00:27:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/2] arm64: dts: rockchip: Add Radxa ROCK 3B
Date: Tue,  9 Jul 2024 00:27:41 +0200
Message-Id: <172047765645.1423318.7033657572852954750.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240627211737.1985549-1-jonas@kwiboo.se>
References: <20240627211737.1985549-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_152750_657362_3B8C200B 
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

On Thu, 27 Jun 2024 21:17:29 +0000, Jonas Karlman wrote:
> This series adds initial support for the Radxa ROCK 3B board.
> 
> The Radxa ROCK 3B is a single-board computer based on the Pico-ITX form
> factor (100mm x 75mm). Two versions of the ROCK 3B exists, a community
> version based on the RK3568 SoC and an industrial version based on the
> RK3568J SoC.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Radxa ROCK 3B
      commit: 056abbd100ce9ce6dae3e5e64ffee92b56439c0c
[2/2] arm64: dts: rockchip: Add Radxa ROCK 3B
      commit: 846ef7748fa9124c8eea76e2d5e833fa69b3ef7c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
