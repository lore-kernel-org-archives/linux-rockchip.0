Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F12FBC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jun 2024 16:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2Nbd3bzsOpX4/7R5JIrb0fdopnmnL7dJ560lNXxqgE=; b=2w2i4pUQVj/yqB
	MwwbVPCBrWcefef6KWh0uy5tUVHv+u43KNofX9v3wwhVazcbcGXtgC8AFQZ7yTJTf2gR++z2sJwOk
	gAZQzD6rhPxHRAFotMZxuOBfnRFC81XOyM8REJqh1UDm0+z990/6dQlnTumysmCEjJbhePfFn97Ei
	08V6tluJbAb/dhBIRm0pLDCubZecrr3PE5neK1eqUOHb/N9GNJc1JalNZ/YQqzSCOt3BD+rgdLLOu
	gTq9bjp+5Uclqgt7knDXyMBDQTeH7Q6m4f4q9f4PTGEe0TxwAqwW5CFxeeCtqvzdabSDn/iVSX3y9
	ycaJtKMPhwuwhRc8fycg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNamT-0000000GdYh-2a41;
	Sat, 29 Jun 2024 16:18:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNamQ-0000000GdXb-0tKz;
	Sat, 29 Jun 2024 16:18:27 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sNam7-000796-8Q; Sat, 29 Jun 2024 18:18:07 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org,
 Diederik de Haas <didi.debian@cknow.org>, Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] arm64: dts: rockchip: Add optional GPU OPP voltage ranges to
 RK356x SoC dtsi
Date: Sat, 29 Jun 2024 18:18:06 +0200
Message-ID: <9297854.CDJkKcVGEf@diego>
In-Reply-To: <36170f8485293b336106e92346478daa@manjaro.org>
References: <446399362bd2dbeeaecd8351f68811165429749a.1719637113.git.dsimic@manjaro.org>
 <f10d5a3c425c2c4312512c20bd35073c@manjaro.org>
 <36170f8485293b336106e92346478daa@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240629_091826_278160_48C13CF1 
X-CRM114-Status: GOOD (  21.95  )
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

Am Samstag, 29. Juni 2024, 17:39:34 CEST schrieb Dragan Simic:
> On 2024-06-29 17:25, Dragan Simic wrote:
> > On 2024-06-29 17:10, Heiko St=FCbner wrote:
> >> Am Samstag, 29. Juni 2024, 07:11:24 CEST schrieb Dragan Simic:
> >> =

> >>> +#ifndef RK356X_GPU_NPU_SHARED_REGULATOR
> >> =

> >> is there some reason for this duplicating of opps?
> >> =

> >> The regulator framework should pick the lowest supported voltage
> >> anyway, so it seems you're just extending them upwards a bit.
> >> =

> >> So I really don't so why we'd need to sets here.
> > =

> > The reason is improved strictness.  Having the exact GPU OPP voltages
> > required for the boards whose GPU regulators can provide those exact
> > voltages makes it possible to detect misconfigurations much easier,
> > just like it was the case with the board dts misconfiguration that
> > resulted in the recent DCDC_REG2 patch. [1]
> > =

> > If we had GPU OPP voltage ranges in place instead, the aforementioned
> > issue would probably remain undetected for some time.  It wouldn't be
> > the end of the world, :) of course, but the resulting increased power
> > consumption isn't one of the desired outcomes.
> > =

> > [1] =

> > https://lore.kernel.org/linux-rockchip/e70742ea2df432bf57b3f7de542d81ca=
22b0da2f.1716225483.git.dsimic@manjaro.org/
> =

> On second thought, after seeing that the RK3399 CPU and GPU OPPs
> already specify voltage ranges, I think it would be better to drop
> the distinction between the separate strict voltages and the voltage
> ranges in this patch,

yes, that was what I was trying to say :-)

Also it makes the OPPs less cluttered. Also dt is firmware, I do expect
people to be reasonably knowledgeable if they mess around with their
boards OPPs ;-) .




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
