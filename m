Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 329A8C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 16:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9bLOP2ShwpBcisKtr9IudYeYYTLIcIjWvljYcb/mTs=; b=YUP17IzML+GtrK
	QPnC684dWZ0OPVK9xQncu3iY92CP4TIcoQEioy0z2+2vUvFPnEcWc0w+bd7t7qcSIv4JolVDjXzRX
	4Cw69QmPbY+sVALa0pjHZ0phiJNwpDfDf6dpyYVl/f198s0Cq1onaRFq/l+nZjzSsc8MAe3pKoVhm
	CCAAFLMrtI3IY9gA0A40U9Lxe73YsaRVqH8ieGhqUIe6RVp+OUYwvrK54WD/Wje3zw5R8Bnwj4zh9
	nFBw793ME/2qTJyIqHhFWPVvwCUg5KRWCWRRhULHXipwqPTB6fKpYPtFswSeRxn+flC/KFm1zgg78
	YXR61UqjQFVtuuQllSXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4mG6-0031PD-N7; Fri, 24 Jun 2022 16:34:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4mG3-0031ON-JM
	for linux-rockchip@lists.infradead.org; Fri, 24 Jun 2022 16:34:12 +0000
Received: from p508fdadf.dip0.t-ipconnect.de ([80.143.218.223] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o4mFx-00026t-Cq; Fri, 24 Jun 2022 18:34:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>, kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 2/2] gpio: rockchip: add support for rk3588
Date: Fri, 24 Jun 2022 18:34:04 +0200
Message-ID: <4283946.IobQ9Gjlxr@phil>
In-Reply-To: <20220623160801.240779-3-sebastian.reichel@collabora.com>
References: <20220623160801.240779-1-sebastian.reichel@collabora.com> <20220623160801.240779-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_093411_678660_8DC29B88 
X-CRM114-Status: UNSURE (   7.97  )
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

Am Donnerstag, 23. Juni 2022, 18:08:01 CEST schrieb Sebastian Reichel:
> From: Jianqun Xu <jay.xu@rock-chips.com>
> 
> Add V2.1 rockchip gpio controller type, which is part of the
> RK3588 SoC.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
