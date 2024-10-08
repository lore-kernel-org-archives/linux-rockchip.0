Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8168DCEFC42
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 19:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rpAcyo8K4p9VE6lRuVZBd1G9wFBhE00twnCL+/nLFKc=; b=4YjECXPTu6gv3L
	JTAGKxx+N7KThttXYME+qOKSQstnroEMKhdhAh51w7fMToF4piJ8fQ5pFqwG3glfpRrtV4qkCOdAS
	GFUgmf/f9NVy5gB121amu7ofUotm9uJap83avi5bGfmFuxvk497LNMqdJstUlXMupmVwK+vc6kL86
	qODlHLB7NXL4tORH70/loIpZrdkkWeea1maOJRzgIGtPfxKeX7PlEypqYqKPgu9JMsANKjNoSi7bK
	a0MQ25csCvkjBO5YcSQNdE9iOeZAAVAYYMSjd09R7STCmE1L1FUZsAl6KL1hR9XESUuXYP6VcGCtL
	Ic79LthnUShHDcE29EmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syFs8-00000006w79-0bVh;
	Tue, 08 Oct 2024 19:27:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syFqm-00000006vrq-3lRG;
	Tue, 08 Oct 2024 19:26:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=FhQkehwGj9tY7Cfu+3fe0KEsL4p9cA3gfskuGZndKuQ=; b=Y7poJ7581kZPvGWRfvLw6odq0I
	oanEKm52hlcmfBdwCH7A7AGCcZQyVN+YeDXa4nMGgWOxWGs3+d9b8XHFgEgdZ4laRXfVpgKTizsIi
	DCk8WCL3QtSoNiA2daFRIuG9N5K0GxOGRBz3bAHU+MrNc/HBVDAeIdB5H1u+kixyLO7xbntHzo6n7
	KT7o1xj07cOfaQBTe3/On3T16SDifk4jA0ZYCjzzJ3Z8fePjVkeyZR/ikKYV3omW2pEbKfIyyxNnB
	TwyCn7CuZ4SLgsBMC59d0W21NuY19UDRZaVZ35lx12fO/LVZtJwRI2VOQK4hfm9XhWITt+SXdV37p
	yYIqLWpg==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syFqV-0006zK-1L; Tue, 08 Oct 2024 21:26:11 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 alexandre.belloni@bootlin.com, wim@linux-watchdog.org, linux@roeck-us.net,
 karthikeyan <karthikeyan@linumiz.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v3 1/6] dt-bindings: watchdog: rockchip: Add rockchip,rv1126-wdt
 string
Date: Tue, 08 Oct 2024 21:26:10 +0200
Message-ID: <1988046.PYKUYFuaPT@diego>
In-Reply-To: <37e26b46-2f6a-4db4-b003-59088ef1dcc1@linumiz.com>
References: <20240912142451.2952633-1-karthikeyan@linumiz.com>
 <ddca4051-0e83-4d39-8654-12210ffa5685@linumiz.com>
 <37e26b46-2f6a-4db4-b003-59088ef1dcc1@linumiz.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_122628_968608_7BEA8D1D 
X-CRM114-Status: GOOD (  16.33  )
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

Hi,

Am Montag, 7. Oktober 2024, 15:56:58 CEST schrieb karthikeyan:
> 
> On 9/18/24 12:59, karthikeyan wrote:
> > 
> > 
> > On 9/18/24 04:46, Heiko Stuebner wrote:
> >> Hey,
> >>
> >> Am Donnerstag, 12. September 2024, 16:24:46 CEST schrieb Karthikeyan 
> >> Krishnasamy:
> >>> Add rockchip,rv1126-wdt compatible string.
> >>>
> >>> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
> >>
> >> I think this patch misses some recipients because neither
> >> the watchdog maintainers nor the watchdog list is included.
> >>
> >> We'll need for them to at least Ack this patch, so they'll
> >> need to be included. Please check your scripts/get_maintainer.pl
> >> call
> >>
> >>
> >> Thanks
> >> Heiko
> >>
> > Apologies for missing them. Adding them in this reply mail.

I don't think that will have worked.

Ideally can you include Conor's Ack and resend only the watchdog binding
patch to the watchdog maintainers (and lists and me too please) .

Because just adding more people to a reply probably won't tell them
that some action is expected.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
