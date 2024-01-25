Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5B73C47258
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 20:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s34/cLSChgof3I4vju+cK+SYB5pAtPcWaqa8Cxx/eXk=; b=ji90Cr+wfi2ulF
	mUU2OJ/85F6SbIgbWR+zwCD1HMY7bmDF6ok3CvIU6ZPXUyqaj1ESEpR+ZU40UbgAqD+RzdPMhcNpX
	aIGnrDerSLPbT3Fvoid6HhKDNqWIEDpC34MqPDrWN+fPbIMdcMy62+tW3nX8lAyzKI+jItzc1+fmr
	rlbJlDVYP3rS0DR+mqrKYmdNworvFWdrgFFlTIRVkOvxQTbRq0+htfiJchJ0KYrpBxGJxKJ6b49nF
	5Mj090cliQRdcPePU29DEpeZaTCerZ1lQotiSV1h6ZefVVEVm8XwZEOTsUmxuFE/34G40tw4049W9
	9JHBlqdhruJAewmxFIJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT65s-00000001joC-1hP4;
	Thu, 25 Jan 2024 20:13:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT65p-00000001jnH-0dmH;
	Thu, 25 Jan 2024 20:12:58 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rT65f-0001TY-4Y; Thu, 25 Jan 2024 21:12:47 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>, Trevor Woerner <twoerner@gmail.com>
Cc: Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rock-pi-e: fix location of snps
 properties
Date: Thu, 25 Jan 2024 21:12:46 +0100
Message-ID: <1976352.usQuhbGJ8B@phil>
In-Reply-To: <20240118230312.GB14779@localhost>
References: <20240116204103.29318-1-twoerner@gmail.com>
 <df78489b-7546-46ea-b09f-39a80692a962@kwiboo.se>
 <20240118230312.GB14779@localhost>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_121257_240056_2F6BA22C 
X-CRM114-Status: GOOD (  13.72  )
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

Hi,

Am Freitag, 19. Januar 2024, 00:03:12 CET schrieb Trevor Woerner:
> On Thu 2024-01-18 @ 08:31:30 AM, Jonas Karlman wrote:
> > On 2024-01-17 09:15, Jonas Karlman wrote:
> > I have just sent out a U-Boot series that fix ethernet on the v1.21
> > revision of the ROCK Pi E board, see [2].
> 
> Thank you! I have tested your patches both in U-Boot and Linux and they work
> perfectly.

if I'm reading this correctly, this patch is not needed anymore, right?

I'm not yet sure about the first patch, as it really is
just a cosmetic ;-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
