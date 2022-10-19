Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E954C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Oct 2022 09:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QuBj2h/sfN0wddNO1StIuBULesYJzuCRkykZDj+bll4=; b=No2w3m6oOjkcgp
	3LsdPcP7+KJdGn5pVx7CK0PTcIECnE9VML2672g92ujIvaMIbk+i84brAR5QKDx8vZWoc3yjy2wpd
	rRGtfUZysIFUX+ZS+vsg9GysEzMSy2BL1niU99qj498VBKeoNgrhrTAIQGvy+pMs10aJRc+aHSd8E
	faNQPwas3DT9Bl2yMEqKTGiZcLwR8UAfCn3HSdB2NaMHAB1QjGCf+FV4BLyd1KdnW+qqGXji5fO5x
	DtIZs+wSak+FLcMdhObwEDVXQJcjAtiRURcJTf0tMPajHB1hk+F/6YuyGlihlmyE1yB78ZnBQ+G5o
	C8T8BrQT33EqjfNLrXuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol5D8-00HJBt-Kz; Wed, 19 Oct 2022 09:18:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol5CO-00HIkM-2Q; Wed, 19 Oct 2022 09:17:17 +0000
Received: from p508fdae2.dip0.t-ipconnect.de ([80.143.218.226] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ol5C7-0004cp-PN; Wed, 19 Oct 2022 11:16:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>, Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Johan Jonker <jbx6244@gmail.com>, thierry.reding@gmail.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, sebastian.reichel@collabora.com, wxt@rock-chips.com, kever.yang@rock-chips.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v1 2/2] ARM: dts: rk3288: add the interrupts property for PWM
Date: Wed, 19 Oct 2022 11:16:58 +0200
Message-ID: <5883380.DvuYhMxLoT@phil>
In-Reply-To: <20221019072621.lh5hcznggbcscihf@pengutronix.de>
References: <6eba6c10-9c96-b40f-937a-e02d43b04cd7@gmail.com> <7ae39c9c-8424-8b65-ac09-c0e87f3b0f01@arm.com> <20221019072621.lh5hcznggbcscihf@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_021716_163132_AF8CFF77 
X-CRM114-Status: GOOD (  25.92  )
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

Am Mittwoch, 19. Oktober 2022, 09:26:21 CEST schrieb Uwe Kleine-K=F6nig:
> On Thu, Sep 29, 2022 at 04:50:43PM +0100, Robin Murphy wrote:
> > On 2022-09-29 15:04, Johan Jonker wrote:
> > > The Rockchip rk3288 SoC has 4-built-in PWM channels.
> > > =

> > > Configurable to operate in capture mode.
> > > Measures the high/low polarity effective cycles of this input waveform
> > > Generates a single interrupt at the transition of input waveform pola=
rity
> > > =

> > > Configurable to operate in continuous mode or one-shot mode.
> > > One-shot operation will produce N + 1 periods of the waveform,
> > > where N is the repeat counter value, and generates a single interrupt=
 at
> > > the end of operation.
> > > Continuous mode generates the waveform continuously and
> > > do not generates any interrupts.
> > > =

> > > Add interrupts property to rk3288 PWM nodes.
> > =

> > As far as I can make out from the TRM, these are only valid when
> > GRF_SOC_CON2[0] =3D 0, otherwise it's in "new" RK_PWM mode using SPI 78=
 for
> > all channels. Which apparently will be the case for anyone using upstre=
am
> > U-Boot:
> > =

> > https://source.denx.de/u-boot/u-boot/-/blob/master/arch/arm/mach-rockch=
ip/rk3288/rk3288.c#L83
> =

> Huh, so it depends on a (software) setting which irqs are in use?

In the past when Rockchip swapped one IP block for another they often
had both in a soc for one generation (as a safeguard probably)
So the rk3288 has two different pwm implementations and the GRF
register selects which one is active.

Heiko

> So the
> patch isn't correct as is, but I have no idea how to make it right.
> Should we rely on the bootloader to fixup the dtb correctly?
> =

> Anyhow, I'm marking the patch as 'changes-requested' in our patchwork
> instance.
> =

> Best regards
> Uwe
> =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
