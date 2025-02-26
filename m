Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3348DC19F2E
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 19:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhCrGiRgqpQsKlozHCDj5JyLRhuHX5D4MWYnY1E1V+g=; b=LB+p1/3LTZ1+Hv
	D3I70E3ohtnnOqJQrptzqkKAuBFmyh3CPR1vhAVqRiAQI9yoQwCFgwdicwT9IB5cpzfe8irJEngAS
	A6kOe3WKXkUuUMkqVjOPYe6exrwgWmFHliy3oOOZPngukhkmg6HXbso0lOzfzvDphWjaV69Sr0S/E
	+Q1r2J5qu3b736MX0ItyZusrc+Sb11GH4amF+UohfRpFBI4wepdbdIo1fug5sdaWdRNULdyBiT0lb
	HxU4SD2JfWcJJ9CNOLeC2LEU9oaIhNw45pXYDJjFkQ16NAhsRC0lMfOFBiKaNhF2OUNSkJi9BMamK
	TT0IQxZ1oC3xREa8X/BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnNSS-00000005DVJ-0mJ1;
	Wed, 26 Feb 2025 19:52:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnNPn-00000005D6e-3Yp5;
	Wed, 26 Feb 2025 19:49:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=faGGqfXQbOiJ+9VytmDh1BHEK7Aeu0aHAnqiXKSPnZU=; b=A779wLZyYQY2f+RtjvixBeiva2
	o46CY6HrYmI66hHc+uKJZYwu/ISBz5MLGEKWgAocrQIAzOckCcGI+XCsinPF78Bm4UCjG59IvmQPa
	MbYcssrk+GHDBrFXUlyGdSCOwsu/jKhXutCNAzBZIE6wUuOhUSzHcdHfsQ21bQW6+W/WDyPEl/+nf
	VCwNpuhg6s8riPCnGzdt428Dn6owWifW8vLi5pAG5qXFG4AVJNIJg425ye7Aj2DqlIswMLBHS/NOm
	3kiQfQ9KbrfnG4CVqnMkrIVqD/6I1xwrYjWr2wNIFXzCiWqBPm2MVIy5n5DjQhPGPRwUld/WkdutA
	2GqBnwFA==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tnNPL-0002zz-Im; Wed, 26 Feb 2025 20:49:27 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>
Subject: Re: (subset) [RFC PATCH v1 0/6] rockchip: add a functional usb3 phy driver for rk3328
Date: Wed, 26 Feb 2025 20:49:14 +0100
Message-ID: <174059933844.4008853.12666956119860907768.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250115012628.1035928-1-pgwipeout@gmail.com>
References: <20250115012628.1035928-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_114955_884525_43B56C71 
X-CRM114-Status: GOOD (  11.60  )
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
Cc: Algea Cao <algea.cao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Michael Turquette <mturquette@baylibre.com>, kever.yang@rock-chips.com, linux-phy@lists.infradead.org, zyw@rock-chips.com, Dragan Simic <dsimic@manjaro.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, Arnd Bergmann <arnd@arndb.de>, Jonas Karlman <jonas@kwiboo.se>, frank.wang@rock-chips.com, Elaine Zhang <zhangqing@rock-chips.com>, Alex Bee <knaerzche@gmail.com>, william.wu@rock-chips.com, Zhang Yubing <yubing.zhang@rock-chips.com>, wulf@rock-chips.com, Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org, Trevor Woerner <twoerner@gmail.com>, Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, FUKAUMI Naoki <naoki@radxa.com>, Philipp Zabel <p.zabel@pengutronix.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Wed, 15 Jan 2025 01:26:21 +0000, Peter Geis wrote:
> This is my newly reworked phy driver for the rk3328 usb3 phy. It is
> based loosely on my original version, but as of now almost nothing of
> the original driver remains. The main fix here is the discovery of
> BIT(6) in the interrupt enable grf register fixes the usb3 disconnection
> detection (mostly). On occasion an unpopulated usb3 hub will take
> several seconds to disconnect. However this means all of the hack around
> work to reset the usb core manually is no longer required.
> 
> [...]

Applied, thanks!

[1/6] clk: rockchip: fix wrong clk_ref_usb3otg parent for rk3328
      commit: a9e60f1ffe1ca57d6af6a2573e2f950e76efbf5b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
