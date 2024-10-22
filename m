Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6F7CCDD0EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 20:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+vinDVXThImEAlMdT0qXJy9Ws0FjwgzTZ3QgznnpNE=; b=QkuZvTaD8wt9G6
	ub4FOelg/mvoHuIk78CCrRPNgIpcHoh+nifBQUyWCdB0gkK7ecRfe6783bYeh3D5kvPOmMwJgEAbZ
	c+f/5AzLnZ8o/mC+6z6IsqgQIq9KGeolu2/27wG+yT4yXEzl87WG4WOp8N8Vx9PhASpTCD35XFnbz
	c2jhS9BgjnRDB9x2Z2t7zqK+2fsC0DZEp9COEsg64xws+f+ZUJj4sRLY+Rtria7Gf3Fi0fgBJ9p2h
	umOKATgrXaOQ1KvtUfgSLoS98ClT7s+HALg2UG6q8CW2N6sdHbs6h7bMSEJ3yfiZABDS6AI2YwAn3
	Sq+oGwOgiKgIW4xYVldA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3LcQ-0000000C6TP-0oLZ;
	Tue, 22 Oct 2024 20:36:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Lat-0000000C6Ih-2AHa;
	Tue, 22 Oct 2024 20:35:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=m0Gs6f86g6ugZlujb8KQk26o9qJc7j+Ro8eH92L7lo4=; b=ywSIYnVbFesb3ZAfUBmu30D8wn
	bPBG20T5dToSMGDFIObyWgTvmJ5EAMI/nTuBC7bsNrH3IIQc/tcr/niYGrZj6NmV5ad6oZfeMLIsJ
	tt0coaYoWX6XrgDxYNGeLtGIPdZcelCU33f5SfR+5bOh/kt7HUXD41t1S5t5kZEkgwxceWXKakdjN
	iMCChOYObEtBWt/JzKWY+IJ6s7NiWfoCEBUNN5A0zifxOenqhC/AoxYZ3fnQDj+mOR2QACy5n7+vC
	mLhdbozP/vVX13scrrLPG/H25REIxB/iRqgOyspT+vAmErH2BVhI0LMpyiwrYV5QWRM0YWbssH1Gd
	sWyJCXTw==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t3LaX-0001tt-BZ; Tue, 22 Oct 2024 22:34:45 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tianling Shen <cnsztl@gmail.com>, Jonas Karlman <jonas@kwiboo.se>
Cc: Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>,
 Andy Yan <andyshrk@163.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Chris Morgan <macromorgan@hotmail.com>, Conor Dooley <conor+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add FriendlyARM NanoPi R3S
Date: Tue, 22 Oct 2024 22:34:45 +0200
Message-ID: <2629917.Lt9SDvczpP@diego>
In-Reply-To: <8684a5a3-48d0-4acf-9ed7-a035fca15119@kwiboo.se>
References: <20241020173946.225960-1-cnsztl@gmail.com>
 <172960632903.1476617.9941592027677995572.b4-ty@sntech.de>
 <8684a5a3-48d0-4acf-9ed7-a035fca15119@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_133507_621182_7E90AC6C 
X-CRM114-Status: GOOD (  15.15  )
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

Am Dienstag, 22. Oktober 2024, 19:07:43 CEST schrieb Jonas Karlman:
> Hi Heiko,
> 
> On 2024-10-22 16:12, Heiko Stuebner wrote:
> > On Mon, 21 Oct 2024 01:39:45 +0800, Tianling Shen wrote:
> >> Add devicetree binding for FriendlyARM NanoPi R3S.
> >>
> >>
> > 
> > Applied, thanks!
> > 
> > [1/2] dt-bindings: arm: rockchip: Add FriendlyARM NanoPi R3S
> >       commit: 1e94bfea52bee081c42ab922c19156dd3d2bade8
> > [2/2] arm64: dts: rockchip: Add FriendlyARM NanoPi R3S board
> >       commit: 50decd493c8394c52d04561fe4ede34df27a46ba
> 
> I just sent out a review on this patch [1], please leave more then a day
> or two to finish up a review ;-)

Hehe, yeah might be better ... somehow that small board dts looked so
innocent though - aka what could go wrong ;-) ... obviously something.

> [1] https://lore.kernel.org/r/13bb8657-f048-4f79-a2c1-3680445f2bef@kwiboo.se/
> 
> Regards,
> Jonas
> 
> > 
> > Best regards,
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
