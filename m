Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06C73C3ABB2
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Sep 2024 22:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VejrtB8BrUuty7cxYs9szFZ6/3A6p4m2rEe/yvzQ8Ig=; b=Dz12yF5GHuUUhd
	164h+z7vEasH9MomrBdCmI9O5gNjaR9ZzSWCE2byUIYkmqMLypIST/4xb68K5pJ1emuJb1QZan9Lw
	Sol9vOxZzXmZYS02CnTCReVOkD2ReSch3iUwuLPbN9zNF+b/Px0kqFkAY6zkmwdAvdJNroFHkagEn
	J223nxXE+6VHUPqEHA3nLEtkWvyZjSwL2GElj0G8twZaT8Ki2pHqJhHOzOet/Nwf0nwTjNNjTZa6r
	uyLAtqnAaK/unERnS2S9v3BlzEvtI+hWHBRHJzcYIXcPdKxiZEkSwKkvmpn0XbRdAtSzfnz6i9IPb
	OeMVus77aXjXRsxh40aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqKNp-000000050nN-1vXy;
	Mon, 16 Sep 2024 22:39:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqKMj-000000050iU-0bhY;
	Mon, 16 Sep 2024 22:38:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=zFh+9m6bFt3yYPy5J3eOxOrUjNZGpq4euBHAABmwVps=; b=k0zO8q7SKxTLeYly004Mi7yqY3
	glGoj/l8uUO8qwaZmuBCnf3/NFouVzClQcl6FTauS3dwHQoDqKl5tkGVNS0V/GSumMVCOhOis4A0S
	3Ko82rO0PR3BBecXgQCGvBY0HrmYVPp8AYeA9956gOSETARzKRuK/Bke5wNIs9A5SaBgVpWZfMhiz
	yceYTgliTGaepu0/VcmFDV7Szm3UCmwyQBRVOKgUjcr1BYg34BYjOfDGyz+er6xe20QmPB5uLi015
	4HuuRINmzNF2c9vI6M42Q22lCDsZGx+3pOGZL2ZGXbkkPx0ju4P0f76I2KqnOThn0gkUn+U2oLt+e
	offU7DUA==;
Received: from [213.164.25.30] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sqKMa-0003Pj-Mf; Tue, 17 Sep 2024 00:38:32 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rtc@vger.kernel.org,
 Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 3/6] dt-bindings: rtc: microcrystal,rv3028: add #clock-cells
 property
Date: Tue, 17 Sep 2024 00:38:30 +0200
Message-ID: <8425812.T7Z3S40VBb@phil>
In-Reply-To: <20240916143407734d133c@mail.local>
References: <20240912142451.2952633-1-karthikeyan@linumiz.com> <2955009.e9J7NaK4W3@phil>
 <20240916143407734d133c@mail.local>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_153841_237371_2F914056 
X-CRM114-Status: GOOD (  18.31  )
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

Am Montag, 16. September 2024, 16:34:07 CEST schrieb Alexandre Belloni:
> On 16/09/2024 16:26:23+0200, Heiko Stuebner wrote:
> > Hi Alexandre,
> > 
> > Am Montag, 16. September 2024, 14:37:56 CEST schrieb Alexandre Belloni:
> > > On 12/09/2024 19:54:48+0530, Karthikeyan Krishnasamy wrote:
> > > > RV3028 RTC has a clock out features, the clk out can be
> > > > controlled using clkout register, to consume the clock out
> > > > from rv3028 '#clock-cells' property is added.
> > > > 
> > > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > 
> > just for my understanding, does this mean that you expect this change
> > to get applied together with the others?
> > 
> > No preference, just making sure I understand :-)
> 
> i was actually wondering how this was going to get applied. I guess that
> if you are planning to take the rest, you can also apply this one.

so we were both wondering the same thing :-) .

For some other watchdog binding Guenter suggested the binding patch
to go with the rest, so I wanted to make sure your Ack meant the same.

But of course I'm also fine/happy with you just picking up this rtc
binding patch for the rtc tree :-)

Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
