Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82F1EC25B76
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Jun 2024 14:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xx6e7IzphjyOFnXW1GWOzW6RRzOJZxT/sQAnVvjguBs=; b=CSuPYSGMRFp8on
	EhtR+ORME1UkbQ0j26GKTB/2iQkHyvWe28LRj/RgCnCuHUY8B7PeRQIOnhff55ietXwOUlsUI8gQB
	bMPf8aH1JQ6zOnCkW0oND7sx6RS2HqjXaNkJad1uYjk1XxJipQj9Id8ANgKXcWMc2AbHrKcGZTKzv
	ZnumazQLeOMT5nv4cnZ+cPCt92WwTgEhm4mcSE65KoVHkEQlL7H+uYFatwxia1Nf+N+f4S/SXVXTY
	OxfWh5ucQFsidhFvL7MACjZ5Yue2b184ECmjdW5MmBEBK9lkKXau3Sk2x1E21zMUJqQHj6KWBxqKx
	CZFJqPev2/x2cnkv7GMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFwwz-000000002JD-2xcx;
	Sat, 08 Jun 2024 14:21:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFwww-000000002Ia-0QSV;
	Sat, 08 Jun 2024 14:21:43 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sFwwq-0008KC-S9; Sat, 08 Jun 2024 16:21:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, Huang-Huang Bao <i@eh5.me>
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Huang-Huang Bao <i@eh5.me>
Subject: Re: [PATCH v2 2/4] pinctrl: rockchip: fix pinmux bits for RK3328 GPIO3-B pins
Date: Sat, 08 Jun 2024 16:21:36 +0200
Message-ID: <5752848.aeNJFYEL58@phil>
In-Reply-To: <20240606125755.53778-3-i@eh5.me>
References: <20240606125755.53778-1-i@eh5.me> <20240606125755.53778-3-i@eh5.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240608_072142_292276_727A9A35 
X-CRM114-Status: GOOD (  10.59  )
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

Am Donnerstag, 6. Juni 2024, 14:57:53 CEST schrieb Huang-Huang Bao:
> The pinmux bits for GPIO3-B1 to GPIO3-B6 pins are not explicitly
> specified in RK3328 TRM, however we can get hint from pad name and its
> correspinding IOMUX setting for pins in interface descriptions. The
> correspinding IOMIX settings for these pins can be found in the same
> row next to occurrences of following pad names in RK3328 TRM.
> 
> GPIO3-B1:  IO_TSPd5m0_CIFdata5m0_GPIO3B1vccio6
> GPIO3-B2: IO_TSPd6m0_CIFdata6m0_GPIO3B2vccio6
> GPIO3-B3: IO_TSPd7m0_CIFdata7m0_GPIO3B3vccio6
> GPIO3-B4: IO_CARDclkm0_GPIO3B4vccio6
> GPIO3-B5: IO_CARDrstm0_GPIO3B5vccio6
> GPIO3-B6: IO_CARDdetm0_GPIO3B6vccio6
> 
> Add pinmux data to rk3328_mux_recalced_data as mux register offset for
> these pins does not follow rockchip convention.
> 
> Signed-off-by: Huang-Huang Bao <i@eh5.me>

with my question about sourcing those information resolved.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
