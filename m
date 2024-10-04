Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92E06CF8857
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Oct 2024 20:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QzetkxJw6wieAneIZEXW5MWeirVq/NJ2DT5oPsrX1Cc=; b=xG+ed6c/WzFr53
	VOeZCQCRYw/tWNdizeIevp/9no5WLX5c3Gpc12EQPNqsdHSgPRQnEanzApacIf6R8eOdiJPcQFzvr
	Lp9zkeGbqN3Wr7l8t4cmKp1brtmCsLOJx7MdqYrHNgVdKCJYSjMmi736mbK5Is8iVSGy6Yo72OjkB
	xAR3RaoYAKQr/3UlrehNCSxblGpayyc5a1R7+hSZmqK8ANAATAv7E2AdbV6PocdmdAUISGp0sdI3q
	JksBbcUB8IcbA2raprhEQbEpcsNf2YTuEmHgQnRAF02rKwcfm1Pc17xsrx2Q1hgcKhHtAQ5Ro30Yp
	+Y1Wt70TkYXD1CAnyggA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swp81-0000000EBIU-1wE7;
	Fri, 04 Oct 2024 20:42:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swp7z-0000000EBHQ-0i7L;
	Fri, 04 Oct 2024 20:42:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/3WqLUyp55MFWyio5AkOs6mN8Dn13D5CQnQY7Az5rxg=; b=BII+msqzNxCU2zL5wLSSVvPT/E
	BKsCjmFV6ImfzbP530vw0hwcDEdsguXF5ibc0HcBe+K2tlfD8LnGq7QsYn5pVhiLXWe/1mZ/+pXDv
	pbSqATlBSNRPtMmLpXAZ0O83raw1aeprHObqombUi+R/EmUaYYUCPpyrAHtg8cxi9GqStiAwx1tJY
	UZI+la1C1hrtY4QeqsHfdwlBvG0UOHujGoW1UIkxusd8A1dtDPbeSPO1TNBc9Ba0T1/n40SyeI2SR
	DR1oZl5npe/Zf+Rh/2iqXeYK+YtjwyorVGkzqAYjnO420WZLIZlGTJ14G9TPW/olWaKfgCxCfu83t
	bMY8hc6w==;
Received: from i5e8616d7.versanet.de ([94.134.22.215] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1swp7o-0003kO-KH; Fri, 04 Oct 2024 22:42:08 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>
Cc: linux-rockchip@lists.infradead.org,
 Jaehoon Chung <jh80.chung@samsung.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org
Subject: Re: [PATCH] mmc: dw_mmc: rockchip: Keep controller working for card detect
Date: Fri, 04 Oct 2024 22:42:07 +0200
Message-ID: <1846973.TLkxdtWsSY@diego>
In-Reply-To: <69d06c04-cc8c-4435-a622-33d5dcd1fa24@arm.com>
References: <20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid>
 <CAPDyKFosf_+m9j8YgHa-PsC2SV8+Aou2O6bTbMfzGBpQ2sY8YA@mail.gmail.com>
 <69d06c04-cc8c-4435-a622-33d5dcd1fa24@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241004_134219_254993_F82D6EE0 
X-CRM114-Status: GOOD (  23.89  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Freitag, 4. Oktober 2024, 19:34:33 CEST schrieb Robin Murphy:
> On 02/10/2024 10:55 pm, Ulf Hansson wrote:
> > On Sat, 14 Sept 2024 at 13:52, Heiko St=FCbner <heiko@sntech.de> wrote:
> >>
> >> Am Donnerstag, 12. September 2024, 09:26:14 CEST schrieb Kever Yang:
> >>> In order to make the SD card hotplug working we need the card detect
> >>> function logic inside the controller always working. The runtime PM w=
ill
> >>> gate the clock and the power domain, which stops controller working w=
hen
> >>> no data transfer happen.
> >>>
> >>> So lets skip enable runtime PM when the card needs to detected by the
> >>> controller and the card is removable.
> >>>
> >>> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> >>
> >> So for the change itself this looks good, i.e. it fixes an issue for b=
aords relying
> >> on the on-chip-card-detect.
> >>
> >>
> >> But for boards doing that, the controller will be running _all the tim=
e_
> >> even if there is never any card inserted.
> >>
> >> So relying on the on-soc card-detect will effectively increase the pow=
er-
> >> consumption of the board - even it it'll never use any sd-card?
> > =

> > Good point! A better option is to use a polling based mechanism - and
> > we have MMC_CAP_NEEDS_POLL for exactly that.
> > =

> > Moreover, on DT based platforms one can even use the "broken-cd"
> > property to indicate this.
> =

> Except that goes further than is needed here, since it would fall back =

> entirely to software-based polling for card presence. In this case the =

> CD function is not broken in terms of actually detecting a card, it just =

> doesn't work to wake the controller up from suspend because it can't =

> fire its own interrupt while powered off. In principle all we should =

> require here is to periodically resume/suspend the device, to provide a =

> window for the interrupt to work and normal operation to take over if =

> appropriate.
> =

> Of course the really clever way would be for suspend to switch the pin =

> into GPIO mode, and set the GPIO interrupt as a wakeup to trigger resume =

> and switch it back again, but perhaps that's a bit tricky without =

> explicit pinctrl states in the DT :/

and then the question really becomes, why move away from cd-gpios at all.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
