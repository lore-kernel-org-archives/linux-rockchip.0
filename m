Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53E8DC27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 21:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FRLmFSHZCcsjxbVx+4YLnP49/VnqIPdNzYjClPao3Yc=; b=nZnYw2KEsB6zSY
	8oHLpaCxspYj1BfPjN9YWtlQGEcpwjuv3jnMha7WhYyjUPb749DHIJnnmRiqtcb5zk2b95x3tABrR
	/WPKtSZP4HOayIiBArD5W4qWcHBkYmtF5sR+4IpgTfy8sVk7+9goYmzgF/nA7HMJ6Cdhuhm+f4A6L
	aRyXddN2XPMvb9F5GfZ5ceXVpkbLqc2xs9PNw5J+fKRc5KlQI8y0Q5LismuEHbFsq99itg7mLrXHa
	XCA4x3hihzdTQV8U2y5h2o+w53TADAGi0QXb3Ze2R4f6idBxXYes9AweFwdQFTZ2kFYv24hWUtOlX
	bYTHshMvd0AsxPR6OILw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK2oN-00000002lz2-3kb8;
	Wed, 19 Jun 2024 21:25:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK2oM-00000002lyP-0CRy
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Jun 2024 21:25:47 +0000
Received: from i5e8616dc.versanet.de ([94.134.22.220] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sK2oD-0001sS-CL; Wed, 19 Jun 2024 23:25:37 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH 1/2] arm64: dts: rockchip: fix PMIC interrupt pin on ROCK
 Pi E
Date: Wed, 19 Jun 2024 23:25:27 +0200
Message-ID: <1938148.VZ3vTMCxA0@diego>
In-Reply-To: <793B93C3DF509ADC+f2b62f2b-bc05-4573-b783-ac0a6083a21e@radxa.com>
References: <20240619050047.1217-1-naoki@radxa.com>
 <171882539855.4191977.2793236782363724538.b4-ty@sntech.de>
 <793B93C3DF509ADC+f2b62f2b-bc05-4573-b783-ac0a6083a21e@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_142546_231126_5D59410B 
X-CRM114-Status: GOOD (  16.82  )
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

Am Mittwoch, 19. Juni 2024, 22:07:25 CEST schrieb FUKAUMI Naoki:
> Hello,
> 
> On 6/20/24 04:31, Heiko Stuebner wrote:
> > On Wed, 19 Jun 2024 14:00:46 +0900, FUKAUMI Naoki wrote:
> >> use GPIO0_A2 as interrupt pin for PMIC. GPIO2_A6 was used for
> >> pre-production board.
> >>
> >>
> > 
> > Applied, thanks!
> > 
> > [1/2] arm64: dts: rockchip: fix PMIC interrupt pin on ROCK Pi E
> >        commit: 02afd3d5b9fa4ffed284c0f7e7bec609097804fc
> > 
> > 
> > Patch 2 is not appropriate, sorry.
> > 
> > The aliases are sorted this way since 2021 and the order is userspace-
> > facing. So for the last 3 years people have boards with the sdmmc as
> > mmc0 and changing this now would possibly break a number of boards.
> 
> this is the reason I didn't add Fixes tag. I think this change in next 
> major release is acceptable... but it's wrong?

Correct.

Because with that change, all people mounting /dev/mmcblk0p1 or
whatever in their system would break their userspace after a simple
kernel update.

And that falls under the "we don't break userspace" mantra.

People should be able to expect their system to keep booting with kernel
updates, without neededing to meticulously validate each kernel release.

Hence that mmc order needs to stay that way.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
