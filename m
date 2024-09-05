Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C19FACD5BC8
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 14:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iu83eT4nOHR6MUQIfTqYvIQsDsl6dvvEhXapyVMuPCk=; b=D7USJahyqOHWsP
	qz9pqIcB7HxiEM2O2sWZE4dJxDwyvqO/MfnNK22zjZ1YFtAeKqwg2Uib1s2M+ImgQfvkRAtk066KS
	agRw/aszPCGdYwuCyYf8gnLZVE5dXQo2lxjpOrL7H6mRiCjxasLpgWRR3XCxesosSSz4IYY8UaUpe
	aQ3HCtwSDTv0q5NLdTfNPGDpsq1w0klj6olpeTcjfScRWYWR8Cyvm9VnrBCok8KdkXobRFAU5pl90
	G30G1H35Q/HdqHpgKzF0Lvr6lMh6C6eRkGOcROiVJzYARpjs12l0xWpEGQuWBg4m08eyiGsjln5U7
	qYGcEkfRaXhHU5xXMnsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smD7p-00000008df0-1UTY;
	Thu, 05 Sep 2024 14:06:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smD7l-00000008dcZ-3Zm3;
	Thu, 05 Sep 2024 14:06:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=GUXEpp2c2ARyLgOrUAyoNaSPEKrwdOLv9hGqE+A2ciI=; b=UTx7jycsYBnCRh+5njyIXgy5FC
	4XsU61PAuQ92AXKdGzHoAdP+7Ihixls/mxk5nAmSDHnACwdBRKb/3P3kPyOLxwNu7L2/uPSEoTIkw
	aGdZjMPmzKrjLTppnDlt7SVhyZsQSOaP7cr4/hZHSi3Ouau9rDce+d2kEt66vltXOAO8pVqEUj6Ra
	lDKgJT+b+GbxdLyEQw1Rn3/ShNCYBj0MD93G4uvFo01s8jC+P1rgUrk9OSfTBZBusr+zcMg/s1XWh
	KvbeU5kIWwEmFn3Dv/IsK74Ae1ypTYFAM1BRUyKHJMqF8GP7rGtkHJVoCgUmdWkIVqCbT0OEZiZK/
	PrN9vO2A==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1smD7i-000225-N9; Thu, 05 Sep 2024 16:06:10 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Dragan Simic <dsimic@manjaro.org>,
 linux-rockchip@lists.infradead.org, Diederik de Haas <didi.debian@cknow.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add a few aliases to the PineTab2 dtsi
Date: Thu, 05 Sep 2024 16:08:05 +0200
Message-ID: <2089090.o4kTbAZ4gJ@diego>
In-Reply-To: <D3YCHAOLOU6W.3B8MJYAYWOEGK@cknow.org>
References: <987e68d1c5e9a0cc56d730aec87246aa5ab8ea14.1725535770.git.dsimic@manjaro.org>
 <c820085c-a4f4-4d03-9df8-733a79e911c0@kernel.org>
 <D3YCHAOLOU6W.3B8MJYAYWOEGK@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_070613_953514_11359364 
X-CRM114-Status: GOOD (  26.02  )
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

Am Donnerstag, 5. September 2024, 14:21:12 CEST schrieb Diederik de Haas:
> On Thu Sep 5, 2024 at 1:39 PM CEST, Krzysztof Kozlowski wrote:
> > On 05/09/2024 13:32, Dragan Simic wrote:
> > > Sprinkle a few commonly used aliases onto the PineTab2 dtsi file, to improve
> > > its readability a bit, to make it easier to refer to the actual nodes later,
> > > if needed, and to add a bit more detail to some of the labels.
> > > 
> > > Suggested-by: Diederik de Haas <didi.debian@cknow.org>
> > > Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> >
> > Unused aliases do not improve readability, so for me this change is
> > making code worse without valid reason.
> 
> This came forth by a question from me to Dragan about a patch for
> another board which doesn't have a charger defined at all (yet).
> I actually have that patch (but not the HW) for a while (~1.5 year)
> now and I had used `rk817_charger: charger` for that, probably because
> I saw that being used everywhere else.
> 
> Then I compared it to the PineTab2 and noticed it had only `charger`, so
> I asked "What should I use? With or without the alias?"
> In this case the inconsistency is causing confusion (with me).
> 
> So: What should be used for that other/new board(s)?

As Krzysztof said, having a phandle that is never going to be used is
somewhat pointless.

Having a phandle defined for a node does not hurt anything, so having
some in a board dts is not catastrophically bad, but there is no reason
to add or remove unused ones for no reason - especially as it affects
git blame .

So in short, if you see an unused phandle in a dts _patch_, just point it
out in review.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
