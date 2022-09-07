Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BCC3C38145
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 17:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a78RfEobCUAw6Jwk2j68Hgn2OvyFdrGyQONagDT4C24=; b=DeBshjoOqGyytE
	fNUjXRgg+LBw+Y6eq8BjECM5Eeb0ZnxefJrDXuLbW1PYmquYmQ/NiRjvnYyYk+CfXhuY2i5aH2DvY
	q1MJHBbKScw04EFBCXT7GqO6+t6Lkv/JJLT/S9FlgctN2Bcr7A8/kROTpZR4jpui45gDFwy5nNHyD
	34K8iWpJXVaF8Zq8BpntCU0K/bbnzrhFXfHhu3tX/Zu80CkemkjIlxeOcL5mFQdy/9+1qZfnW95Pm
	8ga4qJLSZHLRlS8eaDu7gitElm5q6q7uQEjYKlE1tyOCYf8ABOunZbsqetkyusvHpT9rVJ7fJ83Xz
	alZg72smmWU9kW7HOu6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVyeU-0088ag-1a; Wed, 07 Sep 2022 17:15:50 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVyeA-0088QV-4H; Wed, 07 Sep 2022 17:15:32 +0000
Received: from booty (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id C0A7020003;
	Wed,  7 Sep 2022 17:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1662570925;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tuNHhg0d7wCXZkWQB2aVNJEW/obWsRINPAZ/CInV8Ek=;
	b=POTBoVtrj3ImsMtFfmWL/bMKfwwXr1NizxFJd5pb/vOiZR9jjG8ArBndIJb0IZ70lj0rf2
	HTKO7fkRwXqfZCv9fzxTGmKVk7avMQNe/ErxQ5/OGneWSDmRd3YM2srqLx3fNJGFQxaFqc
	pekgI6081tOP14+iM8qeMK0I4KvfXB2FiaJA9mMUpw31FfDLDJaKEMtsJmsasyYTFS9j3p
	GPMjfTwmo8Q0sJ3jwWte3RhVBLaDr2c8onzgseLvYV71E8p/OuqiUHkY89JB09SVVFklcS
	s0u5bVCkrLfRc4iqs470lrIUkbHzWFXpYjDsvg570T1yOuQqLajdG6D9ArzMoQ==
Date: Wed, 7 Sep 2022 19:15:21 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Mark Brown <broonie@kernel.org>
Cc: alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Nicolas
 Frattaroli <frattaroli.nicolas@gmail.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>, Chris Morgan
 <macromorgan@hotmail.com>
Subject: Re: [PATCH 0/8] Add support for the internal RK3308 audio codec
Message-ID: <20220907191521.1ce081c8@booty>
In-Reply-To: <Yxi7uD6RKeR3uHcF@sirena.org.uk>
References: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
	<Yxi7uD6RKeR3uHcF@sirena.org.uk>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_101530_500455_36FE25C5 
X-CRM114-Status: GOOD (  15.78  )
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

Hello Mark,

thanks for the quick feedback!

On Wed, 7 Sep 2022 16:41:44 +0100
Mark Brown <broonie@kernel.org> wrote:

> On Wed, Sep 07, 2022 at 04:21:16PM +0200, luca.ceresoli@bootlin.com wrote:
> 
> > Luca Ceresoli (8):
> >   ASoC: rockchip: rk3308: add internal audio codec bindings
> >   ASoC: rockchip: rk3308: add audio card bindings
> >   arm64: dts: rockchip: add i2s_8ch_2 and i2s_8ch_3
> >   arm64: dts: rockchip: add the internal audio codec
> >   ASoC: rockchip: i2s-tdm: Fix clk_id usage in .set_sysclk()
> >   ASoC: audio-graph: let dai_link->init be overridable
> >   ASoC: codecs: Add RK3308 internal audio codec driver
> >   ASoC: rockchip: add new RK3308 sound card  
> 
> Please pay attention to the ordering of your serieses when posting:
> generally any bug fixes should come first so that they can be easily
> sent as fixes, and normally DTS updates are at the very end of the
> series rather than mixed in the middle since they go via the platform
> maintainer tree normally rather than with everything else.

Sorry about that. I've reordered the patches in my branch for the next
iteration.

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
