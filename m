Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 712AAECAAD5
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 05:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLTLQ+yjbikilpHVjofi2LV4au0QpbYw+jQt35ytP0o=; b=1zDRWG9Dv9nWZY
	dvaq0D0oBPUBV6X2HJ4i8aTBMsgL7CGhzLdDfRZrN6uaYZFTdU1KzY/lOjQbOstoHRpCcP2++fu+G
	iXmljp85aE6fJOrR3y47yiyHw5eQfGT0DmWpMn4XgsKVx7lVk05gCrXlcGeO2aEUmmpLdvbVT9EqT
	l+384hJ1U3HjwCLsi/pW8YmiMb2FiGaooHvNbMVeo1xXCSdJqi9Wf8Z0tgllPagnG7T+fzyKfKGdJ
	a0cvqe/vmCifbTYeoSu1p8iwWOtdE9XfKv8LHuSWuFNtssJDyKWUIqXpRiK+51R2z02+DYclNMdYX
	spdHfp6ugDy/cSf2zvzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSu2Q-00EED1-AS; Tue, 30 Aug 2022 05:43:50 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSu2P-00EECI-5X; Tue, 30 Aug 2022 05:43:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=G0Ao7hUDfgUO+Ql+Hp7VjqV1hEaLm+Q75w5/irqxpmw=; b=TOjNEZiJRERlFK34jFIRHCItjM
	yJbXuaDZyfaiQpEH8JUzmBNS0Abkde3uF8yND/Oqr3Rge7mo6aqTaEUZJuP1k75CpPHhR22XxxWgu
	cwoC99eZ7eE5VkiPRAdFxAkGytuyET6tI4Sdh8wA0meXNK5syIMcygeG4riVmEXB5jXOeUmHNmuLN
	7KGPUz8UWlJ74R6a9fKX0jNLsWscGiS69yuhRmsxQyMoDt0EYIZOlkPgXXrggOwlZS+aWUsjSVMFh
	o2aqY0UCwhvTszEy/xO777qGGJD5xkp4irttquf0SQ0TGnqA5dYKV+SzZ0+Djx18dYT7AUjgSF2gR
	5RT6xYcA==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSu2M-003kDE-9e; Tue, 30 Aug 2022 05:43:48 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 27U5hRC4032204;
	Tue, 30 Aug 2022 14:43:27 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: jagan@amarulasolutions.com
Cc: abbaraju.manojsai@amarulasolutions.com, devicetree@vger.kernel.org,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        linux-amarula@amarulasolutions.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, naoki@radxa.com,
        robh+dt@kernel.org, stephen@radxa.com
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
Date: Tue, 30 Aug 2022 05:43:17 +0000
Message-Id: <20220830054317.181733-1-naoki@radxa.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <CAMty3ZD2QDPKwAvJWB=kTJ+5ZtcdZhcT+No9joTkvBWnrKRmOQ@mail.gmail.com>
References: <CAMty3ZD2QDPKwAvJWB=kTJ+5ZtcdZhcT+No9joTkvBWnrKRmOQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_064346_831985_D0F32E50 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
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

> > > > does card detect work for you? it doesn't work for me. I think it
> > > > needs
> > >
> > > Yes. it is detecting for me. I've booted from SD. 2022.03.04 V1.2
> > > revision board.
> >
> > I have same board, but I'm using eMMC as boot media. do you have any
> > eMMC module?
> >
> > what I tried was inserting uSD card while running Linux on eMMC. it
> > didn't work.
> 
> Here is booted from SD with eMMC inserted on board.
> https://gist.github.com/openedev/85fb939664b6f0803c9ce02c5b275167

please try

1. power off
2. remove SD
3. attach bootable eMMC
4. power on
5. insert SD
6. see what happen

--
FUKAUMI Naoki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
