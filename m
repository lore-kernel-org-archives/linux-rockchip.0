Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBBB2CD5BD1
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 09:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/+mmB7Eu8iL+vbgI7oRPSvReVJN1hNKvkSpOyFNGCY=; b=rkaGttq1KlwkbI
	FlzWL9UlUb9Ivwg/NMFc9wCxUuDORoQe6T/KTQnLhw/MdlBRPZhMODastjhXvtjcpPgdVUvnFcl6j
	TZTyFfB/C+knkYa8ynhqDH3jB4EQeFJam+e1rEtuhm8m9YGU1yVowUf+w99Nm7KKXj6wZstcL25ge
	03qaxwjO+DZJDJT7l7HVMQStXJQ2Boo0llZkBCfxyWxhW/qFer4tVX3TLvEIGMrMVLLXmB8n9xR9G
	SRARL9HHj5kMxWcWmccqzuEGFvsqa2xI0Zeoie6yFXz9BCFwm0Ijlti8pi8LZfrY97SffKOY1W2r9
	onOHCe0rAkVZ0EBiJTmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTykU-0000000ATQQ-0ZiD;
	Mon, 01 Jun 2026 09:15:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTykS-0000000ATQ4-3gyt
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 09:15:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E490C60018;
	Mon,  1 Jun 2026 09:15:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5A301F00893;
	Mon,  1 Jun 2026 09:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780305351;
	bh=nY1zKTj/R3CaGIBI7uxYDXY6FmQJ3TtkcAHD+T3P2Gw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=CsB22R7fwsQ6S1J8EnqHd0JM2C99I0tZnHAgKnTAcMTiZO5yVlg1kpAZ/LTPMZBbF
	 Jp682ZUm2mAgfDg1X6nugKIRxGx8gXRTn5/CTpgfj+RrLaiRzeznUMR4s0N8XzJje9
	 BddeZc9dCPARUVU+SDKF+v6TAf95Ha+X4Da1rgP3H11J/hiBlYYjmLoxNRfui5G1Zk
	 8EcEQjkaUX7gwdkIYTem8Ab3MkZkSiGlmg4Kz3W7N3JSQE000tJfsRphCE7no8IUpM
	 sHbAYiiB1TqmNtDDweO0hnwVwAZ/KeagV66bZWHAjKQQdWMaN7ImXoiDlx6l+a950u
	 VWrMY7XeruvlA==
Date: Mon, 1 Jun 2026 10:15:40 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Chris Morgan
 <macroalpha82@gmail.com>, linux-iio@vger.kernel.org, andy@kernel.org,
 nuno.sa@analog.com, dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com
Subject: Re: [PATCH V9 02/11] dt-bindings: iio: imu: icm42600: Add icm42607
 binding
Message-ID: <20260601101540.6f23b09f@jic23-huawei>
In-Reply-To: <PH0PR19MB9973385EBACD2645B8845DE4F2A5152@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260530031739.109063-1-macroalpha82@gmail.com>
	<20260530031739.109063-3-macroalpha82@gmail.com>
	<20260530-certain-goose-from-neptune-96e8ae@quoll>
	<PH0PR19MB9973385EBACD2645B8845DE4F2A5152@PH0PR19MB997338.namprd19.prod.outlook.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Sun, 31 May 2026 20:44:03 -0500
Chris Morgan <macromorgan@hotmail.com> wrote:

> On Sat, May 30, 2026 at 09:26:31AM +0200, Krzysztof Kozlowski wrote:
> > On Fri, May 29, 2026 at 10:17:29PM -0500, Chris Morgan wrote:  
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Add devicetree binding for the Invensense ICM42607 and Invensense
> > > ICM42607P inertial measurement unit. This unit is a combined
> > > accelerometer, gyroscope, and thermometer available via I2C or SPI.  
> > 
> > Implement feedback from v3. Subject is still incorrect.
> >   
> 
> I'm sorry, that was dropped due to an oversight. I'll correct it.
> 
> > > 
> > > This device is functionally very similar to the icm42600 series with a
> > > very different register layout, however unlike the icm42600 driver we
> > > require a interrupt-names property be present.  
> > 
> > Why do we require it? Who needs it?
> >   
> 
> The driver this was based off of, the icm42600 driver, has a fallback
> to select the 1st available interrupt in the event of the named
> interrupt not existing. I was told not to do that here so the named
> interrupt is a requirement for the icm42607.

A bit more background on this.  I think it went as follows.

When that other driver originally went in we didn't pick up on their
being multiple interrupt lines.  Hence once that came up because
someone had a board that only connected the other pin we had to
'guess' which one was the default (I'm sure we asked people :)

I'll noted that we had at least one case in the past (can't remember
if it was this part) where the assumed default was not the first one :(
We've even had package variants (which we don't normally use different
compatibles for) where only INT2 actually had a pin.

Hence, since then we've been more careful with these devices.
Given there is nothing special with one interrupt rather than the other
with a mux on each that lets us route all interrupts signals to each
pin, my strong preference is we don't make assumptions and always require
the firmeware to say which one it is.

Jonathan

> 
> > Best regards,
> > Krzysztof
> >   
> 
> Thank you,
> Chris


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
