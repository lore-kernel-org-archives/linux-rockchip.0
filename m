Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B97AC3DA61
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jul 2024 17:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pGq7il1LDbc+FCSlkDMb5JoLPeOa7wFHQDSkkd9pz4c=; b=XiZFoxqe97t6q0d/BNgDgVIbXW
	dNzvppF2htn2t3RzpjeL2upVDR2bZB99a/7fSyX7B+orXtFo2bh24Cb1xKcjMq3qX2gKuTycdXEoV
	Z0JCCQF/adHj/LANpwu9aacu4XTgPPVyUDxuJcJ4N++BeFaw2//J8dLdXlPtkht5uDDT1+UbmdEvZ
	gr29bfgqssnhHRrHuh5K6iwjkWmqoIiJMfNtNhNFvlhjNPZ3VJ8WUvUoeXbIFedBjinT9bO8Lt1JX
	3vTia1ASWyUqVJExTZlOJ3pNoIklOqCOsAu5WHHAuA0e5Smlb0SHgLd2TS4gbxv+YvlEOhpWVyrnv
	azgj/ZOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXlBs-000000072ke-26Wp;
	Sat, 27 Jul 2024 17:26:44 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXlBQ-000000072e4-3F7c;
	Sat, 27 Jul 2024 17:26:18 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1722101174;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=W0xWla7GajGgE12FYJTA3d2+hQz1cIEdi3VEmQzhsqU=;
	b=ViSWKFfsWDciK9XUpUBuKYVTxLx9sxSn8tut/Fb7rTZ8nc+lDO0Cqt+IEXrLa9ANFnOnwR
	hZZDDRyhK5TpO9LtPOqwUmvjUnJ30p0bN0dA7WKoQmlqxpCcx8x/3FW1uyw9UxWbNEUy/R
	YP3kkWlSb5/TqYFmpfv054kaAz7YxVF8HLwCkJ2cjVCa8kbxensjSURX6CRnLWB9b8MOkr
	qNjBK+CZuZ8cFirrNd3DaZjYAbIP/QQlp2127HvV5/PAYVlt6xMCJRCfQC1WDyQhY9+V/b
	vgEMR+hkTrLuqKxlZHOHZ10Hpl+tOOk1q7VNuOuPiCA+Ab4oFCDfd/hCYxx9cQ==
Date: Sat, 27 Jul 2024 19:26:14 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Stephen Boyd <sboyd@kernel.org>
Cc: Conor Dooley <conor@kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, mturquette@baylibre.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: clocks: add binding for
 voltage-controlled-oscillators
In-Reply-To: <00f9f4b8722d97b1c6fcec27d53bc06d.sboyd@kernel.org>
References: <20240715110251.261844-1-heiko@sntech.de>
 <20240715110251.261844-2-heiko@sntech.de>
 <20240716-deceiving-saucy-851fb2303c1f@spud> <3178118.zE8UqtGg2D@diego>
 <20240718-prozac-specks-6b5fd8b83e3e@spud>
 <00f9f4b8722d97b1c6fcec27d53bc06d.sboyd@kernel.org>
Message-ID: <1f6f4cd84b06a95881093772d5b799ef@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240727_102617_408043_9AF02055 
X-CRM114-Status: GOOD (  20.59  )
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

Hello Stephen,

On 2024-07-27 00:21, Stephen Boyd wrote:
> Quoting Conor Dooley (2024-07-18 08:59:50)
>> 
>> FWIW, I wouldn't classify this as device-specific. "enable-gpios" and
>> "vdd-supply" are pretty generic and I think the latter is missing from
>> the vast majority of real* "fixed-clocks". I would expect that devices
>> where the datasheet would call
>> 
>> * Real because there's plenty of "fixed-clocks" (both in and out of 
>> tree)
>> that are used to work around the lack of a clock-controller driver for 
>> an
>> SoC.
> 
> I agree!
> 
>> > I think generic power-sequences
>> >   were the topic back then, though that might have changed over time?
>> > - There are places that describe "fixed-clock" as
>> >   "basic fixed-rate clock that cannot gate" [1]
>> 
>> I think that that is something that could be changed, it's "just" a
>> comment in some code! Sounds like Stephen disagrees though :)
> 
> It's more about making a clear break from the fixed-clock binding so
> that the extra properties are required.
>> 
>> > - Stephen also suggested a separate binding [2]
>> 
>> I liked your "gated-oscillator" suggestion in another reply, but
>> "gated-fixed-clock" might be a better "thematic" fit since this is a
>> special case of fixed-clocks?
> 
> It looks to me like we've arrived at the hardest problem in computer
> science, i.e. naming. Any of these names is fine. I'd look to see what
> those parts on mouser are called and use that to drive the compatible
> name decision if you can't decide. The description section in the
> binding could be verbose and link to some parts/pdfs if that helps too.
> In the past I've seen EEs call these things clock buffers. I'm not a
> classically trained EE myself but it usually helps to use similar names
> from the schematic in DT because DT authors are sorta translating
> schematics to DT.

Please note that the hardware components modeled by these DT bindings
are definitely not clock buffers.  Those are simply clock generators,
which can be gated, hense the proposal to use "gated-fixed-clock".

If we were to additionally model Aurasemi AU5426 or Diodes PI6C557 into
new DT bindings and into the board dts file(s), which I'd support 
because
of accuracy, those should actually be called "clock-buffer".

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
