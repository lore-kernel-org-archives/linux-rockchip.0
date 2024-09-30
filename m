Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 635D5CF6497
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 09:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/HgOdWbwjfriyZOm38SeOnG6StzM8KF66e2c05umN3Y=; b=G5F+7CoQXyxt/K
	qYl7wocWTYOQNuk2pe0FB8cIBX7hTgyMn1IpVX+hAdzEI9DvnUE+1Wk/lVBMIAExGbyRtfP1vORYD
	vCyCK9HP7aQsUxjLmzEr4TC/J6BxfcM0W3vHALIT97EP0oKB7tOl5S9p9COI9CgfF9akfj/+wYHkO
	HYbwztmVXCFZ1nTET7lye/lG/enImuAHCtglaO1pgYR1a001Cw9C/ba5UsLqB4K/OHaTA3AL9xSnr
	LOJ0/pdSb3KDEdMiDp4tZuQtgL6edZ3qqIvgte10HTWd/32KRNGB9Pg/0SLPLN/DC2eqAazotwMvs
	NnArvqlNJF/EOuk62RPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svCho-0000000GWQ8-2zdH;
	Mon, 30 Sep 2024 09:28:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svCbH-0000000GUSu-1gPp;
	Mon, 30 Sep 2024 09:21:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=dWLqrkPN5YAJbpjHClBIUqfBaHM5NfV7gkZ78U7b10Q=; b=1WGSQNrlSi38frUwsI7zzj9YIZ
	3yYHX8zJCI0L+TI7ojJp4JfKgnayTgXtxc10NQLNgnBXuJxJRWZvmFPQwwH9Zkt0IlpKk/OJubjYu
	Nei9o/0J5Zut4Gti1jfXhJTJ6UVKAdddOWyBZpX8PYLd7punbcX2piveEKvWjWhQVKzXktXxAN2zT
	zcxLlNrUK9roySJEvlDBz4TDoaINpQCkHR75i3/SqcHuuu3XJXQ7trrkLXiZlSvI3v1zwPO8Rk55g
	c1lnyErwpbN6lzI3YAtDLRTQsz0geQiEuzYt9bEd+vgJaDBjcEindcvPM0lpm2hS+mdM/nLdpHgMy
	LToe0gOQ==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svCb9-00041j-Mz; Mon, 30 Sep 2024 11:21:43 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Daniel Semkowicz <dse@thaumatec.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Quentin Schulz <quentin.schulz@cherry.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
 Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add power button for RK3399 Puma
Date: Mon, 30 Sep 2024 11:21:42 +0200
Message-ID: <2221314.irdbgypaU6@diego>
In-Reply-To: <5f73e2cf-cb18-4b65-9e42-cf3192aee706@cherry.de>
References: <20240925072945.18757-1-dse@thaumatec.com> <4620941.LvFx2qVVIh@diego>
 <5f73e2cf-cb18-4b65-9e42-cf3192aee706@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_022151_489985_F6DFEE1B 
X-CRM114-Status: GOOD (  40.11  )
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

Am Montag, 30. September 2024, 11:11:56 CEST schrieb Quentin Schulz:
> Hi Heiko,
> =

> On 9/30/24 10:49 AM, Heiko St=FCbner wrote:
> > Hey Quentin, Daniel,
> > =

> > Am Donnerstag, 26. September 2024, 14:34:30 CEST schrieb Quentin Schulz:
> >> On 9/25/24 9:28 AM, Daniel Semkowicz wrote:
> >>> There is a PWRBTN# input pin exposed on a Q7 connector. The pin
> >>> is routed to a GPIO0_A1 through a diode. Q7 specification describes
> >>> the PWRBTN# pin as a Power Button signal.
> >>> Configure the pin as KEY_POWER, so it can function as power button and
> >>> trigger device shutdown.
> >>> Add the pin definition to RK3399 Puma dts, so it can be reused
> >>> by derived platforms, but keep it disabled by default.
> >>>
> >>> Enable the power button input on Haikou development board.
> >>>
> >>> Signed-off-by: Daniel Semkowicz <dse@thaumatec.com>
> >>
> >> This works, thanks.
> >>
> >> Tested-by: Quentin Schulz <quentin.schulz@cherry.de>
> >>
> >> Now I have some questions I wasn't able to answer myself, maybe someone
> >> can provide some feedback on those :)
> >>
> >> We already have a gpio-keys for buttons on Haikou, c.f.
> >> https://elixir.bootlin.com/linux/v6.11/source/arch/arm64/boot/dts/rock=
chip/rk3399-puma-haikou.dts#L22.
> >> Those signals are directly routed to the SoM and follow the Qseven sta=
ndard.
> >>
> >> The same applies to PWRBTN# signal.
> >>
> >> However, here we have one gpio-keys for PWRBTN# in Puma DTSI and one
> >> gpio-keys for the buttons and sliders on Haikou devkit in Haikou DTS.
> >>
> >> I'm a bit undecided on where this should go.
> >>
> >> Having all button/slider signals following the Qseven standard in Puma
> >> DTSI and enable the gpio-keys only in the devkit would make sense to m=
e,
> >> so that other baseboards could easily make use of it. However, things
> >> get complicated if the baseboard manufacturer decides to only implement
> >> **some** of the signals, for which we then need to remove some nodes
> >> from gpio-keys (and pinctrl entries) since gpio-keys doesn't check the
> >> "status" property in its child nodes (though that could be fixed). At
> >> which point, it's not entirely clear if having it in Puma DTSI is
> >> actually beneficial.
> >>
> >> Someone has an opinion/recommendation on that?
> > =

> > I guess from a platform perspective nobody really cares, so as that is
> > "your" board, it comes down to a policy decision on your part ;-) .
> > =

> > While pins follow the q7 standard, there may very well be some lax
> > handling of that standard in some places, and I guess gpio lines could
> > be re-used for something else if needed, as something like the lid-swit=
ch
> > is probably non-essential.
> > =

> > Also a gpio-key input does not create that much code-overhead if
> > replicated, so personally I'd just stick the power-button with the other
> > buttons in the haikou dts.
> > =

> > Which is also a way better thing than having multiple gpio-keys instanc=
es
> > that userspace then has to handle.
> > =

> =

> Yes, but this also means "code" duplication for whoever needs this for =

> their baseboard, instead of just having to add a &gpio_keys { status =3D =

> "okay"; }.

Yes :-) .

gpio-keys is special in a way in that you could end up with a different set
of enabled keys per baseboard - dependent on how closely it follows the
standard.

So if someone repurposed the lid-switch only, you'd start changing the
core node again. Hence for the gpio-keys it's probably easier to define
the set of keys in the baseboard.

It's of course different for regulator-infrastructure and such.

> I don't think there's a good solution here, so I would suggest we go =

> with everything in Haikou's gpio-keys as Heiko suggested then, @Daniel =

> if you agree can you send a v2 for that?

I'll wait for v2 then.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
