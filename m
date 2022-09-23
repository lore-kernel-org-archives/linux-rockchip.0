Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1214AC6FA82
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 10:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+mFvB2KMnuYegiI1/sfKcIo6ysEWWYF652GoS3zDEg=; b=WGuJtRJcuihwGT
	FlsFX/jREUktJzswWAeDA8RFP2t9MHnKrq0Vthb32/LVPpHEfqGZfc3Qe5UEgg5Xqh5Vlg9T81Yu4
	5I5y4NGJZZDJi0P96+Wxtp2ISuPO5KbB6UPSlj3dtk41c0lkW9YmyeMGv1S8VuUGcCQd++vOCNzTa
	2k/ZFxi/J6pmC9n6qE4HzHujWL4zpWT9k9odSrz9/LXDjSpylAjHXzUcXJKSNwrmkWrG8AMIm/LKG
	z5OxHgLcUwjOqkz3z7GJ2oHRrsBN9+RgzSw0dsN2oQzitnZJmfCIO6tjIrMriAp1wKSaS529DkQiy
	AwPZDuwQGHTOR/ly2C3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obfpo-003ccr-JS; Fri, 23 Sep 2022 10:23:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obfpe-003cZi-AQ; Fri, 23 Sep 2022 10:22:55 +0000
Received: from p508fdb48.dip0.t-ipconnect.de ([80.143.219.72] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1obfpM-0005nH-6s; Fri, 23 Sep 2022 12:22:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: kever.yang@rock-chips.com, sjg@chromium.org, philipp.tomsich@vrull.eu, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, ulf.hansson@linaro.org, miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com, kishon@ti.com, vkoul@kernel.org, thierry.reding@gmail.com, gregkh@linuxfoundation.org, broonie@kernel.org, wim@linux-watchdog.org, linux@roeck-us.net, zhangqing@rock-chips.com, jamie@jamieiles.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org, linux-mtd@lists.infradead.org, linux-phy@lists.infradead.org, linux-pwm@vger.kernel.org, linux-serial@vger.kernel.org, linux-spi@vger.kernel.org, linux-usb@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v1 03/11] dt-bindings: pwm: rockchip: add rockchip,rk3128-pwm
Date: Fri, 23 Sep 2022 12:22:34 +0200
Message-ID: <2166557.taCxCBeP46@phil>
In-Reply-To: <20220920062149.o6gdhsh7bk5rl4ah@pengutronix.de>
References: <20220909212543.17428-1-jbx6244@gmail.com> <f5dd0ee4-d97e-d878-ffde-c06e9b233e38@gmail.com> <20220920062149.o6gdhsh7bk5rl4ah@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_032254_373523_10A2442D 
X-CRM114-Status: UNSURE (   8.38  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 20. September 2022, 08:21:49 CEST schrieb Uwe Kleine-K=F6nig:
> Hello,
> =

> On Sat, Sep 10, 2022 at 12:02:22AM +0200, Johan Jonker wrote:
> > Add rockchip,rk3128-pwm compatible string.
> > =

> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> =

> Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> Is the expectation that this goes in via PWM, or together with the other
> patches via the rockchip maintainers?

in general I think bindings always go through the subsystem that
they're targetting - PWM in this case.

Acked-by: Heiko Stuebner <heiko@sntech.de>


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
