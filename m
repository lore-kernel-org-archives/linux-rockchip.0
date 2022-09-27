Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 755F7C07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 16:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtnC2VNQapJmoJpT7bQTQ41hDxdnOaaQIxzMluDrP5U=; b=D9jOzNIOGp24+l
	UlevemnyxaOMU/qt5DpC97DH9G+e4R1SnKOp3F1H8I5IKPC6+/p7PEefGb7FL6SkyozFd/EX5yBal
	ixGeRbn27wPLOKRegjV6Wk0QPW+Py7fRpwPuDpy1Tqt2EeIiPt321ASk1Zmam4DUs/f66FE/w9BQb
	dcKxcNU2Ws0gKO9IIBT//Qv6u8i87teHpRr2F/R5lrgUI9Y6sd59oOuxyvVCtkjAGCEaXiQBlWoVn
	8B9kkdvpbHx8JZyJDooXwf7qkGXOla7WOhV9hWUboJTGh/dZ/N+ZE9RyaKlx2viyxPXMX6sgz/QJ/
	HIE4JvPAnmXtQwCM7kUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odDbA-00Bm8a-GN; Tue, 27 Sep 2022 16:38:20 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odDb7-00Bm6C-FC
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 16:38:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=ZOmyr0741p8HxTGKR6xPjn9bzOl726XtgNZYRB1MIBA=; b=pJfeAszpHyjtPAIdxlLZP1WikJ
	fT2HG5jhfVnW9TwE81qdTP44C7gBOorGItOT520Qfp0RDKuo+5e7pCeaMAHXYYYog++Bz7mHgOH0s
	09MtkHD/XIVK7FN11JrQe6eh0NBeytdnzB5J4jjt9bTSPfsh1Jz5J5XgKMm7G5Bj/7n5VHIn640jk
	ujHunMzcOeq9VY7kasjXEO/ENa580J6Dwz3aj/NoAZPPQjguyBJYM+ItQE3MLNx3UpHtojBpHSqqa
	DT3BLu4PjL9t4D0xCHPXWnfUlnnfbych7z52KSXKCZZvuihr2HtfOPrkjMR7Tf52CaZgRYWNzlmxe
	zE/FMujw==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1odDaj-00BrCg-TA; Tue, 27 Sep 2022 18:37:53 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1odDaj-000LPi-0p;
	Tue, 27 Sep 2022 18:37:53 +0200
Date: Tue, 27 Sep 2022 18:37:53 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Robin Murphy <robin.murphy@arm.com>,
	"Jason A. Donenfeld" <Jason@zx2c4.com>,
	linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Corentin Labbe <clabbe@baylibre.com>
Cc: Lin Jinhan <troy.lin@rock-chips.com>, wevsty <ty@wevs.org>,
	Mikhail Rudenko <mike.rudenko@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, Lin Huang <hl@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] hw_random: rockchip: import driver from vendor tree
Message-ID: <YzMm4d3sZBHpitm9@aurel32.net>
Mail-Followup-To: Robin Murphy <robin.murphy@arm.com>,
	"Jason A. Donenfeld" <Jason@zx2c4.com>,
	linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Corentin Labbe <clabbe@baylibre.com>,
	Lin Jinhan <troy.lin@rock-chips.com>, wevsty <ty@wevs.org>,
	Mikhail Rudenko <mike.rudenko@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, Lin Huang <hl@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-rockchip@lists.infradead.org
References: <20220919210025.2376254-1-Jason@zx2c4.com>
 <32f8797a-4b65-69df-ee8e-7891a6b4f1af@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <32f8797a-4b65-69df-ee8e-7891a6b4f1af@arm.com>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_093817_967567_21BC8204 
X-CRM114-Status: GOOD (  15.07  )
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

On 2022-09-20 10:35, Robin Murphy wrote:
> On 2022-09-19 22:00, Jason A. Donenfeld wrote:
> > The Rockchip driver has long existed out of tree, but not upstream.
> > There is support for it upstream in u-boot, but not in Linux proper.
> > This commit imports the GPLv2 driver written by Lin Jinhan, together
> > with the DTS and config blobs from Wevsty.
> 
> Note that Corentin has a series enabling the full crypto driver for 
> RK3328 and RK3399[1], so it would seem more sensible to add TRNG support 
> to that. Having confliciting compatibles for the same hardware that 
> force the user to change their DT to choose one functionality or the 
> other isn't good (plus there's also no binding for this one).

It might make sense for the cryptov1-rng driver (I haven't checked). For
the cryptov2-rng driver, I looked at the RK3568 TRM (I can't find the
RK3588 one), and from what I understand crypto and TRNG are two
different devices, using different address spaces, clock, reset and
interrupts. The vendor kernel uses two different drivers.

Regards
Aurelien

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
