Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 057B2C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 16:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A3kpfBv1Cz4dEfxR8gdk1Jhyz+wMDd6gMHCPGv44TqE=; b=AoO5IJ1XSGmEDO
	KUwCDLEne+p/0tqW/SAO/z57OslwHTg4QVECf8ADo678Mu2j5fTYDRh7XylaTaLNchPUAxM43TrE/
	xA3fT0hRrAlvw92iv4dbArZqxC1i/JpvG5b9aMGIMX0V9/Iqojf+uz+Oq0XYDfCPZFDGuHqsZhDEZ
	HiLIxGX/MUug9KNY5FC4HEZRmKeFn5eS42Aw9YTAloFuyTUdrN22JDOjj4OWCItrSMbZ9Q07CJeAH
	WbsIi9mEXqdqk7oLdWDLt683y2+6UiD8vNlaFB1b18SW032V/O79StLbYJG6GXO2Mnl2fzC4/cE5b
	j2DD9rTReeo3hsJN1NPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4mGo-0031ZS-82; Fri, 24 Jun 2022 16:34:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4mGl-0031YU-OL
	for linux-rockchip@lists.infradead.org; Fri, 24 Jun 2022 16:34:56 +0000
Received: from p508fdadf.dip0.t-ipconnect.de ([80.143.218.223] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o4mGk-00027S-7X; Fri, 24 Jun 2022 18:34:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: gpio: rockchip: add gpio-ranges
Date: Fri, 24 Jun 2022 18:34:53 +0200
Message-ID: <9957098.lvqk35OSZv@phil>
In-Reply-To: <20220623160801.240779-2-sebastian.reichel@collabora.com>
References: <20220623160801.240779-1-sebastian.reichel@collabora.com> <20220623160801.240779-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_093455_835433_FED1C8CB 
X-CRM114-Status: UNSURE (   9.35  )
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

Am Donnerstag, 23. Juni 2022, 18:08:00 CEST schrieb Sebastian Reichel:
> Allow usage of gpio-ranges with the rockchip gpio controller. The driver
> already had support for this since it has been added to the mainline kernel
> in the first place.
> 
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
