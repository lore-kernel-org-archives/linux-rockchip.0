Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DEBBE7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pnC9qH+uITQ89xM9uNNaXsfVsnEU6s4z8Ss3+rYEtuI=; b=Q8wEjxu0WU0jCc
	TOFCSRWGMGFtRIPPRBqXkNByNJLREDa9G3cfNiPAM7Hk8RKFUzepqEdD3DJd2P9J5yJ6Qw8SQMATY
	GFNNfNjoivXjiv2X9Pl1zcNmZ/a7m0O+OsY4I6gLOLkRkHpfg804IovpWkucyTkluuF7VtAg+hg5u
	kIj9XNTIlQgZxubYn8gEQ3wZAGw93a3G2vGZBf9vgt03V4McQ1h72nfpaNtqOHS1zeXoM1T1Ueo6g
	iPCNspiU2nQTTDEMN+Fa97iBJjvrxfLMyml3DINUPiFFh7npHEkkkjgchWzARwHyLzEzVYwQIXlt1
	d5V78Z2z3lVBf4QHh+fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLMQ0-0000000EvoN-1gxJ;
	Wed, 11 Dec 2024 13:06:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLMM8-0000000Euo9-2bfz;
	Wed, 11 Dec 2024 13:02:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Jkmc+0iMxSsuraunK1hN8Fbs31rpvecJZuCVn+Hdq70=; b=2EAp0vPV9U9VTzLQIBFoBNm3wm
	wZi0Eggw03q+26nYB020dRYGjGIj1liBjiypzd55QnC7v5a+CyphFgnHfLRnru551jrqhGFMkFQg/
	ZCbtrjpajxf9gFv40AJhXC+S2kNyDU39e8ckE3DgCmhpmY621QxHg3oC6P4H94nCJAPpb6PmHvQrd
	0pA7NsaCoQ9cQ9XZxUtCsbT3RPORl4vo29LOiCS/o0MG9oNROg4xuR95xELFIO1x3vUv5eMGSStmf
	nqmoN/uFxYXq36yG90YlKaLE8mkKbJaqjed7tWq9hjJCwu4r8gxYiWe9z+dK+LSrleaxEX0oBd0HG
	xMlS/E2w==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tLMLd-0003DO-Li; Wed, 11 Dec 2024 14:01:49 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Lee Jones <lee@kernel.org>, Jiri Kosina <jikos@kernel.org>
Cc: jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jdelvare@suse.com, linux@roeck-us.net,
 srinivas.pandruvada@linux.intel.com, bentiss@kernel.org,
 dmitry.torokhov@gmail.com, pavel@ucw.cz, ukleinek@debian.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-leds@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v9 1/9] HID: hid-sensor-hub: don't use stale platform-data on
 remove
Date: Wed, 11 Dec 2024 14:01:48 +0100
Message-ID: <3196449.TQGk6oTFT5@diego>
In-Reply-To: <n914pn7o-pr9n-5ss0-p744-73402nnn843p@xreary.bet>
References: <20241107114712.538976-1-heiko@sntech.de> <20241211120844.GD7139@google.com>
 <n914pn7o-pr9n-5ss0-p744-73402nnn843p@xreary.bet>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_050220_682092_0BB9AEEA 
X-CRM114-Status: GOOD (  21.25  )
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

Am Mittwoch, 11. Dezember 2024, 13:24:42 CET schrieb Jiri Kosina:
> On Wed, 11 Dec 2024, Lee Jones wrote:
> 
> > > > > This change was more or less a surprise find, because I wanted to make
> > > > > the platform_data pointer in the mfd_cell struct const and this the hid
> > > > > sensor hub stood out as doing something strange ;-) .
> > > > > 
> > > > > So patch 2 of this series actually depends on this change to not cause
> > > > > build errors.
> > > > 
> > > > Ah, right.
> > > > 
> > > > > But seeing that we're after -rc6 alredy, I would assume the brunt of the 
> > > > > mcu series might need to wait after 6.13-rc1 anyway - but I guess that 
> > > > > depends on how Lee sees things ;-) .
> > > > 
> > > > OK, I am keeping my hands off it for the time being.
> > > 
> > > I can take it now with an Ack.
> > 
> > Looking to apply this set now.
> > 
> > Ack please.
> 
> I'd preferer if Srinivas could ack this as the more specific maintainer. 
> Srinivas, please? 

The patch already includes the
   Ack from Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
from a previous version, so I guess it should be ok already?




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
