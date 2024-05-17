Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8524BC04FFE
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 May 2024 06:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DOosXZcXuUatSWZXxBYl3i8UXpu/eMwelktMduONQsY=; b=GwN7em6oSABNEw
	0vfjQ1VnIYfj8hxRWUHmdytmqPzHMXjSc5Hk4c0QE18R1sFlx2SP4DUIqkNNmQKVxeBeVaoLMavpK
	lvNferl2klrTE3/B1RjOOz9bUraRv/GT5Jp6PCkRylN8FDI8dmBBOwuL/WNjMjj/nps4Yi0fxgXRh
	R6G1e8P+vYuR3LNA5pM7LzWbHxYj3F/nDEByrscVsz3RLzY0T4swj8I6g+sl5HXCk5qTMChRQvjYv
	BSfRt2Bsg0bfGiWcVp6m+bQG3s8/ps9dGM2Y3HBaKY/sFQUE+x1bNhXLNJ6ooeDvDQP9dPPLYOg5m
	1huIrUtx/PNqKm6eimqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7rYE-00000007042-0EN9;
	Fri, 17 May 2024 06:58:46 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7rY9-0000000703E-2e7Q;
	Fri, 17 May 2024 06:58:43 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5366060016;
	Fri, 17 May 2024 06:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1715929116;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8+WtpG+JowVcU8bh3DYjQQ6K0ukhxfEGwefCmJzc8YA=;
	b=f8KVFHeNh2VvHZZ6hzRy0KYo2z1+B2wGwXn7zUG349l2A4tKLI0ZDhpexlh3IUzFtK/cnH
	G4vfuEDwNMPNJmSzzVKJTqJkec3UDkhb7Ri4LEuTyTyQUy6andM+Hdr7ASxso739ADCNPf
	Ko2E4NMePCqgMC1A7+eqx3f8QeIF3NA3fUwPrU+0d2wbbE4Xl5hJJ2PXaQO6+G79OZlB49
	Vj8Yl1i5JyjqZXeJ6PFT0cGNZNX4RmNQb3gU6C55uHf8H9w8r1JsdI8Hp2gyLKvg/YudPM
	6YxX7AHARvGW/6A5RRP+N28w/ZyAq10mTdiG1jEHqlveht7usBO2Q8V8FqmNjQ==
Date: Fri, 17 May 2024 08:58:32 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, Jianqun Xu
 <jay.xu@rock-chips.com>, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] pinctrl: rockchip: add rk3308b SoC support
Message-ID: <20240517085832.365ac878@booty>
In-Reply-To: <81aa0e4e-a3c7-41d1-8cd2-4d060730b37a@gmail.com>
References: <20240515121634.23945-1-dmt.yashin@gmail.com>
	<20240515121634.23945-4-dmt.yashin@gmail.com>
	<20240515182954.03c4a475@booty>
	<81aa0e4e-a3c7-41d1-8cd2-4d060730b37a@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_235841_977333_B1AAA91B 
X-CRM114-Status: GOOD (  22.15  )
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

Hello Dmitry,

On Thu, 16 May 2024 17:06:46 +0500
Dmitry Yashin <dmt.yashin@gmail.com> wrote:

> Hi Luca,
> 
> On 15.05.24 21:29, Luca Ceresoli wrote:
> > I'm skeptical about this being bound to a new DT compatible. As far as I
> > know the RK3308 and RK3308B are mostly equivalent, so it looks as the
> > pinctrl implementation could be detected at runtime. This would let
> > products to be built with either chip version and work on any without
> > any DT change.  
> 
> 
> Thanks for your feedback.
> 
> Indeed, these SoC's have a lot in common, but as I can see the rk3308b
> has more blocks, like extra PWM's (rk3308 datasheet 1.5 [0] shows only
> 1x PWM 4ch, when rk3308b and rk3308b-s have 3x PWM 4ch), 1-wire and
> CAN controller (mentioned in the TRM, but dropped from rk3308b
> datasheet for some reason).
> 
> So, in my view, it really makes sense to add rk3308b.dtsi, where extra
> PWM's, pinctrl compatible and its pin functions can be moved. And if
> its not worth it, then I will try to adapt the entire series to runtime
> config based on cpuid like you suggested.

Having a rk3308b.dtsi would probably make sense, yes, as there are
several differences as you described. However for the pinctrl it seems
probably not necessary.

I've seen actual products being manufactured with two different RK3308
variants in different lots of production, but with the same DT that has
rockchip,rk3308-pinctrl in it. Those would need a _selective_ DT
upgrade in order to benefit from your changes.

And even if a product had always used the B variant, it would need DT
upgrade when upgrading to a kernel with your changes. Otherwise with
patch 1/3 of this series the pictrl driver would lose many routes after
upgrading the kernel (but not the DT): can this lead to
previously-working devices to stop working? I think this is a
fundamental question to reply.

Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
