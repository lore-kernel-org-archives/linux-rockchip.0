Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B363E8FDC3
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Oct 2023 09:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JAaA2s9Q/sgFuHubaBeuECe7RHU+o7chc+ObVffdcjc=; b=qwNks3xN/BdeNe
	P2LRO9OLkepp/Gu/IUU1g7QgcAHR0IZfLKiCeqClb77v+E1XWfCCIOBUVEnS0yr3zg5pCHmh6hmTy
	nIA6+AXTU6z/E2N8rz0HE9qffLUW2HF+g8pAONiNRFrymWC6x8eQzjMqxQYU/jKcTC3taaTzc3GE1
	n50YB68Ux9DAlUN+bbQfTWGTiuLrDvRTD6+g2govjv6d3PBovJog2DNgZeC0ZWc68W9qsDY6FdvW3
	uGc8nriO+Lrmp4IdyjFMjy/SuBRvWMHGQHu2ZV72VVBaqi/ND5t3uz+ZyNQfhfodYV01gDUmJFdh7
	ZzTD+7YvhU4rOe3mL3+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoL80-001q8f-1H;
	Thu, 05 Oct 2023 09:58:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoL7u-001q8A-2Z
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Oct 2023 09:58:42 +0000
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qoL7r-00049u-Vt; Thu, 05 Oct 2023 11:58:36 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Andy Shevchenko <andy@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 11/36] gpio: rockchip: use new pinctrl GPIO helpers
Date: Thu, 05 Oct 2023 11:58:35 +0200
Message-ID: <2937425.VdNmn5OnKV@diego>
In-Reply-To: <20231003145114.21637-12-brgl@bgdev.pl>
References: <20231003145114.21637-1-brgl@bgdev.pl>
 <20231003145114.21637-12-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_025838_902388_1491715B 
X-CRM114-Status: UNSURE (   8.91  )
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

Am Dienstag, 3. Oktober 2023, 16:50:49 CEST schrieb Bartosz Golaszewski:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Replace the pinctrl helpers taking the global GPIO number as argument
> with the improved variants that instead take a pointer to the GPIO chip
> and the controller-relative offset.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Acked-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
