Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E92D5C38145
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 15:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wn41mgB05D7H0y8PIasrORAQUXP5W3opq/QUAt269zc=; b=U1xhfrR1kHkonc
	GZ/q3LxLogxU2gjXzE9IdMyPYqb82397+3BgMmB9EhfnpB0G5V7bSoszmL1UjOIJ062R9jhU2Rj2s
	YHjkmAmlA51JqlC4ZGjolLeDISuKhQRadFqyKiRwixgQFFXfcNTWe0tBfy930HmxqYoidO6mpSqDc
	8HGAsjd7rMxPodTSBSs2NwArEXIH+7zIxMGiVNNVVuHio8KWYhDixwkkacLpxRr1BMxL3flxRNTHX
	zeBHr4BeZmJk6KqVCZ3Ztm/rPHkXgFwvEKjFYielMVT2lGKHaPn8YNGQQlHZekEvdV8QEJ42Vchoq
	90pOqgcAdbPomuYwA1dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWJWU-005FeO-Qk; Thu, 08 Sep 2022 15:32:58 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWJKP-0058cd-Gc; Thu, 08 Sep 2022 15:20:31 +0000
Received: from booty (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 49192E0008;
	Thu,  8 Sep 2022 15:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1662650422;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OaycjTCUtVL0XC/TXiHrCS9tTq4CU4MjnzsvbA4dKO4=;
	b=VIWvkQc2rLTZkRlB9Caja28dMM3gG2XlRofkwI6AWfSSz/kNwH9bBu5kYOe2dhlaUX6AUr
	i0zh5Hupq8g2tAOoEIgXWAGNC6fNDVOpBHIsqHe3D+pNeF5DYgLbQjZ3fjb5OZKomKIwzH
	o+LLDo2w8HoVJzR2NgTDT3/s7i2PbSm59OayUUbmD6V5YUkwefuyjr8Y0AVtfNDJ1H52il
	2tao+VNyOicFrt3Ina7RBvn3rx62qM8sFk4gczmzLz8HOqDP6AMKVsnTzIJe+R7GCXTl1V
	ckAUtcllF0oofsFKMSXc1eMv2fvadLHH9kzV26ap8xmDhgcd1YSQwdPb95B4tQ==
Date: Thu, 8 Sep 2022 17:20:16 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>, Mark
 Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai
 <tiwai@suse.com>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/8] ASoC: rockchip: rk3308: add audio card bindings
Message-ID: <20220908172016.6e23df8c@booty>
In-Reply-To: <aeabc681-9416-d25d-693a-30ba99f1796d@linaro.org>
References: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
	<20220907142124.2532620-3-luca.ceresoli@bootlin.com>
	<aeabc681-9416-d25d-693a-30ba99f1796d@linaro.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_082029_908010_A0984FF4 
X-CRM114-Status: GOOD (  12.59  )
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

Hello Krzysztof,

thank you for reviewing my patches.

On Thu, 8 Sep 2022 13:49:34 +0200
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 07/09/2022 16:21, luca.ceresoli@bootlin.com wrote:
> > From: Luca Ceresoli <luca.ceresoli@bootlin.com>

[...]

> > +properties:
> > +  compatible:
> > +    const: rockchip,rk3308-audio-graph-card  
> 
> Is "graph" part of device name or you just put it there because of other
> schema?

Indeed this comes from the "audio-graph-card" compatible string.

> The compatible should reflect the device name, not some other
> pieces in Linux or in bindings.

Would it be OK to rename it to rockchip,rk3308-audio-card (i.e. drop
the "graph-" infix)?

Fixes for the other comments you made to this and the other patches are
already queued for v2.

Best regards,
Luca
-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
