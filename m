Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC5B3C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jan 2022 11:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WfbBJclnCYq1lFtSRE4yXwAffDNdZflcmfjRUy86KC4=; b=ehuUG+w6w7sgHx
	vkYM34g1iZ/kTfWn8X+FmuGlM2cWtr7WwfR+bP5umquuQVxr/F6xEaEKrqkt2ds/zsHd0BvykzP5h
	YIk8TCNrN+NZgorEv9Ieiazwu8GPUdyJUYXIYmmhn2B6xnJOaBVN75AtQUJfQh7pghYSKVfsHxs1I
	mW+iyARW2DCNAUCZD3LfkUPe0Vz85cLrYdnYyE521aShaouqyxMsKpl+vgeEbgGXqXh6+yID0K5iJ
	E+P88dwKQ3miIzAYKVCPH1qE9LwKDJuRZOZ16xL09CPVWmh6qytc9u5B5AwE/F1MKRhVBI8UmsR4z
	cpyxJJETm7hCePKaejPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nE7yb-006NwM-S4; Sun, 30 Jan 2022 11:02:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nE7yP-006NuA-5d; Sun, 30 Jan 2022 11:02:22 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nE7yL-0000hT-5q; Sun, 30 Jan 2022 12:02:17 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liang Chen <cl@rock-chips.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: rename and sort the rk356x usb2
 phy handles
Date: Sun, 30 Jan 2022 12:02:16 +0100
Message-ID: <14752572.ChuAC8jng2@diego>
In-Reply-To: <d203569c-bae1-c35a-204a-53617170d3b3@wolfvision.net>
References: <20220127190456.2195527-1-michael.riesch@wolfvision.net>
 <3736463.EBuT6JFcjP@diego>
 <d203569c-bae1-c35a-204a-53617170d3b3@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220130_030221_264643_8754B012 
X-CRM114-Status: GOOD (  36.98  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Sonntag, 30. Januar 2022, 10:56:08 CET schrieb Michael Riesch:
> Hello Heiko,
> =

> On 1/29/22 16:28, Heiko St=FCbner wrote:
> > Am Samstag, 29. Januar 2022, 10:59:32 CET schrieb Michael Riesch:
> >> Hello Peter and Piotr,
> >>
> >> On 1/29/22 10:23, Piotr Oniszczuk wrote:
> >>>
> >>>
> >>>>
> >>>> Good Evening,
> >>>>
> >>>> While I'm not against this idea, my main concern still stands.
> >>>> I spent a great deal of thought on this, and decided to go the route=
 I
> >>>> did to maintain consistency with previous generations.
> >>>> As such, I see one of three paths here:
> >>>> - Pull this patch only and depart rk356x from previous SoCs.
> >>>> - Do the same for previous SoCs to maintain consistency.
> >>>> - Drop this patch to maintain consistency with previous SoCs.
> >>>>
> >>>> I ask that others weigh in here, as offline discussion has produced
> >>>> mixed results already.
> >>>
> >>> just pure user perspective
> >>>
> >>> (who spent last weeks considerable time to develop DT for rk3566 tvbo=
x. 99% of my work was by reading/learning from other boards existing DT's. =
Any inconsistencies in DTs makes work for such ppl like me much more harder=
):
> >>>
> >>> For option 1 - i don't see value
> >>> For option 2 - what is reward for extra work needs to be done on all =
other SoCs?
> >>>
> >>> so option 3 seems to be natural choice...
> >>>
> >>> in other words:
> >>>
> >>> for me:
> >>> option 1 brings practically zero value + increased inconsistency.
> >>> option 2: extra work - but consistency is like in option 3 (so where =
is value?)
> >>>
> >>> so option 3 offers the same consistency - but without extra work...
> >>>  =

> >>> just my 0.02$
> >>
> >> Of course this change is purely cosmetic and it is reasonable to ask f=
or
> >> the practical value. It is just that technically the quartz64 dts is n=
ot
> >> sorted alphabetically at the moment. The u2phy* nodes should be but
> >> before the uart* nodes to follow the convention. On the other hand, it
> >> may be nice to have the usb2 phys and controllers grouped in the dts.
> >> The proposed renaming would allow all the mentioned nodes sorted
> >> alphabetically and grouped logically.
> >>
> >> Therefore I had option 1 in mind. I don't see any dependencies between
> >> the different SoCs and think we can make a fresh start here.
> > =

> > correct :-) .
> > =

> > I do see each SoC individually and while I try to have people follow so=
me
> > styling guidelines everywhere (ordering of properties, ordering of node=
s)
> > I don't really want people to fear what some other SoC has done before.
> > =

> > But even these rules evolve sometimes, when something seems to work
> > better than before.
> > =

> > We have nowadays 9 years of Rockchip SoC history in the kernel.
> > Thanks to general dt-binding conventions most nodes have specific
> > names anyway (mmc@... etc), but for example trying to rename stuff
> > in older SoCs that has worked for years now is for one error-prone
> > as Michael pointed out, but also introduces unnecessary churn,
> > when these old SoCs (thinking of rk3188, rk3288 and friends but also th=
ings
> > like the rk3368) are essentially "finished" and most likely won't see t=
hat
> > much additional support for stuff added.
> =

> So... may I take it that you are going to apply the patches in this serie=
s?

that was the intention behind that "wall of text" :-D

Heiko


> Or should I switch to option 3 and re-submit?
> =

> Thanks and best regards,
> Michael
> =

> > =

> > =

> > Heiko
> > =

> > =

> >> Option 2 is not really feasible, we would almost definitely break
> >> something existent.
> >>
> >> Option 3 is feasible, of course. However, I would sort the nodes
> >> alphabetically (u2phy*, then uart*, then usb*). Works for me as well,
> >> although it is not that nice IMHO.
> >>
> >> Since many boards with the RK3566 and RK3568 will pop up in near future
> >> we should do the change right now (if we want to do it), as of course
> >> all the board files need to be changed. Therefore I wanted to bring th=
is
> >> matter up now. Let's agree on something and move on.
> >>
> >> Best regards,
> >> Michael
> >>
> > =

> > =

> > =

> > =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
