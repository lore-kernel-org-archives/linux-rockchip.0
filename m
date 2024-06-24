Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E310EC3064D
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 14:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1bqUKXG3xy53J5bETuUuO+Wuqzz4ortaGZ80IKZBU8=; b=us8CENGTr8lzno
	sZreON0/iHda0eE8BqrM06ZLE7T+fVYFP5Bbt83liRxgn1o0rL0HgsylrDpGIKbxwgxTmskiPPP4r
	XLLUuZMoIe9AufjK6GKqvGC6cv8PN20coJxtv6vRY+dZNkMvZOm5g56kR4+HK2PG0R2hbg/UzmdAG
	XZdZ7K7rp1bkesrVLKBsqamI6qGPagKlamUNc9VN5ic8JPDfAmEchoxyrfkW/Y6FIFb5qdCARTygR
	kAWVzBR3GqvAwBEKfpb8zwOH9tdhDu4m1NHGBj5fYClmhxWdKj+9/1kEowqWHIqL92dzI6/09OOnv
	J4t4UPNYvUSkWfIG5uBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLl9Q-0000000HD1E-1zaE;
	Mon, 24 Jun 2024 14:58:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLl9N-0000000HD0O-2BCn
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Jun 2024 14:58:35 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLl9C-00019N-TS; Mon, 24 Jun 2024 16:58:22 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki <naoki@radxa.com>
Cc: chris.obbard@collabora.com, conor+dt@kernel.org,
 devicetree@vger.kernel.org, krzk+dt@kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org,
 sebastian.reichel@collabora.com
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: change spi-max-frequency for Radxa ROCK
 3C
Date: Mon, 24 Jun 2024 16:58:21 +0200
Message-ID: <2557120.Y4W8hZkJsM@diego>
In-Reply-To: <DBE7B5A56069764A+b5680896-bc71-4af8-9d56-bd6828595e74@radxa.com>
References: <20240623023329.1044-3-naoki@radxa.com>
 <20240623040409.1756986-1-amadeus@jmu.edu.cn>
 <DBE7B5A56069764A+b5680896-bc71-4af8-9d56-bd6828595e74@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_075833_669570_D8D66155 
X-CRM114-Status: GOOD (  13.47  )
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

Am Sonntag, 23. Juni 2024, 06:24:56 CEST schrieb FUKAUMI Naoki:
> Hi,
> 
> Thank you very much for your comment!
> 
> On 6/23/24 13:04, Chukun Pan wrote:
> > Hi,
> >> SPI NOR flash chip may vary, so use safe(lowest) spi-max-frequency.
> > 
> > I don't think a fixes tag is needed, because there is no documentation
> > for this. See also (sfc part):
> > https://lore.kernel.org/lkml/d7de2213-8dd2-42ec-9a30-a569ac71be3e@kwiboo.se/
> 
> I see, I'll remove fixes tag in v2.
> btw, is this change reasonable(acceptable)?

it is, also no need to resend, I just dropped the Fixes tag myself



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
