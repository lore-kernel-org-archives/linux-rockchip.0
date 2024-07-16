Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15440C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jul 2024 20:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=51HN3nOBCiKZecnxkUgTNctR9fdSmVRCCRK2/z0joC4=; b=GsmBdV81wcYbsy
	qqwuxA43Dg+rqbaGteclTCID8cwYmOwwTK0upIDqCK0XJjblawmNk/dcnX5SVwazbD9oxfUQxni78
	OAxP0O6DcxbADvD1uVqN0OypX/WaN7l1VnkXt0Z5hKbxBxcAHYzkIdHg52oW+DfVW8ywIlF+ITGGP
	I36RI0p9D8+K7DIJZDES+Ukcezexi7HjJD6WoTjGE+qEKlBZXyKg2AMth1QecdqFXXrenjShNqPxi
	cgbdPeA+tkk7dy5oWxqel4nLhwsk6T01zo64zg2pRyX+9Y4FatVp7PLCHM8hqoBT0WpCYhDRpwKDu
	LDJ0EvAqWOyz/EnBtuyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sToTM-0000000BcJC-2Imw;
	Tue, 16 Jul 2024 20:08:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sToT1-0000000BcHI-3JYa;
	Tue, 16 Jul 2024 20:08:09 +0000
Received: from i5e860d09.versanet.de ([94.134.13.9] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sToSr-0006oY-7Q; Tue, 16 Jul 2024 22:07:57 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Christopher Obbard <chris.obbard@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 0/2] Add support for Firefly CORE PX30 JD4
Date: Tue, 16 Jul 2024 22:07:56 +0200
Message-ID: <2101274.K71DO8KEF6@diego>
In-Reply-To: <81015d015aae01f2d5fa70262304837e@manjaro.org>
References: <20240716-rockchip-px30-firefly-v1-0-60cdad3023a3@collabora.com>
 <81015d015aae01f2d5fa70262304837e@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_130807_861027_68947408 
X-CRM114-Status: GOOD (  17.96  )
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

Am Dienstag, 16. Juli 2024, 19:45:44 CEST schrieb Dragan Simic:
> Hello Christopher,
> 
> On 2024-07-16 17:51, Christopher Obbard wrote:
> > The Firefly CORE PX30 JD4 board is a SOM and motherboard bundle from
> > Firefly containing the Rockchip PX30 SOC. This series adds support for 
> > it.
> > 
> > ---
> > Christopher Obbard (2):
> >       dt-bindings: arm: rockchip: add Firefly CORE PX30 JD4
> >       arm64: dts: rockchip: add Firefly CORE PX30 JD4
> > 
> >  .../devicetree/bindings/arm/rockchip.yaml          |   5 +
> >  arch/arm64/boot/dts/rockchip/Makefile              |   1 +
> >  .../dts/rockchip/px30-firefly-core-px30-jd4.dts    | 562 
> > +++++++++++++++++++++
> >  3 files changed, 568 insertions(+)
> 
> It would be better to split this into two separate files: a dtsi
> for the SoM, and a dts for the carrier board (which would include
> the new dtsi).  That would reflect the actual hardware better.

correct :-) .

There are numerous examples of these types in the kernel
already, both these combinations - for inspiration :-) .



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
