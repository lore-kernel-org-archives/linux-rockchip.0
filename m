Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C232AC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Apr 2022 07:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NpPrWVyiy/cQPBdx0O5W21VbGP+i/LZPWJ2Xw2E86yM=; b=HEZQe1RzMGr3Lm
	PUa3eGwrCt+JMhHV+340wzzZAUyscd9ysCz+5BM6tPI4MKQwbrPPzAD+TtrcMns7nBKLN4VjcHalf
	wj9uorUAOOgrGXLltjjtF7C+yxQPEbOOfMuaao20fVzhvxGOkuCDS5DI301Z8ZzccyKgURK/6eMpM
	RILSwOFC/BlhY8MK/Wc+j2j3sMdSP9Iwx4Skb1Cky+22f9WyBHNkHYDCm2pI2/sN8tFI8ZhgNEILJ
	Ak5WpFOa598NhhHElbqHwvQDa5CYsWIbext/BkpRuCjRFSK5SPdwBYUfcbEdApMIBjh/cVnUuptRb
	0BR/cHHjAgTv/OOwhivg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nd5S9-002VFe-Gj; Sat, 09 Apr 2022 07:24:13 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nd5S6-002VEs-Hv; Sat, 09 Apr 2022 07:24:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1649489033;
 bh=71qv70vZxF+QqOQSgEW+RQ5BfofYTTkw2+VdXFLTcNA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Vc6rWvHiBmEpggo1vCR0Z6lX9UhZXC6n7sOzWUULSB0v0Vnnnrwgthw7hWl7wEb3w
 6Z+n/zEU1Ue82RBSqD7uLa8aNjd/uchDo9j68qrYHG4RzOQGgWL+NirQlAPCyDUAt3
 uS0l0wSlXXnJPSv8jTfjXYBDBYWrBBQ3c4NQ6GR8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.154.105] ([217.61.154.105]) by web-mail.gmx.net
 (3c-app-gmx-bap35.server.lan [172.19.172.105]) (via HTTP); Sat, 9 Apr 2022
 09:23:52 +0200
MIME-Version: 1.0
Message-ID: <trinity-7dbd5148-923f-479b-9eed-a75f000456e5-1649489032880@3c-app-gmx-bap35>
From: Frank Wunderlich <frank-w@public-files.de>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, "open
 list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, devicetree
 <devicetree@vger.kernel.org>, arm-mail-list
 <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>
Subject: Aw: Re: [PATCH v5 3/5] arm64: dts: rockchip: add rk356x dwc3 usb3
 nodes
Date: Sat, 9 Apr 2022 09:23:52 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAMdYzYrK2KV1svrHS=zMjGYh=dUis-JKjgYHaeOB4LQWXM1+4A@mail.gmail.com>
References: <20220408151237.3165046-1-pgwipeout@gmail.com>
 <20220408151237.3165046-4-pgwipeout@gmail.com>
 <trinity-3ae2b0d1-a3f0-4c64-acb6-2fb4fa0b36b3-1649434480623@3c-app-gmx-bap48>
 <CAMdYzYrK2KV1svrHS=zMjGYh=dUis-JKjgYHaeOB4LQWXM1+4A@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:TeZQKSghMMZUkUJKs83ylTXQSsU7yV7FSkqP/fuUaLAE6KQax+QMuXgqsf3qW1M6JW66d
 NHzdML2cIYdHIRESCTwArTUiHYPIaXTSsBm+y2j1c/jVZNx61/K1vKsD6piKqna0HLktYtRt6Sba
 eKjfuS2RyCepOg45TbGRY3XDLFZw8WlmWh33BvGfVtmiF2Lc0vd3LemRfBN5gfStMh03Fn3xOMgK
 Aq0PervdwShRT7KoRrCr0bUjd6NoCI1YXwsmvKiTJ43EsDOi8dBsY7va9ajIXvhocpiOGlTog/mN
 ZU=
X-UI-Out-Filterresults: notjunk:1;V03:K0:xgRQTaYlAUc=:XIjlEiF7C5aazhG/BoUhUm
 T91Mr8O3RSzpflZWmrPJ1NAlQZLLeHmYJQG7HQ+X4L7nm1zSf7IPBrLUMDh0gizBIVyloMW3L
 0fE/pJhELkc1s1lxf49VodX+qU8xmxBIRdReI6otgP+S8dhoxXFBjzA/0nUMJIDJpKo9PMNcc
 N5afQ13D3XzUdGnxZkdVXinIGyYqiMC8byFQUmusFR3Pnks5SUv8koMNicPw4DL4V2/UAvpoR
 dPMhJj0bY6dCz1OTqaMN46f2OGMqaTCOFjxn0Jh3ja/P6qvAggzKBDGNtKmOmqaamvuibVMBS
 vP6l9pZePvrjOjMNU9s8PFqBuwxLe9m+xbdGl4GqIw5nhXfqJj2L1evKpeB5v/F4BSzvGTAqI
 IKPVx5GBdQT4jhWKvRTDxDtm+YwLOev4awU8Xm7blpcLCg+Xyrir9MeQW2tLvTvzwSn6xC5e3
 2PxfmAesluRiyRWbdfgA+/aF3wkU351BvzZ1gZKl+sFTTetuVnZHS8EU8F0XkvxercHMQop7Z
 CVrDUuKyRjHIOThoMAWGUgNnx8LSiR+mtKrUUe8z569cQDBSqnw6Kay7lWdV1VmSWyGVYXIOE
 WIlNFj8hPYvxhYmNDHQhPvcFGIirraR5oaBzY4CPuxsc/xoEQxrosMzc1FhjBIMwKOV9Gohz9
 xmsQFwyApZx9ukzSK5nXFFI3htl8kbyR+J51889ABYNy74beFY8OO4batPBsAQkQtTo0MxjLN
 q7i3RN4FH5hQhUzX1mViDs3gzQp9KM3IoyGx1K0+z+GkgXs0NYVmA/FOMI+lxM7uqlP9HsPJv
 HjyXXel
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_002411_081385_7B2B56A0 
X-CRM114-Status: GOOD (  12.27  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Tested on mediatek board (mt7623/bpi-r2) and there xhci is working.
So it is no problem in core/protocol and specific to rockchip xhci driver.

at least i nailed it down to these 2 commits in drivers/usb/dwc3/core.c, without them it works

5114c3ee2487 2022-01-27 usb: dwc3: Calculate REFCLKPER based on reference clock
33fb697ec7e5 2022-01-27 usb: dwc3: Get clocks individually

regards Frank


> Gesendet: Samstag, 09. April 2022 um 01:39 Uhr
> Von: "Peter Geis" <pgwipeout@gmail.com>

> On Fri, Apr 8, 2022 at 12:14 PM Frank Wunderlich
> <frank-w@public-files.de> wrote:

> > seems like usb (2+3) is broken in 5.18-rc1
> >
> > i see controllers, ports are powered, but no device detection.
> >
> > maybe anyone else have same behaviour with different board?
>
> Yes, it seems you are correct, there has been a regression with xhci
> between v5.17 and v5.18.
> I'm bisecting now.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
