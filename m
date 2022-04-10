Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCA0FC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Apr 2022 16:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3NPwdlng2DcoUOnteyNcifeMyY2+lji7h2TRjL7NfQ=; b=yJUJAHymzdYL0v
	zI/uYyPEunRuwQIWt6CJzz7e+gIsRLC3/EE2r8frR2LVWsSsoA1mYqA48pCxlr9Fs0ggkkJimRZrb
	ivP7yUkAzVyAr7xgJDe///xLZw4ADBDeMwCeGww4POeWWrZfQYxLoUS87HNct3340pd1iqW7QqbBw
	E3icZJPHJ5eYatjtLT2m44O04aUsHPQ3ftqOjrdBl41da77QSFw9DLwxPQctbKYjad0ua+AUYjxQt
	Pcwnhdkr3lnecO7lr5wrzOQof71UrTmQBYAjsYStl78p2jMBBFXJwSfBGMATk0BpVQnjTHipPiVvS
	AFNbks/nLf9i+iBQFPsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndajh-0058Ka-Dd; Sun, 10 Apr 2022 16:48:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndaje-0058K7-EL; Sun, 10 Apr 2022 16:48:23 +0000
Received: from p508fdda7.dip0.t-ipconnect.de ([80.143.221.167]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ndajc-0006bM-FX; Sun, 10 Apr 2022 18:48:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Frank Wunderlich <linux@fw-web.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v1 0/2] Change Bananapi-R2-Pro board to match V1.0
Date: Sun, 10 Apr 2022 18:48:19 +0200
Message-ID: <3163720.aeNJFYEL58@phil>
In-Reply-To: <7EC83317-29EA-4464-9C24-27A78FB77911@fw-web.de>
References: <20220402110045.104031-1-linux@fw-web.de>
 <164906273049.1398682.587469799631775473.b4-ty@sntech.de>
 <7EC83317-29EA-4464-9C24-27A78FB77911@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220410_094822_530349_258B1FD7 
X-CRM114-Status: GOOD (  15.71  )
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

Hi Frank,

Am Dienstag, 5. April 2022, 08:09:43 CEST schrieb Frank Wunderlich:
> Am 4. April 2022 10:59:59 MESZ schrieb Heiko Stuebner <heiko@sntech.de>:
> >On Sat, 2 Apr 2022 13:00:43 +0200, Frank Wunderlich wrote:
> >> Mainline Devicetree was created for v00 prototype that was not in
> >> public sale and only shipped to few developers. V1.0 of the board
> >> has some changes in io-domain and gmacs are swapped.
> >> 
> >> Change mainline DTS to match the current hardware.
> >> 
> >> Frank Wunderlich (2):
> >>   arm64: dts: rockchip: Change io-domains of bpi-r2-pro
> >>   arm64: dts: rockchip: Add gmac1 and change network settings
> >> 
> >> [...]
> >
> >Applied, thanks!
> >
> >[1/2] arm64: dts: rockchip: Change io-domains of bpi-r2-pro
> >      commit: 34fc952867aa2a2e257bf2bcbbaac97ac91f8bd1
> >[2/2] arm64: dts: rockchip: Add gmac1 and change network settings
> >      commit: 5c8e82ed3a4a5c8023b2959d8f3292f7291e7227
> >
> >Best regards,
> 
> Hi Heiko,
> 
> Thanks for fast apply.
> 
> Can you treat it as fix (for 5.18). At least io-domain will damage board if someone use 5.18. Network will simply not work.

I've moved both over to fixes now.

It's clear for the io-domain but also the second patch probably makes
the 1.0 board actually work where it wasn't before I guess, so that
also counts as a fix :-)

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
