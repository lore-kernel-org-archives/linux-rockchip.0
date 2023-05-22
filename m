Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AD7AC77B75
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 May 2023 10:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dkh9kTt6bpbneIeCxh2y4ooztLw45n8CrC/E0XfIjjE=; b=PIIMbQyLJJ21IU
	YCZtJgjlixCuwwB6JkPlgBra42L0qE0mog/KSNoyiB75USuMCZcwIIaza0hZcPy29T6BpnnPdtBXj
	Y84D68m4AMt374LBO+OsudJIBPT6yb4eQBE0eJT4xj4Z9JkYOERtHWvrc/c3PrjKVRkuWevPQG3XV
	apRDHpWuNWPoWJ7OKNcJlRoRrEj83Q65Mh4MX2lF97BG6y+yJonITayGEPc7EkXYwUvwF+xB5SJpH
	I/Na2h3fV4oHH23dq2N+mcfBEXMqElz9ZEVUgE4nNWRFCPtjxrqxorSu3gAbDCiY7qVaFmI88OrYD
	maVVsaQa1Tkgse0PZ4Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q12oW-005yjY-0d;
	Mon, 22 May 2023 10:30:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q12oT-005yfa-0o
	for linux-rockchip@lists.infradead.org;
	Mon, 22 May 2023 10:30:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1q12ne-0002T8-3x; Mon, 22 May 2023 12:29:58 +0200
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1q12nZ-0001jw-Dh; Mon, 22 May 2023 12:29:53 +0200
Date: Mon, 22 May 2023 12:29:53 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Rob Herring <robh+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RESEND 0/2] media: rockchip: rga: Add rk3568 support
Message-ID: <20230522102953.GB23678@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
	Diederik de Haas <didi.debian@cknow.org>,
	Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Rob Herring <robh+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230119-rk3568-rga-v1-0-43d4d14365e6@pengutronix.de>
 <168466589373.900480.8086350880534437090.b4-ty@sntech.de>
 <2386524.2IynHR6iFi@prancing-pony>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2386524.2IynHR6iFi@prancing-pony>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_033049_286782_0758B183 
X-CRM114-Status: GOOD (  22.34  )
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

On Sun, 21 May 2023 21:32:51 +0200, Diederik de Haas wrote:
> On Sunday, 21 May 2023 12:44:58 CEST Heiko Stuebner wrote:
> > On Fri, 20 Jan 2023 10:14:21 +0100, Michael Tretter wrote:
> > > The RGA2 on the Rockchip rk3568 is the same core as the RGA2 on the
> > > Rockchip rk3288.
> > > 
> > > This series adds the necessary device tree binding and node in the device
> > > tree to enable the RGA2 on the Rockchip rk3568.
> > > 
> > > I tested the driver with the GStreamer v4l2convert element on a Rock3
> > > Model A board.
> > > 
> > > [...]
> > 
> > Applied, thanks!
> > 
> > [1/2] media: dt-bindings: media: rockchip-rga: add rockchip,rk3568-rga
> >       commit: 9b12ceb5a80d1fb45d293265de100e33b5843943
> > [2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
> >       commit: 0c3391f8bb06b744df521651534cd99e3d77e0a8
> 
> https://lore.kernel.org/all/TY3P286MB26115F60D273E840D36A610598CA9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM/
> 
> indicated that there was a problem with device >= 4GB (RAM?):
> > Since we have the over-4GB problem now, should we mark this problem as a
> > TODO or something?
> 
> I thought that was the reason that these patches weren't picked up before?

That's what I thought, too.

> 
> I have no insight into this problem, so I can't comment on the technical
> aspects, but I had made a note for myself 'locally' about it.

Using the RGA2 with the driver in its current form on devices with more than 4
GB system memory may lead to memory corruption as buffer addresses are
silently truncated to 32 bits.

I'm not sure if that's actually a blocker for merging these patches.

Michael

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
