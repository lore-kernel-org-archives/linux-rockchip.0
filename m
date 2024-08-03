Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79B65C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Aug 2024 15:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9TZFkAlXambLVXjbbG71Vwr0IGpuSnWknN9lj/4OO48=; b=zKr4L3GpokTDrBRX1eF8TflLPU
	spXNF9Kql/ekRSRZVz27GPuw2a9NxzQPFRKBZ7qiLbFyRZ1f8FiqoBPe9MwrIbthsV9vKntUgQE6R
	U6pNEBy/FZxVppmshxkLqItFQaMcUmwuAvTYFLyvNM1LlsYmHYbRcOjfsXYWrcGSw8Y0KjQPnT3A8
	WO8vV7XGFGEvwV+D06EX8MoKsukYkChvOK5hT2L9mcykNMfo6TLorDLrrAxkJOEs3ve5iNW/9Xjy6
	jrlFQO85jF3znWaJdhwp21+DFFM68kMFJgp4jSMg4bXNr2CAUwD9cKkRCSVoV36kKjs6xhaLwB5bi
	jmVLPDUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saGrF-0000000Be8U-21No;
	Sat, 03 Aug 2024 15:39:49 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saGrB-0000000Be7p-2ySq
	for linux-rockchip@lists.infradead.org;
	Sat, 03 Aug 2024 15:39:48 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1722699582;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3VkmBHa83uC/0UHbHBRgJCGZoqWtVGLYi46vvcLgbFU=;
	b=uZlVrNKqvsLYZ/Ct2pv+NUKRWagfkhmVuZDSGuJ8HGk+lU5+7CKPtQynXjC3ugR+G/tAEn
	xFEOg8vNK7fye26nZK/AOB6vAIb7cXs8k/GRDDZ+OIydc7XZgeWuFKb94j5wVyfia1PAej
	3ySI2hatosLuNXxsRn2SF7RIVH28Lns+/Oo7e2m+5czUlErMFrBGUvBAJRdHIxz3x3EfTY
	A12qUQ/Udm7vDpWJmIq40eWjKOkuM6TkdYiuiOibpjv3Bf/uUYsflLCmN+qhlKrBA3s31S
	a0FwNdCKtuKk+3B+Ew/syk8sA/xUBc+6ADOdAI/LAleBTPI7vTXYnsRIOBTLsQ==
Date: Sat, 03 Aug 2024 17:39:42 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Lee Jones <lee@kernel.org>, Dmitrii Osipenko
 <dmitry.osipenko@collabora.com>, Mark Brown <broonie@kernel.org>, Urja
 <urja@urja.dev>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com, stable@vger.kernel.org
Subject: Re: [PATCH v1 1/1] mfd: rk8xx: Fix shutdown handler
In-Reply-To: <ih7hiojzuvqzpyipj66mgu5pmcderltabim7s5dnfzm6qpztbh@jqkst5tfw5ra>
References: <20240730180903.81688-1-sebastian.reichel@collabora.com>
 <20240801131823.GB1019230@google.com>
 <ih7hiojzuvqzpyipj66mgu5pmcderltabim7s5dnfzm6qpztbh@jqkst5tfw5ra>
Message-ID: <4637f562f327f7495ccfdd88590e07ef@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240803_083946_246073_E3015D37 
X-CRM114-Status: GOOD (  22.20  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello all,

On 2024-08-01 17:22, Sebastian Reichel wrote:
> On Thu, Aug 01, 2024 at 02:18:23PM GMT, Lee Jones wrote:
>> > +	/*
>> > +	 * Currently the Rockchip SPI driver always sleeps when doing SPI
>> > +	 * transfers. This is not allowed in the SYS_OFF_MODE_POWER_OFF
>> > +	 * handler, so we are using the prepare handler as a workaround.
>> > +	 * This should be removed once the Rockchip SPI driver has been
>> > +	 * adapted.
>> > +	 */
>> 
>> So why not just adapt the SPI driver now?
> 
> This patch is simple and thus can easily be backported, so that the
> Acer Chromebook shutdown is fixed in the stable kernels. SPI based
> rkxx has been using SYS_OFF_MODE_POWER_OFF_PREPARE from the start,
> so it's not a regression.
> 
> As far as I could see the SPI framework does not have something
> comparable to the I2C .xfer_atomic handler. So fixing up the
> Rockchip SPI driver probably involves creating some SPI core
> helpers. I'm not yet sure about the best way to deal with this.
> But I guess it will be better not having to backport all of the
> requires changes to stable.
> 
> In any case I think the next step in this direction is discussing
> how to handle this in general for SPI.

I agree about accepting this (hot)fix first, and improving the SPI
drivers later.  Having this fixed now provides clear benefits.

Also, please feel free to include:

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

>> What's the bet that if accepted, this hack is still here in 5 years 
>> time?
> 
> Even if I don't work on this now, I would expect somebody to have
> issues with broken shutdown on RK3588 boards before 5 years are
> over :)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
