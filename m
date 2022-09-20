Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0C11C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 09:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j33ttDrIDm5+xTBnPjCo7kq/j93H8shhwLTz4t1QBOc=; b=Ex6ygYRsdsa+mN
	AuIwKkPjR4agMEEFh94JQpJI9pAJkqH38essM9MzblQHfiPn/Y5njRQ07fHKPuoA6gh2Ws7hevdK9
	3/1rAGnfQPCdpvMGGOmF4lIw5cT2gnzKPs/BOucOOvjC94SM89V+yPsGBqN+/USIvEjWpZzZAHQuh
	kn/0CfK88KUNl7f8b6mgRiXk4JHaiGyXHmpo7D/nd4D/exCIQBQ6BHZpOMLVwI8sefzCKb8NoTett
	BLB1v3PF3iPqJacS+Ra2mX4k1KXKKQqgOBnaeIY3JEIt22kPXG8J8gRlGXXcPLkFEGmjIjVsRYM8q
	PL0O9JYfNdMzngpLQ6tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaZsR-002bgV-13; Tue, 20 Sep 2022 09:49:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaZsN-002bcv-Bl
	for linux-rockchip@lists.infradead.org; Tue, 20 Sep 2022 09:49:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0907662558;
	Tue, 20 Sep 2022 09:49:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06906C433C1;
	Tue, 20 Sep 2022 09:49:07 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com header.b="kFVOYD0P"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105;
	t=1663667345;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=KrvMwoCI44ixpqh7YSb4dPxXv3cUsQw2696cbGcQq18=;
	b=kFVOYD0PjfkVEGINGvpG2ewFoo6pTYq3bfiWb2R+4S2LaW9+6ZWXZuQd9AppIn5x5lUDa9
	VH5aNcsEOd/N8lz4ezyYowQT8lV5rd8r9kac0d9+gxdJTfxhqfl5veXBlhsDRtF5/PQAEb
	wBov3zKhSanD+CzZhDaTVIzRLBnMHYU=
Received: 	by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id b541fdd2 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 20 Sep 2022 09:49:05 +0000 (UTC)
Date: Tue, 20 Sep 2022 11:49:02 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Corentin Labbe <clabbe@baylibre.com>,
	Lin Jinhan <troy.lin@rock-chips.com>, wevsty <ty@wevs.org>,
	Mikhail Rudenko <mike.rudenko@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, Lin Huang <hl@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Kyle Copperfield <kmcopper@danwin1210.de>
Subject: Re: [PATCH] hw_random: rockchip: import driver from vendor tree
Message-ID: <YymMjpeHWV3d+64d@zx2c4.com>
References: <20220919210025.2376254-1-Jason@zx2c4.com>
 <32f8797a-4b65-69df-ee8e-7891a6b4f1af@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <32f8797a-4b65-69df-ee8e-7891a6b4f1af@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_024911_756727_C9D006E0 
X-CRM114-Status: GOOD (  18.90  )
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

Hi Robin,

On Tue, Sep 20, 2022 at 10:35:44AM +0100, Robin Murphy wrote:
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

Kyle, CC'd, pointed out the same thing to me. He apparently has already
done the work to have a hwrng ontop of that series. So hopefully it's
just a matter of having everyone coordinate.

So I'll duck out and let you guys handle it. Just please make sure the
thing you're rejecting this for does actually come to fruition.

Kyle, should you send your thing to Corentin?

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
