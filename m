Return-Path: <SRS0=wo7w=HP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A162C433DB
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Feb 2021 22:34:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0537F64E3D
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Feb 2021 22:34:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0537F64E3D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fnW5MApk+meOgjA469h8vFCxsQki7CyXK2Mgv5xKJyY=; b=vk9pEcc9WB13higXxvXfyKdV7
	oEhAyplBseiZ5O25RuU4kCy2cBHxbPyhTF/Bm0gYl4Ci0tfu/T8zDGnu8lTG74sCtE93dY+4uQJbe
	5Tg/t3nAO9d3bcJeTu2hIKrr70Erw9C4LFS0EvJU/g9fxZIvWLwm5dHq1exlPFP1/99D1AIDsWXIH
	One4kYGQM+L6sA97RXz6bauxtyXyYdgFbBIRTD53tUqtH41ihX+AZFVYcci6JOoDBHvEwbE1I+nBy
	A6yEGjcharSsT0mRKtnDYIoHTqsziYJ+DGG4XEWuW3FUGAgWY9D2FJ5k5JzR3IZn5k4pwThuKW9I1
	LK/LRKHzw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lB3U7-0003gE-GA; Sat, 13 Feb 2021 22:33:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lB3Tq-0003e6-Ve; Sat, 13 Feb 2021 22:33:36 +0000
Received: from p508fc8c7.dip0.t-ipconnect.de ([80.143.200.199]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lB3Ti-0006HN-Bi; Sat, 13 Feb 2021 23:33:26 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Fricke <sebastian.fricke@posteo.net>
Subject: Re: [PATCH 0/6] Support second Image Signal Processor on rk3399
Date: Sat, 13 Feb 2021 23:33:25 +0100
Message-ID: <7871592.T7Z3S40VBb@phil>
In-Reply-To: <20210213111957.3ocxgcyno6ent4vt@basti-TUXEDO-Book-XA1510>
References: <20210202145632.1263136-1-heiko@sntech.de>
 <16789691.tv2OnDr8pf@diego>
 <20210213111957.3ocxgcyno6ent4vt@basti-TUXEDO-Book-XA1510>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210213_173335_152481_C075E093 
X-CRM114-Status: GOOD (  21.12  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, dafna.hirschfeld@collabora.com,
 cmuellner@linux.com, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, robh+dt@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sebastian,

Am Samstag, 13. Februar 2021, 12:19:57 CET schrieb Sebastian Fricke:
> On 11.02.2021 15:42, Heiko St=FCbner wrote:
> >Am Donnerstag, 11. Februar 2021, 06:25:15 CET schrieb Sebastian Fricke:
> >> On 10.02.2021 12:15, Heiko St=FCbner wrote:
> >> >Am Freitag, 5. Februar 2021, 15:55:56 CET schrieb Heiko St=FCbner:
> >> >> I did some tests myself today as well and can confirm your
> >> >> hdmi related finding - at least when plugged in on boot.
> >> >>
> >> >> I tried some combinations of camera vs. hdmi and it seems
> >> >> really only when hdmi is plugged in on boot
> >> >
> >> >as you can see in v2, it should work now even with hdmi
> >> >connected on boot. My patch ignored the grf-clock when
> >> >doing the grf-based init.
> >> >
> >> >All clocks are on during boot and I guess the hdmi-driver
> >> >did disable it after its probe. The phy_power_on functions
> >> >did handle it correctly already, so it was only happening
> >> >with hdmi connected on boot.
> >>
> >> Thank you very much for solving that problem, I've tested the scenarios
> >> described below and it works like a charm. (With your V2)
> >> >
> >> >
> >> >Btw. do you plan on submitting your ov13850 driver
> >> >soonish?
> >>
> >> Actually, I have posted the patch already see here:
> >> https://patchwork.kernel.org/project/linux-media/patch/20210130182313.=
32903-2-sebastian.fricke@posteo.net/
> >
> >very cool to see
> >
> >> I currently review the requested changes and questions and will soon
> >> post a second version, but I expect quite some time until it is actual=
ly
> >> merged.
> >
> >could you Cc me on future versions?
> =

> Sure will do :)

by the way, you could also answer the v2 series with a

Tested-by: Sebastian Fricke <sebastian.fricke@posteo.net>

so we get some coverage :-)

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
