Return-Path: <SRS0=P8Gh=MD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16A7CC07E96
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 17:44:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B40C16113E
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 17:44:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B40C16113E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q2NmpOSDcRKPWeuoTzA52Nm7TSJQHWN2XFiXLE8/JZ4=; b=m5em36kkjX1Sct
	VgAr72b8imGlsDH+dWWrv7VCVEEgKPISQwVmMyBY/CKc+t+93cGwCIjPmgdyGRmqUMBfhIATc1DZg
	CcJpwOIPPG7hqte4wMno8maBa3BEJCXnRwYpPZQ3kPfFvA5DJUI2XotNep2xza0IAaW9n+sFOenKT
	tm4Cwax39HjLIT5GHzcq3NBbyCMdTg1oRgXBuiukB6fAzi6V+d1mtnCa8U9950muMTUeFpq/jZQUA
	I6vFe3vFmLXmvtJZBbYii3oj7rDNLXchOxgvSTMu2nMZJDovB+xq6fnjBMUMqkaY7yd51zFHt4bDp
	fZomYAcEFacvVcpi8rhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2dVP-005KHV-Js; Sun, 11 Jul 2021 17:44:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2dVD-005KGV-33; Sun, 11 Jul 2021 17:44:28 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m2dV2-0008H7-WF; Sun, 11 Jul 2021 19:44:17 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Lee Jones <lee.jones@linaro.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: cl@rock-chips.com, thierry.reding@gmail.com, robh+dt@kernel.org,
 jagan@amarulasolutions.com, wens@csie.org, uwe@kleine-koenig.org,
 mail@david-bauer.net, jbx6244@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 jensenhuang@friendlyarm.com, michael@amarulasolutions.com, cnsztl@gmail.com,
 devicetree@vger.kernel.org, ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 wim@linux-watchdog.org, linux@roeck-us.net, jamie@jamieiles.com,
 linux-watchdog@vger.kernel.org, maz@kernel.org, linux-pwm@vger.kernel.org
Subject: Re: [RESEND PATCH v5 1/4] dt-bindings: pwm: rockchip: add description
 for rk3568
Date: Sun, 11 Jul 2021 19:44:12 +0200
Message-ID: <5069193.2yuIWEeYC1@diego>
In-Reply-To: <20210705074405.uj62h4evd6htftf3@pengutronix.de>
References: <20210622020517.13100-1-cl@rock-chips.com> <YOK1+pMy+N64eR75@dell>
 <20210705074405.uj62h4evd6htftf3@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210711_104427_169753_B53E14F9 
X-CRM114-Status: GOOD (  17.09  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 5. Juli 2021, 09:44:05 CEST schrieb Uwe Kleine-K=F6nig:
> Hello Lee,
> =

> On Mon, Jul 05, 2021 at 08:34:18AM +0100, Lee Jones wrote:
> > On Mon, 05 Jul 2021, Uwe Kleine-K=F6nig wrote:
> > > On Wed, Jun 23, 2021 at 10:13:03AM +0800, cl@rock-chips.com wrote:
> > > > From: Liang Chen <cl@rock-chips.com>
> > > > =

> > > > add "rockchip,rk3568-pwm", "rockchip,rk3328-pwm" for pwm nodes on
> > > > a rk3568 platform to pwm-rockchip.yaml.
> > > =

> > > [...]
> > > =

> > > Who is supposed to apply this patch? Does this need blessing by Rob?
> > =

> > There is no standard. [...]
> =

> I'm aware of that. That's why I asked to prevent that everybody thinks
> some other maintainer will care for it.

I suppose Thierry would be the one responsible?

I.e. bindings normally go through the subsystem tree and
	$ scripts/get_maintainer.pl drivers/pwm
returns:

Thierry Reding <thierry.reding@gmail.com> (maintainer:PWM SUBSYSTEM)
"Uwe Kleine-K=F6nig" <u.kleine-koenig@pengutronix.de> (reviewer:PWM SUBSYST=
EM)
Lee Jones <lee.jones@linaro.org> (maintainer:PWM SUBSYSTEM)
linux-pwm@vger.kernel.org (open list:PWM SUBSYSTEM)
linux-kernel@vger.kernel.org (open list)


See my reply to the original pwm binding patch from 2021-06-21.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
