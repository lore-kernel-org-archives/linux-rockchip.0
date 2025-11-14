Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4116CDE032
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 08:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N4LPvgiORO3d6qP7hHyrMfxTKILbPlAvyB/7Uw4cPhY=; b=Z47Qqpi0N0Onzw
	QfexPtcOzXQ6j3i8CLvl7DxtqoSyg5nHmzhp+BBwS7kxZFW/p1+VmUOt1HDFfhRAmrzUQrU+1WebT
	wqVgjuhixOJyii1UQBZfTHUguQg0V5jiISTlJE9gOMv/E3CFaUu27b/AbP6MIv6gIQ5w2DhOWMLsA
	vkUtFz7hgkJLYW/wE3LKxcMARFDOkSEw/wZnoiKeEY6lnApAkCVu3/6OxfwuUmV2X76fQzYOSxtUY
	4K5i51p5hJy4VgyPC4ss2xUI3oUwzC+5fpvAN2lfYVJRy9iL3SbgCm/FJjRartgZ7fBZ5MmKwvwkJ
	ovX75z5X0/C1ah38wz5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJpEY-0000000Bojj-2F04;
	Fri, 14 Nov 2025 08:32:42 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJpET-0000000Boia-31ey
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 08:32:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id BCD5A4109E;
	Fri, 14 Nov 2025 09:32:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763109154; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=H7abZ3ZYaP2vBuHlUKqJanNr1i0yVWF/iFc+uzasKk0=;
	b=sxk3nJWFscy/o5txYfy8tEv4VhvSemjxPn9yE9PaqeG6IM+EyEcP3+OJ/asIZ7u6WpioI4
	QdYs0fg9fTT4v9XHhQFaXxnCuHVDtBUiCelYfpRtaJxRR3OZrWunvmdprbpoazq5jhmmfX
	47JOUvnBRSKoaMRT1pm+KGsCtMXFfT6+J48EkwqNI3FMkJZoofV8reJiWjGAP1I5wjrGd4
	IRIMTFDwr8ENfb2pA/ZUCoY1QNd9mm7NkuQJUyN/I9OZ0GaVPNHwEPVthqYUOIUW+Bn1Wr
	AiP4P9bLM9xVz+otB9nzbKGS+ygFDOTT/4OWnZq8g3Ed5uUt9sUFtraz7We/sQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <A3AD69295D2E2D65+db2dc8bd-054f-4dda-9dd1-3cc0c0feed35@radxa.com>
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-2-naoki@radxa.com>
 <ce6e6369-a7e4-4a35-80f8-70ef41c3b877@kernel.org>
 <A6C1199E2A0D3F37+f3fe0fd5-4ca5-4d3d-bc1d-45f46b48f89b@radxa.com>
 <93deab54-bd5e-433e-acbc-13f6ead47f43@kernel.org>
 <2177a0f0-68df-495c-b267-18e3d9b6ca80@kernel.org>
 <D88EE9EEB2B37D36+361d448f-d260-4d78-ae6b-abf1caabb94b@radxa.com>
 <b2833988-6319-4426-8a25-c0d34acffa47@kernel.org>
 <B6224BD6578686FF+dc81e00c-46f6-4791-af8a-99cf8e880f0c@radxa.com>
 <f112b806-b204-46b5-90b2-813ad5d0ceee@kernel.org> <A3AD69295D2E2D65+db2dc8bd-054f-4dda-9dd1-3cc0c0feed35@radxa.com>
Date: Fri, 14 Nov 2025 09:32:29 +0100
Cc: "Krzysztof Kozlowski" <krzk@kernel.org>, heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <194908a1-f956-ba0a-656f-7b1e8456b51d@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 1/3] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Radxa CM5 IO Board
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_003238_150516_17FF8CC3 
X-CRM114-Status: GOOD (  22.17  )
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

On Friday, November 14, 2025 09:24 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
> On 11/14/25 16:51, Krzysztof Kozlowski wrote:
> > On 14/11/2025 08:47, FUKAUMI Naoki wrote:
> >> On 11/14/25 16:42, Krzysztof Kozlowski wrote:
> >>> On 14/11/2025 08:37, FUKAUMI Naoki wrote:
> >>>> Hi Krzysztof,
> >>>>
> >>>> On 11/14/25 16:12, Krzysztof Kozlowski wrote:
> >>>>> On 05/11/2025 08:08, Krzysztof Kozlowski wrote:
> >>>>>> On 05/11/2025 07:57, FUKAUMI Naoki wrote:
> >>>>>>> On 11/5/25 15:43, Krzysztof Kozlowski wrote:
> >>>>>>>> On 05/11/2025 06:13, FUKAUMI Naoki wrote:
> >>>>>>>>> Add device tree binding documentation for the Radxa CM5 IO Board.
> >>>>>>>>>
> >>>>>>>>> Link: https://dl.radxa.com/cm5/radxa_cm5_product_brief.pdf
> >>>>>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> >>>>>>>>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> >>>>>>>>
> >>>>>>>> Wrong DCO chain.
> >>>>>>>>
> >>>>>>>>> ---
> >>>>>>>>>      Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
> >>>>>>>>
> >>>>>>>> NAK, you just stolen ownership of an already posted patch.
> >>>>>>>
> >>>>>>> Read "Changes in v6" and patches; my patches are not the same as v5.
> >>>>>>> Your reply is totally inappropriate.
> >>>>>>
> >>>>>> Inappropriate is taking authorship of someone's patch, because we all
> >>>>>> expect to preserve the original authorship. That's not only basic
> >>>>>> decency but actually a standard.
> >>>>>>
> >>>>>> Additionally, read Joseph's reply that he wants to continue the work:
> >>>>>> https://lore.kernel.org/all/CAMWSM7iHtAxewW4JkRqRsifVnccqeFviaCgeOyprKDr92FOurg@mail.gmail.com/
> >>>>>>
> >>>>>> You clearly do not understand how to continue with someone's work.
> >>>>>>
> >>>>>> It is still a NAK.
> >>>>>
> >>>>> And I still wait for justification why you took authorship of this
> >>>>> patch, because to my eye you changed here nothing.
> >>>>>
> >>>>> So what did you change HERE that you think you are the author now?
> >>>>
> >>>> Changes in v6:
> >>>> (Patch 1/3)
> >>>> - Fix description; "Radxa CM5" is the correct name
> >>>
> >>> HERE, in this patch. Don't paste me hundreds of unrelated code. Write
> >>> concise and precise answers/comments.
> >>
> >> https://lore.kernel.org/linux-rockchip/AE0735A6C797CCFF+10496d73-7c0a-4884-9561-24721305a24f@radxa.com/
> >>
> >> | By the way, at some point I switched from "continuing your work" to
> >> | "recreating a new one based on my current work." The results of my
> >> | current work(*3) have changed significantly.
> > 
> > So next time I will take your patch, your code, say "I recreated it" and
> > submit under my authorship and for you it is fine?
> 
> Regarding CM5 patches, I'm fine.
> 
> > Please take Joseph's patch instead. Read submitting patches doc to
> > understand which one more tag has to be added when sending somoene
> > else's work.
> > 
> > In the future, I sincerely suggest avoiding re-creating people's work
> > but building on top, because you just duplicate the effort.
> 
> I understand that you don't understand how I made efforts to build my 
> work on top of Joseph's patches.

Maybe a solution for this huge mess could be that Naoki submits
unmodified patches from Joseph first, using the standard procedure
for that, and then the additional patch(es) that improve Joseph's
work?  All that in the same series.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
