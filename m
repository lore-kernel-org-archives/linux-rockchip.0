Return-Path: <SRS0=MDEE=CV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3AA8C43461
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2020 12:02:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B60B214D8
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2020 12:02:33 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="msDzc9nm"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1B60B214D8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xi3+60XVLtA0lfiM/l5y8RPXsGwM/KqpjTriDIqoiic=; b=msDzc9nmJ69E/hEIiovpmlg+V
	0AN4Q36Oj4w4ze1NEKItiKMiNnjyO9n4o+ase+c9GCZxJTeRwBrzC2+HF3Sg53lraZ7cIhAmNHhyn
	1hOA6l8XhmNpHcg0tpQIGQT5Ro2G05KrMnGGPnxQu9Yjwoab4lP7ssHOBHoTfs+o+03ts195FfKXG
	lohK9reqctMsmgQcekgPYRinmP702Hcq7YG4ktk3Xg2DwfUi9j0+qZRl5rPlxNBE/OEJ66uxQcePl
	oS51C6Uqh27wCnW7RS91cIifFvIEIZZlMxktkuHNClnQxC42c68KvyCNyPHIyS9DhzEzRgPecmsIT
	wg4NImZ7g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kH4Ee-0003Hv-CK; Sat, 12 Sep 2020 12:02:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kH4Ec-0003HU-A6
 for linux-rockchip@lists.infradead.org; Sat, 12 Sep 2020 12:02:26 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kH4EY-0000A2-Tt; Sat, 12 Sep 2020 14:02:22 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jianqun Xu <jay.xu@rock-chips.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 0/2] pinctrl: rockchip: codingstyle for pinctrl-rockchip
Date: Sat, 12 Sep 2020 14:02:22 +0200
Message-ID: <1646119.L9t6MPyLfv@diego>
In-Reply-To: <CACRpkdYGJsK4Ek8pDCeNMWt41dd2s--Lkxewh4Po4E-45UdwMg@mail.gmail.com>
References: <c4ec95a7-aaf1-2331-352f-2def319a1c7d@rock-chips.com>
 <20200117081358.5772-1-jay.xu@rock-chips.com>
 <CACRpkdYGJsK4Ek8pDCeNMWt41dd2s--Lkxewh4Po4E-45UdwMg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200912_080226_363479_B69C6EDD 
X-CRM114-Status: GOOD (  14.87  )
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Kever Yang <kever.yang@rock-chips.com>, David Wu <david.wu@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Linus,

Am Samstag, 12. September 2020, 13:27:44 CEST schrieb Linus Walleij:
> Jianqun, Heiko,
> 
> On Fri, Jan 17, 2020 at 9:14 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:
> 
> > Do codingstyle for pinctrl-rockchip by spliting driver by SoC types.
> >
> > Convenienty for reviewing, the first patch only moving
> > pinctrl-rockchip.c from driver/pinctrl to driver/pinctrl/rockchip/ .
> >
> > Jianqun Xu (2):
> >   pinctrl: rockchip: new rockchip dir for pinctrl-rockchip
> >   pinctrl: rockchip: split rockchip pinctrl driver by SoC type
> 
> Why were these patches never applied? Is it my fault?

It's not your fault :-)

> I don't even have patch 2/2 in my mailbox, possibly it was
> too big!
> 
> Heiko if you're OK with this change can Jianqun just send a
> rebased version?

We agreed to split it into smaller chunks which I think is the 13-patch
series you mentioned elsewhere today. But I guess that fell through
the cracks in my review :-( .

So I guess we should do the current GKI thingy first to get that
module build and after that maybe Jianqun can find the time to rebase
the per-soc split on top of that.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
