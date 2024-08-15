Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28F75C52D7D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 23:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9MaNGneEI8HO3clImgsbMaToEIlDpqUdaF/Y+m6yU/Y=; b=Nl7+y7DCDsZIZE
	c8aVWTkqNlqhJRl666BjZCCeJ/2WNkpBeUSQbEkhF7FdFRgW+CoYWzQxddhhpUJUN7UUlHcHVmsHu
	qnGApqJr1GID5mlLQsYv59nkx40lUD8U7219wHypc5oea2IXYkb32ReXVsbWlhKKtp/daJfgvxa/D
	3BwdHZCb37gJwJNTnyLmZos4QQ8P2HGMHw9PyTwBnvuWTNYemB9T1tWiVbVwwZSEcDwBFEk3SFop8
	NPrKd8v8EvsQjg1ki+3LnCB4j3muSGzdrqMwqKIHKTowpHXbjYVRVMPHssrzlYphpYaspWlyFr91C
	DpKV5xdqk/5Aq237VI1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sejtX-0000000BI9g-27VB;
	Thu, 15 Aug 2024 23:28:39 +0000
Received: from xn--80adja5bqm.su ([198.44.140.76])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sejst-0000000BI22-1D4j;
	Thu, 15 Aug 2024 23:28:00 +0000
Received: by xn--80adja5bqm.su (Postfix, from userid 1000)
	id 95DF940050C0; Thu, 15 Aug 2024 23:26:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 xn--80adja5bqm.su 95DF940050C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mediatomb.cc;
	s=default; t=1723764419;
	bh=EF+E2COe7oVZ7sfROU6GBcGSKhd8Vrlw1lRrqsceISg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dt3XvO5RfVnqkqhh+l0tfY0fUI/o+7eX8kWAjV9bpxo4Im7E6rTloBzEbHSttwElE
	 EqPaiP79ssAGpQsm5743Or+QqnCrTSoLsi2IaD+YdxbpRXQGLJJAo8K1PrsSAKH/Z9
	 E3avrkpFXn1bNBY3TwkhCplQAK4bqjlyZvrnMQ6qp+30wtXX5nNiLWUQlqrfUS13tD
	 Hl7PUHF46fdXrJC9ZDQV/AyMIjXA3Z+KBOXiG+0s748c3RRN93Gy8z48qPOTwtYStH
	 mBTVbbmrm8DnC6KsC2aYrM8f38XMp9tHY5sfUsaFnyMF7khkyZDEU/Dh8BTRv5KZDp
	 B31MOt8KJydgA==
Date: Thu, 15 Aug 2024 23:26:59 +0000
From: Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>
To: Heiko Stuebner <heiko@sntech.de>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 0/3] Add DTS for NanoPi R2S Plus
Message-ID: <20240815232659.GC25959@ветеран.su>
References: <20240814170048.23816-1-jin@mediatomb.cc>
 <172375308156.820196.16689328819690192699.b4-ty@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <172375308156.820196.16689328819690192699.b4-ty@sntech.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_162759_389394_AAB2562A 
X-CRM114-Status: GOOD (  13.13  )
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

On Thu, Aug 15, 2024 at 10:18:45PM +0200, Heiko Stuebner wrote:
> On Wed, 14 Aug 2024 17:00:45 +0000, Sergey Bostandzhyan wrote:
> > 
> > here is version 3 of the NanoPi R2S Plus patchset.
> > 
> > * a commit which adds mmc-hs200-1_8v in order to improve eMMC performance has
> >   been included
> > * the licence header has been updated to the newer version, anw now includes
> >   optional MIT licensing
> > 
> > [...]
> 
> Applied, thanks!

Awesome, thank you for the guidance and for staying with me on this! :)

Kind regards,
Sergey


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
