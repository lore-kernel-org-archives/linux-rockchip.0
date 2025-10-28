Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDEAFCCD1BF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 08:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7j5tHuW+tr/FrEODpgYv1kkwZOGfgSQI5FMs5fcnEWg=; b=SkY7BKF3sSmaRU
	th9uQ4KfWFUuwOe1NIcTOQ82n1uhG+RhAtkUqwf3PRJ+Ep9x6RVgm4LCjM64cGRrNnEmT1a+kN79n
	OMGWI4vQ80A3YDzDSyhY7J6A4+Tl7HDBsyQ4TJTPCVfYyB1vGMeFWGq1oTDqFZRhjRWR3PRvb6RSE
	ZeNZy9L32FFm1aZhn49tlgqvZznJxfpyszdb+sXL/V8ljqQyzZzckr8WGCak0g2j0ke7xfiruN6tK
	QK7L61imn19rqU14iDHmMElmhXgzU1G4uj0ONmnC0ycku7ayb8E/CQc5Bg3ZP9RTp3OU7waT0ibsD
	NIhj4J7nXjvhhIUgkgQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDfWf-0000000FaP9-0EVc;
	Tue, 28 Oct 2025 08:57:57 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDfWd-0000000FaOu-3erI
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Oct 2025 08:57:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DA215611A3;
	Tue, 28 Oct 2025 08:57:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 316D5C4CEE7;
	Tue, 28 Oct 2025 08:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761641874;
	bh=Po/OwM9V+OyVxIQbYkgr3J1I7800Wn9hWVECYoUXxiE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TBO6I8p8d3zkx25cynfoklgHh56/lM2llBbcIjHissGO95JJU6PQ5ZICXVi6ek0W+
	 Dl4ySXYkcWDIBDjeIdTed3TWq+ijM9P4NdhXX1d3vQEYJxyuTU9VfPQnXj2P9RYi5f
	 j/OZCIeUDCIoX6zzoBgOh9iTFH0l37OcOLxwsH488MJWcuD9w65PtDSkpGni07IkPg
	 TdjxQWF7nmvmIhE86Pr/n1xpg2bPfppdihqY9afqrPNMxZKFA9Vqj/cKsqUHu94oj2
	 HyHCKnlNTCI6Akp5+8MD2tuOTGijlA5GGTFfcs7qSn9pseqbHD2pPK1Adh02T73FqG
	 hSbwa7uMgQyaQ==
Date: Tue, 28 Oct 2025 09:57:52 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, jonas@kwiboo.se, dsimic@manjaro.org, amadeus@jmu.edu.cn, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Reorder the Radxa board
 entries
Message-ID: <20251028-cunning-furry-slug-4fd3dc@kuoka>
References: <20251027122641.39396-1-naoki@radxa.com>
 <20251027122641.39396-5-naoki@radxa.com>
 <67e7badd-4b38-4f93-872b-e51a43281d3b@kernel.org>
 <6B986FE9E161F74F+f2826946-a3e9-4618-b5c8-6e29f9f6b83c@radxa.com>
 <1fc497ee-3363-49c9-93eb-20acd4373df9@kernel.org>
 <A39F9BCC6572BA03+67736ed4-86a0-4a78-98af-b2f39aeb785e@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <A39F9BCC6572BA03+67736ed4-86a0-4a78-98af-b2f39aeb785e@radxa.com>
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

On Tue, Oct 28, 2025 at 04:29:41PM +0900, FUKAUMI Naoki wrote:
> Hi Krzysztof,
> 
> On 10/28/25 16:26, Krzysztof Kozlowski wrote:
> > On 27/10/2025 23:30, FUKAUMI Naoki wrote:
> > > Hi Krzysztof,
> > > 
> > > On 10/28/25 04:08, Krzysztof Kozlowski wrote:
> > > > On 27/10/2025 13:26, FUKAUMI Naoki wrote:
> > > > > Reorder the Radxa board entries alphanumerically, with the following
> > > > > exceptions:
> > > > 
> > > > 
> > > > Why? You must explain that in the commit. What sorting is being used by
> > > > this file? Why do you think your re-order matches that sorting rule?
> > > 
> > > I understand there is no rule, only your preference. Thanks.
> > 
> > 
> > Really there is no? Are you sure?
> 
> Could you please tell me what sort of sorting is being used for this file?

I don't know. I am asking you, because if you re-sort something you
clearly must have know the sorting rule. Otherwise without knowing what
is current sorting rule, how can you be sure that you sort it correctly
instead of just making a mess more messy?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
