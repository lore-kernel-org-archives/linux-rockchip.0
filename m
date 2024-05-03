Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16853C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 12:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/KokygWSbjQelDP1W9Uvg1cApQB/VXXtDpf0PEGHzYk=; b=iT6czrkaW6Sy0a
	6D5moCc+i0iCl1TtaN/tZE2fWa21ulk+RYghxtWDHdATHw2SaH+0tCM1pj+Le6RzE1oI8k4CljJiE
	WeTpx9EG1R+QOpqldAyyLskL1OkGttVzckNk+KRxXR6zCsjXu60RtpIkpsLdLCpD041EEC0NPF6l5
	lFcD7zhy3CrtyAyzKNXST0Lv4CHBkfHlpvPFRq0Q1BSx29k4q2XCc7WvqqpRZHoJcZkAY3QRBBd6C
	qrNopowprix5NhQEtEh5AlKfA9iKbnZJAqvCboRarovrLyiyRo9YGi6AKNA0kCgf37elNTA99vDIt
	duFuoMiZHMkaQgGdexLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2sPX-0000000GUm5-1MCl;
	Fri, 03 May 2024 12:53:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2sPV-0000000GUl0-08x5;
	Fri, 03 May 2024 12:53:10 +0000
Received: from i53875b01.versanet.de ([83.135.91.1] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s2sPR-0000tz-Kq; Fri, 03 May 2024 14:53:05 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: Add Radxa ROCK 3C
Date: Fri, 03 May 2024 14:53:04 +0200
Message-ID: <15481689.tv2OnDr8pf@diego>
In-Reply-To: <171473602992.3469033.3176474743011728197.b4-ty@sntech.de>
References: <20240428123618.72170-1-amadeus@jmu.edu.cn>
 <171473602992.3469033.3176474743011728197.b4-ty@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_055309_113797_4A38FFF5 
X-CRM114-Status: GOOD (  13.35  )
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

Am Freitag, 3. Mai 2024, 13:38:19 CEST schrieb Heiko Stuebner:
> On Sun, 28 Apr 2024 20:36:16 +0800, Chukun Pan wrote:
> > Changes in v2:
> >   Collected Acked-by.
> >   Drop cd-gpios for sdhci.
> >   Add mmc-hs200-1_8v to eMMC.
> >   Correct the spi max frequency.
> >   Update model name and compatible.
> >   Update regulator according to the schematic.
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/2] dt-bindings: arm: rockchip: add Radxa ROCK 3C
>       commit: c0c153e341d2a82241bf0a0b78117ceeb29be3eb
> [2/2] arm64: dts: rockchip: Add Radxa ROCK 3C
>       commit: ee219017ddb50be14c60d3cbe3e51ac0b2008d40

Forgot to add, I've dropped the rk809-sound node, as well as the sound-related
properties from the rk809 pmic that got flagged by the binding check
and which I could reproduce here too.

So please submit these as follow up patches, once the necessary changes
to the pmic to allow its codec use are merged.


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
