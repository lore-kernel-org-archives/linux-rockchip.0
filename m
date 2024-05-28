Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 325E4C41513
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 08:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNHOP9DeJg0YjWupSpAwKOwWJgy4Kkjln6OgnS9c6gg=; b=EL9NGDq7cXyW7h
	2T9sSMj85OgH+89LTTfp2+N7XUxlioHxm3X1IGwwoupPgcAScaGuGdzFmkIiaIWqxCcurVg8MDhRv
	law5jouk8QCjq4rGCUCUkW/1Heid3hEPeFUyVjpW+9EL0ualbRNSSqFQmVS38Dw0TRxneoWXpJyhY
	hTr/bnzvoT7sWo34y+HMxUGqP74HI4E+i8T1S9MaeGT9UrvMQFXq7cBQ7zOa3CYRzZb9uGucc4l8N
	S+PF0aMkiiLexNtqpZRvxmHDTGNdcyanGlnwGEFk1AW3xVf7o8XDuYAsuqQ3ird4mhRyZVsRHhM+s
	nYgNsVVHloJhNAzfHdfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBs1t-0000000HRuS-0woL;
	Tue, 28 May 2024 08:17:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBs1p-0000000HRtb-0svN;
	Tue, 28 May 2024 08:17:54 +0000
Received: from i5e86193d.versanet.de ([94.134.25.61] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sBs1d-0001f3-Il; Tue, 28 May 2024 10:17:41 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dmitry Yashin <dmt.yashin@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Rob Herring <robh@kernel.org>, Jianqun Xu <jay.xu@rock-chips.com>,
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] pinctrl: rockchip: add rk3308b SoC support
Date: Tue, 28 May 2024 10:17:40 +0200
Message-ID: <4771649.rnE6jSC6OK@diego>
In-Reply-To: <20240517085832.365ac878@booty>
References: <20240515121634.23945-1-dmt.yashin@gmail.com>
 <81aa0e4e-a3c7-41d1-8cd2-4d060730b37a@gmail.com>
 <20240517085832.365ac878@booty>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_011753_293271_66BE0FEA 
X-CRM114-Status: GOOD (  31.58  )
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

Am Freitag, 17. Mai 2024, 08:58:32 CEST schrieb Luca Ceresoli:
> Hello Dmitry,
> 
> On Thu, 16 May 2024 17:06:46 +0500
> Dmitry Yashin <dmt.yashin@gmail.com> wrote:
> 
> > Hi Luca,
> > 
> > On 15.05.24 21:29, Luca Ceresoli wrote:
> > > I'm skeptical about this being bound to a new DT compatible. As far as I
> > > know the RK3308 and RK3308B are mostly equivalent, so it looks as the
> > > pinctrl implementation could be detected at runtime. This would let
> > > products to be built with either chip version and work on any without
> > > any DT change.  
> > 
> > 
> > Thanks for your feedback.
> > 
> > Indeed, these SoC's have a lot in common, but as I can see the rk3308b
> > has more blocks, like extra PWM's (rk3308 datasheet 1.5 [0] shows only
> > 1x PWM 4ch, when rk3308b and rk3308b-s have 3x PWM 4ch), 1-wire and
> > CAN controller (mentioned in the TRM, but dropped from rk3308b
> > datasheet for some reason).
> > 
> > So, in my view, it really makes sense to add rk3308b.dtsi, where extra
> > PWM's, pinctrl compatible and its pin functions can be moved. And if
> > its not worth it, then I will try to adapt the entire series to runtime
> > config based on cpuid like you suggested.
> 
> Having a rk3308b.dtsi would probably make sense, yes, as there are
> several differences as you described. However for the pinctrl it seems
> probably not necessary.
> 
> I've seen actual products being manufactured with two different RK3308
> variants in different lots of production, but with the same DT that has
> rockchip,rk3308-pinctrl in it. Those would need a _selective_ DT
> upgrade in order to benefit from your changes.
> 
> And even if a product had always used the B variant, it would need DT
> upgrade when upgrading to a kernel with your changes. Otherwise with
> patch 1/3 of this series the pictrl driver would lose many routes after
> upgrading the kernel (but not the DT): can this lead to
> previously-working devices to stop working? I think this is a
> fundamental question to reply.

If things can be runtime-detectable, they should be detected at runtime.
So yes, while we need to know that it is a rk3308-something before
via the dt, if we can distinguish between the rk3308 variants at runtime
we should definitly do so.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
