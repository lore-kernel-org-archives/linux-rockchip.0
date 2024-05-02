Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7985AC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 May 2024 17:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:To:From:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QvB+4mwW5z14H9xFiJqBup5kilJpg3r9Ed2AJ6BNLSM=; b=tZYtTTDlzWadqV
	9rv6UkbOfSvfB06f9mr1wuqqEzW0ImzizcAataB0Tc/I2gtjGAjWhlSOpGzW63WQoRD44uDMVng3T
	9pOKkm1ZEHmPk7fok386qDv3aqC20d8HXJtdoYa/R2P1Y7fhWCh/CymgzJgUR8HDpqMQvPntk5tiI
	cF5uFEvC5WmyiR3j1QbbhpWxLVj2qYq060Vs441xmJXWogd3q0lFST5zuVUsPM2fNrsmu6OUe5/BO
	iv+sirrItdRL4I3A1KqfeNlKAFLC/auv4GqgPKMkQZKkF5rrP0uzM9lWHwmH1brwz7Fzw/RhPCYEa
	SRKoQlrUNv4MzHdgb2MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2aeK-0000000DVxH-1y1n;
	Thu, 02 May 2024 17:55:16 +0000
Received: from www522.your-server.de ([195.201.215.122])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2aeG-0000000DVw9-0ib6;
	Thu, 02 May 2024 17:55:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=folker-schwesinger.de; s=default2212; h=In-Reply-To:References:Subject:To:
	From:Cc:Message-Id:Date:Content-Type:Content-Transfer-Encoding:Mime-Version:
	Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=w4dn0Vter3zHEUtQucKoOeeLCpedNcU/NdXL21U7MNo=; b=jNoG++9dzY4xuhbzAtcgaalFfB
	gZWO6rFfvTu1BatteR2jPfb2FFBZq0kF5ITz+2z268bM+ZJesCbXSSjjfya76fJBH9oitqGLBF37o
	6V/0vuFwIQ1imwDBvV8gXDvzz5p9ad30Zsudo4bJwbbLRYJHLKV2kcvY4+LvikGTqq7Smhq3mqhr8
	6YflnjEBeyTjXP/sOXCwTRB1aFjUC4IowiU22mwehF772r05zrlqzpyKwvek/isFv7KfILhvnjSCO
	cGoE8vmxuwJWd3EwECV03xqic6iE635hi1orv0ijhX7bSzIh80jEHxZ2xrmhd7Ozkfvtq6HIpebNO
	x1o6SiDA==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www522.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1s2ae6-000PKw-9Z; Thu, 02 May 2024 19:55:02 +0200
Received: from [185.213.155.203] (helo=localhost)
	by sslproxy06.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1s2ae5-00G3Lu-2G;
	Thu, 02 May 2024 19:55:01 +0200
Mime-Version: 1.0
Date: Thu, 02 May 2024 17:55:01 +0000
Message-Id: <D0ZCO8KL5AQF.21Q70S27P7F5Z@folker-schwesinger.de>
Cc: "Chukun Pan" <amadeus@jmu.edu.cn>, "Heiko Stuebner" <heiko@sntech.de>,
 "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Rob Herring" <robh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
From: "Folker Schwesinger" <dev@folker-schwesinger.de>
To: "Dragan Simic" <dsimic@manjaro.org>, "Jonas Karlman" <jonas@kwiboo.se>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa ROCK 3C
X-Mailer: aerc 0.17.0-122-g7b4c8f67eb5f
References: <20240428123618.72170-1-amadeus@jmu.edu.cn>
 <20240428123618.72170-3-amadeus@jmu.edu.cn>
 <D0X7UJELGST3.2IL1AFDJ89N07@folker-schwesinger.de>
 <ded928414323ef4be51f2575d00ba7d1@manjaro.org>
 <832d6c37-a6c5-4468-9a23-1637b2affb90@kwiboo.se>
 <afa32c669ded2d37a4c11a54f1fc05b0@manjaro.org>
In-Reply-To: <afa32c669ded2d37a4c11a54f1fc05b0@manjaro.org>
X-Authenticated-Sender: dev@folker-schwesinger.de
X-Virus-Scanned: Clear (ClamAV 0.103.10/27263/Thu May  2 10:23:13 2024)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_105512_563198_1F510750 
X-CRM114-Status: GOOD (  15.33  )
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

Hi Jonas and Dragan,

On Thu May 2, 2024 at 3:48 PM CEST, Dragan Simic wrote:
> >>>> [...]
> >>>> +&sdhci {
> >>>> +	bus-width = <8>;
> >>>> +	max-frequency = <200000000>;
> >>>> +	mmc-hs200-1_8v;
> >>> 
> >>> Out of curiosity, does this board also support HS400? From a very 
> >>> brief
> >>> look this board seems quite similar to Rock 4 series boards, that do
> >>> support HS400.
> >> 
> >> In a word, no, unfortunately.  In more detail, the Rockchip RK3566
> >> and RK3568 SoCs support the eMMC modes up to and including HS200, but
> >> not the HS400 mode.
> > 
> > The datasheet for RK3568 only mention HS200 mode, however, HS400 mode 
> > is
> > working in U-Boot after adjusting tap number for transmit clock [1].
> > Linux may need similar adjustment to make HS400 mode work on RK3568.
> > 
> > RK3566 that this board use only support HS200, as specified in 
> > datasheet.
>
> Oh, that's very interesting, thanks for pointing it out!
>
> What makes me a bit worried about enabling the undocumented HS400 mode
> on the RK3568 is that neither the RK3568 Hardware Design Guide (HDG),
> version 1.2, [2] mentions HS400 support.  I mean, the RK3568 datasheet
> may be wrong about not mentioning HS400, but what are the chances for
> the RK3568 HDG to also be wrong there?
>
> In other words, maybe there are some hard-to-trigger hardware issues
> in the RK3568 that made the HS400 mode, although actually present in
> hardware, officially unsupported for the RK3568?  Maybe there's even
> some non-public errata from Rockchip, who knows.
>
> [1] 
> https://source.denx.de/u-boot/u-boot/-/commit/5c053f3adc69eaf83645b5d44c6adbb2d49a3fa7
> [2] https://dl.xkwy2018.com/downloads/RK3568/RK356X/Hardware/

Interesting indeed! Thanks to both of you for the info and for providing
links to the U-Boot commit and design guide. Much appreciated!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
