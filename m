Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79C9EC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 14:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQ/Q7sM1mRM4/8oN2JOYNSM+eBAh56tV1eXa5Mzans0=; b=oEHCDwBjjqpb28
	WzqGpwS91jFH7VOjpOsobM9rnA8xnRTHiYpKR9F1cVmhuvy8jADdXld0yPMARDxUpTe1s/EyWC7wg
	VJagW2oJtMgmY1C5MK7JNKP9poJCaZ6WY4+rsnPLeLSm+pjKXCzMQPii3xoLO9UF3NDuloPNC/UQM
	/Ag/2P1FessAJJwwELZJGtZPtj9erIp0yGvRb9AMGXWVhSt28FWBFMmpsL+Wc6ITx9R1MpISdRaLY
	8BLtTCvz9sGCJRJ6p6VlglfIVg59DlLKWZ4466Is0OvPKB4gHWEBCQsbOFB0bZ1cT31AAzo948ebI
	YlQhZrJ1LaVtJe3+uDPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nknqT-00ET7d-Lg; Sat, 30 Apr 2022 14:13:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nknqC-00ET1O-JO; Sat, 30 Apr 2022 14:12:58 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1nknq3-0001c8-6F; Sat, 30 Apr 2022 16:12:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 linux-clk@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 Jianqun Xu <jay.xu@rock-chips.com>, kernel@collabora.com
Subject: Re: [PATCHv1 13/19] pinctrl/rockchip: add rk3588 support
Date: Sat, 30 Apr 2022 16:12:46 +0200
Message-ID: <8226003.NyiUUSuA9g@phil>
In-Reply-To: <CACRpkdZXuLPpgKcM_OU+Xewuuq6zGJek0QXAT1Xxn5fcZofJvA@mail.gmail.com>
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-14-sebastian.reichel@collabora.com>
 <CACRpkdZXuLPpgKcM_OU+Xewuuq6zGJek0QXAT1Xxn5fcZofJvA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_071256_683272_7B5F1EB3 
X-CRM114-Status: GOOD (  14.53  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi,

Am Freitag, 29. April 2022, 00:55:52 CEST schrieb Linus Walleij:
> On Fri, Apr 22, 2022 at 7:09 PM Sebastian Reichel
> <sebastian.reichel@collabora.com> wrote:
> 
> > From: Jianqun Xu <jay.xu@rock-chips.com>
> >
> > Add pinctrl support for RK3588.
> >
> > Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> > [merged in downstream fixes, simplified register lookup logic for better
> > maintanence at the cost of a bit more static const memory and fixed some
> > incorrect registers]
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> Patch applied, unless Heiko does some loud protesting it stays
> in the tree.

I'm never loud ;-)

Patch looked ok overall as well. I guess at some future point someone
will need to refactor the small "if rk3588" but that can be done when
another slightly different user appears and we have a feeling what the
common approach could look like.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
